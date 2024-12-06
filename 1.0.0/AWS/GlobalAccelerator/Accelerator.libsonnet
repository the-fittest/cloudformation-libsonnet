{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GlobalAccelerator::Accelerator',
  },
  setIpAddressType(IpAddressType): {
    Properties+::: {
      IpAddressType:
        if !std.isString(IpAddressType) then (error 'IpAddressType must be a string')
        else if std.isEmpty(IpAddressType) then (error 'IpAddressType must be not empty')
        else if IpAddressType != 'IPV4' && IpAddressType != 'DUAL_STACK' then (error "IpAddressType should be 'IPV4' or 'DUAL_STACK'")
        else IpAddressType,
    },
  },
  setIpAddresses(IpAddresses): {
    Properties+::: {
      IpAddresses:
        if !std.isArray(IpAddresses) then (error 'IpAddresses must be an array')
        else IpAddresses,
    },
  },
  pushIpAddresses(IpAddresses): {
    Properties+::: {
      IpAddresses+: IpAddresses,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setDnsName(DnsName): {
    Properties+::: {
      DnsName:
        if !std.isString(DnsName) then (error 'DnsName must be a string')
        else if std.isEmpty(DnsName) then (error 'DnsName must be not empty')
        else DnsName,
    },
  },
  setIpv4Addresses(Ipv4Addresses): {
    Properties+::: {
      Ipv4Addresses:
        if !std.isArray(Ipv4Addresses) then (error 'Ipv4Addresses must be an array')
        else Ipv4Addresses,
    },
  },
  pushIpv4Addresses(Ipv4Addresses): {
    Properties+::: {
      Ipv4Addresses+: Ipv4Addresses,
    },
  },
  setIpv6Addresses(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses:
        if !std.isArray(Ipv6Addresses) then (error 'Ipv6Addresses must be an array')
        else Ipv6Addresses,
    },
  },
  pushIpv6Addresses(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses+: Ipv6Addresses,
    },
  },
  setDualStackDnsName(DualStackDnsName): {
    Properties+::: {
      DualStackDnsName:
        if !std.isString(DualStackDnsName) then (error 'DualStackDnsName must be a string')
        else if std.isEmpty(DualStackDnsName) then (error 'DualStackDnsName must be not empty')
        else DualStackDnsName,
    },
  },
  setAcceleratorArn(AcceleratorArn): {
    Properties+::: {
      AcceleratorArn:
        if !std.isString(AcceleratorArn) then (error 'AcceleratorArn must be a string')
        else if std.isEmpty(AcceleratorArn) then (error 'AcceleratorArn must be not empty')
        else AcceleratorArn,
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
