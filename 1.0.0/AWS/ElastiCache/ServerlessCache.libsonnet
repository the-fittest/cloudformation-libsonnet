{
  // AWS ElastiCache ServerlessCache
  ServerlessCache: {
    new(
      ServerlessCacheName,
      Engine,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServerlessCacheName) : 'ServerlessCacheName must be a string',
        ServerlessCacheName: ServerlessCacheName,
        assert std.isString(Engine) : 'Engine must be a string',
        Engine: Engine,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ElastiCache::ServerlessCache',
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withMajorEngineVersion(MajorEngineVersion): {
      assert std.isString(MajorEngineVersion) : 'MajorEngineVersion must be a string',
      Properties+::: {
        MajorEngineVersion: MajorEngineVersion,
      },
    },
    withFullEngineVersion(FullEngineVersion): {
      assert std.isString(FullEngineVersion) : 'FullEngineVersion must be a string',
      Properties+::: {
        FullEngineVersion: FullEngineVersion,
      },
    },
    withCacheUsageLimits(CacheUsageLimits): {
      assert std.isObject(CacheUsageLimits) : 'CacheUsageLimits must be a object',
      Properties+::: {
        CacheUsageLimits: CacheUsageLimits,
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withSecurityGroupIds(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSecurityGroupIdsMixin(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSnapshotArnsToRestore(SnapshotArnsToRestore): {
      Properties+::: {
        SnapshotArnsToRestore: (if std.isArray(SnapshotArnsToRestore) then SnapshotArnsToRestore else [SnapshotArnsToRestore]),
      },
    },
    withSnapshotArnsToRestoreMixin(SnapshotArnsToRestore): {
      Properties+::: {
        SnapshotArnsToRestore+: (if std.isArray(SnapshotArnsToRestore) then SnapshotArnsToRestore else [SnapshotArnsToRestore]),
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
    withUserGroupId(UserGroupId): {
      assert std.isString(UserGroupId) : 'UserGroupId must be a string',
      Properties+::: {
        UserGroupId: UserGroupId,
      },
    },
    withSubnetIds(SubnetIds): {
      Properties+::: {
        SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
      },
    },
    withSubnetIdsMixin(SubnetIds): {
      Properties+::: {
        SubnetIds+: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
      },
    },
    withSnapshotRetentionLimit(SnapshotRetentionLimit): {
      assert std.isNumber(SnapshotRetentionLimit) : 'SnapshotRetentionLimit must be a number',
      Properties+::: {
        SnapshotRetentionLimit: SnapshotRetentionLimit,
      },
    },
    withDailySnapshotTime(DailySnapshotTime): {
      assert std.isString(DailySnapshotTime) : 'DailySnapshotTime must be a string',
      Properties+::: {
        DailySnapshotTime: DailySnapshotTime,
      },
    },
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: {
        CreateTime: CreateTime,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withEndpoint(Endpoint): {
      assert std.isObject(Endpoint) : 'Endpoint must be a object',
      Properties+::: {
        Endpoint: Endpoint,
      },
    },
    withReaderEndpoint(ReaderEndpoint): {
      assert std.isObject(ReaderEndpoint) : 'ReaderEndpoint must be a object',
      Properties+::: {
        ReaderEndpoint: ReaderEndpoint,
      },
    },
    withARN(ARN): {
      assert std.isString(ARN) : 'ARN must be a string',
      Properties+::: {
        ARN: ARN,
      },
    },
    withFinalSnapshotName(FinalSnapshotName): {
      assert std.isString(FinalSnapshotName) : 'FinalSnapshotName must be a string',
      Properties+::: {
        FinalSnapshotName: FinalSnapshotName,
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
