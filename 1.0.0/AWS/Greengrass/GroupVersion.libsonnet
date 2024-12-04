{
  new(
    GroupId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(GroupId) : 'GroupId must be a string',
      GroupId: GroupId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Greengrass::GroupVersion',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withLoggerDefinitionVersionArn(LoggerDefinitionVersionArn): {
    assert std.isString(LoggerDefinitionVersionArn) : 'LoggerDefinitionVersionArn must be a string',
    Properties+::: {
      LoggerDefinitionVersionArn: LoggerDefinitionVersionArn,
    },
  },
  withDeviceDefinitionVersionArn(DeviceDefinitionVersionArn): {
    assert std.isString(DeviceDefinitionVersionArn) : 'DeviceDefinitionVersionArn must be a string',
    Properties+::: {
      DeviceDefinitionVersionArn: DeviceDefinitionVersionArn,
    },
  },
  withFunctionDefinitionVersionArn(FunctionDefinitionVersionArn): {
    assert std.isString(FunctionDefinitionVersionArn) : 'FunctionDefinitionVersionArn must be a string',
    Properties+::: {
      FunctionDefinitionVersionArn: FunctionDefinitionVersionArn,
    },
  },
  withCoreDefinitionVersionArn(CoreDefinitionVersionArn): {
    assert std.isString(CoreDefinitionVersionArn) : 'CoreDefinitionVersionArn must be a string',
    Properties+::: {
      CoreDefinitionVersionArn: CoreDefinitionVersionArn,
    },
  },
  withResourceDefinitionVersionArn(ResourceDefinitionVersionArn): {
    assert std.isString(ResourceDefinitionVersionArn) : 'ResourceDefinitionVersionArn must be a string',
    Properties+::: {
      ResourceDefinitionVersionArn: ResourceDefinitionVersionArn,
    },
  },
  withConnectorDefinitionVersionArn(ConnectorDefinitionVersionArn): {
    assert std.isString(ConnectorDefinitionVersionArn) : 'ConnectorDefinitionVersionArn must be a string',
    Properties+::: {
      ConnectorDefinitionVersionArn: ConnectorDefinitionVersionArn,
    },
  },
  withSubscriptionDefinitionVersionArn(SubscriptionDefinitionVersionArn): {
    assert std.isString(SubscriptionDefinitionVersionArn) : 'SubscriptionDefinitionVersionArn must be a string',
    Properties+::: {
      SubscriptionDefinitionVersionArn: SubscriptionDefinitionVersionArn,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
