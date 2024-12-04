{
  // AWS DLM LifecyclePolicy
  LifecyclePolicy: {
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
      Type: 'AWS::DLM::LifecyclePolicy',
    },
    withCreateInterval(CreateInterval): {
      assert std.isNumber(CreateInterval) : 'CreateInterval must be a number',
      Properties+::: {
        CreateInterval: CreateInterval,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withExtendDeletion(ExtendDeletion): {
      assert std.isBoolean(ExtendDeletion) : 'ExtendDeletion must be a boolean',
      Properties+::: {
        ExtendDeletion: ExtendDeletion,
      },
    },
    withExclusions(Exclusions): {
      assert std.isObject(Exclusions) : 'Exclusions must be a object',
      Properties+::: {
        Exclusions: Exclusions,
      },
    },
    withRetainInterval(RetainInterval): {
      assert std.isNumber(RetainInterval) : 'RetainInterval must be a number',
      Properties+::: {
        RetainInterval: RetainInterval,
      },
    },
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: {
        ExecutionRoleArn: ExecutionRoleArn,
      },
    },
    withDefaultPolicy(DefaultPolicy): {
      assert std.isString(DefaultPolicy) : 'DefaultPolicy must be a string',
      Properties+::: {
        DefaultPolicy: DefaultPolicy,
      },
    },
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: {
        State: State,
      },
    },
    withCrossRegionCopyTargets(CrossRegionCopyTargets): {
      assert std.isObject(CrossRegionCopyTargets) : 'CrossRegionCopyTargets must be a object',
      Properties+::: {
        CrossRegionCopyTargets: CrossRegionCopyTargets,
      },
    },
    withPolicyDetails(PolicyDetails): {
      assert std.isObject(PolicyDetails) : 'PolicyDetails must be a object',
      Properties+::: {
        PolicyDetails: PolicyDetails,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
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
    withCopyTags(CopyTags): {
      assert std.isBoolean(CopyTags) : 'CopyTags must be a boolean',
      Properties+::: {
        CopyTags: CopyTags,
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
