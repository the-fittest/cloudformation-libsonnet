{
  // AWS EC2 VPCEndpointService
  VPCEndpointService: {
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
      Type: 'AWS::EC2::VPCEndpointService',
    },
    withNetworkLoadBalancerArns(NetworkLoadBalancerArns): {
      Properties+::: {
        NetworkLoadBalancerArns: (if std.isArray(NetworkLoadBalancerArns) then NetworkLoadBalancerArns else [NetworkLoadBalancerArns]),
      },
    },
    withNetworkLoadBalancerArnsMixin(NetworkLoadBalancerArns): {
      Properties+::: {
        NetworkLoadBalancerArns+: (if std.isArray(NetworkLoadBalancerArns) then NetworkLoadBalancerArns else [NetworkLoadBalancerArns]),
      },
    },
    withContributorInsightsEnabled(ContributorInsightsEnabled): {
      assert std.isBoolean(ContributorInsightsEnabled) : 'ContributorInsightsEnabled must be a boolean',
      Properties+::: {
        ContributorInsightsEnabled: ContributorInsightsEnabled,
      },
    },
    withPayerResponsibility(PayerResponsibility): {
      assert std.isString(PayerResponsibility) : 'PayerResponsibility must be a string',
      Properties+::: {
        PayerResponsibility: PayerResponsibility,
      },
    },
    withServiceId(ServiceId): {
      assert std.isString(ServiceId) : 'ServiceId must be a string',
      Properties+::: {
        ServiceId: ServiceId,
      },
    },
    withAcceptanceRequired(AcceptanceRequired): {
      assert std.isBoolean(AcceptanceRequired) : 'AcceptanceRequired must be a boolean',
      Properties+::: {
        AcceptanceRequired: AcceptanceRequired,
      },
    },
    withGatewayLoadBalancerArns(GatewayLoadBalancerArns): {
      Properties+::: {
        GatewayLoadBalancerArns: (if std.isArray(GatewayLoadBalancerArns) then GatewayLoadBalancerArns else [GatewayLoadBalancerArns]),
      },
    },
    withGatewayLoadBalancerArnsMixin(GatewayLoadBalancerArns): {
      Properties+::: {
        GatewayLoadBalancerArns+: (if std.isArray(GatewayLoadBalancerArns) then GatewayLoadBalancerArns else [GatewayLoadBalancerArns]),
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
