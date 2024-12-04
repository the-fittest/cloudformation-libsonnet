{
  new(
    InstanceArn,
    ResourceType,
    StorageType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(InstanceArn) : 'InstanceArn must be a string',
      InstanceArn: InstanceArn,
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      assert ResourceType == 'CHAT_TRANSCRIPTS' || ResourceType == 'CALL_RECORDINGS' || ResourceType == 'SCHEDULED_REPORTS' || ResourceType == 'MEDIA_STREAMS' || ResourceType == 'CONTACT_TRACE_RECORDS' || ResourceType == 'AGENT_EVENTS' : "ResourceType should be 'CHAT_TRANSCRIPTS' or 'CALL_RECORDINGS' or 'SCHEDULED_REPORTS' or 'MEDIA_STREAMS' or 'CONTACT_TRACE_RECORDS' or 'AGENT_EVENTS'",
      ResourceType: ResourceType,
      assert std.isString(StorageType) : 'StorageType must be a string',
      assert StorageType == 'S3' || StorageType == 'KINESIS_VIDEO_STREAM' || StorageType == 'KINESIS_STREAM' || StorageType == 'KINESIS_FIREHOSE' : "StorageType should be 'S3' or 'KINESIS_VIDEO_STREAM' or 'KINESIS_STREAM' or 'KINESIS_FIREHOSE'",
      StorageType: StorageType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::InstanceStorageConfig',
  },
  withAssociationId(AssociationId): {
    assert std.isString(AssociationId) : 'AssociationId must be a string',
    Properties+::: {
      AssociationId: AssociationId,
    },
  },
  withS3Config(S3Config): {
    assert std.isObject(S3Config) : 'S3Config must be a object',
    Properties+::: {
      S3Config: S3Config,
    },
  },
  withKinesisVideoStreamConfig(KinesisVideoStreamConfig): {
    assert std.isObject(KinesisVideoStreamConfig) : 'KinesisVideoStreamConfig must be a object',
    Properties+::: {
      KinesisVideoStreamConfig: KinesisVideoStreamConfig,
    },
  },
  withKinesisStreamConfig(KinesisStreamConfig): {
    assert std.isObject(KinesisStreamConfig) : 'KinesisStreamConfig must be a object',
    Properties+::: {
      KinesisStreamConfig: KinesisStreamConfig,
    },
  },
  withKinesisFirehoseConfig(KinesisFirehoseConfig): {
    assert std.isObject(KinesisFirehoseConfig) : 'KinesisFirehoseConfig must be a object',
    Properties+::: {
      KinesisFirehoseConfig: KinesisFirehoseConfig,
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
