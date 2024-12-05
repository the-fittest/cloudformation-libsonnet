import _ from "lodash-contrib";

export const getOptionalProperties = (schema) => {
  const properties = _.get(schema, 'properties')
  const propertiesKeys = _.keys(properties);
  const requiredPropertiesKeys = _.get(schema, 'required', []);
  const optionalPropertiesKeys = _.difference(propertiesKeys, requiredPropertiesKeys)
  return _.pick(properties, optionalPropertiesKeys);
};
