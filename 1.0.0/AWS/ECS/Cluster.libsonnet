{
  // AWS ECS Cluster
  Cluster: {
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
      Type: 'AWS::ECS::Cluster',
    },
    withClusterSettings(ClusterSettings): {
      Properties+::: {
        ClusterSettings: (if std.isArray(ClusterSettings) then ClusterSettings else [ClusterSettings]),
      },
    },
    withClusterSettingsMixin(ClusterSettings): {
      Properties+::: {
        ClusterSettings+: (if std.isArray(ClusterSettings) then ClusterSettings else [ClusterSettings]),
      },
    },
    withDefaultCapacityProviderStrategy(DefaultCapacityProviderStrategy): {
      Properties+::: {
        DefaultCapacityProviderStrategy: (if std.isArray(DefaultCapacityProviderStrategy) then DefaultCapacityProviderStrategy else [DefaultCapacityProviderStrategy]),
      },
    },
    withDefaultCapacityProviderStrategyMixin(DefaultCapacityProviderStrategy): {
      Properties+::: {
        DefaultCapacityProviderStrategy+: (if std.isArray(DefaultCapacityProviderStrategy) then DefaultCapacityProviderStrategy else [DefaultCapacityProviderStrategy]),
      },
    },
    withConfiguration(Configuration): {
      assert std.isObject(Configuration) : 'Configuration must be a object',
      Properties+::: {
        Configuration: Configuration,
      },
    },
    withServiceConnectDefaults(ServiceConnectDefaults): {
      assert std.isObject(ServiceConnectDefaults) : 'ServiceConnectDefaults must be a object',
      Properties+::: {
        ServiceConnectDefaults: ServiceConnectDefaults,
      },
    },
    withCapacityProviders(CapacityProviders): {
      Properties+::: {
        CapacityProviders: (if std.isArray(CapacityProviders) then CapacityProviders else [CapacityProviders]),
      },
    },
    withCapacityProvidersMixin(CapacityProviders): {
      Properties+::: {
        CapacityProviders+: (if std.isArray(CapacityProviders) then CapacityProviders else [CapacityProviders]),
      },
    },
    withClusterName(ClusterName): {
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      Properties+::: {
        ClusterName: ClusterName,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
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
