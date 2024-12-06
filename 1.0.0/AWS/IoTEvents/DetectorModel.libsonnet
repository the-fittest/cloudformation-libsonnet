{
  new(
    DetectorModelDefinition,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      DetectorModelDefinition:
        if !std.isObject(DetectorModelDefinition) then (error 'DetectorModelDefinition must be an object')
        else if !std.objectHas(DetectorModelDefinition, 'States') then (error ' have attribute States')
        else if !std.objectHas(DetectorModelDefinition, 'InitialStateName') then (error ' have attribute InitialStateName')
        else DetectorModelDefinition,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTEvents::DetectorModel',
  },
  setDetectorModelDescription(DetectorModelDescription): {
    Properties+::: {
      DetectorModelDescription:
        if !std.isString(DetectorModelDescription) then (error 'DetectorModelDescription must be a string')
        else if std.isEmpty(DetectorModelDescription) then (error 'DetectorModelDescription must be not empty')
        else if std.length(DetectorModelDescription) > 1024 then error ('DetectorModelDescription should have not more than 1024 characters')
        else DetectorModelDescription,
    },
  },
  setDetectorModelName(DetectorModelName): {
    Properties+::: {
      DetectorModelName:
        if !std.isString(DetectorModelName) then (error 'DetectorModelName must be a string')
        else if std.isEmpty(DetectorModelName) then (error 'DetectorModelName must be not empty')
        else if std.length(DetectorModelName) < 1 then error ('DetectorModelName should have at least 1 characters')
        else if std.length(DetectorModelName) > 128 then error ('DetectorModelName should have not more than 128 characters')
        else DetectorModelName,
    },
  },
  setEvaluationMethod(EvaluationMethod): {
    Properties+::: {
      EvaluationMethod:
        if !std.isString(EvaluationMethod) then (error 'EvaluationMethod must be a string')
        else if std.isEmpty(EvaluationMethod) then (error 'EvaluationMethod must be not empty')
        else if EvaluationMethod != 'BATCH' && EvaluationMethod != 'SERIAL' then (error "EvaluationMethod should be 'BATCH' or 'SERIAL'")
        else EvaluationMethod,
    },
  },
  setKey(Key): {
    Properties+::: {
      Key:
        if !std.isString(Key) then (error 'Key must be a string')
        else if std.isEmpty(Key) then (error 'Key must be not empty')
        else if std.length(Key) < 1 then error ('Key should have at least 1 characters')
        else if std.length(Key) > 128 then error ('Key should have not more than 128 characters')
        else Key,
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
