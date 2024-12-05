{
  new(
    RouteTableId,
  ): {
    local base = self,
    Properties: {
      RouteTableId:
        if !std.isString(RouteTableId) then (error 'RouteTableId must be a string')
        else if std.isEmpty(RouteTableId) then (error 'RouteTableId must be not empty')
        else RouteTableId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::Route',
  },
  setCarrierGatewayId(CarrierGatewayId): {
    Properties+::: {
      CarrierGatewayId:
        if !std.isString(CarrierGatewayId) then (error 'CarrierGatewayId must be a string')
        else if std.isEmpty(CarrierGatewayId) then (error 'CarrierGatewayId must be not empty')
        else CarrierGatewayId,
    },
  },
  setCidrBlock(CidrBlock): {
    Properties+::: {
      CidrBlock:
        if !std.isString(CidrBlock) then (error 'CidrBlock must be a string')
        else if std.isEmpty(CidrBlock) then (error 'CidrBlock must be not empty')
        else CidrBlock,
    },
  },
  setCoreNetworkArn(CoreNetworkArn): {
    Properties+::: {
      CoreNetworkArn:
        if !std.isString(CoreNetworkArn) then (error 'CoreNetworkArn must be a string')
        else if std.isEmpty(CoreNetworkArn) then (error 'CoreNetworkArn must be not empty')
        else CoreNetworkArn,
    },
  },
  setDestinationCidrBlock(DestinationCidrBlock): {
    Properties+::: {
      DestinationCidrBlock:
        if !std.isString(DestinationCidrBlock) then (error 'DestinationCidrBlock must be a string')
        else if std.isEmpty(DestinationCidrBlock) then (error 'DestinationCidrBlock must be not empty')
        else DestinationCidrBlock,
    },
  },
  setDestinationIpv6CidrBlock(DestinationIpv6CidrBlock): {
    Properties+::: {
      DestinationIpv6CidrBlock:
        if !std.isString(DestinationIpv6CidrBlock) then (error 'DestinationIpv6CidrBlock must be a string')
        else if std.isEmpty(DestinationIpv6CidrBlock) then (error 'DestinationIpv6CidrBlock must be not empty')
        else DestinationIpv6CidrBlock,
    },
  },
  setDestinationPrefixListId(DestinationPrefixListId): {
    Properties+::: {
      DestinationPrefixListId:
        if !std.isString(DestinationPrefixListId) then (error 'DestinationPrefixListId must be a string')
        else if std.isEmpty(DestinationPrefixListId) then (error 'DestinationPrefixListId must be not empty')
        else DestinationPrefixListId,
    },
  },
  setEgressOnlyInternetGatewayId(EgressOnlyInternetGatewayId): {
    Properties+::: {
      EgressOnlyInternetGatewayId:
        if !std.isString(EgressOnlyInternetGatewayId) then (error 'EgressOnlyInternetGatewayId must be a string')
        else if std.isEmpty(EgressOnlyInternetGatewayId) then (error 'EgressOnlyInternetGatewayId must be not empty')
        else EgressOnlyInternetGatewayId,
    },
  },
  setGatewayId(GatewayId): {
    Properties+::: {
      GatewayId:
        if !std.isString(GatewayId) then (error 'GatewayId must be a string')
        else if std.isEmpty(GatewayId) then (error 'GatewayId must be not empty')
        else GatewayId,
    },
  },
  setInstanceId(InstanceId): {
    Properties+::: {
      InstanceId:
        if !std.isString(InstanceId) then (error 'InstanceId must be a string')
        else if std.isEmpty(InstanceId) then (error 'InstanceId must be not empty')
        else InstanceId,
    },
  },
  setLocalGatewayId(LocalGatewayId): {
    Properties+::: {
      LocalGatewayId:
        if !std.isString(LocalGatewayId) then (error 'LocalGatewayId must be a string')
        else if std.isEmpty(LocalGatewayId) then (error 'LocalGatewayId must be not empty')
        else LocalGatewayId,
    },
  },
  setNatGatewayId(NatGatewayId): {
    Properties+::: {
      NatGatewayId:
        if !std.isString(NatGatewayId) then (error 'NatGatewayId must be a string')
        else if std.isEmpty(NatGatewayId) then (error 'NatGatewayId must be not empty')
        else NatGatewayId,
    },
  },
  setNetworkInterfaceId(NetworkInterfaceId): {
    Properties+::: {
      NetworkInterfaceId:
        if !std.isString(NetworkInterfaceId) then (error 'NetworkInterfaceId must be a string')
        else if std.isEmpty(NetworkInterfaceId) then (error 'NetworkInterfaceId must be not empty')
        else NetworkInterfaceId,
    },
  },
  setTransitGatewayId(TransitGatewayId): {
    Properties+::: {
      TransitGatewayId:
        if !std.isString(TransitGatewayId) then (error 'TransitGatewayId must be a string')
        else if std.isEmpty(TransitGatewayId) then (error 'TransitGatewayId must be not empty')
        else TransitGatewayId,
    },
  },
  setVpcEndpointId(VpcEndpointId): {
    Properties+::: {
      VpcEndpointId:
        if !std.isString(VpcEndpointId) then (error 'VpcEndpointId must be a string')
        else if std.isEmpty(VpcEndpointId) then (error 'VpcEndpointId must be not empty')
        else VpcEndpointId,
    },
  },
  setVpcPeeringConnectionId(VpcPeeringConnectionId): {
    Properties+::: {
      VpcPeeringConnectionId:
        if !std.isString(VpcPeeringConnectionId) then (error 'VpcPeeringConnectionId must be a string')
        else if std.isEmpty(VpcPeeringConnectionId) then (error 'VpcPeeringConnectionId must be not empty')
        else VpcPeeringConnectionId,
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
