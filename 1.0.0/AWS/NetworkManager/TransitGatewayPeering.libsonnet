{
  new(
    CoreNetworkId,
    TransitGatewayArn,
  ): {
    local base = self,
    Properties: {
      CoreNetworkId:
        if !std.isString(CoreNetworkId) then (error 'CoreNetworkId must be a string')
        else if std.isEmpty(CoreNetworkId) then (error 'CoreNetworkId must be not empty')
        else CoreNetworkId,
      TransitGatewayArn:
        if !std.isString(TransitGatewayArn) then (error 'TransitGatewayArn must be a string')
        else if std.isEmpty(TransitGatewayArn) then (error 'TransitGatewayArn must be not empty')
        else TransitGatewayArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkManager::TransitGatewayPeering',
  },
  setCoreNetworkArn(CoreNetworkArn): {
    Properties+::: {
      CoreNetworkArn:
        if !std.isString(CoreNetworkArn) then (error 'CoreNetworkArn must be a string')
        else if std.isEmpty(CoreNetworkArn) then (error 'CoreNetworkArn must be not empty')
        else CoreNetworkArn,
    },
  },
  setTransitGatewayPeeringAttachmentId(TransitGatewayPeeringAttachmentId): {
    Properties+::: {
      TransitGatewayPeeringAttachmentId:
        if !std.isString(TransitGatewayPeeringAttachmentId) then (error 'TransitGatewayPeeringAttachmentId must be a string')
        else if std.isEmpty(TransitGatewayPeeringAttachmentId) then (error 'TransitGatewayPeeringAttachmentId must be not empty')
        else TransitGatewayPeeringAttachmentId,
    },
  },
  setPeeringId(PeeringId): {
    Properties+::: {
      PeeringId:
        if !std.isString(PeeringId) then (error 'PeeringId must be a string')
        else if std.isEmpty(PeeringId) then (error 'PeeringId must be not empty')
        else PeeringId,
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
  setEdgeLocation(EdgeLocation): {
    Properties+::: {
      EdgeLocation:
        if !std.isString(EdgeLocation) then (error 'EdgeLocation must be a string')
        else if std.isEmpty(EdgeLocation) then (error 'EdgeLocation must be not empty')
        else EdgeLocation,
    },
  },
  setResourceArn(ResourceArn): {
    Properties+::: {
      ResourceArn:
        if !std.isString(ResourceArn) then (error 'ResourceArn must be a string')
        else if std.isEmpty(ResourceArn) then (error 'ResourceArn must be not empty')
        else ResourceArn,
    },
  },
  setOwnerAccountId(OwnerAccountId): {
    Properties+::: {
      OwnerAccountId:
        if !std.isString(OwnerAccountId) then (error 'OwnerAccountId must be a string')
        else if std.isEmpty(OwnerAccountId) then (error 'OwnerAccountId must be not empty')
        else OwnerAccountId,
    },
  },
  setPeeringType(PeeringType): {
    Properties+::: {
      PeeringType:
        if !std.isString(PeeringType) then (error 'PeeringType must be a string')
        else if std.isEmpty(PeeringType) then (error 'PeeringType must be not empty')
        else PeeringType,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
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
