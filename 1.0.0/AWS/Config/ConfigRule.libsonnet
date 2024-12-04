{
  // AWS Config ConfigRule
  ConfigRule: {
    new(
      Source,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Source) : 'Source must be an object',
        Source: Source,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Config::ConfigRule',
    },
    withConfigRuleId(ConfigRuleId): {
      assert std.isString(ConfigRuleId) : 'ConfigRuleId must be a string',
      Properties+::: {
        ConfigRuleId: ConfigRuleId,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withScope(Scope): {
      assert std.isObject(Scope) : 'Scope must be a object',
      Properties+::: {
        Scope: Scope,
      },
    },
    withConfigRuleName(ConfigRuleName): {
      assert std.isString(ConfigRuleName) : 'ConfigRuleName must be a string',
      Properties+::: {
        ConfigRuleName: ConfigRuleName,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withCompliance(Compliance): {
      assert std.isObject(Compliance) : 'Compliance must be a object',
      Properties+::: {
        Compliance: Compliance,
      },
    },
    withMaximumExecutionFrequency(MaximumExecutionFrequency): {
      assert std.isString(MaximumExecutionFrequency) : 'MaximumExecutionFrequency must be a string',
      Properties+::: {
        MaximumExecutionFrequency: MaximumExecutionFrequency,
      },
    },
    withInputParameters(InputParameters): {
      Properties+::: {
        InputParameters: InputParameters,
      },
    },
    withEvaluationModes(EvaluationModes): {
      Properties+::: {
        EvaluationModes: (if std.isArray(EvaluationModes) then EvaluationModes else [EvaluationModes]),
      },
    },
    withEvaluationModesMixin(EvaluationModes): {
      Properties+::: {
        EvaluationModes+: (if std.isArray(EvaluationModes) then EvaluationModes else [EvaluationModes]),
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
