{
  // AWS AppRunner ObservabilityConfiguration
  ObservabilityConfiguration: {
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
      Type: 'AWS::AppRunner::ObservabilityConfiguration',
    },
    withObservabilityConfigurationArn(ObservabilityConfigurationArn): {
      assert std.isString(ObservabilityConfigurationArn) : 'ObservabilityConfigurationArn must be a string',
      Properties+::: {
        ObservabilityConfigurationArn: ObservabilityConfigurationArn,
      },
    },
    withObservabilityConfigurationName(ObservabilityConfigurationName): {
      assert std.isString(ObservabilityConfigurationName) : 'ObservabilityConfigurationName must be a string',
      Properties+::: {
        ObservabilityConfigurationName: ObservabilityConfigurationName,
      },
    },
    withObservabilityConfigurationRevision(ObservabilityConfigurationRevision): {
      assert std.isNumber(ObservabilityConfigurationRevision) : 'ObservabilityConfigurationRevision must be a number',
      Properties+::: {
        ObservabilityConfigurationRevision: ObservabilityConfigurationRevision,
      },
    },
    withLatest(Latest): {
      assert std.isBoolean(Latest) : 'Latest must be a boolean',
      Properties+::: {
        Latest: Latest,
      },
    },
    withTraceConfiguration(TraceConfiguration): {
      assert std.isObject(TraceConfiguration) : 'TraceConfiguration must be a object',
      Properties+::: {
        TraceConfiguration: TraceConfiguration,
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
