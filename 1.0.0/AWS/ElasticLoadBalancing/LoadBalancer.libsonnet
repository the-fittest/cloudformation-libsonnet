{
  new(
    Listeners,
  ): {
    local base = self,
    Properties: {
      Listeners: (if std.isArray(Listeners) then Listeners else [Listeners]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticLoadBalancing::LoadBalancer',
  },
  withSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups: (if std.isArray(SecurityGroups) then SecurityGroups else [SecurityGroups]),
    },
  },
  withSecurityGroupsMixin(SecurityGroups): {
    Properties+::: {
      SecurityGroups+: (if std.isArray(SecurityGroups) then SecurityGroups else [SecurityGroups]),
    },
  },
  withConnectionDrainingPolicy(ConnectionDrainingPolicy): {
    assert std.isObject(ConnectionDrainingPolicy) : 'ConnectionDrainingPolicy must be a object',
    Properties+::: {
      ConnectionDrainingPolicy: ConnectionDrainingPolicy,
    },
  },
  withPolicies(Policies): {
    Properties+::: {
      Policies: (if std.isArray(Policies) then Policies else [Policies]),
    },
  },
  withPoliciesMixin(Policies): {
    Properties+::: {
      Policies+: (if std.isArray(Policies) then Policies else [Policies]),
    },
  },
  withScheme(Scheme): {
    assert std.isString(Scheme) : 'Scheme must be a string',
    Properties+::: {
      Scheme: Scheme,
    },
  },
  withAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones: (if std.isArray(AvailabilityZones) then AvailabilityZones else [AvailabilityZones]),
    },
  },
  withAvailabilityZonesMixin(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones+: (if std.isArray(AvailabilityZones) then AvailabilityZones else [AvailabilityZones]),
    },
  },
  withSourceSecurityGroupOwnerAlias(SourceSecurityGroupOwnerAlias): {
    assert std.isString(SourceSecurityGroupOwnerAlias) : 'SourceSecurityGroupOwnerAlias must be a string',
    Properties+::: {
      SourceSecurityGroupOwnerAlias: SourceSecurityGroupOwnerAlias,
    },
  },
  withHealthCheck(HealthCheck): {
    assert std.isObject(HealthCheck) : 'HealthCheck must be a object',
    Properties+::: {
      HealthCheck: HealthCheck,
    },
  },
  withCanonicalHostedZoneNameID(CanonicalHostedZoneNameID): {
    assert std.isString(CanonicalHostedZoneNameID) : 'CanonicalHostedZoneNameID must be a string',
    Properties+::: {
      CanonicalHostedZoneNameID: CanonicalHostedZoneNameID,
    },
  },
  withCanonicalHostedZoneName(CanonicalHostedZoneName): {
    assert std.isString(CanonicalHostedZoneName) : 'CanonicalHostedZoneName must be a string',
    Properties+::: {
      CanonicalHostedZoneName: CanonicalHostedZoneName,
    },
  },
  withDNSName(DNSName): {
    assert std.isString(DNSName) : 'DNSName must be a string',
    Properties+::: {
      DNSName: DNSName,
    },
  },
  withAccessLoggingPolicy(AccessLoggingPolicy): {
    assert std.isObject(AccessLoggingPolicy) : 'AccessLoggingPolicy must be a object',
    Properties+::: {
      AccessLoggingPolicy: AccessLoggingPolicy,
    },
  },
  withInstances(Instances): {
    Properties+::: {
      Instances: (if std.isArray(Instances) then Instances else [Instances]),
    },
  },
  withInstancesMixin(Instances): {
    Properties+::: {
      Instances+: (if std.isArray(Instances) then Instances else [Instances]),
    },
  },
  withLoadBalancerName(LoadBalancerName): {
    assert std.isString(LoadBalancerName) : 'LoadBalancerName must be a string',
    Properties+::: {
      LoadBalancerName: LoadBalancerName,
    },
  },
  withSubnets(Subnets): {
    Properties+::: {
      Subnets: (if std.isArray(Subnets) then Subnets else [Subnets]),
    },
  },
  withSubnetsMixin(Subnets): {
    Properties+::: {
      Subnets+: (if std.isArray(Subnets) then Subnets else [Subnets]),
    },
  },
  withCrossZone(CrossZone): {
    assert std.isBoolean(CrossZone) : 'CrossZone must be a boolean',
    Properties+::: {
      CrossZone: CrossZone,
    },
  },
  withAppCookieStickinessPolicy(AppCookieStickinessPolicy): {
    Properties+::: {
      AppCookieStickinessPolicy: (if std.isArray(AppCookieStickinessPolicy) then AppCookieStickinessPolicy else [AppCookieStickinessPolicy]),
    },
  },
  withAppCookieStickinessPolicyMixin(AppCookieStickinessPolicy): {
    Properties+::: {
      AppCookieStickinessPolicy+: (if std.isArray(AppCookieStickinessPolicy) then AppCookieStickinessPolicy else [AppCookieStickinessPolicy]),
    },
  },
  withLBCookieStickinessPolicy(LBCookieStickinessPolicy): {
    Properties+::: {
      LBCookieStickinessPolicy: (if std.isArray(LBCookieStickinessPolicy) then LBCookieStickinessPolicy else [LBCookieStickinessPolicy]),
    },
  },
  withLBCookieStickinessPolicyMixin(LBCookieStickinessPolicy): {
    Properties+::: {
      LBCookieStickinessPolicy+: (if std.isArray(LBCookieStickinessPolicy) then LBCookieStickinessPolicy else [LBCookieStickinessPolicy]),
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withSourceSecurityGroupGroupName(SourceSecurityGroupGroupName): {
    assert std.isString(SourceSecurityGroupGroupName) : 'SourceSecurityGroupGroupName must be a string',
    Properties+::: {
      SourceSecurityGroupGroupName: SourceSecurityGroupGroupName,
    },
  },
  withConnectionSettings(ConnectionSettings): {
    assert std.isObject(ConnectionSettings) : 'ConnectionSettings must be a object',
    Properties+::: {
      ConnectionSettings: ConnectionSettings,
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
