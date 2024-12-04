{
  // AWS SQS Queue
  Queue: {
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
      Type: 'AWS::SQS::Queue',
    },
    withQueueUrl(QueueUrl): {
      assert std.isString(QueueUrl) : 'QueueUrl must be a string',
      Properties+::: {
        QueueUrl: QueueUrl,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withContentBasedDeduplication(ContentBasedDeduplication): {
      assert std.isBoolean(ContentBasedDeduplication) : 'ContentBasedDeduplication must be a boolean',
      Properties+::: {
        ContentBasedDeduplication: ContentBasedDeduplication,
      },
    },
    withDeduplicationScope(DeduplicationScope): {
      assert std.isString(DeduplicationScope) : 'DeduplicationScope must be a string',
      Properties+::: {
        DeduplicationScope: DeduplicationScope,
      },
    },
    withDelaySeconds(DelaySeconds): {
      assert std.isNumber(DelaySeconds) : 'DelaySeconds must be a number',
      Properties+::: {
        DelaySeconds: DelaySeconds,
      },
    },
    withFifoQueue(FifoQueue): {
      assert std.isBoolean(FifoQueue) : 'FifoQueue must be a boolean',
      Properties+::: {
        FifoQueue: FifoQueue,
      },
    },
    withFifoThroughputLimit(FifoThroughputLimit): {
      assert std.isString(FifoThroughputLimit) : 'FifoThroughputLimit must be a string',
      Properties+::: {
        FifoThroughputLimit: FifoThroughputLimit,
      },
    },
    withKmsDataKeyReusePeriodSeconds(KmsDataKeyReusePeriodSeconds): {
      assert std.isNumber(KmsDataKeyReusePeriodSeconds) : 'KmsDataKeyReusePeriodSeconds must be a number',
      Properties+::: {
        KmsDataKeyReusePeriodSeconds: KmsDataKeyReusePeriodSeconds,
      },
    },
    withKmsMasterKeyId(KmsMasterKeyId): {
      assert std.isString(KmsMasterKeyId) : 'KmsMasterKeyId must be a string',
      Properties+::: {
        KmsMasterKeyId: KmsMasterKeyId,
      },
    },
    withSqsManagedSseEnabled(SqsManagedSseEnabled): {
      assert std.isBoolean(SqsManagedSseEnabled) : 'SqsManagedSseEnabled must be a boolean',
      Properties+::: {
        SqsManagedSseEnabled: SqsManagedSseEnabled,
      },
    },
    withMaximumMessageSize(MaximumMessageSize): {
      assert std.isNumber(MaximumMessageSize) : 'MaximumMessageSize must be a number',
      Properties+::: {
        MaximumMessageSize: MaximumMessageSize,
      },
    },
    withMessageRetentionPeriod(MessageRetentionPeriod): {
      assert std.isNumber(MessageRetentionPeriod) : 'MessageRetentionPeriod must be a number',
      Properties+::: {
        MessageRetentionPeriod: MessageRetentionPeriod,
      },
    },
    withQueueName(QueueName): {
      assert std.isString(QueueName) : 'QueueName must be a string',
      Properties+::: {
        QueueName: QueueName,
      },
    },
    withReceiveMessageWaitTimeSeconds(ReceiveMessageWaitTimeSeconds): {
      assert std.isNumber(ReceiveMessageWaitTimeSeconds) : 'ReceiveMessageWaitTimeSeconds must be a number',
      Properties+::: {
        ReceiveMessageWaitTimeSeconds: ReceiveMessageWaitTimeSeconds,
      },
    },
    withRedriveAllowPolicy(RedriveAllowPolicy): {
      Properties+::: {
        RedriveAllowPolicy: RedriveAllowPolicy,
      },
    },
    withRedrivePolicy(RedrivePolicy): {
      Properties+::: {
        RedrivePolicy: RedrivePolicy,
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
    withVisibilityTimeout(VisibilityTimeout): {
      assert std.isNumber(VisibilityTimeout) : 'VisibilityTimeout must be a number',
      Properties+::: {
        VisibilityTimeout: VisibilityTimeout,
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
  },
}
