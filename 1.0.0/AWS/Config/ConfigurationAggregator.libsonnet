{
  // AWS Config ConfigurationAggregator
  ConfigurationAggregator: {
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
      Type: 'AWS::Config::ConfigurationAggregator',
    },
    withAccountAggregationSources(AccountAggregationSources): {
      Properties+::: {
        AccountAggregationSources: (if std.isArray(AccountAggregationSources) then AccountAggregationSources else [AccountAggregationSources]),
      },
    },
    withAccountAggregationSourcesMixin(AccountAggregationSources): {
      Properties+::: {
        AccountAggregationSources+: (if std.isArray(AccountAggregationSources) then AccountAggregationSources else [AccountAggregationSources]),
      },
    },
    withConfigurationAggregatorName(ConfigurationAggregatorName): {
      assert std.isString(ConfigurationAggregatorName) : 'ConfigurationAggregatorName must be a string',
      Properties+::: {
        ConfigurationAggregatorName: ConfigurationAggregatorName,
      },
    },
    withConfigurationAggregatorArn(ConfigurationAggregatorArn): {
      assert std.isString(ConfigurationAggregatorArn) : 'ConfigurationAggregatorArn must be a string',
      Properties+::: {
        ConfigurationAggregatorArn: ConfigurationAggregatorArn,
      },
    },
    withOrganizationAggregationSource(OrganizationAggregationSource): {
      assert std.isObject(OrganizationAggregationSource) : 'OrganizationAggregationSource must be a object',
      Properties+::: {
        OrganizationAggregationSource: OrganizationAggregationSource,
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
