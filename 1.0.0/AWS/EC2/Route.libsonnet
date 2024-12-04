{
  new(
    RouteTableId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RouteTableId) : 'RouteTableId must be a string',
      RouteTableId: RouteTableId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::Route',
  },
  withCarrierGatewayId(CarrierGatewayId): {
    assert std.isString(CarrierGatewayId) : 'CarrierGatewayId must be a string',
    Properties+::: {
      CarrierGatewayId: CarrierGatewayId,
    },
  },
  withCidrBlock(CidrBlock): {
    assert std.isString(CidrBlock) : 'CidrBlock must be a string',
    Properties+::: {
      CidrBlock: CidrBlock,
    },
  },
  withCoreNetworkArn(CoreNetworkArn): {
    assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
    Properties+::: {
      CoreNetworkArn: CoreNetworkArn,
    },
  },
  withDestinationCidrBlock(DestinationCidrBlock): {
    assert std.isString(DestinationCidrBlock) : 'DestinationCidrBlock must be a string',
    Properties+::: {
      DestinationCidrBlock: DestinationCidrBlock,
    },
  },
  withDestinationIpv6CidrBlock(DestinationIpv6CidrBlock): {
    assert std.isString(DestinationIpv6CidrBlock) : 'DestinationIpv6CidrBlock must be a string',
    Properties+::: {
      DestinationIpv6CidrBlock: DestinationIpv6CidrBlock,
    },
  },
  withDestinationPrefixListId(DestinationPrefixListId): {
    assert std.isString(DestinationPrefixListId) : 'DestinationPrefixListId must be a string',
    Properties+::: {
      DestinationPrefixListId: DestinationPrefixListId,
    },
  },
  withEgressOnlyInternetGatewayId(EgressOnlyInternetGatewayId): {
    assert std.isString(EgressOnlyInternetGatewayId) : 'EgressOnlyInternetGatewayId must be a string',
    Properties+::: {
      EgressOnlyInternetGatewayId: EgressOnlyInternetGatewayId,
    },
  },
  withGatewayId(GatewayId): {
    assert std.isString(GatewayId) : 'GatewayId must be a string',
    Properties+::: {
      GatewayId: GatewayId,
    },
  },
  withInstanceId(InstanceId): {
    assert std.isString(InstanceId) : 'InstanceId must be a string',
    Properties+::: {
      InstanceId: InstanceId,
    },
  },
  withLocalGatewayId(LocalGatewayId): {
    assert std.isString(LocalGatewayId) : 'LocalGatewayId must be a string',
    Properties+::: {
      LocalGatewayId: LocalGatewayId,
    },
  },
  withNatGatewayId(NatGatewayId): {
    assert std.isString(NatGatewayId) : 'NatGatewayId must be a string',
    Properties+::: {
      NatGatewayId: NatGatewayId,
    },
  },
  withNetworkInterfaceId(NetworkInterfaceId): {
    assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
    Properties+::: {
      NetworkInterfaceId: NetworkInterfaceId,
    },
  },
  withTransitGatewayId(TransitGatewayId): {
    assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
    Properties+::: {
      TransitGatewayId: TransitGatewayId,
    },
  },
  withVpcEndpointId(VpcEndpointId): {
    assert std.isString(VpcEndpointId) : 'VpcEndpointId must be a string',
    Properties+::: {
      VpcEndpointId: VpcEndpointId,
    },
  },
  withVpcPeeringConnectionId(VpcPeeringConnectionId): {
    assert std.isString(VpcPeeringConnectionId) : 'VpcPeeringConnectionId must be a string',
    Properties+::: {
      VpcPeeringConnectionId: VpcPeeringConnectionId,
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
