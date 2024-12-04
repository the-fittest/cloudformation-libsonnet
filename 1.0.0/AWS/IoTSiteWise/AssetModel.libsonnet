{
  // AWS IoTSiteWise AssetModel
  AssetModel: {
    new(
      AssetModelName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssetModelName) : 'AssetModelName must be a string',
        AssetModelName: AssetModelName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoTSiteWise::AssetModel',
    },
    withAssetModelId(AssetModelId): {
      assert std.isString(AssetModelId) : 'AssetModelId must be a string',
      Properties+::: {
        AssetModelId: AssetModelId,
      },
    },
    withAssetModelType(AssetModelType): {
      assert std.isString(AssetModelType) : 'AssetModelType must be a string',
      Properties+::: {
        AssetModelType: AssetModelType,
      },
    },
    withAssetModelExternalId(AssetModelExternalId): {
      assert std.isString(AssetModelExternalId) : 'AssetModelExternalId must be a string',
      Properties+::: {
        AssetModelExternalId: AssetModelExternalId,
      },
    },
    withAssetModelArn(AssetModelArn): {
      assert std.isString(AssetModelArn) : 'AssetModelArn must be a string',
      Properties+::: {
        AssetModelArn: AssetModelArn,
      },
    },
    withAssetModelDescription(AssetModelDescription): {
      assert std.isString(AssetModelDescription) : 'AssetModelDescription must be a string',
      Properties+::: {
        AssetModelDescription: AssetModelDescription,
      },
    },
    withAssetModelProperties(AssetModelProperties): {
      Properties+::: {
        AssetModelProperties: (if std.isArray(AssetModelProperties) then AssetModelProperties else [AssetModelProperties]),
      },
    },
    withAssetModelPropertiesMixin(AssetModelProperties): {
      Properties+::: {
        AssetModelProperties+: (if std.isArray(AssetModelProperties) then AssetModelProperties else [AssetModelProperties]),
      },
    },
    withAssetModelCompositeModels(AssetModelCompositeModels): {
      Properties+::: {
        AssetModelCompositeModels: (if std.isArray(AssetModelCompositeModels) then AssetModelCompositeModels else [AssetModelCompositeModels]),
      },
    },
    withAssetModelCompositeModelsMixin(AssetModelCompositeModels): {
      Properties+::: {
        AssetModelCompositeModels+: (if std.isArray(AssetModelCompositeModels) then AssetModelCompositeModels else [AssetModelCompositeModels]),
      },
    },
    withAssetModelHierarchies(AssetModelHierarchies): {
      Properties+::: {
        AssetModelHierarchies: (if std.isArray(AssetModelHierarchies) then AssetModelHierarchies else [AssetModelHierarchies]),
      },
    },
    withAssetModelHierarchiesMixin(AssetModelHierarchies): {
      Properties+::: {
        AssetModelHierarchies+: (if std.isArray(AssetModelHierarchies) then AssetModelHierarchies else [AssetModelHierarchies]),
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
