{
  new(
    RouteTableId,
    GatewayId,
  ): {
    local base = self,
    Properties: {
      RouteTableId:
        if !std.isString(RouteTableId) then (error 'RouteTableId must be a string')
        else if std.isEmpty(RouteTableId) then (error 'RouteTableId must be not empty')
        else RouteTableId,
      GatewayId:
        if !std.isString(GatewayId) then (error 'GatewayId must be a string')
        else if std.isEmpty(GatewayId) then (error 'GatewayId must be not empty')
        else GatewayId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::GatewayRouteTableAssociation',
  },
  setAssociationId(AssociationId): {
    Properties+::: {
      AssociationId:
        if !std.isString(AssociationId) then (error 'AssociationId must be a string')
        else if std.isEmpty(AssociationId) then (error 'AssociationId must be not empty')
        else AssociationId,
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
