{
  new(
    InstanceArn,
    ResourceType,
    StorageType,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else if ResourceType != 'CHAT_TRANSCRIPTS' && ResourceType != 'CALL_RECORDINGS' && ResourceType != 'SCHEDULED_REPORTS' && ResourceType != 'MEDIA_STREAMS' && ResourceType != 'CONTACT_TRACE_RECORDS' && ResourceType != 'AGENT_EVENTS' then (error "ResourceType should be 'CHAT_TRANSCRIPTS' or 'CALL_RECORDINGS' or 'SCHEDULED_REPORTS' or 'MEDIA_STREAMS' or 'CONTACT_TRACE_RECORDS' or 'AGENT_EVENTS'")
        else ResourceType,
      StorageType:
        if !std.isString(StorageType) then (error 'StorageType must be a string')
        else if std.isEmpty(StorageType) then (error 'StorageType must be not empty')
        else if StorageType != 'S3' && StorageType != 'KINESIS_VIDEO_STREAM' && StorageType != 'KINESIS_STREAM' && StorageType != 'KINESIS_FIREHOSE' then (error "StorageType should be 'S3' or 'KINESIS_VIDEO_STREAM' or 'KINESIS_STREAM' or 'KINESIS_FIREHOSE'")
        else StorageType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::InstanceStorageConfig',
  },
  setAssociationId(AssociationId): {
    Properties+::: {
      AssociationId:
        if !std.isString(AssociationId) then (error 'AssociationId must be a string')
        else if std.isEmpty(AssociationId) then (error 'AssociationId must be not empty')
        else if std.length(AssociationId) < 1 then error ('AssociationId should have at least 1 characters')
        else if std.length(AssociationId) > 100 then error ('AssociationId should have not more than 100 characters')
        else AssociationId,
    },
  },
  setS3Config(S3Config): {
    Properties+::: {
      S3Config:
        if !std.isObject(S3Config) then (error 'S3Config must be an object')
        else if !std.objectHas(S3Config, 'BucketName') then (error ' have attribute BucketName')
        else if !std.objectHas(S3Config, 'BucketPrefix') then (error ' have attribute BucketPrefix')
        else S3Config,
    },
  },
  setKinesisVideoStreamConfig(KinesisVideoStreamConfig): {
    Properties+::: {
      KinesisVideoStreamConfig:
        if !std.isObject(KinesisVideoStreamConfig) then (error 'KinesisVideoStreamConfig must be an object')
        else if !std.objectHas(KinesisVideoStreamConfig, 'Prefix') then (error ' have attribute Prefix')
        else if !std.objectHas(KinesisVideoStreamConfig, 'RetentionPeriodHours') then (error ' have attribute RetentionPeriodHours')
        else if !std.objectHas(KinesisVideoStreamConfig, 'EncryptionConfig') then (error ' have attribute EncryptionConfig')
        else KinesisVideoStreamConfig,
    },
  },
  setKinesisStreamConfig(KinesisStreamConfig): {
    Properties+::: {
      KinesisStreamConfig:
        if !std.isObject(KinesisStreamConfig) then (error 'KinesisStreamConfig must be an object')
        else if !std.objectHas(KinesisStreamConfig, 'StreamArn') then (error ' have attribute StreamArn')
        else KinesisStreamConfig,
    },
  },
  setKinesisFirehoseConfig(KinesisFirehoseConfig): {
    Properties+::: {
      KinesisFirehoseConfig:
        if !std.isObject(KinesisFirehoseConfig) then (error 'KinesisFirehoseConfig must be an object')
        else if !std.objectHas(KinesisFirehoseConfig, 'FirehoseArn') then (error ' have attribute FirehoseArn')
        else KinesisFirehoseConfig,
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
