{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SNS::Topic',
  },
  withDisplayName(DisplayName): {
    assert std.isString(DisplayName) : 'DisplayName must be a string',
    Properties+::: {
      DisplayName: DisplayName,
    },
  },
  withKmsMasterKeyId(KmsMasterKeyId): {
    assert std.isString(KmsMasterKeyId) : 'KmsMasterKeyId must be a string',
    Properties+::: {
      KmsMasterKeyId: KmsMasterKeyId,
    },
  },
  withDataProtectionPolicy(DataProtectionPolicy): {
    assert std.isObject(DataProtectionPolicy) : 'DataProtectionPolicy must be a object',
    Properties+::: {
      DataProtectionPolicy: DataProtectionPolicy,
    },
  },
  withSubscription(Subscription): {
    Properties+::: {
      Subscription: (if std.isArray(Subscription) then Subscription else [Subscription]),
    },
  },
  withSubscriptionMixin(Subscription): {
    Properties+::: {
      Subscription+: (if std.isArray(Subscription) then Subscription else [Subscription]),
    },
  },
  withFifoTopic(FifoTopic): {
    assert std.isBoolean(FifoTopic) : 'FifoTopic must be a boolean',
    Properties+::: {
      FifoTopic: FifoTopic,
    },
  },
  withContentBasedDeduplication(ContentBasedDeduplication): {
    assert std.isBoolean(ContentBasedDeduplication) : 'ContentBasedDeduplication must be a boolean',
    Properties+::: {
      ContentBasedDeduplication: ContentBasedDeduplication,
    },
  },
  withArchivePolicy(ArchivePolicy): {
    assert std.isObject(ArchivePolicy) : 'ArchivePolicy must be a object',
    Properties+::: {
      ArchivePolicy: ArchivePolicy,
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
  withTopicName(TopicName): {
    assert std.isString(TopicName) : 'TopicName must be a string',
    Properties+::: {
      TopicName: TopicName,
    },
  },
  withTopicArn(TopicArn): {
    assert std.isString(TopicArn) : 'TopicArn must be a string',
    Properties+::: {
      TopicArn: TopicArn,
    },
  },
  withSignatureVersion(SignatureVersion): {
    assert std.isString(SignatureVersion) : 'SignatureVersion must be a string',
    Properties+::: {
      SignatureVersion: SignatureVersion,
    },
  },
  withTracingConfig(TracingConfig): {
    assert std.isString(TracingConfig) : 'TracingConfig must be a string',
    Properties+::: {
      TracingConfig: TracingConfig,
    },
  },
  withDeliveryStatusLogging(DeliveryStatusLogging): {
    Properties+::: {
      DeliveryStatusLogging: (if std.isArray(DeliveryStatusLogging) then DeliveryStatusLogging else [DeliveryStatusLogging]),
    },
  },
  withDeliveryStatusLoggingMixin(DeliveryStatusLogging): {
    Properties+::: {
      DeliveryStatusLogging+: (if std.isArray(DeliveryStatusLogging) then DeliveryStatusLogging else [DeliveryStatusLogging]),
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
