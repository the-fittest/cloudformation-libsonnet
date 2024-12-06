{
  new(
    FunctionName,
  ): {
    local base = self,
    Properties: {
      FunctionName:
        if !std.isString(FunctionName) then (error 'FunctionName must be a string')
        else if std.isEmpty(FunctionName) then (error 'FunctionName must be not empty')
        else if std.length(FunctionName) < 1 then error ('FunctionName should have at least 1 characters')
        else if std.length(FunctionName) > 140 then error ('FunctionName should have not more than 140 characters')
        else FunctionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::Version',
  },
  setFunctionArn(FunctionArn): {
    Properties+::: {
      FunctionArn:
        if !std.isString(FunctionArn) then (error 'FunctionArn must be a string')
        else if std.isEmpty(FunctionArn) then (error 'FunctionArn must be not empty')
        else FunctionArn,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setCodeSha256(CodeSha256): {
    Properties+::: {
      CodeSha256:
        if !std.isString(CodeSha256) then (error 'CodeSha256 must be a string')
        else if std.isEmpty(CodeSha256) then (error 'CodeSha256 must be not empty')
        else CodeSha256,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 256 then error ('Description should have not more than 256 characters')
        else Description,
    },
  },
  setProvisionedConcurrencyConfig(ProvisionedConcurrencyConfig): {
    Properties+::: {
      ProvisionedConcurrencyConfig:
        if !std.isObject(ProvisionedConcurrencyConfig) then (error 'ProvisionedConcurrencyConfig must be an object')
        else if !std.objectHas(ProvisionedConcurrencyConfig, 'ProvisionedConcurrentExecutions') then (error ' have attribute ProvisionedConcurrentExecutions')
        else ProvisionedConcurrencyConfig,
    },
  },
  setRuntimePolicy(RuntimePolicy): {
    Properties+::: {
      RuntimePolicy:
        if !std.isObject(RuntimePolicy) then (error 'RuntimePolicy must be an object')
        else if !std.objectHas(RuntimePolicy, 'UpdateRuntimeOn') then (error ' have attribute UpdateRuntimeOn')
        else RuntimePolicy,
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
