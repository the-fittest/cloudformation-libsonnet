{
  // AWS EC2 VerifiedAccessInstance
  VerifiedAccessInstance: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::VerifiedAccessInstance',
    },
    withVerifiedAccessInstanceId(VerifiedAccessInstanceId): {
      assert std.isString(VerifiedAccessInstanceId) : 'VerifiedAccessInstanceId must be a string',
      Properties+::: {
        VerifiedAccessInstanceId: VerifiedAccessInstanceId,
      },
    },
    withVerifiedAccessTrustProviders(VerifiedAccessTrustProviders): {
      Properties+::: {
        VerifiedAccessTrustProviders: (if std.isArray(VerifiedAccessTrustProviders) then VerifiedAccessTrustProviders else [VerifiedAccessTrustProviders]),
      },
    },
    withVerifiedAccessTrustProvidersMixin(VerifiedAccessTrustProviders): {
      Properties+::: {
        VerifiedAccessTrustProviders+: (if std.isArray(VerifiedAccessTrustProviders) then VerifiedAccessTrustProviders else [VerifiedAccessTrustProviders]),
      },
    },
    withVerifiedAccessTrustProviderIds(VerifiedAccessTrustProviderIds): {
      Properties+::: {
        VerifiedAccessTrustProviderIds: (if std.isArray(VerifiedAccessTrustProviderIds) then VerifiedAccessTrustProviderIds else [VerifiedAccessTrustProviderIds]),
      },
    },
    withVerifiedAccessTrustProviderIdsMixin(VerifiedAccessTrustProviderIds): {
      Properties+::: {
        VerifiedAccessTrustProviderIds+: (if std.isArray(VerifiedAccessTrustProviderIds) then VerifiedAccessTrustProviderIds else [VerifiedAccessTrustProviderIds]),
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: {
        LastUpdatedTime: LastUpdatedTime,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withLoggingConfigurations(LoggingConfigurations): {
      assert std.isObject(LoggingConfigurations) : 'LoggingConfigurations must be a object',
      Properties+::: {
        LoggingConfigurations: LoggingConfigurations,
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
    withFipsEnabled(FipsEnabled): {
      assert std.isBoolean(FipsEnabled) : 'FipsEnabled must be a boolean',
      Properties+::: {
        FipsEnabled: FipsEnabled,
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
