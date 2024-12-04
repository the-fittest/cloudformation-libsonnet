{
  // AWS CloudWatch MetricStream
  MetricStream: {
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
      Type: 'AWS::CloudWatch::MetricStream',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withCreationDate(CreationDate): {
      assert std.isString(CreationDate) : 'CreationDate must be a string',
      Properties+::: {
        CreationDate: CreationDate,
      },
    },
    withExcludeFilters(ExcludeFilters): {
      Properties+::: {
        ExcludeFilters: (if std.isArray(ExcludeFilters) then ExcludeFilters else [ExcludeFilters]),
      },
    },
    withExcludeFiltersMixin(ExcludeFilters): {
      Properties+::: {
        ExcludeFilters+: (if std.isArray(ExcludeFilters) then ExcludeFilters else [ExcludeFilters]),
      },
    },
    withFirehoseArn(FirehoseArn): {
      assert std.isString(FirehoseArn) : 'FirehoseArn must be a string',
      Properties+::: {
        FirehoseArn: FirehoseArn,
      },
    },
    withIncludeFilters(IncludeFilters): {
      Properties+::: {
        IncludeFilters: (if std.isArray(IncludeFilters) then IncludeFilters else [IncludeFilters]),
      },
    },
    withIncludeFiltersMixin(IncludeFilters): {
      Properties+::: {
        IncludeFilters+: (if std.isArray(IncludeFilters) then IncludeFilters else [IncludeFilters]),
      },
    },
    withLastUpdateDate(LastUpdateDate): {
      assert std.isString(LastUpdateDate) : 'LastUpdateDate must be a string',
      Properties+::: {
        LastUpdateDate: LastUpdateDate,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: {
        RoleArn: RoleArn,
      },
    },
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: {
        State: State,
      },
    },
    withOutputFormat(OutputFormat): {
      assert std.isString(OutputFormat) : 'OutputFormat must be a string',
      Properties+::: {
        OutputFormat: OutputFormat,
      },
    },
    withStatisticsConfigurations(StatisticsConfigurations): {
      Properties+::: {
        StatisticsConfigurations: (if std.isArray(StatisticsConfigurations) then StatisticsConfigurations else [StatisticsConfigurations]),
      },
    },
    withStatisticsConfigurationsMixin(StatisticsConfigurations): {
      Properties+::: {
        StatisticsConfigurations+: (if std.isArray(StatisticsConfigurations) then StatisticsConfigurations else [StatisticsConfigurations]),
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
    withIncludeLinkedAccountsMetrics(IncludeLinkedAccountsMetrics): {
      assert std.isBoolean(IncludeLinkedAccountsMetrics) : 'IncludeLinkedAccountsMetrics must be a boolean',
      Properties+::: {
        IncludeLinkedAccountsMetrics: IncludeLinkedAccountsMetrics,
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
