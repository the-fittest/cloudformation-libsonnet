{
  new(
    VpcId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(VpcId) : 'VpcId must be a string',
      VpcId: VpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPCCidrBlock',
  },
  withCidrBlock(CidrBlock): {
    assert std.isString(CidrBlock) : 'CidrBlock must be a string',
    Properties+::: {
      CidrBlock: CidrBlock,
    },
  },
  withIpv6Pool(Ipv6Pool): {
    assert std.isString(Ipv6Pool) : 'Ipv6Pool must be a string',
    Properties+::: {
      Ipv6Pool: Ipv6Pool,
    },
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
  withIpv4IpamPoolId(Ipv4IpamPoolId): {
    assert std.isString(Ipv4IpamPoolId) : 'Ipv4IpamPoolId must be a string',
    Properties+::: {
      Ipv4IpamPoolId: Ipv4IpamPoolId,
    },
  },
  withIpv4NetmaskLength(Ipv4NetmaskLength): {
    assert std.isNumber(Ipv4NetmaskLength) : 'Ipv4NetmaskLength must be a number',
    Properties+::: {
      Ipv4NetmaskLength: Ipv4NetmaskLength,
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
  withAmazonProvidedIpv6CidrBlock(AmazonProvidedIpv6CidrBlock): {
    assert std.isBoolean(AmazonProvidedIpv6CidrBlock) : 'AmazonProvidedIpv6CidrBlock must be a boolean',
    Properties+::: {
      AmazonProvidedIpv6CidrBlock: AmazonProvidedIpv6CidrBlock,
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
