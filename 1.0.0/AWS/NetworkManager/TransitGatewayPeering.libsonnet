{
  // AWS NetworkManager TransitGatewayPeering
  TransitGatewayPeering: {
    new(
      CoreNetworkId,
      TransitGatewayArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
        CoreNetworkId: CoreNetworkId,
        assert std.isString(TransitGatewayArn) : 'TransitGatewayArn must be a string',
        TransitGatewayArn: TransitGatewayArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::NetworkManager::TransitGatewayPeering',
    },
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: {
        CoreNetworkArn: CoreNetworkArn,
      },
    },
    withTransitGatewayPeeringAttachmentId(TransitGatewayPeeringAttachmentId): {
      assert std.isString(TransitGatewayPeeringAttachmentId) : 'TransitGatewayPeeringAttachmentId must be a string',
      Properties+::: {
        TransitGatewayPeeringAttachmentId: TransitGatewayPeeringAttachmentId,
      },
    },
    withPeeringId(PeeringId): {
      assert std.isString(PeeringId) : 'PeeringId must be a string',
      Properties+::: {
        PeeringId: PeeringId,
      },
    },
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: {
        State: State,
      },
    },
    withEdgeLocation(EdgeLocation): {
      assert std.isString(EdgeLocation) : 'EdgeLocation must be a string',
      Properties+::: {
        EdgeLocation: EdgeLocation,
      },
    },
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: {
        ResourceArn: ResourceArn,
      },
    },
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: {
        OwnerAccountId: OwnerAccountId,
      },
    },
    withPeeringType(PeeringType): {
      assert std.isString(PeeringType) : 'PeeringType must be a string',
      Properties+::: {
        PeeringType: PeeringType,
      },
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
