{
  new(
    SecretId,
  ): {
    local base = self,
    Properties: {
      SecretId:
        if !std.isString(SecretId) then (error 'SecretId must be a string')
        else if std.isEmpty(SecretId) then (error 'SecretId must be not empty')
        else SecretId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecretsManager::RotationSchedule',
  },
  setHostedRotationLambda(HostedRotationLambda): {
    Properties+::: {
      HostedRotationLambda:
        if !std.isObject(HostedRotationLambda) then (error 'HostedRotationLambda must be an object')
        else if !std.objectHas(HostedRotationLambda, 'RotationType') then (error ' have attribute RotationType')
        else HostedRotationLambda,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setRotateImmediatelyOnUpdate(RotateImmediatelyOnUpdate): {
    Properties+::: {
      RotateImmediatelyOnUpdate:
        if !std.isBoolean(RotateImmediatelyOnUpdate) then (error 'RotateImmediatelyOnUpdate must be a boolean') else RotateImmediatelyOnUpdate,
    },
  },
  setRotationLambdaARN(RotationLambdaARN): {
    Properties+::: {
      RotationLambdaARN:
        if !std.isString(RotationLambdaARN) then (error 'RotationLambdaARN must be a string')
        else if std.isEmpty(RotationLambdaARN) then (error 'RotationLambdaARN must be not empty')
        else RotationLambdaARN,
    },
  },
  setRotationRules(RotationRules): {
    Properties+::: {
      RotationRules:
        if !std.isObject(RotationRules) then (error 'RotationRules must be an object')
        else RotationRules,
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
