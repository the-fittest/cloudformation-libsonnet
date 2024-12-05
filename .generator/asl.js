import pkg from '../package.json' assert {type: 'json'};
import $RefParser from "@apidevtools/json-schema-ref-parser";
import _ from "lodash-contrib";
const {getOptionalProperties} = await import('./utils/getOptionalProperties.js');
const {getRequiredProperties} = await import('./utils/getRequiredProperties.js');

const version = pkg.version;
const libsDir = `${process.cwd()}/${version}`;
const schemasDir = `${process.cwd()}/schemas/asl`;

const schema = await $RefParser.dereference(
  `${schemasDir}/wait.json`,
  { mutateInputSchema: false }
);
_.set(schema,'typeName','AWS::StateMachineStates::Wait')

console.log(schema)
const optionalProperties = getOptionalProperties(schema);
const requiredProperties = getRequiredProperties(schema);


console.log(state)
