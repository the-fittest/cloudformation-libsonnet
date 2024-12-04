{
  new(
    BrokerNodeGroupInfo,
    KafkaVersion,
    NumberOfBrokerNodes,
    ClusterName,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(BrokerNodeGroupInfo) : 'BrokerNodeGroupInfo must be an object',
      BrokerNodeGroupInfo: BrokerNodeGroupInfo,
      assert std.isString(KafkaVersion) : 'KafkaVersion must be a string',
      KafkaVersion: KafkaVersion,
      assert std.isNumber(NumberOfBrokerNodes) : 'NumberOfBrokerNodes must be a number',
      NumberOfBrokerNodes: NumberOfBrokerNodes,
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      ClusterName: ClusterName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MSK::Cluster',
  },
  withEnhancedMonitoring(EnhancedMonitoring): {
    assert std.isString(EnhancedMonitoring) : 'EnhancedMonitoring must be a string',
    assert EnhancedMonitoring == 'DEFAULT' || EnhancedMonitoring == 'PER_BROKER' || EnhancedMonitoring == 'PER_TOPIC_PER_BROKER' || EnhancedMonitoring == 'PER_TOPIC_PER_PARTITION' : "EnhancedMonitoring should be 'DEFAULT' or 'PER_BROKER' or 'PER_TOPIC_PER_BROKER' or 'PER_TOPIC_PER_PARTITION'",
    Properties+::: {
      EnhancedMonitoring: EnhancedMonitoring,
    },
  },
  withEncryptionInfo(EncryptionInfo): {
    assert std.isObject(EncryptionInfo) : 'EncryptionInfo must be a object',
    Properties+::: {
      EncryptionInfo: EncryptionInfo,
    },
  },
  withOpenMonitoring(OpenMonitoring): {
    assert std.isObject(OpenMonitoring) : 'OpenMonitoring must be a object',
    Properties+::: {
      OpenMonitoring: OpenMonitoring,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCurrentVersion(CurrentVersion): {
    assert std.isString(CurrentVersion) : 'CurrentVersion must be a string',
    Properties+::: {
      CurrentVersion: CurrentVersion,
    },
  },
  withClientAuthentication(ClientAuthentication): {
    assert std.isObject(ClientAuthentication) : 'ClientAuthentication must be a object',
    Properties+::: {
      ClientAuthentication: ClientAuthentication,
    },
  },
  withLoggingInfo(LoggingInfo): {
    assert std.isObject(LoggingInfo) : 'LoggingInfo must be a object',
    Properties+::: {
      LoggingInfo: LoggingInfo,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withConfigurationInfo(ConfigurationInfo): {
    assert std.isObject(ConfigurationInfo) : 'ConfigurationInfo must be a object',
    Properties+::: {
      ConfigurationInfo: ConfigurationInfo,
    },
  },
  withStorageMode(StorageMode): {
    assert std.isString(StorageMode) : 'StorageMode must be a string',
    assert StorageMode == 'LOCAL' || StorageMode == 'TIERED' : "StorageMode should be 'LOCAL' or 'TIERED'",
    Properties+::: {
      StorageMode: StorageMode,
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
