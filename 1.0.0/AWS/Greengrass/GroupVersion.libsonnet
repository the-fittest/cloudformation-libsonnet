{
  new(
    GroupId,
  ): {
    local base = self,
    Properties: {
      GroupId:
        if !std.isString(GroupId) then (error 'GroupId must be a string')
        else if std.isEmpty(GroupId) then (error 'GroupId must be not empty')
        else GroupId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Greengrass::GroupVersion',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setLoggerDefinitionVersionArn(LoggerDefinitionVersionArn): {
    Properties+::: {
      LoggerDefinitionVersionArn:
        if !std.isString(LoggerDefinitionVersionArn) then (error 'LoggerDefinitionVersionArn must be a string')
        else if std.isEmpty(LoggerDefinitionVersionArn) then (error 'LoggerDefinitionVersionArn must be not empty')
        else LoggerDefinitionVersionArn,
    },
  },
  setDeviceDefinitionVersionArn(DeviceDefinitionVersionArn): {
    Properties+::: {
      DeviceDefinitionVersionArn:
        if !std.isString(DeviceDefinitionVersionArn) then (error 'DeviceDefinitionVersionArn must be a string')
        else if std.isEmpty(DeviceDefinitionVersionArn) then (error 'DeviceDefinitionVersionArn must be not empty')
        else DeviceDefinitionVersionArn,
    },
  },
  setFunctionDefinitionVersionArn(FunctionDefinitionVersionArn): {
    Properties+::: {
      FunctionDefinitionVersionArn:
        if !std.isString(FunctionDefinitionVersionArn) then (error 'FunctionDefinitionVersionArn must be a string')
        else if std.isEmpty(FunctionDefinitionVersionArn) then (error 'FunctionDefinitionVersionArn must be not empty')
        else FunctionDefinitionVersionArn,
    },
  },
  setCoreDefinitionVersionArn(CoreDefinitionVersionArn): {
    Properties+::: {
      CoreDefinitionVersionArn:
        if !std.isString(CoreDefinitionVersionArn) then (error 'CoreDefinitionVersionArn must be a string')
        else if std.isEmpty(CoreDefinitionVersionArn) then (error 'CoreDefinitionVersionArn must be not empty')
        else CoreDefinitionVersionArn,
    },
  },
  setResourceDefinitionVersionArn(ResourceDefinitionVersionArn): {
    Properties+::: {
      ResourceDefinitionVersionArn:
        if !std.isString(ResourceDefinitionVersionArn) then (error 'ResourceDefinitionVersionArn must be a string')
        else if std.isEmpty(ResourceDefinitionVersionArn) then (error 'ResourceDefinitionVersionArn must be not empty')
        else ResourceDefinitionVersionArn,
    },
  },
  setConnectorDefinitionVersionArn(ConnectorDefinitionVersionArn): {
    Properties+::: {
      ConnectorDefinitionVersionArn:
        if !std.isString(ConnectorDefinitionVersionArn) then (error 'ConnectorDefinitionVersionArn must be a string')
        else if std.isEmpty(ConnectorDefinitionVersionArn) then (error 'ConnectorDefinitionVersionArn must be not empty')
        else ConnectorDefinitionVersionArn,
    },
  },
  setSubscriptionDefinitionVersionArn(SubscriptionDefinitionVersionArn): {
    Properties+::: {
      SubscriptionDefinitionVersionArn:
        if !std.isString(SubscriptionDefinitionVersionArn) then (error 'SubscriptionDefinitionVersionArn must be a string')
        else if std.isEmpty(SubscriptionDefinitionVersionArn) then (error 'SubscriptionDefinitionVersionArn must be not empty')
        else SubscriptionDefinitionVersionArn,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
