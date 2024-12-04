{
  new(
    SubnetId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      SubnetId: SubnetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkInterface',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withPrivateIpAddress(PrivateIpAddress): {
    assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
    Properties+::: {
      PrivateIpAddress: PrivateIpAddress,
    },
  },
  withPrivateIpAddresses(PrivateIpAddresses): {
    Properties+::: {
      PrivateIpAddresses: (if std.isArray(PrivateIpAddresses) then PrivateIpAddresses else [PrivateIpAddresses]),
    },
  },
  withPrivateIpAddressesMixin(PrivateIpAddresses): {
    Properties+::: {
      PrivateIpAddresses+: (if std.isArray(PrivateIpAddresses) then PrivateIpAddresses else [PrivateIpAddresses]),
    },
  },
  withSecondaryPrivateIpAddressCount(SecondaryPrivateIpAddressCount): {
    assert std.isNumber(SecondaryPrivateIpAddressCount) : 'SecondaryPrivateIpAddressCount must be a number',
    Properties+::: {
      SecondaryPrivateIpAddressCount: SecondaryPrivateIpAddressCount,
    },
  },
  withPrimaryPrivateIpAddress(PrimaryPrivateIpAddress): {
    assert std.isString(PrimaryPrivateIpAddress) : 'PrimaryPrivateIpAddress must be a string',
    Properties+::: {
      PrimaryPrivateIpAddress: PrimaryPrivateIpAddress,
    },
  },
  withIpv4Prefixes(Ipv4Prefixes): {
    Properties+::: {
      Ipv4Prefixes: (if std.isArray(Ipv4Prefixes) then Ipv4Prefixes else [Ipv4Prefixes]),
    },
  },
  withIpv4PrefixesMixin(Ipv4Prefixes): {
    Properties+::: {
      Ipv4Prefixes+: (if std.isArray(Ipv4Prefixes) then Ipv4Prefixes else [Ipv4Prefixes]),
    },
  },
  withIpv4PrefixCount(Ipv4PrefixCount): {
    assert std.isNumber(Ipv4PrefixCount) : 'Ipv4PrefixCount must be a number',
    Properties+::: {
      Ipv4PrefixCount: Ipv4PrefixCount,
    },
  },
  withGroupSet(GroupSet): {
    Properties+::: {
      GroupSet: (if std.isArray(GroupSet) then GroupSet else [GroupSet]),
    },
  },
  withGroupSetMixin(GroupSet): {
    Properties+::: {
      GroupSet+: (if std.isArray(GroupSet) then GroupSet else [GroupSet]),
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
  withIpv6Prefixes(Ipv6Prefixes): {
    Properties+::: {
      Ipv6Prefixes: (if std.isArray(Ipv6Prefixes) then Ipv6Prefixes else [Ipv6Prefixes]),
    },
  },
  withIpv6PrefixesMixin(Ipv6Prefixes): {
    Properties+::: {
      Ipv6Prefixes+: (if std.isArray(Ipv6Prefixes) then Ipv6Prefixes else [Ipv6Prefixes]),
    },
  },
  withIpv6PrefixCount(Ipv6PrefixCount): {
    assert std.isNumber(Ipv6PrefixCount) : 'Ipv6PrefixCount must be a number',
    Properties+::: {
      Ipv6PrefixCount: Ipv6PrefixCount,
    },
  },
  withSourceDestCheck(SourceDestCheck): {
    assert std.isBoolean(SourceDestCheck) : 'SourceDestCheck must be a boolean',
    Properties+::: {
      SourceDestCheck: SourceDestCheck,
    },
  },
  withInterfaceType(InterfaceType): {
    assert std.isString(InterfaceType) : 'InterfaceType must be a string',
    Properties+::: {
      InterfaceType: InterfaceType,
    },
  },
  withSecondaryPrivateIpAddresses(SecondaryPrivateIpAddresses): {
    Properties+::: {
      SecondaryPrivateIpAddresses: (if std.isArray(SecondaryPrivateIpAddresses) then SecondaryPrivateIpAddresses else [SecondaryPrivateIpAddresses]),
    },
  },
  withSecondaryPrivateIpAddressesMixin(SecondaryPrivateIpAddresses): {
    Properties+::: {
      SecondaryPrivateIpAddresses+: (if std.isArray(SecondaryPrivateIpAddresses) then SecondaryPrivateIpAddresses else [SecondaryPrivateIpAddresses]),
    },
  },
  withIpv6AddressCount(Ipv6AddressCount): {
    assert std.isNumber(Ipv6AddressCount) : 'Ipv6AddressCount must be a number',
    Properties+::: {
      Ipv6AddressCount: Ipv6AddressCount,
    },
  },
  withEnablePrimaryIpv6(EnablePrimaryIpv6): {
    assert std.isBoolean(EnablePrimaryIpv6) : 'EnablePrimaryIpv6 must be a boolean',
    Properties+::: {
      EnablePrimaryIpv6: EnablePrimaryIpv6,
    },
  },
  withPrimaryIpv6Address(PrimaryIpv6Address): {
    assert std.isString(PrimaryIpv6Address) : 'PrimaryIpv6Address must be a string',
    Properties+::: {
      PrimaryIpv6Address: PrimaryIpv6Address,
    },
  },
  withConnectionTrackingSpecification(ConnectionTrackingSpecification): {
    assert std.isObject(ConnectionTrackingSpecification) : 'ConnectionTrackingSpecification must be a object',
    Properties+::: {
      ConnectionTrackingSpecification: ConnectionTrackingSpecification,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
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
  withVpcId(VpcId): {
    assert std.isString(VpcId) : 'VpcId must be a string',
    Properties+::: {
      VpcId: VpcId,
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
