{
  new(
    SyncName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(SyncName) : 'SyncName must be a string',
      SyncName: SyncName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSM::ResourceDataSync',
  },
  withS3Destination(S3Destination): {
    assert std.isObject(S3Destination) : 'S3Destination must be a object',
    Properties+::: {
      S3Destination: S3Destination,
    },
  },
  withKMSKeyArn(KMSKeyArn): {
    assert std.isString(KMSKeyArn) : 'KMSKeyArn must be a string',
    Properties+::: {
      KMSKeyArn: KMSKeyArn,
    },
  },
  withSyncSource(SyncSource): {
    assert std.isObject(SyncSource) : 'SyncSource must be a object',
    Properties+::: {
      SyncSource: SyncSource,
    },
  },
  withBucketName(BucketName): {
    assert std.isString(BucketName) : 'BucketName must be a string',
    Properties+::: {
      BucketName: BucketName,
    },
  },
  withBucketRegion(BucketRegion): {
    assert std.isString(BucketRegion) : 'BucketRegion must be a string',
    Properties+::: {
      BucketRegion: BucketRegion,
    },
  },
  withSyncFormat(SyncFormat): {
    assert std.isString(SyncFormat) : 'SyncFormat must be a string',
    Properties+::: {
      SyncFormat: SyncFormat,
    },
  },
  withSyncType(SyncType): {
    assert std.isString(SyncType) : 'SyncType must be a string',
    Properties+::: {
      SyncType: SyncType,
    },
  },
  withBucketPrefix(BucketPrefix): {
    assert std.isString(BucketPrefix) : 'BucketPrefix must be a string',
    Properties+::: {
      BucketPrefix: BucketPrefix,
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
