{
  new(
    SourceConfiguration,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(SourceConfiguration) : 'SourceConfiguration must be an object',
      SourceConfiguration: SourceConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppRunner::Service',
  },
  withServiceName(ServiceName): {
    assert std.isString(ServiceName) : 'ServiceName must be a string',
    Properties+::: {
      ServiceName: ServiceName,
    },
  },
  withServiceId(ServiceId): {
    assert std.isString(ServiceId) : 'ServiceId must be a string',
    Properties+::: {
      ServiceId: ServiceId,
    },
  },
  withServiceArn(ServiceArn): {
    assert std.isString(ServiceArn) : 'ServiceArn must be a string',
    Properties+::: {
      ServiceArn: ServiceArn,
    },
  },
  withServiceUrl(ServiceUrl): {
    assert std.isString(ServiceUrl) : 'ServiceUrl must be a string',
    Properties+::: {
      ServiceUrl: ServiceUrl,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withInstanceConfiguration(InstanceConfiguration): {
    assert std.isObject(InstanceConfiguration) : 'InstanceConfiguration must be a object',
    Properties+::: {
      InstanceConfiguration: InstanceConfiguration,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withEncryptionConfiguration(EncryptionConfiguration): {
    assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
    Properties+::: {
      EncryptionConfiguration: EncryptionConfiguration,
    },
  },
  withHealthCheckConfiguration(HealthCheckConfiguration): {
    assert std.isObject(HealthCheckConfiguration) : 'HealthCheckConfiguration must be a object',
    Properties+::: {
      HealthCheckConfiguration: HealthCheckConfiguration,
    },
  },
  withObservabilityConfiguration(ObservabilityConfiguration): {
    assert std.isObject(ObservabilityConfiguration) : 'ObservabilityConfiguration must be a object',
    Properties+::: {
      ObservabilityConfiguration: ObservabilityConfiguration,
    },
  },
  withAutoScalingConfigurationArn(AutoScalingConfigurationArn): {
    assert std.isString(AutoScalingConfigurationArn) : 'AutoScalingConfigurationArn must be a string',
    Properties+::: {
      AutoScalingConfigurationArn: AutoScalingConfigurationArn,
    },
  },
  withNetworkConfiguration(NetworkConfiguration): {
    assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
    Properties+::: {
      NetworkConfiguration: NetworkConfiguration,
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
