{
  // AWS NetworkFirewall Firewall
  Firewall: {
    new(
      FirewallName,
      FirewallPolicyArn,
      VpcId,
      SubnetMappings,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FirewallName) : 'FirewallName must be a string',
        FirewallName: FirewallName,
        assert std.isString(FirewallPolicyArn) : 'FirewallPolicyArn must be a string',
        FirewallPolicyArn: FirewallPolicyArn,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        SubnetMappings: (if std.isArray(SubnetMappings) then SubnetMappings else [SubnetMappings]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::NetworkFirewall::Firewall',
    },
    withFirewallArn(FirewallArn): {
      assert std.isString(FirewallArn) : 'FirewallArn must be a string',
      Properties+::: {
        FirewallArn: FirewallArn,
      },
    },
    withFirewallId(FirewallId): {
      assert std.isString(FirewallId) : 'FirewallId must be a string',
      Properties+::: {
        FirewallId: FirewallId,
      },
    },
    withDeleteProtection(DeleteProtection): {
      assert std.isBoolean(DeleteProtection) : 'DeleteProtection must be a boolean',
      Properties+::: {
        DeleteProtection: DeleteProtection,
      },
    },
    withSubnetChangeProtection(SubnetChangeProtection): {
      assert std.isBoolean(SubnetChangeProtection) : 'SubnetChangeProtection must be a boolean',
      Properties+::: {
        SubnetChangeProtection: SubnetChangeProtection,
      },
    },
    withFirewallPolicyChangeProtection(FirewallPolicyChangeProtection): {
      assert std.isBoolean(FirewallPolicyChangeProtection) : 'FirewallPolicyChangeProtection must be a boolean',
      Properties+::: {
        FirewallPolicyChangeProtection: FirewallPolicyChangeProtection,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withEndpointIds(EndpointIds): {
      Properties+::: {
        EndpointIds: (if std.isArray(EndpointIds) then EndpointIds else [EndpointIds]),
      },
    },
    withEndpointIdsMixin(EndpointIds): {
      Properties+::: {
        EndpointIds+: (if std.isArray(EndpointIds) then EndpointIds else [EndpointIds]),
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
