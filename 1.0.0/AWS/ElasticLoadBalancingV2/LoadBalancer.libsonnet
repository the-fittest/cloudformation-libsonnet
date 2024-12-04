{
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
    Type: 'AWS::ElasticLoadBalancingV2::LoadBalancer',
  },
  withIpAddressType(IpAddressType): {
    assert std.isString(IpAddressType) : 'IpAddressType must be a string',
    Properties+::: {
      IpAddressType: IpAddressType,
    },
  },
  withEnablePrefixForIpv6SourceNat(EnablePrefixForIpv6SourceNat): {
    assert std.isString(EnablePrefixForIpv6SourceNat) : 'EnablePrefixForIpv6SourceNat must be a string',
    Properties+::: {
      EnablePrefixForIpv6SourceNat: EnablePrefixForIpv6SourceNat,
    },
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
  withLoadBalancerAttributes(LoadBalancerAttributes): {
    Properties+::: {
      LoadBalancerAttributes: (if std.isArray(LoadBalancerAttributes) then LoadBalancerAttributes else [LoadBalancerAttributes]),
    },
  },
  withLoadBalancerAttributesMixin(LoadBalancerAttributes): {
    Properties+::: {
      LoadBalancerAttributes+: (if std.isArray(LoadBalancerAttributes) then LoadBalancerAttributes else [LoadBalancerAttributes]),
    },
  },
  withMinimumLoadBalancerCapacity(MinimumLoadBalancerCapacity): {
    assert std.isObject(MinimumLoadBalancerCapacity) : 'MinimumLoadBalancerCapacity must be a object',
    Properties+::: {
      MinimumLoadBalancerCapacity: MinimumLoadBalancerCapacity,
    },
  },
  withScheme(Scheme): {
    assert std.isString(Scheme) : 'Scheme must be a string',
    Properties+::: {
      Scheme: Scheme,
    },
  },
  withDNSName(DNSName): {
    assert std.isString(DNSName) : 'DNSName must be a string',
    Properties+::: {
      DNSName: DNSName,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withLoadBalancerName(LoadBalancerName): {
    assert std.isString(LoadBalancerName) : 'LoadBalancerName must be a string',
    Properties+::: {
      LoadBalancerName: LoadBalancerName,
    },
  },
  withLoadBalancerFullName(LoadBalancerFullName): {
    assert std.isString(LoadBalancerFullName) : 'LoadBalancerFullName must be a string',
    Properties+::: {
      LoadBalancerFullName: LoadBalancerFullName,
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
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    Properties+::: {
      Type: Type,
    },
  },
  withCanonicalHostedZoneID(CanonicalHostedZoneID): {
    assert std.isString(CanonicalHostedZoneID) : 'CanonicalHostedZoneID must be a string',
    Properties+::: {
      CanonicalHostedZoneID: CanonicalHostedZoneID,
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
  withLoadBalancerArn(LoadBalancerArn): {
    assert std.isString(LoadBalancerArn) : 'LoadBalancerArn must be a string',
    Properties+::: {
      LoadBalancerArn: LoadBalancerArn,
    },
  },
  withSubnetMappings(SubnetMappings): {
    Properties+::: {
      SubnetMappings: (if std.isArray(SubnetMappings) then SubnetMappings else [SubnetMappings]),
    },
  },
  withSubnetMappingsMixin(SubnetMappings): {
    Properties+::: {
      SubnetMappings+: (if std.isArray(SubnetMappings) then SubnetMappings else [SubnetMappings]),
    },
  },
  withEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic(EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic): {
    assert std.isString(EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic) : 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic must be a string',
    Properties+::: {
      EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic: EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
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
