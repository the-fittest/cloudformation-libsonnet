{
  // AWS AppConfig HostedConfigurationVersion
  HostedConfigurationVersion: {
    new(
      ApplicationId,
      ConfigurationProfileId,
      Content,
      ContentType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(ConfigurationProfileId) : 'ConfigurationProfileId must be a string',
        ConfigurationProfileId: ConfigurationProfileId,
        assert std.isString(Content) : 'Content must be a string',
        Content: Content,
        assert std.isString(ContentType) : 'ContentType must be a string',
        ContentType: ContentType,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AppConfig::HostedConfigurationVersion',
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withLatestVersionNumber(LatestVersionNumber): {
      assert std.isNumber(LatestVersionNumber) : 'LatestVersionNumber must be a number',
      Properties+::: {
        LatestVersionNumber: LatestVersionNumber,
      },
    },
    withVersionLabel(VersionLabel): {
      assert std.isString(VersionLabel) : 'VersionLabel must be a string',
      Properties+::: {
        VersionLabel: VersionLabel,
      },
    },
    withVersionNumber(VersionNumber): {
      assert std.isString(VersionNumber) : 'VersionNumber must be a string',
      Properties+::: {
        VersionNumber: VersionNumber,
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
