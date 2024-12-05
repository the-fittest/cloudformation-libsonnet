{
  new(
    TrafficMirrorTargetId,
    NetworkInterfaceId,
    TrafficMirrorFilterId,
    SessionNumber,
  ): {
    local base = self,
    Properties: {
      TrafficMirrorTargetId:
        if !std.isString(TrafficMirrorTargetId) then (error 'TrafficMirrorTargetId must be a string')
        else if std.isEmpty(TrafficMirrorTargetId) then (error 'TrafficMirrorTargetId must be not empty')
        else TrafficMirrorTargetId,
      NetworkInterfaceId:
        if !std.isString(NetworkInterfaceId) then (error 'NetworkInterfaceId must be a string')
        else if std.isEmpty(NetworkInterfaceId) then (error 'NetworkInterfaceId must be not empty')
        else NetworkInterfaceId,
      TrafficMirrorFilterId:
        if !std.isString(TrafficMirrorFilterId) then (error 'TrafficMirrorFilterId must be a string')
        else if std.isEmpty(TrafficMirrorFilterId) then (error 'TrafficMirrorFilterId must be not empty')
        else TrafficMirrorFilterId,
      SessionNumber:
        if !std.isNumber(SessionNumber) then (error 'SessionNumber must be an number')
        else SessionNumber,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TrafficMirrorSession',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setVirtualNetworkId(VirtualNetworkId): {
    Properties+::: {
      VirtualNetworkId:
        if !std.isNumber(VirtualNetworkId) then (error 'VirtualNetworkId must be an number')
        else VirtualNetworkId,
    },
  },
  setPacketLength(PacketLength): {
    Properties+::: {
      PacketLength:
        if !std.isNumber(PacketLength) then (error 'PacketLength must be an number')
        else PacketLength,
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
