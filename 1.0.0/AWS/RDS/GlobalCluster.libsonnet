{
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
    Type: 'AWS::RDS::GlobalCluster',
  },
  withEngine(Engine): {
    assert std.isString(Engine) : 'Engine must be a string',
    assert Engine == 'aurora' || Engine == 'aurora-mysql' || Engine == 'aurora-postgresql' : "Engine should be 'aurora' or 'aurora-mysql' or 'aurora-postgresql'",
    Properties+::: {
      Engine: Engine,
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
  withEngineLifecycleSupport(EngineLifecycleSupport): {
    assert std.isString(EngineLifecycleSupport) : 'EngineLifecycleSupport must be a string',
    Properties+::: {
      EngineLifecycleSupport: EngineLifecycleSupport,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withDeletionProtection(DeletionProtection): {
    assert std.isBoolean(DeletionProtection) : 'DeletionProtection must be a boolean',
    Properties+::: {
      DeletionProtection: DeletionProtection,
    },
  },
  withGlobalClusterIdentifier(GlobalClusterIdentifier): {
    assert std.isString(GlobalClusterIdentifier) : 'GlobalClusterIdentifier must be a string',
    Properties+::: {
      GlobalClusterIdentifier: GlobalClusterIdentifier,
    },
  },
  withSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
    assert std.isString(SourceDBClusterIdentifier) : 'SourceDBClusterIdentifier must be a string',
    Properties+::: {
      SourceDBClusterIdentifier: SourceDBClusterIdentifier,
    },
  },
  withStorageEncrypted(StorageEncrypted): {
    assert std.isBoolean(StorageEncrypted) : 'StorageEncrypted must be a boolean',
    Properties+::: {
      StorageEncrypted: StorageEncrypted,
    },
  },
  withGlobalEndpoint(GlobalEndpoint): {
    assert std.isObject(GlobalEndpoint) : 'GlobalEndpoint must be a object',
    Properties+::: {
      GlobalEndpoint: GlobalEndpoint,
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
