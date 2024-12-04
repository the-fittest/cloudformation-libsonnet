{
  new(
    Members,
  ): {
    local base = self,
    Properties: {
      Members: (if std.isArray(Members) then Members else [Members]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::GlobalReplicationGroup',
  },
  withGlobalReplicationGroupIdSuffix(GlobalReplicationGroupIdSuffix): {
    assert std.isString(GlobalReplicationGroupIdSuffix) : 'GlobalReplicationGroupIdSuffix must be a string',
    Properties+::: {
      GlobalReplicationGroupIdSuffix: GlobalReplicationGroupIdSuffix,
    },
  },
  withAutomaticFailoverEnabled(AutomaticFailoverEnabled): {
    assert std.isBoolean(AutomaticFailoverEnabled) : 'AutomaticFailoverEnabled must be a boolean',
    Properties+::: {
      AutomaticFailoverEnabled: AutomaticFailoverEnabled,
    },
  },
  withCacheNodeType(CacheNodeType): {
    assert std.isString(CacheNodeType) : 'CacheNodeType must be a string',
    Properties+::: {
      CacheNodeType: CacheNodeType,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withEngine(Engine): {
    assert std.isString(Engine) : 'Engine must be a string',
    Properties+::: {
      Engine: Engine,
    },
  },
  withCacheParameterGroupName(CacheParameterGroupName): {
    assert std.isString(CacheParameterGroupName) : 'CacheParameterGroupName must be a string',
    Properties+::: {
      CacheParameterGroupName: CacheParameterGroupName,
    },
  },
  withGlobalNodeGroupCount(GlobalNodeGroupCount): {
    assert std.isNumber(GlobalNodeGroupCount) : 'GlobalNodeGroupCount must be a number',
    Properties+::: {
      GlobalNodeGroupCount: GlobalNodeGroupCount,
    },
  },
  withGlobalReplicationGroupDescription(GlobalReplicationGroupDescription): {
    assert std.isString(GlobalReplicationGroupDescription) : 'GlobalReplicationGroupDescription must be a string',
    Properties+::: {
      GlobalReplicationGroupDescription: GlobalReplicationGroupDescription,
    },
  },
  withGlobalReplicationGroupId(GlobalReplicationGroupId): {
    assert std.isString(GlobalReplicationGroupId) : 'GlobalReplicationGroupId must be a string',
    Properties+::: {
      GlobalReplicationGroupId: GlobalReplicationGroupId,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withRegionalConfigurations(RegionalConfigurations): {
    Properties+::: {
      RegionalConfigurations: (if std.isArray(RegionalConfigurations) then RegionalConfigurations else [RegionalConfigurations]),
    },
  },
  withRegionalConfigurationsMixin(RegionalConfigurations): {
    Properties+::: {
      RegionalConfigurations+: (if std.isArray(RegionalConfigurations) then RegionalConfigurations else [RegionalConfigurations]),
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
