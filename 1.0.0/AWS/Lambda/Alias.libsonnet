{
  new(
    FunctionName,
    FunctionVersion,
    Name,
  ): {
    local base = self,
    Properties: {
      FunctionName:
        if !std.isString(FunctionName) then (error 'FunctionName must be a string')
        else if std.isEmpty(FunctionName) then (error 'FunctionName must be not empty')
        else FunctionName,
      FunctionVersion:
        if !std.isString(FunctionVersion) then (error 'FunctionVersion must be a string')
        else if std.isEmpty(FunctionVersion) then (error 'FunctionVersion must be not empty')
        else FunctionVersion,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::Alias',
  },
  setAliasArn(AliasArn): {
    Properties+::: {
      AliasArn:
        if !std.isString(AliasArn) then (error 'AliasArn must be a string')
        else if std.isEmpty(AliasArn) then (error 'AliasArn must be not empty')
        else AliasArn,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setRoutingConfig(RoutingConfig): {
    Properties+::: {
      RoutingConfig:
        if !std.isObject(RoutingConfig) then (error 'RoutingConfig must be an object')
        else RoutingConfig,
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
