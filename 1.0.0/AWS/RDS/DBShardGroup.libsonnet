{
  // AWS RDS DBShardGroup
  DBShardGroup: {
    new(
      DBClusterIdentifier,
      MaxACU,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
        DBClusterIdentifier: DBClusterIdentifier,
        assert std.isNumber(MaxACU) : 'MaxACU must be a number',
        MaxACU: MaxACU,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RDS::DBShardGroup',
    },
    withDBShardGroupResourceId(DBShardGroupResourceId): {
      assert std.isString(DBShardGroupResourceId) : 'DBShardGroupResourceId must be a string',
      Properties+::: {
        DBShardGroupResourceId: DBShardGroupResourceId,
      },
    },
    withDBShardGroupIdentifier(DBShardGroupIdentifier): {
      assert std.isString(DBShardGroupIdentifier) : 'DBShardGroupIdentifier must be a string',
      Properties+::: {
        DBShardGroupIdentifier: DBShardGroupIdentifier,
      },
    },
    withComputeRedundancy(ComputeRedundancy): {
      assert std.isNumber(ComputeRedundancy) : 'ComputeRedundancy must be a number',
      Properties+::: {
        ComputeRedundancy: ComputeRedundancy,
      },
    },
    withMinACU(MinACU): {
      assert std.isNumber(MinACU) : 'MinACU must be a number',
      Properties+::: {
        MinACU: MinACU,
      },
    },
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: {
        PubliclyAccessible: PubliclyAccessible,
      },
    },
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: {
        Endpoint: Endpoint,
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
