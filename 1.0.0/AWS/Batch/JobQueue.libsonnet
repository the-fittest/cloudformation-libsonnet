{
  new(
    ComputeEnvironmentOrder,
    Priority,
  ): {
    local base = self,
    Properties: {
      ComputeEnvironmentOrder: (if std.isArray(ComputeEnvironmentOrder) then ComputeEnvironmentOrder else [ComputeEnvironmentOrder]),
      assert std.isNumber(Priority) : 'Priority must be a number',
      Priority: Priority,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Batch::JobQueue',
  },
  withJobQueueName(JobQueueName): {
    assert std.isString(JobQueueName) : 'JobQueueName must be a string',
    Properties+::: {
      JobQueueName: JobQueueName,
    },
  },
  withJobQueueArn(JobQueueArn): {
    assert std.isString(JobQueueArn) : 'JobQueueArn must be a string',
    Properties+::: {
      JobQueueArn: JobQueueArn,
    },
  },
  withJobStateTimeLimitActions(JobStateTimeLimitActions): {
    Properties+::: {
      JobStateTimeLimitActions: (if std.isArray(JobStateTimeLimitActions) then JobStateTimeLimitActions else [JobStateTimeLimitActions]),
    },
  },
  withJobStateTimeLimitActionsMixin(JobStateTimeLimitActions): {
    Properties+::: {
      JobStateTimeLimitActions+: (if std.isArray(JobStateTimeLimitActions) then JobStateTimeLimitActions else [JobStateTimeLimitActions]),
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    Properties+::: {
      State: State,
    },
  },
  withSchedulingPolicyArn(SchedulingPolicyArn): {
    assert std.isString(SchedulingPolicyArn) : 'SchedulingPolicyArn must be a string',
    Properties+::: {
      SchedulingPolicyArn: SchedulingPolicyArn,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
}
