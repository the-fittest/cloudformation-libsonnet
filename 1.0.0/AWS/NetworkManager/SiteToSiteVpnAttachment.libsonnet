{
  // AWS NetworkManager SiteToSiteVpnAttachment
  SiteToSiteVpnAttachment: {
    new(
      CoreNetworkId,
      VpnConnectionArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
        CoreNetworkId: CoreNetworkId,
        assert std.isString(VpnConnectionArn) : 'VpnConnectionArn must be a string',
        VpnConnectionArn: VpnConnectionArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::NetworkManager::SiteToSiteVpnAttachment',
    },
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: {
        CoreNetworkArn: CoreNetworkArn,
      },
    },
    withAttachmentId(AttachmentId): {
      assert std.isString(AttachmentId) : 'AttachmentId must be a string',
      Properties+::: {
        AttachmentId: AttachmentId,
      },
    },
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: {
        OwnerAccountId: OwnerAccountId,
      },
    },
    withAttachmentType(AttachmentType): {
      assert std.isString(AttachmentType) : 'AttachmentType must be a string',
      Properties+::: {
        AttachmentType: AttachmentType,
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
    withAttachmentPolicyRuleNumber(AttachmentPolicyRuleNumber): {
      assert std.isNumber(AttachmentPolicyRuleNumber) : 'AttachmentPolicyRuleNumber must be a number',
      Properties+::: {
        AttachmentPolicyRuleNumber: AttachmentPolicyRuleNumber,
      },
    },
    withSegmentName(SegmentName): {
      assert std.isString(SegmentName) : 'SegmentName must be a string',
      Properties+::: {
        SegmentName: SegmentName,
      },
    },
    withProposedSegmentChange(ProposedSegmentChange): {
      assert std.isObject(ProposedSegmentChange) : 'ProposedSegmentChange must be a object',
      Properties+::: {
        ProposedSegmentChange: ProposedSegmentChange,
      },
    },
    withNetworkFunctionGroupName(NetworkFunctionGroupName): {
      assert std.isString(NetworkFunctionGroupName) : 'NetworkFunctionGroupName must be a string',
      Properties+::: {
        NetworkFunctionGroupName: NetworkFunctionGroupName,
      },
    },
    withProposedNetworkFunctionGroupChange(ProposedNetworkFunctionGroupChange): {
      assert std.isObject(ProposedNetworkFunctionGroupChange) : 'ProposedNetworkFunctionGroupChange must be a object',
      Properties+::: {
        ProposedNetworkFunctionGroupChange: ProposedNetworkFunctionGroupChange,
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
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: {
        UpdatedAt: UpdatedAt,
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
