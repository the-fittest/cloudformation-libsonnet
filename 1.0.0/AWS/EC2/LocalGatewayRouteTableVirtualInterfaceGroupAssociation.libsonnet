{
  new(
    LocalGatewayRouteTableId,
    LocalGatewayVirtualInterfaceGroupId,
  ): {
    local base = self,
    Properties: {
      LocalGatewayRouteTableId:
        if !std.isString(LocalGatewayRouteTableId) then (error 'LocalGatewayRouteTableId must be a string')
        else if std.isEmpty(LocalGatewayRouteTableId) then (error 'LocalGatewayRouteTableId must be not empty')
        else LocalGatewayRouteTableId,
      LocalGatewayVirtualInterfaceGroupId:
        if !std.isString(LocalGatewayVirtualInterfaceGroupId) then (error 'LocalGatewayVirtualInterfaceGroupId must be a string')
        else if std.isEmpty(LocalGatewayVirtualInterfaceGroupId) then (error 'LocalGatewayVirtualInterfaceGroupId must be not empty')
        else LocalGatewayVirtualInterfaceGroupId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation',
  },
  setLocalGatewayRouteTableVirtualInterfaceGroupAssociationId(LocalGatewayRouteTableVirtualInterfaceGroupAssociationId): {
    Properties+::: {
      LocalGatewayRouteTableVirtualInterfaceGroupAssociationId:
        if !std.isString(LocalGatewayRouteTableVirtualInterfaceGroupAssociationId) then (error 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId must be a string')
        else if std.isEmpty(LocalGatewayRouteTableVirtualInterfaceGroupAssociationId) then (error 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId must be not empty')
        else LocalGatewayRouteTableVirtualInterfaceGroupAssociationId,
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
  setLocalGatewayRouteTableArn(LocalGatewayRouteTableArn): {
    Properties+::: {
      LocalGatewayRouteTableArn:
        if !std.isString(LocalGatewayRouteTableArn) then (error 'LocalGatewayRouteTableArn must be a string')
        else if std.isEmpty(LocalGatewayRouteTableArn) then (error 'LocalGatewayRouteTableArn must be not empty')
        else LocalGatewayRouteTableArn,
    },
  },
  setOwnerId(OwnerId): {
    Properties+::: {
      OwnerId:
        if !std.isString(OwnerId) then (error 'OwnerId must be a string')
        else if std.isEmpty(OwnerId) then (error 'OwnerId must be not empty')
        else OwnerId,
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
