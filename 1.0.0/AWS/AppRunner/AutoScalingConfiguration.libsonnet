{
  // AWS AppRunner AutoScalingConfiguration
  AutoScalingConfiguration: {
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
      Type: 'AWS::AppRunner::AutoScalingConfiguration',
    },
    withAutoScalingConfigurationArn(AutoScalingConfigurationArn): {
      assert std.isString(AutoScalingConfigurationArn) : 'AutoScalingConfigurationArn must be a string',
      Properties+::: {
        AutoScalingConfigurationArn: AutoScalingConfigurationArn,
      },
    },
    withAutoScalingConfigurationName(AutoScalingConfigurationName): {
      assert std.isString(AutoScalingConfigurationName) : 'AutoScalingConfigurationName must be a string',
      Properties+::: {
        AutoScalingConfigurationName: AutoScalingConfigurationName,
      },
    },
    withAutoScalingConfigurationRevision(AutoScalingConfigurationRevision): {
      assert std.isNumber(AutoScalingConfigurationRevision) : 'AutoScalingConfigurationRevision must be a number',
      Properties+::: {
        AutoScalingConfigurationRevision: AutoScalingConfigurationRevision,
      },
    },
    withMaxConcurrency(MaxConcurrency): {
      assert std.isNumber(MaxConcurrency) : 'MaxConcurrency must be a number',
      Properties+::: {
        MaxConcurrency: MaxConcurrency,
      },
    },
    withMaxSize(MaxSize): {
      assert std.isNumber(MaxSize) : 'MaxSize must be a number',
      Properties+::: {
        MaxSize: MaxSize,
      },
    },
    withMinSize(MinSize): {
      assert std.isNumber(MinSize) : 'MinSize must be a number',
      Properties+::: {
        MinSize: MinSize,
      },
    },
    withLatest(Latest): {
      assert std.isBoolean(Latest) : 'Latest must be a boolean',
      Properties+::: {
        Latest: Latest,
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
