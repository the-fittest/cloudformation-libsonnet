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
    Type: 'AWS::ElasticLoadBalancingV2::LoadBalancer',
  },
  setIpAddressType(IpAddressType): {
    Properties+::: {
      IpAddressType:
        if !std.isString(IpAddressType) then (error 'IpAddressType must be a string')
        else if std.isEmpty(IpAddressType) then (error 'IpAddressType must be not empty')
        else IpAddressType,
    },
  },
  setEnablePrefixForIpv6SourceNat(EnablePrefixForIpv6SourceNat): {
    Properties+::: {
      EnablePrefixForIpv6SourceNat:
        if !std.isString(EnablePrefixForIpv6SourceNat) then (error 'EnablePrefixForIpv6SourceNat must be a string')
        else if std.isEmpty(EnablePrefixForIpv6SourceNat) then (error 'EnablePrefixForIpv6SourceNat must be not empty')
        else EnablePrefixForIpv6SourceNat,
    },
  },
  setSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups:
        if !std.isArray(SecurityGroups) then (error 'SecurityGroups must be an array')
        else SecurityGroups,
    },
  },
  pushSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups+: SecurityGroups,
    },
  },
  setLoadBalancerAttributes(LoadBalancerAttributes): {
    Properties+::: {
      LoadBalancerAttributes:
        if !std.isArray(LoadBalancerAttributes) then (error 'LoadBalancerAttributes must be an array')
        else LoadBalancerAttributes,
    },
  },
  pushLoadBalancerAttributes(LoadBalancerAttributes): {
    Properties+::: {
      LoadBalancerAttributes+: LoadBalancerAttributes,
    },
  },
  setMinimumLoadBalancerCapacity(MinimumLoadBalancerCapacity): {
    Properties+::: {
      MinimumLoadBalancerCapacity:
        if !std.isObject(MinimumLoadBalancerCapacity) then (error 'MinimumLoadBalancerCapacity must be an object')
        else if !std.objectHas(MinimumLoadBalancerCapacity, 'CapacityUnits') then (error ' have attribute CapacityUnits')
        else MinimumLoadBalancerCapacity,
    },
  },
  setScheme(Scheme): {
    Properties+::: {
      Scheme:
        if !std.isString(Scheme) then (error 'Scheme must be a string')
        else if std.isEmpty(Scheme) then (error 'Scheme must be not empty')
        else Scheme,
    },
  },
  setDNSName(DNSName): {
    Properties+::: {
      DNSName:
        if !std.isString(DNSName) then (error 'DNSName must be a string')
        else if std.isEmpty(DNSName) then (error 'DNSName must be not empty')
        else DNSName,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setLoadBalancerName(LoadBalancerName): {
    Properties+::: {
      LoadBalancerName:
        if !std.isString(LoadBalancerName) then (error 'LoadBalancerName must be a string')
        else if std.isEmpty(LoadBalancerName) then (error 'LoadBalancerName must be not empty')
        else LoadBalancerName,
    },
  },
  setLoadBalancerFullName(LoadBalancerFullName): {
    Properties+::: {
      LoadBalancerFullName:
        if !std.isString(LoadBalancerFullName) then (error 'LoadBalancerFullName must be a string')
        else if std.isEmpty(LoadBalancerFullName) then (error 'LoadBalancerFullName must be not empty')
        else LoadBalancerFullName,
    },
  },
  setSubnets(Subnets): {
    Properties+::: {
      Subnets:
        if !std.isArray(Subnets) then (error 'Subnets must be an array')
        else Subnets,
    },
  },
  pushSubnets(Subnets): {
    Properties+::: {
      Subnets+: Subnets,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
    },
  },
  setCanonicalHostedZoneID(CanonicalHostedZoneID): {
    Properties+::: {
      CanonicalHostedZoneID:
        if !std.isString(CanonicalHostedZoneID) then (error 'CanonicalHostedZoneID must be a string')
        else if std.isEmpty(CanonicalHostedZoneID) then (error 'CanonicalHostedZoneID must be not empty')
        else CanonicalHostedZoneID,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setLoadBalancerArn(LoadBalancerArn): {
    Properties+::: {
      LoadBalancerArn:
        if !std.isString(LoadBalancerArn) then (error 'LoadBalancerArn must be a string')
        else if std.isEmpty(LoadBalancerArn) then (error 'LoadBalancerArn must be not empty')
        else LoadBalancerArn,
    },
  },
  setSubnetMappings(SubnetMappings): {
    Properties+::: {
      SubnetMappings:
        if !std.isArray(SubnetMappings) then (error 'SubnetMappings must be an array')
        else SubnetMappings,
    },
  },
  pushSubnetMappings(SubnetMappings): {
    Properties+::: {
      SubnetMappings+: SubnetMappings,
    },
  },
  setEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic(EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic): {
    Properties+::: {
      EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic:
        if !std.isString(EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic) then (error 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic must be a string')
        else if std.isEmpty(EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic) then (error 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic must be not empty')
        else EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
