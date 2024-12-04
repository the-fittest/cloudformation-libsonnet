{
  // AWS IoTSiteWise Asset
  Asset: {
    new(
      AssetName,
      AssetModelId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssetName) : 'AssetName must be a string',
        AssetName: AssetName,
        assert std.isString(AssetModelId) : 'AssetModelId must be a string',
        AssetModelId: AssetModelId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoTSiteWise::Asset',
    },
    withAssetId(AssetId): {
      assert std.isString(AssetId) : 'AssetId must be a string',
      Properties+::: {
        AssetId: AssetId,
      },
    },
    withAssetExternalId(AssetExternalId): {
      assert std.isString(AssetExternalId) : 'AssetExternalId must be a string',
      Properties+::: {
        AssetExternalId: AssetExternalId,
      },
    },
    withAssetArn(AssetArn): {
      assert std.isString(AssetArn) : 'AssetArn must be a string',
      Properties+::: {
        AssetArn: AssetArn,
      },
    },
    withAssetDescription(AssetDescription): {
      assert std.isString(AssetDescription) : 'AssetDescription must be a string',
      Properties+::: {
        AssetDescription: AssetDescription,
      },
    },
    withAssetProperties(AssetProperties): {
      Properties+::: {
        AssetProperties: (if std.isArray(AssetProperties) then AssetProperties else [AssetProperties]),
      },
    },
    withAssetPropertiesMixin(AssetProperties): {
      Properties+::: {
        AssetProperties+: (if std.isArray(AssetProperties) then AssetProperties else [AssetProperties]),
      },
    },
    withAssetHierarchies(AssetHierarchies): {
      Properties+::: {
        AssetHierarchies: (if std.isArray(AssetHierarchies) then AssetHierarchies else [AssetHierarchies]),
      },
    },
    withAssetHierarchiesMixin(AssetHierarchies): {
      Properties+::: {
        AssetHierarchies+: (if std.isArray(AssetHierarchies) then AssetHierarchies else [AssetHierarchies]),
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
