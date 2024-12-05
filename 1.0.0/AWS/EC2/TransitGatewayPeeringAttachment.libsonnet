{
  new(
    TransitGatewayId,
    PeerTransitGatewayId,
    PeerAccountId,
    PeerRegion,
  ): {
    local base = self,
    Properties: {
      TransitGatewayId:
        if !std.isString(TransitGatewayId) then (error 'TransitGatewayId must be a string')
        else if std.isEmpty(TransitGatewayId) then (error 'TransitGatewayId must be not empty')
        else TransitGatewayId,
      PeerTransitGatewayId:
        if !std.isString(PeerTransitGatewayId) then (error 'PeerTransitGatewayId must be a string')
        else if std.isEmpty(PeerTransitGatewayId) then (error 'PeerTransitGatewayId must be not empty')
        else PeerTransitGatewayId,
      PeerAccountId:
        if !std.isString(PeerAccountId) then (error 'PeerAccountId must be a string')
        else if std.isEmpty(PeerAccountId) then (error 'PeerAccountId must be not empty')
        else PeerAccountId,
      PeerRegion:
        if !std.isString(PeerRegion) then (error 'PeerRegion must be a string')
        else if std.isEmpty(PeerRegion) then (error 'PeerRegion must be not empty')
        else PeerRegion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TransitGatewayPeeringAttachment',
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isObject(Status) then (error 'Status must be an object')
        else Status,
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
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
