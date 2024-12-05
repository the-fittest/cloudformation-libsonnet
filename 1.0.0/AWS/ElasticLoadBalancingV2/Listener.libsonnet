{
  new(
    LoadBalancerArn,
    DefaultActions,
  ): {
    local base = self,
    Properties: {
      LoadBalancerArn:
        if !std.isString(LoadBalancerArn) then (error 'LoadBalancerArn must be a string')
        else if std.isEmpty(LoadBalancerArn) then (error 'LoadBalancerArn must be not empty')
        else LoadBalancerArn,
      DefaultActions:
        if !std.isArray(DefaultActions) then (error 'DefaultActions must be an array')
        else DefaultActions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticLoadBalancingV2::Listener',
  },
  setListenerArn(ListenerArn): {
    Properties+::: {
      ListenerArn:
        if !std.isString(ListenerArn) then (error 'ListenerArn must be a string')
        else if std.isEmpty(ListenerArn) then (error 'ListenerArn must be not empty')
        else ListenerArn,
    },
  },
  setMutualAuthentication(MutualAuthentication): {
    Properties+::: {
      MutualAuthentication:
        if !std.isObject(MutualAuthentication) then (error 'MutualAuthentication must be an object')
        else MutualAuthentication,
    },
  },
  setListenerAttributes(ListenerAttributes): {
    Properties+::: {
      ListenerAttributes:
        if !std.isArray(ListenerAttributes) then (error 'ListenerAttributes must be an array')
        else ListenerAttributes,
    },
  },
  setListenerAttributesMixin(ListenerAttributes): {
    Properties+::: {
      ListenerAttributes+: ListenerAttributes,
    },
  },
  setAlpnPolicy(AlpnPolicy): {
    Properties+::: {
      AlpnPolicy:
        if !std.isArray(AlpnPolicy) then (error 'AlpnPolicy must be an array')
        else AlpnPolicy,
    },
  },
  setAlpnPolicyMixin(AlpnPolicy): {
    Properties+::: {
      AlpnPolicy+: AlpnPolicy,
    },
  },
  setSslPolicy(SslPolicy): {
    Properties+::: {
      SslPolicy:
        if !std.isString(SslPolicy) then (error 'SslPolicy must be a string')
        else if std.isEmpty(SslPolicy) then (error 'SslPolicy must be not empty')
        else SslPolicy,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setCertificates(Certificates): {
    Properties+::: {
      Certificates:
        if !std.isArray(Certificates) then (error 'Certificates must be an array')
        else Certificates,
    },
  },
  setCertificatesMixin(Certificates): {
    Properties+::: {
      Certificates+: Certificates,
    },
  },
  setProtocol(Protocol): {
    Properties+::: {
      Protocol:
        if !std.isString(Protocol) then (error 'Protocol must be a string')
        else if std.isEmpty(Protocol) then (error 'Protocol must be not empty')
        else Protocol,
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
