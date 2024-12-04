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
    Type: 'AWS::EC2::Subnet',
  },
  withAssignIpv6AddressOnCreation(AssignIpv6AddressOnCreation): {
    assert std.isBoolean(AssignIpv6AddressOnCreation) : 'AssignIpv6AddressOnCreation must be a boolean',
    Properties+::: {
      AssignIpv6AddressOnCreation: AssignIpv6AddressOnCreation,
    },
  },
  withMapPublicIpOnLaunch(MapPublicIpOnLaunch): {
    assert std.isBoolean(MapPublicIpOnLaunch) : 'MapPublicIpOnLaunch must be a boolean',
    Properties+::: {
      MapPublicIpOnLaunch: MapPublicIpOnLaunch,
    },
  },
  withEnableLniAtDeviceIndex(EnableLniAtDeviceIndex): {
    assert std.isNumber(EnableLniAtDeviceIndex) : 'EnableLniAtDeviceIndex must be a number',
    Properties+::: {
      EnableLniAtDeviceIndex: EnableLniAtDeviceIndex,
    },
  },
  withNetworkAclAssociationId(NetworkAclAssociationId): {
    assert std.isString(NetworkAclAssociationId) : 'NetworkAclAssociationId must be a string',
    Properties+::: {
      NetworkAclAssociationId: NetworkAclAssociationId,
    },
  },
  withAvailabilityZone(AvailabilityZone): {
    assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
    Properties+::: {
      AvailabilityZone: AvailabilityZone,
    },
  },
  withAvailabilityZoneId(AvailabilityZoneId): {
    assert std.isString(AvailabilityZoneId) : 'AvailabilityZoneId must be a string',
    Properties+::: {
      AvailabilityZoneId: AvailabilityZoneId,
    },
  },
  withCidrBlock(CidrBlock): {
    assert std.isString(CidrBlock) : 'CidrBlock must be a string',
    Properties+::: {
      CidrBlock: CidrBlock,
    },
  },
  withSubnetId(SubnetId): {
    assert std.isString(SubnetId) : 'SubnetId must be a string',
    Properties+::: {
      SubnetId: SubnetId,
    },
  },
  withIpv6CidrBlocks(Ipv6CidrBlocks): {
    Properties+::: {
      Ipv6CidrBlocks: (if std.isArray(Ipv6CidrBlocks) then Ipv6CidrBlocks else [Ipv6CidrBlocks]),
    },
  },
  withIpv6CidrBlocksMixin(Ipv6CidrBlocks): {
    Properties+::: {
      Ipv6CidrBlocks+: (if std.isArray(Ipv6CidrBlocks) then Ipv6CidrBlocks else [Ipv6CidrBlocks]),
    },
  },
  withIpv6CidrBlock(Ipv6CidrBlock): {
    assert std.isString(Ipv6CidrBlock) : 'Ipv6CidrBlock must be a string',
    Properties+::: {
      Ipv6CidrBlock: Ipv6CidrBlock,
    },
  },
  withOutpostArn(OutpostArn): {
    assert std.isString(OutpostArn) : 'OutpostArn must be a string',
    Properties+::: {
      OutpostArn: OutpostArn,
    },
  },
  withIpv6Native(Ipv6Native): {
    assert std.isBoolean(Ipv6Native) : 'Ipv6Native must be a boolean',
    Properties+::: {
      Ipv6Native: Ipv6Native,
    },
  },
  withEnableDns64(EnableDns64): {
    assert std.isBoolean(EnableDns64) : 'EnableDns64 must be a boolean',
    Properties+::: {
      EnableDns64: EnableDns64,
    },
  },
  withPrivateDnsNameOptionsOnLaunch(PrivateDnsNameOptionsOnLaunch): {
    assert std.isObject(PrivateDnsNameOptionsOnLaunch) : 'PrivateDnsNameOptionsOnLaunch must be a object',
    Properties+::: {
      PrivateDnsNameOptionsOnLaunch: PrivateDnsNameOptionsOnLaunch,
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
