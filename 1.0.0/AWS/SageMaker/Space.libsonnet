{
  // AWS SageMaker Space
  Space: {
    new(
      DomainId,
      SpaceName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainId) : 'DomainId must be a string',
        DomainId: DomainId,
        assert std.isString(SpaceName) : 'SpaceName must be a string',
        SpaceName: SpaceName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::Space',
    },
    withSpaceArn(SpaceArn): {
      assert std.isString(SpaceArn) : 'SpaceArn must be a string',
      Properties+::: {
        SpaceArn: SpaceArn,
      },
    },
    withSpaceSettings(SpaceSettings): {
      assert std.isObject(SpaceSettings) : 'SpaceSettings must be a object',
      Properties+::: {
        SpaceSettings: SpaceSettings,
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
    withOwnershipSettings(OwnershipSettings): {
      assert std.isObject(OwnershipSettings) : 'OwnershipSettings must be a object',
      Properties+::: {
        OwnershipSettings: OwnershipSettings,
      },
    },
    withSpaceSharingSettings(SpaceSharingSettings): {
      assert std.isObject(SpaceSharingSettings) : 'SpaceSharingSettings must be a object',
      Properties+::: {
        SpaceSharingSettings: SpaceSharingSettings,
      },
    },
    withSpaceDisplayName(SpaceDisplayName): {
      assert std.isString(SpaceDisplayName) : 'SpaceDisplayName must be a string',
      Properties+::: {
        SpaceDisplayName: SpaceDisplayName,
      },
    },
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: {
        Url: Url,
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
