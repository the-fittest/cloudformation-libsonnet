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
    Type: 'AWS::SecurityLake::DataLake',
  },
  setEncryptionConfiguration(EncryptionConfiguration): {
    Properties+::: {
      EncryptionConfiguration:
        if !std.isObject(EncryptionConfiguration) then (error 'EncryptionConfiguration must be an object')
        else EncryptionConfiguration,
    },
  },
  setLifecycleConfiguration(LifecycleConfiguration): {
    Properties+::: {
      LifecycleConfiguration:
        if !std.isObject(LifecycleConfiguration) then (error 'LifecycleConfiguration must be an object')
        else LifecycleConfiguration,
    },
  },
  setReplicationConfiguration(ReplicationConfiguration): {
    Properties+::: {
      ReplicationConfiguration:
        if !std.isObject(ReplicationConfiguration) then (error 'ReplicationConfiguration must be an object')
        else ReplicationConfiguration,
    },
  },
  setMetaStoreManagerRoleArn(MetaStoreManagerRoleArn): {
    Properties+::: {
      MetaStoreManagerRoleArn:
        if !std.isString(MetaStoreManagerRoleArn) then (error 'MetaStoreManagerRoleArn must be a string')
        else if std.isEmpty(MetaStoreManagerRoleArn) then (error 'MetaStoreManagerRoleArn must be not empty')
        else MetaStoreManagerRoleArn,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1011 then error ('Arn should have not more than 1011 characters')
        else Arn,
    },
  },
  setS3BucketArn(S3BucketArn): {
    Properties+::: {
      S3BucketArn:
        if !std.isString(S3BucketArn) then (error 'S3BucketArn must be a string')
        else if std.isEmpty(S3BucketArn) then (error 'S3BucketArn must be not empty')
        else S3BucketArn,
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
