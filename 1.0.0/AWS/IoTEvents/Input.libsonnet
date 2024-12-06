{
  new(
    InputDefinition,
  ): {
    local base = self,
    Properties: {
      InputDefinition:
        if !std.isObject(InputDefinition) then (error 'InputDefinition must be an object')
        else if !std.objectHas(InputDefinition, 'Attributes') then (error ' have attribute Attributes')
        else InputDefinition,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTEvents::Input',
  },
  setInputDescription(InputDescription): {
    Properties+::: {
      InputDescription:
        if !std.isString(InputDescription) then (error 'InputDescription must be a string')
        else if std.isEmpty(InputDescription) then (error 'InputDescription must be not empty')
        else if std.length(InputDescription) < 1 then error ('InputDescription should have at least 1 characters')
        else if std.length(InputDescription) > 1024 then error ('InputDescription should have not more than 1024 characters')
        else InputDescription,
    },
  },
  setInputName(InputName): {
    Properties+::: {
      InputName:
        if !std.isString(InputName) then (error 'InputName must be a string')
        else if std.isEmpty(InputName) then (error 'InputName must be not empty')
        else if std.length(InputName) < 1 then error ('InputName should have at least 1 characters')
        else if std.length(InputName) > 128 then error ('InputName should have not more than 128 characters')
        else InputName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
