{
  new(
    GroupIpAddress,
    NetworkInterfaceId,
    TransitGatewayMulticastDomainId,
  ): {
    local base = self,
    Properties: {
      GroupIpAddress:
        if !std.isString(GroupIpAddress) then (error 'GroupIpAddress must be a string')
        else if std.isEmpty(GroupIpAddress) then (error 'GroupIpAddress must be not empty')
        else GroupIpAddress,
      NetworkInterfaceId:
        if !std.isString(NetworkInterfaceId) then (error 'NetworkInterfaceId must be a string')
        else if std.isEmpty(NetworkInterfaceId) then (error 'NetworkInterfaceId must be not empty')
        else NetworkInterfaceId,
      TransitGatewayMulticastDomainId:
        if !std.isString(TransitGatewayMulticastDomainId) then (error 'TransitGatewayMulticastDomainId must be a string')
        else if std.isEmpty(TransitGatewayMulticastDomainId) then (error 'TransitGatewayMulticastDomainId must be not empty')
        else TransitGatewayMulticastDomainId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TransitGatewayMulticastGroupMember',
  },
  setTransitGatewayAttachmentId(TransitGatewayAttachmentId): {
    Properties+::: {
      TransitGatewayAttachmentId:
        if !std.isString(TransitGatewayAttachmentId) then (error 'TransitGatewayAttachmentId must be a string')
        else if std.isEmpty(TransitGatewayAttachmentId) then (error 'TransitGatewayAttachmentId must be not empty')
        else TransitGatewayAttachmentId,
    },
  },
  setSubnetId(SubnetId): {
    Properties+::: {
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
    },
  },
  setResourceId(ResourceId): {
    Properties+::: {
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else ResourceId,
    },
  },
  setResourceType(ResourceType): {
    Properties+::: {
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else ResourceType,
    },
  },
  setGroupMember(GroupMember): {
    Properties+::: {
      GroupMember:
        if !std.isBoolean(GroupMember) then (error 'GroupMember must be a boolean') else GroupMember,
    },
  },
  setGroupSource(GroupSource): {
    Properties+::: {
      GroupSource:
        if !std.isBoolean(GroupSource) then (error 'GroupSource must be a boolean') else GroupSource,
    },
  },
  setMemberType(MemberType): {
    Properties+::: {
      MemberType:
        if !std.isString(MemberType) then (error 'MemberType must be a string')
        else if std.isEmpty(MemberType) then (error 'MemberType must be not empty')
        else MemberType,
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
