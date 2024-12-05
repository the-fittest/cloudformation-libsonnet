{
  new(
    LoadBalancerName,
    InstancePort,
  ): {
    local base = self,
    Properties: {
      LoadBalancerName:
        if !std.isString(LoadBalancerName) then (error 'LoadBalancerName must be a string')
        else if std.isEmpty(LoadBalancerName) then (error 'LoadBalancerName must be not empty')
        else LoadBalancerName,
      InstancePort:
        if !std.isNumber(InstancePort) then (error 'InstancePort must be an number')
        else InstancePort,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::LoadBalancer',
  },
  setLoadBalancerArn(LoadBalancerArn): {
    Properties+::: {
      LoadBalancerArn:
        if !std.isString(LoadBalancerArn) then (error 'LoadBalancerArn must be a string')
        else if std.isEmpty(LoadBalancerArn) then (error 'LoadBalancerArn must be not empty')
        else LoadBalancerArn,
    },
  },
  setIpAddressType(IpAddressType): {
    Properties+::: {
      IpAddressType:
        if !std.isString(IpAddressType) then (error 'IpAddressType must be a string')
        else if std.isEmpty(IpAddressType) then (error 'IpAddressType must be not empty')
        else IpAddressType,
    },
  },
  setAttachedInstances(AttachedInstances): {
    Properties+::: {
      AttachedInstances:
        if !std.isArray(AttachedInstances) then (error 'AttachedInstances must be an array')
        else AttachedInstances,
    },
  },
  setAttachedInstancesMixin(AttachedInstances): {
    Properties+::: {
      AttachedInstances+: AttachedInstances,
    },
  },
  setHealthCheckPath(HealthCheckPath): {
    Properties+::: {
      HealthCheckPath:
        if !std.isString(HealthCheckPath) then (error 'HealthCheckPath must be a string')
        else if std.isEmpty(HealthCheckPath) then (error 'HealthCheckPath must be not empty')
        else HealthCheckPath,
    },
  },
  setSessionStickinessEnabled(SessionStickinessEnabled): {
    Properties+::: {
      SessionStickinessEnabled:
        if !std.isBoolean(SessionStickinessEnabled) then (error 'SessionStickinessEnabled must be a boolean') else SessionStickinessEnabled,
    },
  },
  setSessionStickinessLBCookieDurationSeconds(SessionStickinessLBCookieDurationSeconds): {
    Properties+::: {
      SessionStickinessLBCookieDurationSeconds:
        if !std.isString(SessionStickinessLBCookieDurationSeconds) then (error 'SessionStickinessLBCookieDurationSeconds must be a string')
        else if std.isEmpty(SessionStickinessLBCookieDurationSeconds) then (error 'SessionStickinessLBCookieDurationSeconds must be not empty')
        else SessionStickinessLBCookieDurationSeconds,
    },
  },
  setTlsPolicyName(TlsPolicyName): {
    Properties+::: {
      TlsPolicyName:
        if !std.isString(TlsPolicyName) then (error 'TlsPolicyName must be a string')
        else if std.isEmpty(TlsPolicyName) then (error 'TlsPolicyName must be not empty')
        else TlsPolicyName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
