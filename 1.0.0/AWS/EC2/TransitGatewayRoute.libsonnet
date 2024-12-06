{
  new(
    TransitGatewayRouteTableId,
    DestinationCidrBlock,
  ): {
    local base = self,
    Properties: {
      TransitGatewayRouteTableId:
        if !std.isString(TransitGatewayRouteTableId) then (error 'TransitGatewayRouteTableId must be a string')
        else if std.isEmpty(TransitGatewayRouteTableId) then (error 'TransitGatewayRouteTableId must be not empty')
        else TransitGatewayRouteTableId,
      DestinationCidrBlock:
        if !std.isString(DestinationCidrBlock) then (error 'DestinationCidrBlock must be a string')
        else if std.isEmpty(DestinationCidrBlock) then (error 'DestinationCidrBlock must be not empty')
        else DestinationCidrBlock,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TransitGatewayRoute',
  },
  setBlackhole(Blackhole): {
    Properties+::: {
      Blackhole:
        if !std.isBoolean(Blackhole) then (error 'Blackhole must be a boolean') else Blackhole,
    },
  },
  setTransitGatewayAttachmentId(TransitGatewayAttachmentId): {
    Properties+::: {
      TransitGatewayAttachmentId:
        if !std.isString(TransitGatewayAttachmentId) then (error 'TransitGatewayAttachmentId must be a string')
        else if std.isEmpty(TransitGatewayAttachmentId) then (error 'TransitGatewayAttachmentId must be not empty')
        else TransitGatewayAttachmentId,
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
