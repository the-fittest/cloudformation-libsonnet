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
    Type: 'AWS::EC2::SubnetCidrBlock',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withIpv6CidrBlock(Ipv6CidrBlock): {
    assert std.isString(Ipv6CidrBlock) : 'Ipv6CidrBlock must be a string',
    Properties+::: {
      Ipv6CidrBlock: Ipv6CidrBlock,
    },
  },
  withIpv6IpamPoolId(Ipv6IpamPoolId): {
    assert std.isString(Ipv6IpamPoolId) : 'Ipv6IpamPoolId must be a string',
    Properties+::: {
      Ipv6IpamPoolId: Ipv6IpamPoolId,
    },
  },
  withIpv6NetmaskLength(Ipv6NetmaskLength): {
    assert std.isNumber(Ipv6NetmaskLength) : 'Ipv6NetmaskLength must be a number',
    Properties+::: {
      Ipv6NetmaskLength: Ipv6NetmaskLength,
    },
  },
  withIpv6AddressAttribute(Ipv6AddressAttribute): {
    assert std.isString(Ipv6AddressAttribute) : 'Ipv6AddressAttribute must be a string',
    Properties+::: {
      Ipv6AddressAttribute: Ipv6AddressAttribute,
    },
  },
  withIpSource(IpSource): {
    assert std.isString(IpSource) : 'IpSource must be a string',
    Properties+::: {
      IpSource: IpSource,
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
