{
  new(
    ServerlessCacheName,
    Engine,
  ): {
    local base = self,
    Properties: {
      ServerlessCacheName:
        if !std.isString(ServerlessCacheName) then (error 'ServerlessCacheName must be a string')
        else if std.isEmpty(ServerlessCacheName) then (error 'ServerlessCacheName must be not empty')
        else ServerlessCacheName,
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else Engine,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::ServerlessCache',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setMajorEngineVersion(MajorEngineVersion): {
    Properties+::: {
      MajorEngineVersion:
        if !std.isString(MajorEngineVersion) then (error 'MajorEngineVersion must be a string')
        else if std.isEmpty(MajorEngineVersion) then (error 'MajorEngineVersion must be not empty')
        else MajorEngineVersion,
    },
  },
  setFullEngineVersion(FullEngineVersion): {
    Properties+::: {
      FullEngineVersion:
        if !std.isString(FullEngineVersion) then (error 'FullEngineVersion must be a string')
        else if std.isEmpty(FullEngineVersion) then (error 'FullEngineVersion must be not empty')
        else FullEngineVersion,
    },
  },
  setCacheUsageLimits(CacheUsageLimits): {
    Properties+::: {
      CacheUsageLimits:
        if !std.isObject(CacheUsageLimits) then (error 'CacheUsageLimits must be an object')
        else CacheUsageLimits,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  pushSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setSnapshotArnsToRestore(SnapshotArnsToRestore): {
    Properties+::: {
      SnapshotArnsToRestore:
        if !std.isArray(SnapshotArnsToRestore) then (error 'SnapshotArnsToRestore must be an array')
        else SnapshotArnsToRestore,
    },
  },
  pushSnapshotArnsToRestore(SnapshotArnsToRestore): {
    Properties+::: {
      SnapshotArnsToRestore+: SnapshotArnsToRestore,
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
  setUserGroupId(UserGroupId): {
    Properties+::: {
      UserGroupId:
        if !std.isString(UserGroupId) then (error 'UserGroupId must be a string')
        else if std.isEmpty(UserGroupId) then (error 'UserGroupId must be not empty')
        else UserGroupId,
    },
  },
  setSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else SubnetIds,
    },
  },
  pushSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds+: SubnetIds,
    },
  },
  setSnapshotRetentionLimit(SnapshotRetentionLimit): {
    Properties+::: {
      SnapshotRetentionLimit:
        if !std.isNumber(SnapshotRetentionLimit) then (error 'SnapshotRetentionLimit must be an number')
        else SnapshotRetentionLimit,
    },
  },
  setDailySnapshotTime(DailySnapshotTime): {
    Properties+::: {
      DailySnapshotTime:
        if !std.isString(DailySnapshotTime) then (error 'DailySnapshotTime must be a string')
        else if std.isEmpty(DailySnapshotTime) then (error 'DailySnapshotTime must be not empty')
        else DailySnapshotTime,
    },
  },
  setCreateTime(CreateTime): {
    Properties+::: {
      CreateTime:
        if !std.isString(CreateTime) then (error 'CreateTime must be a string')
        else if std.isEmpty(CreateTime) then (error 'CreateTime must be not empty')
        else CreateTime,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isObject(Endpoint) then (error 'Endpoint must be an object')
        else Endpoint,
    },
  },
  setReaderEndpoint(ReaderEndpoint): {
    Properties+::: {
      ReaderEndpoint:
        if !std.isObject(ReaderEndpoint) then (error 'ReaderEndpoint must be an object')
        else ReaderEndpoint,
    },
  },
  setARN(ARN): {
    Properties+::: {
      ARN:
        if !std.isString(ARN) then (error 'ARN must be a string')
        else if std.isEmpty(ARN) then (error 'ARN must be not empty')
        else ARN,
    },
  },
  setFinalSnapshotName(FinalSnapshotName): {
    Properties+::: {
      FinalSnapshotName:
        if !std.isString(FinalSnapshotName) then (error 'FinalSnapshotName must be a string')
        else if std.isEmpty(FinalSnapshotName) then (error 'FinalSnapshotName must be not empty')
        else FinalSnapshotName,
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
