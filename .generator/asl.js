import pkg from '../package.json' assert {type: 'json'};
import $RefParser from "@apidevtools/json-schema-ref-parser";
import * as util from "node:util";

const version = pkg.version;
const libsDir = `${process.cwd()}/${version}`;
const schemasDir = `${process.cwd()}/schemas/asl`;

const dereferencedSchema = await $RefParser.dereference(
  `${schemasDir}/wait.json`,
  { mutateInputSchema: false }
);

console.log(JSON.stringify(util.inspect(dereferencedSchema,false,20,)))
