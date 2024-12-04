{
  // AWS NeptuneGraph PrivateGraphEndpoint
  PrivateGraphEndpoint: {
    new(
      GraphIdentifier,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GraphIdentifier) : 'GraphIdentifier must be a string',
        GraphIdentifier: GraphIdentifier,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::NeptuneGraph::PrivateGraphEndpoint',
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
    withPrivateGraphEndpointIdentifier(PrivateGraphEndpointIdentifier): {
      assert std.isString(PrivateGraphEndpointIdentifier) : 'PrivateGraphEndpointIdentifier must be a string',
      Properties+::: {
        PrivateGraphEndpointIdentifier: PrivateGraphEndpointIdentifier,
      },
    },
    withVpcEndpointId(VpcEndpointId): {
      assert std.isString(VpcEndpointId) : 'VpcEndpointId must be a string',
      Properties+::: {
        VpcEndpointId: VpcEndpointId,
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
