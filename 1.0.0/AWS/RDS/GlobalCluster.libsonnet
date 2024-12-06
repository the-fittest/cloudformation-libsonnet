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
    Type: 'AWS::RDS::GlobalCluster',
  },
  setEngine(Engine): {
    Properties+::: {
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else if Engine != 'aurora' && Engine != 'aurora-mysql' && Engine != 'aurora-postgresql' then (error "Engine should be 'aurora' or 'aurora-mysql' or 'aurora-postgresql'")
        else Engine,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setEngineLifecycleSupport(EngineLifecycleSupport): {
    Properties+::: {
      EngineLifecycleSupport:
        if !std.isString(EngineLifecycleSupport) then (error 'EngineLifecycleSupport must be a string')
        else if std.isEmpty(EngineLifecycleSupport) then (error 'EngineLifecycleSupport must be not empty')
        else EngineLifecycleSupport,
    },
  },
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else EngineVersion,
    },
  },
  setDeletionProtection(DeletionProtection): {
    Properties+::: {
      DeletionProtection:
        if !std.isBoolean(DeletionProtection) then (error 'DeletionProtection must be a boolean') else DeletionProtection,
    },
  },
  setGlobalClusterIdentifier(GlobalClusterIdentifier): {
    Properties+::: {
      GlobalClusterIdentifier:
        if !std.isString(GlobalClusterIdentifier) then (error 'GlobalClusterIdentifier must be a string')
        else if std.isEmpty(GlobalClusterIdentifier) then (error 'GlobalClusterIdentifier must be not empty')
        else if std.length(GlobalClusterIdentifier) < 1 then error ('GlobalClusterIdentifier should have at least 1 characters')
        else if std.length(GlobalClusterIdentifier) > 63 then error ('GlobalClusterIdentifier should have not more than 63 characters')
        else GlobalClusterIdentifier,
    },
  },
  setSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
    Properties+::: {
      SourceDBClusterIdentifier:
        if !std.isString(SourceDBClusterIdentifier) then (error 'SourceDBClusterIdentifier must be a string')
        else if std.isEmpty(SourceDBClusterIdentifier) then (error 'SourceDBClusterIdentifier must be not empty')
        else SourceDBClusterIdentifier,
    },
  },
  setStorageEncrypted(StorageEncrypted): {
    Properties+::: {
      StorageEncrypted:
        if !std.isBoolean(StorageEncrypted) then (error 'StorageEncrypted must be a boolean') else StorageEncrypted,
    },
  },
  setGlobalEndpoint(GlobalEndpoint): {
    Properties+::: {
      GlobalEndpoint:
        if !std.isObject(GlobalEndpoint) then (error 'GlobalEndpoint must be an object')
        else GlobalEndpoint,
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
