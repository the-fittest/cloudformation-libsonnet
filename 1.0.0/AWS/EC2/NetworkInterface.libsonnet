{
  new(
    SubnetId,
  ): {
    local base = self,
    Properties: {
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkInterface',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setPrivateIpAddress(PrivateIpAddress): {
    Properties+::: {
      PrivateIpAddress:
        if !std.isString(PrivateIpAddress) then (error 'PrivateIpAddress must be a string')
        else if std.isEmpty(PrivateIpAddress) then (error 'PrivateIpAddress must be not empty')
        else PrivateIpAddress,
    },
  },
  setPrivateIpAddresses(PrivateIpAddresses): {
    Properties+::: {
      PrivateIpAddresses:
        if !std.isArray(PrivateIpAddresses) then (error 'PrivateIpAddresses must be an array')
        else PrivateIpAddresses,
    },
  },
  setPrivateIpAddressesMixin(PrivateIpAddresses): {
    Properties+::: {
      PrivateIpAddresses+: PrivateIpAddresses,
    },
  },
  setSecondaryPrivateIpAddressCount(SecondaryPrivateIpAddressCount): {
    Properties+::: {
      SecondaryPrivateIpAddressCount:
        if !std.isNumber(SecondaryPrivateIpAddressCount) then (error 'SecondaryPrivateIpAddressCount must be an number')
        else SecondaryPrivateIpAddressCount,
    },
  },
  setPrimaryPrivateIpAddress(PrimaryPrivateIpAddress): {
    Properties+::: {
      PrimaryPrivateIpAddress:
        if !std.isString(PrimaryPrivateIpAddress) then (error 'PrimaryPrivateIpAddress must be a string')
        else if std.isEmpty(PrimaryPrivateIpAddress) then (error 'PrimaryPrivateIpAddress must be not empty')
        else PrimaryPrivateIpAddress,
    },
  },
  setIpv4Prefixes(Ipv4Prefixes): {
    Properties+::: {
      Ipv4Prefixes:
        if !std.isArray(Ipv4Prefixes) then (error 'Ipv4Prefixes must be an array')
        else Ipv4Prefixes,
    },
  },
  setIpv4PrefixesMixin(Ipv4Prefixes): {
    Properties+::: {
      Ipv4Prefixes+: Ipv4Prefixes,
    },
  },
  setIpv4PrefixCount(Ipv4PrefixCount): {
    Properties+::: {
      Ipv4PrefixCount:
        if !std.isNumber(Ipv4PrefixCount) then (error 'Ipv4PrefixCount must be an number')
        else Ipv4PrefixCount,
    },
  },
  setGroupSet(GroupSet): {
    Properties+::: {
      GroupSet:
        if !std.isArray(GroupSet) then (error 'GroupSet must be an array')
        else GroupSet,
    },
  },
  setGroupSetMixin(GroupSet): {
    Properties+::: {
      GroupSet+: GroupSet,
    },
  },
  setIpv6Addresses(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses:
        if !std.isArray(Ipv6Addresses) then (error 'Ipv6Addresses must be an array')
        else Ipv6Addresses,
    },
  },
  setIpv6AddressesMixin(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses+: Ipv6Addresses,
    },
  },
  setIpv6Prefixes(Ipv6Prefixes): {
    Properties+::: {
      Ipv6Prefixes:
        if !std.isArray(Ipv6Prefixes) then (error 'Ipv6Prefixes must be an array')
        else Ipv6Prefixes,
    },
  },
  setIpv6PrefixesMixin(Ipv6Prefixes): {
    Properties+::: {
      Ipv6Prefixes+: Ipv6Prefixes,
    },
  },
  setIpv6PrefixCount(Ipv6PrefixCount): {
    Properties+::: {
      Ipv6PrefixCount:
        if !std.isNumber(Ipv6PrefixCount) then (error 'Ipv6PrefixCount must be an number')
        else Ipv6PrefixCount,
    },
  },
  setSourceDestCheck(SourceDestCheck): {
    Properties+::: {
      SourceDestCheck:
        if !std.isBoolean(SourceDestCheck) then (error 'SourceDestCheck must be a boolean') else SourceDestCheck,
    },
  },
  setInterfaceType(InterfaceType): {
    Properties+::: {
      InterfaceType:
        if !std.isString(InterfaceType) then (error 'InterfaceType must be a string')
        else if std.isEmpty(InterfaceType) then (error 'InterfaceType must be not empty')
        else InterfaceType,
    },
  },
  setSecondaryPrivateIpAddresses(SecondaryPrivateIpAddresses): {
    Properties+::: {
      SecondaryPrivateIpAddresses:
        if !std.isArray(SecondaryPrivateIpAddresses) then (error 'SecondaryPrivateIpAddresses must be an array')
        else SecondaryPrivateIpAddresses,
    },
  },
  setSecondaryPrivateIpAddressesMixin(SecondaryPrivateIpAddresses): {
    Properties+::: {
      SecondaryPrivateIpAddresses+: SecondaryPrivateIpAddresses,
    },
  },
  setIpv6AddressCount(Ipv6AddressCount): {
    Properties+::: {
      Ipv6AddressCount:
        if !std.isNumber(Ipv6AddressCount) then (error 'Ipv6AddressCount must be an number')
        else Ipv6AddressCount,
    },
  },
  setEnablePrimaryIpv6(EnablePrimaryIpv6): {
    Properties+::: {
      EnablePrimaryIpv6:
        if !std.isBoolean(EnablePrimaryIpv6) then (error 'EnablePrimaryIpv6 must be a boolean') else EnablePrimaryIpv6,
    },
  },
  setPrimaryIpv6Address(PrimaryIpv6Address): {
    Properties+::: {
      PrimaryIpv6Address:
        if !std.isString(PrimaryIpv6Address) then (error 'PrimaryIpv6Address must be a string')
        else if std.isEmpty(PrimaryIpv6Address) then (error 'PrimaryIpv6Address must be not empty')
        else PrimaryIpv6Address,
    },
  },
  setConnectionTrackingSpecification(ConnectionTrackingSpecification): {
    Properties+::: {
      ConnectionTrackingSpecification:
        if !std.isObject(ConnectionTrackingSpecification) then (error 'ConnectionTrackingSpecification must be an object')
        else ConnectionTrackingSpecification,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
  setVpcId(VpcId): {
    Properties+::: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
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
