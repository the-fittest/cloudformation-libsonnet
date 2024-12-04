{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GlobalAccelerator::Accelerator',
  },
  withIpAddressType(IpAddressType): {
    assert std.isString(IpAddressType) : 'IpAddressType must be a string',
    assert IpAddressType == 'IPV4' || IpAddressType == 'DUAL_STACK' : "IpAddressType should be 'IPV4' or 'DUAL_STACK'",
    Properties+::: {
      IpAddressType: IpAddressType,
    },
  },
  withIpAddresses(IpAddresses): {
    Properties+::: {
      IpAddresses: (if std.isArray(IpAddresses) then IpAddresses else [IpAddresses]),
    },
  },
  withIpAddressesMixin(IpAddresses): {
    Properties+::: {
      IpAddresses+: (if std.isArray(IpAddresses) then IpAddresses else [IpAddresses]),
    },
  },
  withEnabled(Enabled): {
    assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
    Properties+::: {
      Enabled: Enabled,
    },
  },
  withDnsName(DnsName): {
    assert std.isString(DnsName) : 'DnsName must be a string',
    Properties+::: {
      DnsName: DnsName,
    },
  },
  withIpv4Addresses(Ipv4Addresses): {
    Properties+::: {
      Ipv4Addresses: (if std.isArray(Ipv4Addresses) then Ipv4Addresses else [Ipv4Addresses]),
    },
  },
  withIpv4AddressesMixin(Ipv4Addresses): {
    Properties+::: {
      Ipv4Addresses+: (if std.isArray(Ipv4Addresses) then Ipv4Addresses else [Ipv4Addresses]),
    },
  },
  withIpv6Addresses(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses: (if std.isArray(Ipv6Addresses) then Ipv6Addresses else [Ipv6Addresses]),
    },
  },
  withIpv6AddressesMixin(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses+: (if std.isArray(Ipv6Addresses) then Ipv6Addresses else [Ipv6Addresses]),
    },
  },
  withDualStackDnsName(DualStackDnsName): {
    assert std.isString(DualStackDnsName) : 'DualStackDnsName must be a string',
    Properties+::: {
      DualStackDnsName: DualStackDnsName,
    },
  },
  withAcceleratorArn(AcceleratorArn): {
    assert std.isString(AcceleratorArn) : 'AcceleratorArn must be a string',
    Properties+::: {
      AcceleratorArn: AcceleratorArn,
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
