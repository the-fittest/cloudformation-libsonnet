import _ from "lodash-contrib";

export const getRequiredProperties = (schema) => {
  const properties = _.get(schema, 'properties')
  const requiredPropertiesKeys = _.get(schema, 'required', []);
  const requiredProperties = _.pick(properties, requiredPropertiesKeys);

  if (_.isEmpty(requiredProperties)) {
    return null;
  }

  return requiredProperties;
};
