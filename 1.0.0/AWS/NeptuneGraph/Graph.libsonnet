{
  // AWS NeptuneGraph Graph
  Graph: {
    new(
      ProvisionedMemory,
    ): {
      local base = self,
      Properties: {
        assert std.isNumber(ProvisionedMemory) : 'ProvisionedMemory must be a number',
        ProvisionedMemory: ProvisionedMemory,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::NeptuneGraph::Graph',
    },
    withDeletionProtection(DeletionProtection): {
      assert std.isBoolean(DeletionProtection) : 'DeletionProtection must be a boolean',
      Properties+::: {
        DeletionProtection: DeletionProtection,
      },
    },
    withGraphName(GraphName): {
      assert std.isString(GraphName) : 'GraphName must be a string',
      Properties+::: {
        GraphName: GraphName,
      },
    },
    withPublicConnectivity(PublicConnectivity): {
      assert std.isBoolean(PublicConnectivity) : 'PublicConnectivity must be a boolean',
      Properties+::: {
        PublicConnectivity: PublicConnectivity,
      },
    },
    withReplicaCount(ReplicaCount): {
      assert std.isNumber(ReplicaCount) : 'ReplicaCount must be a number',
      Properties+::: {
        ReplicaCount: ReplicaCount,
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
    withVectorSearchConfiguration(VectorSearchConfiguration): {
      assert std.isObject(VectorSearchConfiguration) : 'VectorSearchConfiguration must be a object',
      Properties+::: {
        VectorSearchConfiguration: VectorSearchConfiguration,
      },
    },
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: {
        Endpoint: Endpoint,
      },
    },
    withGraphArn(GraphArn): {
      assert std.isString(GraphArn) : 'GraphArn must be a string',
      Properties+::: {
        GraphArn: GraphArn,
      },
    },
    withGraphId(GraphId): {
      assert std.isString(GraphId) : 'GraphId must be a string',
      Properties+::: {
        GraphId: GraphId,
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
