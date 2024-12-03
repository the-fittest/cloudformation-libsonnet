import _ from 'lodash';
import {globSync} from "glob";
import {appendFileSync, existsSync, mkdirSync, readFileSync, rmSync, writeFileSync} from 'node:fs';
import ejs from "ejs";
import {parse} from 'path';
import pkg from '../package.json' assert {type: 'json'};


const getServiceStructure = (files) => {
  const serviceStructure = {};
  _.forEach(files, (file) => {
    const fileName = parse(file).name;
    const packageAndResource = _.replace(fileName, 'aws-', '')
    _.set(serviceStructure, _.split(packageAndResource, '-'), true);
  });

  return serviceStructure;
}

const writeMainFile = (mainFile, content, isLastIteration) => {
  if (!existsSync(mainFile)) {
    writeFileSync(mainFile, content);
  } else {
    appendFileSync(mainFile, content);
  }
  if (isLastIteration) {
    appendFileSync(mainFile, `+`);
  }
}

const main = async () => {
  const version = pkg.version;
  const schemasDir = `${process.cwd()}/schemas`;
  const libsDir = `${process.cwd()}/${version}`;
  const templateDir = `${process.cwd()}/.generator/`
  const mainFile = `${libsDir}/main.libsonnet`;

  if (!existsSync(schemasDir)) {
    throw new Error(`schemas directory ${schemasDir} does not exists!`);
  }

  if (!existsSync(libsDir)) {
    throw new Error(`libs directory ${libsDir} does not exists!`);
  }

  if (!existsSync(templateDir)) {
    throw new Error(`template directory ${templateDir} does not exists!`);
  }

  if (existsSync(mainFile)) {
    rmSync(mainFile);
  }

  let files = globSync(`${schemasDir}/aws-*.json`);

  const serviceStructure = getServiceStructure(_.reverse(files));
  const services = _.keys(serviceStructure);

  for (let i = 0; i < services.length; i++) {
    const resources = _.keys(serviceStructure[services[i]])
    let content = `local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';\n{\n`
    let typeName = '';
    for (const resource of resources) {
      const schemaString = readFileSync(
        `${schemasDir}/aws-${services[i]}-${resource}.json`,
        'utf8'
      );
      const schema = JSON.parse(schemaString);
      typeName = _.get(schema, 'typeName');

      content += await ejs.renderFile(`${templateDir}/template.ejs`, {schema, _, version});
    }
    content += `}`;
    const packageParts = _.split(typeName, '::', 2);
    const rootPackage = _.first(packageParts);
    const serviceName = _.last(packageParts);
    const fileName = `${libsDir}/${rootPackage}/${serviceName}.libsonnet`;

    if (!existsSync(`${libsDir}/${rootPackage}`)) {
      mkdirSync(`${libsDir}/${rootPackage}`);
    }

    writeFileSync(fileName, content);
    writeMainFile(
      mainFile,
      `(import '${rootPackage}/${serviceName}.libsonnet')\n`,
      i < services.length - 1
    )
  }
};

(await main());
