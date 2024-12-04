{
  new(
    NodeType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(NodeType) : 'NodeType must be a string',
      NodeType: NodeType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MemoryDB::MultiRegionCluster',
  },
  withMultiRegionClusterNameSuffix(MultiRegionClusterNameSuffix): {
    assert std.isString(MultiRegionClusterNameSuffix) : 'MultiRegionClusterNameSuffix must be a string',
    Properties+::: {
      MultiRegionClusterNameSuffix: MultiRegionClusterNameSuffix,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withMultiRegionClusterName(MultiRegionClusterName): {
    assert std.isString(MultiRegionClusterName) : 'MultiRegionClusterName must be a string',
    Properties+::: {
      MultiRegionClusterName: MultiRegionClusterName,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withNumShards(NumShards): {
    assert std.isNumber(NumShards) : 'NumShards must be a number',
    Properties+::: {
      NumShards: NumShards,
    },
  },
  withMultiRegionParameterGroupName(MultiRegionParameterGroupName): {
    assert std.isString(MultiRegionParameterGroupName) : 'MultiRegionParameterGroupName must be a string',
    Properties+::: {
      MultiRegionParameterGroupName: MultiRegionParameterGroupName,
    },
  },
  withTLSEnabled(TLSEnabled): {
    assert std.isBoolean(TLSEnabled) : 'TLSEnabled must be a boolean',
    Properties+::: {
      TLSEnabled: TLSEnabled,
    },
  },
  withARN(ARN): {
    assert std.isString(ARN) : 'ARN must be a string',
    Properties+::: {
      ARN: ARN,
    },
  },
  withEngine(Engine): {
    assert std.isString(Engine) : 'Engine must be a string',
    Properties+::: {
      Engine: Engine,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
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
  withUpdateStrategy(UpdateStrategy): {
    assert std.isString(UpdateStrategy) : 'UpdateStrategy must be a string',
    Properties+::: {
      UpdateStrategy: UpdateStrategy,
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
