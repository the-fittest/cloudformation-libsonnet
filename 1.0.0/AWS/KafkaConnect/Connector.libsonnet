{
  new(
    Capacity,
    ConnectorConfiguration,
    ConnectorName,
    KafkaConnectVersion,
    KafkaCluster,
    KafkaClusterClientAuthentication,
    KafkaClusterEncryptionInTransit,
    Plugins,
    ServiceExecutionRoleArn,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(Capacity) : 'Capacity must be an object',
      Capacity: Capacity,
      assert std.isObject(ConnectorConfiguration) : 'ConnectorConfiguration must be an object',
      ConnectorConfiguration: ConnectorConfiguration,
      assert std.isString(ConnectorName) : 'ConnectorName must be a string',
      ConnectorName: ConnectorName,
      assert std.isString(KafkaConnectVersion) : 'KafkaConnectVersion must be a string',
      KafkaConnectVersion: KafkaConnectVersion,
      assert std.isObject(KafkaCluster) : 'KafkaCluster must be an object',
      KafkaCluster: KafkaCluster,
      assert std.isObject(KafkaClusterClientAuthentication) : 'KafkaClusterClientAuthentication must be an object',
      KafkaClusterClientAuthentication: KafkaClusterClientAuthentication,
      assert std.isObject(KafkaClusterEncryptionInTransit) : 'KafkaClusterEncryptionInTransit must be an object',
      KafkaClusterEncryptionInTransit: KafkaClusterEncryptionInTransit,
      Plugins: (if std.isArray(Plugins) then Plugins else [Plugins]),
      assert std.isString(ServiceExecutionRoleArn) : 'ServiceExecutionRoleArn must be a string',
      ServiceExecutionRoleArn: ServiceExecutionRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KafkaConnect::Connector',
  },
  withConnectorArn(ConnectorArn): {
    assert std.isString(ConnectorArn) : 'ConnectorArn must be a string',
    Properties+::: {
      ConnectorArn: ConnectorArn,
    },
  },
  withConnectorDescription(ConnectorDescription): {
    assert std.isString(ConnectorDescription) : 'ConnectorDescription must be a string',
    Properties+::: {
      ConnectorDescription: ConnectorDescription,
    },
  },
  withLogDelivery(LogDelivery): {
    assert std.isObject(LogDelivery) : 'LogDelivery must be a object',
    Properties+::: {
      LogDelivery: LogDelivery,
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
  withWorkerConfiguration(WorkerConfiguration): {
    assert std.isObject(WorkerConfiguration) : 'WorkerConfiguration must be a object',
    Properties+::: {
      WorkerConfiguration: WorkerConfiguration,
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
