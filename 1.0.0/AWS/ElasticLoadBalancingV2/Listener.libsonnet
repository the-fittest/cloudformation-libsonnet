{
  // AWS ElasticLoadBalancingV2 Listener
  Listener: {
    new(
      LoadBalancerArn,
      DefaultActions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LoadBalancerArn) : 'LoadBalancerArn must be a string',
        LoadBalancerArn: LoadBalancerArn,
        DefaultActions: (if std.isArray(DefaultActions) then DefaultActions else [DefaultActions]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ElasticLoadBalancingV2::Listener',
    },
    withListenerArn(ListenerArn): {
      assert std.isString(ListenerArn) : 'ListenerArn must be a string',
      Properties+::: {
        ListenerArn: ListenerArn,
      },
    },
    withMutualAuthentication(MutualAuthentication): {
      assert std.isObject(MutualAuthentication) : 'MutualAuthentication must be a object',
      Properties+::: {
        MutualAuthentication: MutualAuthentication,
      },
    },
    withListenerAttributes(ListenerAttributes): {
      Properties+::: {
        ListenerAttributes: (if std.isArray(ListenerAttributes) then ListenerAttributes else [ListenerAttributes]),
      },
    },
    withListenerAttributesMixin(ListenerAttributes): {
      Properties+::: {
        ListenerAttributes+: (if std.isArray(ListenerAttributes) then ListenerAttributes else [ListenerAttributes]),
      },
    },
    withAlpnPolicy(AlpnPolicy): {
      Properties+::: {
        AlpnPolicy: (if std.isArray(AlpnPolicy) then AlpnPolicy else [AlpnPolicy]),
      },
    },
    withAlpnPolicyMixin(AlpnPolicy): {
      Properties+::: {
        AlpnPolicy+: (if std.isArray(AlpnPolicy) then AlpnPolicy else [AlpnPolicy]),
      },
    },
    withSslPolicy(SslPolicy): {
      assert std.isString(SslPolicy) : 'SslPolicy must be a string',
      Properties+::: {
        SslPolicy: SslPolicy,
      },
    },
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a number',
      Properties+::: {
        Port: Port,
      },
    },
    withCertificates(Certificates): {
      Properties+::: {
        Certificates: (if std.isArray(Certificates) then Certificates else [Certificates]),
      },
    },
    withCertificatesMixin(Certificates): {
      Properties+::: {
        Certificates+: (if std.isArray(Certificates) then Certificates else [Certificates]),
      },
    },
    withProtocol(Protocol): {
      assert std.isString(Protocol) : 'Protocol must be a string',
      Properties+::: {
        Protocol: Protocol,
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
