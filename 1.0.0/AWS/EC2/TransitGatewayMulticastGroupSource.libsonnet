{
  new(
    TransitGatewayMulticastDomainId,
    NetworkInterfaceId,
    GroupIpAddress,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TransitGatewayMulticastDomainId) : 'TransitGatewayMulticastDomainId must be a string',
      TransitGatewayMulticastDomainId: TransitGatewayMulticastDomainId,
      assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
      NetworkInterfaceId: NetworkInterfaceId,
      assert std.isString(GroupIpAddress) : 'GroupIpAddress must be a string',
      GroupIpAddress: GroupIpAddress,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TransitGatewayMulticastGroupSource',
  },
  withTransitGatewayAttachmentId(TransitGatewayAttachmentId): {
    assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
    Properties+::: {
      TransitGatewayAttachmentId: TransitGatewayAttachmentId,
    },
  },
  withSubnetId(SubnetId): {
    assert std.isString(SubnetId) : 'SubnetId must be a string',
    Properties+::: {
      SubnetId: SubnetId,
    },
  },
  withResourceId(ResourceId): {
    assert std.isString(ResourceId) : 'ResourceId must be a string',
    Properties+::: {
      ResourceId: ResourceId,
    },
  },
  withResourceType(ResourceType): {
    assert std.isString(ResourceType) : 'ResourceType must be a string',
    Properties+::: {
      ResourceType: ResourceType,
    },
  },
  withGroupMember(GroupMember): {
    assert std.isBoolean(GroupMember) : 'GroupMember must be a boolean',
    Properties+::: {
      GroupMember: GroupMember,
    },
  },
  withGroupSource(GroupSource): {
    assert std.isBoolean(GroupSource) : 'GroupSource must be a boolean',
    Properties+::: {
      GroupSource: GroupSource,
    },
  },
  withSourceType(SourceType): {
    assert std.isString(SourceType) : 'SourceType must be a string',
    Properties+::: {
      SourceType: SourceType,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
