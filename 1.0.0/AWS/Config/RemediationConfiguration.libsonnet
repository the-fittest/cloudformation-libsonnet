{
  // AWS Config RemediationConfiguration
  RemediationConfiguration: {
    new(
      TargetType,
      ConfigRuleName,
      TargetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TargetType) : 'TargetType must be a string',
        TargetType: TargetType,
        assert std.isString(ConfigRuleName) : 'ConfigRuleName must be a string',
        ConfigRuleName: ConfigRuleName,
        assert std.isString(TargetId) : 'TargetId must be a string',
        TargetId: TargetId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Config::RemediationConfiguration',
    },
    withTargetVersion(TargetVersion): {
      assert std.isString(TargetVersion) : 'TargetVersion must be a string',
      Properties+::: {
        TargetVersion: TargetVersion,
      },
    },
    withExecutionControls(ExecutionControls): {
      assert std.isObject(ExecutionControls) : 'ExecutionControls must be a object',
      Properties+::: {
        ExecutionControls: ExecutionControls,
      },
    },
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: {
        Parameters: Parameters,
      },
    },
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      Properties+::: {
        ResourceType: ResourceType,
      },
    },
    withRetryAttemptSeconds(RetryAttemptSeconds): {
      assert std.isNumber(RetryAttemptSeconds) : 'RetryAttemptSeconds must be a number',
      Properties+::: {
        RetryAttemptSeconds: RetryAttemptSeconds,
      },
    },
    withMaximumAutomaticAttempts(MaximumAutomaticAttempts): {
      assert std.isNumber(MaximumAutomaticAttempts) : 'MaximumAutomaticAttempts must be a number',
      Properties+::: {
        MaximumAutomaticAttempts: MaximumAutomaticAttempts,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withAutomatic(Automatic): {
      assert std.isBoolean(Automatic) : 'Automatic must be a boolean',
      Properties+::: {
        Automatic: Automatic,
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
