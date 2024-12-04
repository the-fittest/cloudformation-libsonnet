{
  // AWS EC2 TransitGatewayMulticastDomainAssociation
  TransitGatewayMulticastDomainAssociation: {
    new(
      TransitGatewayMulticastDomainId,
      TransitGatewayAttachmentId,
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayMulticastDomainId) : 'TransitGatewayMulticastDomainId must be a string',
        TransitGatewayMulticastDomainId: TransitGatewayMulticastDomainId,
        assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
        TransitGatewayAttachmentId: TransitGatewayAttachmentId,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::TransitGatewayMulticastDomainAssociation',
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
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: {
        State: State,
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
  },
}
