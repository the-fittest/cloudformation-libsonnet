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
    Type: 'AWS::EC2::VPCEndpointService',
  },
  setNetworkLoadBalancerArns(NetworkLoadBalancerArns): {
    Properties+::: {
      NetworkLoadBalancerArns:
        if !std.isArray(NetworkLoadBalancerArns) then (error 'NetworkLoadBalancerArns must be an array')
        else NetworkLoadBalancerArns,
    },
  },
  setNetworkLoadBalancerArnsMixin(NetworkLoadBalancerArns): {
    Properties+::: {
      NetworkLoadBalancerArns+: NetworkLoadBalancerArns,
    },
  },
  setContributorInsightsEnabled(ContributorInsightsEnabled): {
    Properties+::: {
      ContributorInsightsEnabled:
        if !std.isBoolean(ContributorInsightsEnabled) then (error 'ContributorInsightsEnabled must be a boolean') else ContributorInsightsEnabled,
    },
  },
  setPayerResponsibility(PayerResponsibility): {
    Properties+::: {
      PayerResponsibility:
        if !std.isString(PayerResponsibility) then (error 'PayerResponsibility must be a string')
        else if std.isEmpty(PayerResponsibility) then (error 'PayerResponsibility must be not empty')
        else PayerResponsibility,
    },
  },
  setServiceId(ServiceId): {
    Properties+::: {
      ServiceId:
        if !std.isString(ServiceId) then (error 'ServiceId must be a string')
        else if std.isEmpty(ServiceId) then (error 'ServiceId must be not empty')
        else ServiceId,
    },
  },
  setAcceptanceRequired(AcceptanceRequired): {
    Properties+::: {
      AcceptanceRequired:
        if !std.isBoolean(AcceptanceRequired) then (error 'AcceptanceRequired must be a boolean') else AcceptanceRequired,
    },
  },
  setGatewayLoadBalancerArns(GatewayLoadBalancerArns): {
    Properties+::: {
      GatewayLoadBalancerArns:
        if !std.isArray(GatewayLoadBalancerArns) then (error 'GatewayLoadBalancerArns must be an array')
        else GatewayLoadBalancerArns,
    },
  },
  setGatewayLoadBalancerArnsMixin(GatewayLoadBalancerArns): {
    Properties+::: {
      GatewayLoadBalancerArns+: GatewayLoadBalancerArns,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
