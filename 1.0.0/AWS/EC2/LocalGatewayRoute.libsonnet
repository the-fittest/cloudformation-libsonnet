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
    Type: 'AWS::EC2::LocalGatewayRoute',
  },
  setDestinationCidrBlock(DestinationCidrBlock): {
    Properties+::: {
      DestinationCidrBlock:
        if !std.isString(DestinationCidrBlock) then (error 'DestinationCidrBlock must be a string')
        else if std.isEmpty(DestinationCidrBlock) then (error 'DestinationCidrBlock must be not empty')
        else DestinationCidrBlock,
    },
  },
  setLocalGatewayRouteTableId(LocalGatewayRouteTableId): {
    Properties+::: {
      LocalGatewayRouteTableId:
        if !std.isString(LocalGatewayRouteTableId) then (error 'LocalGatewayRouteTableId must be a string')
        else if std.isEmpty(LocalGatewayRouteTableId) then (error 'LocalGatewayRouteTableId must be not empty')
        else LocalGatewayRouteTableId,
    },
  },
  setLocalGatewayVirtualInterfaceGroupId(LocalGatewayVirtualInterfaceGroupId): {
    Properties+::: {
      LocalGatewayVirtualInterfaceGroupId:
        if !std.isString(LocalGatewayVirtualInterfaceGroupId) then (error 'LocalGatewayVirtualInterfaceGroupId must be a string')
        else if std.isEmpty(LocalGatewayVirtualInterfaceGroupId) then (error 'LocalGatewayVirtualInterfaceGroupId must be not empty')
        else LocalGatewayVirtualInterfaceGroupId,
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
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
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
