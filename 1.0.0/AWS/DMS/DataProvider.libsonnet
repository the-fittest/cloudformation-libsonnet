{
  // AWS DMS DataProvider
  DataProvider: {
    new(
      Engine,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Engine) : 'Engine must be a string',
        Engine: Engine,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DMS::DataProvider',
    },
    withDataProviderName(DataProviderName): {
      assert std.isString(DataProviderName) : 'DataProviderName must be a string',
      Properties+::: {
        DataProviderName: DataProviderName,
      },
    },
    withDataProviderIdentifier(DataProviderIdentifier): {
      assert std.isString(DataProviderIdentifier) : 'DataProviderIdentifier must be a string',
      Properties+::: {
        DataProviderIdentifier: DataProviderIdentifier,
      },
    },
    withDataProviderArn(DataProviderArn): {
      assert std.isString(DataProviderArn) : 'DataProviderArn must be a string',
      Properties+::: {
        DataProviderArn: DataProviderArn,
      },
    },
    withDataProviderCreationTime(DataProviderCreationTime): {
      assert std.isString(DataProviderCreationTime) : 'DataProviderCreationTime must be a string',
      Properties+::: {
        DataProviderCreationTime: DataProviderCreationTime,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withExactSettings(ExactSettings): {
      assert std.isBoolean(ExactSettings) : 'ExactSettings must be a boolean',
      Properties+::: {
        ExactSettings: ExactSettings,
      },
    },
    withSettings(Settings): {
      assert std.isObject(Settings) : 'Settings must be a object',
      Properties+::: {
        Settings: Settings,
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