{
  new(
    LoadBalancerName,
    InstancePort,
  ): {
    local base = self,
    Properties: {
      assert std.isString(LoadBalancerName) : 'LoadBalancerName must be a string',
      LoadBalancerName: LoadBalancerName,
      assert std.isNumber(InstancePort) : 'InstancePort must be a number',
      InstancePort: InstancePort,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::LoadBalancer',
  },
  withLoadBalancerArn(LoadBalancerArn): {
    assert std.isString(LoadBalancerArn) : 'LoadBalancerArn must be a string',
    Properties+::: {
      LoadBalancerArn: LoadBalancerArn,
    },
  },
  withIpAddressType(IpAddressType): {
    assert std.isString(IpAddressType) : 'IpAddressType must be a string',
    Properties+::: {
      IpAddressType: IpAddressType,
    },
  },
  withAttachedInstances(AttachedInstances): {
    Properties+::: {
      AttachedInstances: (if std.isArray(AttachedInstances) then AttachedInstances else [AttachedInstances]),
    },
  },
  withAttachedInstancesMixin(AttachedInstances): {
    Properties+::: {
      AttachedInstances+: (if std.isArray(AttachedInstances) then AttachedInstances else [AttachedInstances]),
    },
  },
  withHealthCheckPath(HealthCheckPath): {
    assert std.isString(HealthCheckPath) : 'HealthCheckPath must be a string',
    Properties+::: {
      HealthCheckPath: HealthCheckPath,
    },
  },
  withSessionStickinessEnabled(SessionStickinessEnabled): {
    assert std.isBoolean(SessionStickinessEnabled) : 'SessionStickinessEnabled must be a boolean',
    Properties+::: {
      SessionStickinessEnabled: SessionStickinessEnabled,
    },
  },
  withSessionStickinessLBCookieDurationSeconds(SessionStickinessLBCookieDurationSeconds): {
    assert std.isString(SessionStickinessLBCookieDurationSeconds) : 'SessionStickinessLBCookieDurationSeconds must be a string',
    Properties+::: {
      SessionStickinessLBCookieDurationSeconds: SessionStickinessLBCookieDurationSeconds,
    },
  },
  withTlsPolicyName(TlsPolicyName): {
    assert std.isString(TlsPolicyName) : 'TlsPolicyName must be a string',
    Properties+::: {
      TlsPolicyName: TlsPolicyName,
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
}
