{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SQS::Queue',
  },
  setQueueUrl(QueueUrl): {
    Properties+::: {
      QueueUrl:
        if !std.isString(QueueUrl) then (error 'QueueUrl must be a string')
        else if std.isEmpty(QueueUrl) then (error 'QueueUrl must be not empty')
        else QueueUrl,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setContentBasedDeduplication(ContentBasedDeduplication): {
    Properties+::: {
      ContentBasedDeduplication:
        if !std.isBoolean(ContentBasedDeduplication) then (error 'ContentBasedDeduplication must be a boolean') else ContentBasedDeduplication,
    },
  },
  setDeduplicationScope(DeduplicationScope): {
    Properties+::: {
      DeduplicationScope:
        if !std.isString(DeduplicationScope) then (error 'DeduplicationScope must be a string')
        else if std.isEmpty(DeduplicationScope) then (error 'DeduplicationScope must be not empty')
        else DeduplicationScope,
    },
  },
  setDelaySeconds(DelaySeconds): {
    Properties+::: {
      DelaySeconds:
        if !std.isNumber(DelaySeconds) then (error 'DelaySeconds must be an number')
        else DelaySeconds,
    },
  },
  setFifoQueue(FifoQueue): {
    Properties+::: {
      FifoQueue:
        if !std.isBoolean(FifoQueue) then (error 'FifoQueue must be a boolean') else FifoQueue,
    },
  },
  setFifoThroughputLimit(FifoThroughputLimit): {
    Properties+::: {
      FifoThroughputLimit:
        if !std.isString(FifoThroughputLimit) then (error 'FifoThroughputLimit must be a string')
        else if std.isEmpty(FifoThroughputLimit) then (error 'FifoThroughputLimit must be not empty')
        else FifoThroughputLimit,
    },
  },
  setKmsDataKeyReusePeriodSeconds(KmsDataKeyReusePeriodSeconds): {
    Properties+::: {
      KmsDataKeyReusePeriodSeconds:
        if !std.isNumber(KmsDataKeyReusePeriodSeconds) then (error 'KmsDataKeyReusePeriodSeconds must be an number')
        else KmsDataKeyReusePeriodSeconds,
    },
  },
  setKmsMasterKeyId(KmsMasterKeyId): {
    Properties+::: {
      KmsMasterKeyId:
        if !std.isString(KmsMasterKeyId) then (error 'KmsMasterKeyId must be a string')
        else if std.isEmpty(KmsMasterKeyId) then (error 'KmsMasterKeyId must be not empty')
        else KmsMasterKeyId,
    },
  },
  setSqsManagedSseEnabled(SqsManagedSseEnabled): {
    Properties+::: {
      SqsManagedSseEnabled:
        if !std.isBoolean(SqsManagedSseEnabled) then (error 'SqsManagedSseEnabled must be a boolean') else SqsManagedSseEnabled,
    },
  },
  setMaximumMessageSize(MaximumMessageSize): {
    Properties+::: {
      MaximumMessageSize:
        if !std.isNumber(MaximumMessageSize) then (error 'MaximumMessageSize must be an number')
        else MaximumMessageSize,
    },
  },
  setMessageRetentionPeriod(MessageRetentionPeriod): {
    Properties+::: {
      MessageRetentionPeriod:
        if !std.isNumber(MessageRetentionPeriod) then (error 'MessageRetentionPeriod must be an number')
        else MessageRetentionPeriod,
    },
  },
  setQueueName(QueueName): {
    Properties+::: {
      QueueName:
        if !std.isString(QueueName) then (error 'QueueName must be a string')
        else if std.isEmpty(QueueName) then (error 'QueueName must be not empty')
        else QueueName,
    },
  },
  setReceiveMessageWaitTimeSeconds(ReceiveMessageWaitTimeSeconds): {
    Properties+::: {
      ReceiveMessageWaitTimeSeconds:
        if !std.isNumber(ReceiveMessageWaitTimeSeconds) then (error 'ReceiveMessageWaitTimeSeconds must be an number')
        else ReceiveMessageWaitTimeSeconds,
    },
  },
  setRedriveAllowPolicy(RedriveAllowPolicy): {
    Properties+::: {
      RedriveAllowPolicy: RedriveAllowPolicy,
    },
  },
  setRedrivePolicy(RedrivePolicy): {
    Properties+::: {
      RedrivePolicy: RedrivePolicy,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setVisibilityTimeout(VisibilityTimeout): {
    Properties+::: {
      VisibilityTimeout:
        if !std.isNumber(VisibilityTimeout) then (error 'VisibilityTimeout must be an number')
        else VisibilityTimeout,
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
