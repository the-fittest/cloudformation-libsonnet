{
  new(
    PeeringId,
    TransitGatewayRouteTableArn,
  ): {
    local base = self,
    Properties: {
      PeeringId:
        if !std.isString(PeeringId) then (error 'PeeringId must be a string')
        else if std.isEmpty(PeeringId) then (error 'PeeringId must be not empty')
        else PeeringId,
      TransitGatewayRouteTableArn:
        if !std.isString(TransitGatewayRouteTableArn) then (error 'TransitGatewayRouteTableArn must be a string')
        else if std.isEmpty(TransitGatewayRouteTableArn) then (error 'TransitGatewayRouteTableArn must be not empty')
        else TransitGatewayRouteTableArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkManager::TransitGatewayRouteTableAttachment',
  },
  setCoreNetworkId(CoreNetworkId): {
    Properties+::: {
      CoreNetworkId:
        if !std.isString(CoreNetworkId) then (error 'CoreNetworkId must be a string')
        else if std.isEmpty(CoreNetworkId) then (error 'CoreNetworkId must be not empty')
        else CoreNetworkId,
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
  setAttachmentId(AttachmentId): {
    Properties+::: {
      AttachmentId:
        if !std.isString(AttachmentId) then (error 'AttachmentId must be a string')
        else if std.isEmpty(AttachmentId) then (error 'AttachmentId must be not empty')
        else AttachmentId,
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
  setAttachmentType(AttachmentType): {
    Properties+::: {
      AttachmentType:
        if !std.isString(AttachmentType) then (error 'AttachmentType must be a string')
        else if std.isEmpty(AttachmentType) then (error 'AttachmentType must be not empty')
        else AttachmentType,
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
  setAttachmentPolicyRuleNumber(AttachmentPolicyRuleNumber): {
    Properties+::: {
      AttachmentPolicyRuleNumber:
        if !std.isNumber(AttachmentPolicyRuleNumber) then (error 'AttachmentPolicyRuleNumber must be an number')
        else AttachmentPolicyRuleNumber,
    },
  },
  setSegmentName(SegmentName): {
    Properties+::: {
      SegmentName:
        if !std.isString(SegmentName) then (error 'SegmentName must be a string')
        else if std.isEmpty(SegmentName) then (error 'SegmentName must be not empty')
        else SegmentName,
    },
  },
  setProposedSegmentChange(ProposedSegmentChange): {
    Properties+::: {
      ProposedSegmentChange:
        if !std.isObject(ProposedSegmentChange) then (error 'ProposedSegmentChange must be an object')
        else ProposedSegmentChange,
    },
  },
  setNetworkFunctionGroupName(NetworkFunctionGroupName): {
    Properties+::: {
      NetworkFunctionGroupName:
        if !std.isString(NetworkFunctionGroupName) then (error 'NetworkFunctionGroupName must be a string')
        else if std.isEmpty(NetworkFunctionGroupName) then (error 'NetworkFunctionGroupName must be not empty')
        else NetworkFunctionGroupName,
    },
  },
  setProposedNetworkFunctionGroupChange(ProposedNetworkFunctionGroupChange): {
    Properties+::: {
      ProposedNetworkFunctionGroupChange:
        if !std.isObject(ProposedNetworkFunctionGroupChange) then (error 'ProposedNetworkFunctionGroupChange must be an object')
        else ProposedNetworkFunctionGroupChange,
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
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
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
