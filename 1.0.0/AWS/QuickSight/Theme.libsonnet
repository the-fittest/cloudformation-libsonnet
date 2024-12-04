{
  // AWS QuickSight Theme
  Theme: {
    new(
      AwsAccountId,
      ThemeId,
      BaseThemeId,
      Configuration,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
        AwsAccountId: AwsAccountId,
        assert std.isString(ThemeId) : 'ThemeId must be a string',
        ThemeId: ThemeId,
        assert std.isString(BaseThemeId) : 'BaseThemeId must be a string',
        BaseThemeId: BaseThemeId,
        assert std.isObject(Configuration) : 'Configuration must be an object',
        Configuration: Configuration,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::QuickSight::Theme',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: {
        CreatedTime: CreatedTime,
      },
    },
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: {
        LastUpdatedTime: LastUpdatedTime,
      },
    },
    withPermissions(Permissions): {
      Properties+::: {
        Permissions: (if std.isArray(Permissions) then Permissions else [Permissions]),
      },
    },
    withPermissionsMixin(Permissions): {
      Properties+::: {
        Permissions+: (if std.isArray(Permissions) then Permissions else [Permissions]),
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
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: {
        Type: Type,
      },
    },
    withVersion(Version): {
      assert std.isObject(Version) : 'Version must be a object',
      Properties+::: {
        Version: Version,
      },
    },
    withVersionDescription(VersionDescription): {
      assert std.isString(VersionDescription) : 'VersionDescription must be a string',
      Properties+::: {
        VersionDescription: VersionDescription,
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
