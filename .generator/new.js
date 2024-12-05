import $RefParser from "@apidevtools/json-schema-ref-parser";
import {appendFileSync, existsSync, mkdirSync, readFileSync, rmSync, writeFileSync} from "node:fs";
import _ from "lodash-contrib";
import Handlebars from "handlebars";
import pkg from '../package.json' assert {type: 'json'};
import {globSync} from "glob";
import {parse} from "path";

const version = pkg.version;
const libsDir = `${process.cwd()}/${version}`;
const schemasDir = `${process.cwd()}/schemas/cloudformation`;
const templateDir = `${process.cwd()}/.generator/templates`
const unset = ['handlers', 'createOnlyProperties', 'readOnlyProperties', 'primaryIdentifier', 'tagging'];

if (!existsSync(schemasDir)) {
  throw new Error(`schemas directory ${schemasDir} does not exists!`);
}

if (!existsSync(libsDir)) {
  throw new Error(`libs directory ${libsDir} does not exists!`);
}

if (!existsSync(templateDir)) {
  throw new Error(`template directory ${templateDir} does not exists!`);
}

if (existsSync(libsDir)) {
  rmSync(libsDir, {recursive: true, force: true});
  mkdirSync(libsDir);
}

const rootTemplate = readFileSync(`${templateDir}/root.handlebars`, 'utf8');
const getProvider = schema => _.first(_.split(_.get(schema, 'typeName'), '::'))
const getModule = schema => _.nth(_.split(_.get(schema, 'typeName'), '::'), 1)
const getResource = schema => _.last(_.split(_.get(schema, 'typeName'), '::'))
const getOptionalProperties = (schema) => {
  const properties = _.get(schema, 'properties')
  const propertiesKeys = _.keys(properties);
  const requiredPropertiesKeys = _.get(schema, 'required', []);
  const optionalPropertiesKeys = _.difference(propertiesKeys, requiredPropertiesKeys)
  return _.pick(properties, optionalPropertiesKeys);
};
const getRequiredProperties = (schema) => {
  const properties = _.get(schema, 'properties')
  const requiredPropertiesKeys = _.get(schema, 'required', []);
  const requiredProperties = _.pick(properties, requiredPropertiesKeys);

  if (_.isEmpty(requiredProperties)) {
    return null;
  }

  return requiredProperties;
};

Handlebars.registerPartial("optionalArrayProperty", readFileSync(`${templateDir}/property/optional/array.handlebars`, 'utf8'));
Handlebars.registerPartial("optionalDefaultProperty", readFileSync(`${templateDir}/property/optional/default.handlebars`, 'utf8'));

Handlebars.registerPartial("requiredStringProperty", readFileSync(`${templateDir}/property/required/string.handlebars`, 'utf8'));
Handlebars.registerPartial("requiredArrayProperty", readFileSync(`${templateDir}/property/required/array.handlebars`, 'utf8'));
Handlebars.registerPartial("requiredBooleanProperty", readFileSync(`${templateDir}/property/required/boolean.handlebars`, 'utf8'));
Handlebars.registerPartial("requiredNumberProperty", readFileSync(`${templateDir}/property/required/number.handlebars`, 'utf8'));
Handlebars.registerPartial("requiredIntegerProperty", readFileSync(`${templateDir}/property/required/number.handlebars`, 'utf8'));
Handlebars.registerPartial("requiredObjectProperty", readFileSync(`${templateDir}/property/required/object.handlebars`, 'utf8'));
Handlebars.registerPartial("requiredDefaultProperty", readFileSync(`${templateDir}/property/required/default.handlebars`, 'utf8'));

Handlebars.registerHelper('optionalProperties', (schema) => getOptionalProperties(schema));
Handlebars.registerHelper('requiredProperties', (schema) => getRequiredProperties(schema));
Handlebars.registerHelper('whichProperty', (type, optionalOrRequired) => {
  const typeName = 'default';
  if (!_.isString(type)) type = typeName;

  if (optionalOrRequired === 'optional' && type !== 'array') {
    type = 'default';
  }

  return `${optionalOrRequired}${_.upperFirst(type)}Property`;
});
Handlebars.registerHelper('Provider', schema => getProvider(schema));
Handlebars.registerHelper('Module', schema => getModule(schema))
Handlebars.registerHelper('Resource', schema => getResource(schema))
Handlebars.registerHelper('printArray', (...options) => {
  options.pop();
  return options;
});


let files = _.reverse(globSync(`${schemasDir}/aws-*.json`));

let providerImports = [];
let moduleImports = [];
let blacklist = [
  'aws-batch-computeenvironment',
  'aws-ec2-verifiedaccesstrustprovider',
  'aws-quicksight-analysis',
  'aws-quicksight-template',
  'aws-quicksight-dashboard'
]

for (const file of files) {
  const filenameWithoutExtension = parse(file).name;
  if (_.includes(blacklist, filenameWithoutExtension)) continue;
  console.log(filenameWithoutExtension);
  let schema = '';
  schema = JSON.parse(readFileSync(file, 'utf8'));
  _.set(schema, 'type', 'object')
  _.forEach(unset, (item) => _.unset(schema, item));
  const dereferencedSchema = await $RefParser.dereference(schema, {mutateInputSchema: false});
  const template = Handlebars.compile(rootTemplate);
  const content = template({schema: dereferencedSchema});
  const provider = getProvider(schema);
  const module = getModule(schema);
  const resource = getResource(schema);
  const modulePath = `${libsDir}/${provider}/${module}`;

  if (!existsSync(`${modulePath}`)) {
    mkdirSync(`${modulePath}`, {recursive: true});
  }

  writeFileSync(`${modulePath}/${resource}.libsonnet`, content);
  providerImports.push([provider, module]);
  moduleImports.push([`${provider}/${module}`, resource]);
}

providerImports = _.uniqWith(providerImports, _.isEqual)

for (let i = 0; i < providerImports.length; i++) {
  const providerImport = providerImports[i];
  const providerImportFile = `${libsDir}/${providerImport[0]}/main.libsonnet`
  if (i === 0) {
    writeFileSync(providerImportFile, `{\n`);
  }

  appendFileSync(providerImportFile, `${providerImport[1]}: import '${providerImport[1]}/main.libsonnet',\n`);

  if (i === providerImports.length - 1) {
    appendFileSync(providerImportFile, `}\n`);
  }
}

moduleImports = _.uniqWith(moduleImports, _.isEqual)

while (moduleImports.length) {
  const moduleImport = moduleImports.pop();
  const moduleImportFile = `${libsDir}/${moduleImport[0]}/main.libsonnet`

  if (!existsSync(moduleImportFile)) {
    writeFileSync(moduleImportFile, `{\n`);
  }

  appendFileSync(moduleImportFile, `${moduleImport[1]}: import '${moduleImport[1]}.libsonnet',\n`);

  if (_.isEmpty(moduleImports) || _.last(moduleImports)[0] !== moduleImport[0]) {
    appendFileSync(moduleImportFile, `}\n`);
  }

}
