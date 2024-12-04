{
  // AWS AppSync ApiCache
  ApiCache: {
    new(
      Type,
      ApiId,
      ApiCachingBehavior,
      Ttl,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(ApiCachingBehavior) : 'ApiCachingBehavior must be a string',
        ApiCachingBehavior: ApiCachingBehavior,
        assert std.isNumber(Ttl) : 'Ttl must be a number',
        Ttl: Ttl,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AppSync::ApiCache',
    },
    withTransitEncryptionEnabled(TransitEncryptionEnabled): {
      assert std.isBoolean(TransitEncryptionEnabled) : 'TransitEncryptionEnabled must be a boolean',
      Properties+::: {
        TransitEncryptionEnabled: TransitEncryptionEnabled,
      },
    },
    withHealthMetricsConfig(HealthMetricsConfig): {
      assert std.isString(HealthMetricsConfig) : 'HealthMetricsConfig must be a string',
      Properties+::: {
        HealthMetricsConfig: HealthMetricsConfig,
      },
    },
    withAtRestEncryptionEnabled(AtRestEncryptionEnabled): {
      assert std.isBoolean(AtRestEncryptionEnabled) : 'AtRestEncryptionEnabled must be a boolean',
      Properties+::: {
        AtRestEncryptionEnabled: AtRestEncryptionEnabled,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
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
