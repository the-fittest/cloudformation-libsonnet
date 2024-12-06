{
  new(
    LocalGatewayRouteTableId,
    VpcId,
  ): {
    local base = self,
    Properties: {
      LocalGatewayRouteTableId:
        if !std.isString(LocalGatewayRouteTableId) then (error 'LocalGatewayRouteTableId must be a string')
        else if std.isEmpty(LocalGatewayRouteTableId) then (error 'LocalGatewayRouteTableId must be not empty')
        else LocalGatewayRouteTableId,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::LocalGatewayRouteTableVPCAssociation',
  },
  setLocalGatewayId(LocalGatewayId): {
    Properties+::: {
      LocalGatewayId:
        if !std.isString(LocalGatewayId) then (error 'LocalGatewayId must be a string')
        else if std.isEmpty(LocalGatewayId) then (error 'LocalGatewayId must be not empty')
        else LocalGatewayId,
    },
  },
  setLocalGatewayRouteTableVpcAssociationId(LocalGatewayRouteTableVpcAssociationId): {
    Properties+::: {
      LocalGatewayRouteTableVpcAssociationId:
        if !std.isString(LocalGatewayRouteTableVpcAssociationId) then (error 'LocalGatewayRouteTableVpcAssociationId must be a string')
        else if std.isEmpty(LocalGatewayRouteTableVpcAssociationId) then (error 'LocalGatewayRouteTableVpcAssociationId must be not empty')
        else LocalGatewayRouteTableVpcAssociationId,
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
