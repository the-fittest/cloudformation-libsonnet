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
    Type: 'AWS::SNS::Topic',
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else DisplayName,
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
  setDataProtectionPolicy(DataProtectionPolicy): {
    Properties+::: {
      DataProtectionPolicy:
        if !std.isObject(DataProtectionPolicy) then (error 'DataProtectionPolicy must be an object')
        else DataProtectionPolicy,
    },
  },
  setSubscription(Subscription): {
    Properties+::: {
      Subscription:
        if !std.isArray(Subscription) then (error 'Subscription must be an array')
        else Subscription,
    },
  },
  pushSubscription(Subscription): {
    Properties+::: {
      Subscription+: Subscription,
    },
  },
  setFifoTopic(FifoTopic): {
    Properties+::: {
      FifoTopic:
        if !std.isBoolean(FifoTopic) then (error 'FifoTopic must be a boolean') else FifoTopic,
    },
  },
  setContentBasedDeduplication(ContentBasedDeduplication): {
    Properties+::: {
      ContentBasedDeduplication:
        if !std.isBoolean(ContentBasedDeduplication) then (error 'ContentBasedDeduplication must be a boolean') else ContentBasedDeduplication,
    },
  },
  setArchivePolicy(ArchivePolicy): {
    Properties+::: {
      ArchivePolicy:
        if !std.isObject(ArchivePolicy) then (error 'ArchivePolicy must be an object')
        else ArchivePolicy,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTopicName(TopicName): {
    Properties+::: {
      TopicName:
        if !std.isString(TopicName) then (error 'TopicName must be a string')
        else if std.isEmpty(TopicName) then (error 'TopicName must be not empty')
        else TopicName,
    },
  },
  setTopicArn(TopicArn): {
    Properties+::: {
      TopicArn:
        if !std.isString(TopicArn) then (error 'TopicArn must be a string')
        else if std.isEmpty(TopicArn) then (error 'TopicArn must be not empty')
        else TopicArn,
    },
  },
  setSignatureVersion(SignatureVersion): {
    Properties+::: {
      SignatureVersion:
        if !std.isString(SignatureVersion) then (error 'SignatureVersion must be a string')
        else if std.isEmpty(SignatureVersion) then (error 'SignatureVersion must be not empty')
        else SignatureVersion,
    },
  },
  setTracingConfig(TracingConfig): {
    Properties+::: {
      TracingConfig:
        if !std.isString(TracingConfig) then (error 'TracingConfig must be a string')
        else if std.isEmpty(TracingConfig) then (error 'TracingConfig must be not empty')
        else TracingConfig,
    },
  },
  setDeliveryStatusLogging(DeliveryStatusLogging): {
    Properties+::: {
      DeliveryStatusLogging:
        if !std.isArray(DeliveryStatusLogging) then (error 'DeliveryStatusLogging must be an array')
        else DeliveryStatusLogging,
    },
  },
  pushDeliveryStatusLogging(DeliveryStatusLogging): {
    Properties+::: {
      DeliveryStatusLogging+: DeliveryStatusLogging,
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
