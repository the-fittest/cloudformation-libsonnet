{
  // AWS Redshift ScheduledAction
  ScheduledAction: {
    new(
      ScheduledActionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ScheduledActionName) : 'ScheduledActionName must be a string',
        ScheduledActionName: ScheduledActionName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Redshift::ScheduledAction',
    },
    withScheduledActionDescription(ScheduledActionDescription): {
      assert std.isString(ScheduledActionDescription) : 'ScheduledActionDescription must be a string',
      Properties+::: {
        ScheduledActionDescription: ScheduledActionDescription,
      },
    },
    withEndTime(EndTime): {
      assert std.isString(EndTime) : 'EndTime must be a string',
      Properties+::: {
        EndTime: EndTime,
      },
    },
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: {
        State: State,
      },
    },
    withSchedule(Schedule): {
      assert std.isString(Schedule) : 'Schedule must be a string',
      Properties+::: {
        Schedule: Schedule,
      },
    },
    withIamRole(IamRole): {
      assert std.isString(IamRole) : 'IamRole must be a string',
      Properties+::: {
        IamRole: IamRole,
      },
    },
    withStartTime(StartTime): {
      assert std.isString(StartTime) : 'StartTime must be a string',
      Properties+::: {
        StartTime: StartTime,
      },
    },
    withEnable(Enable): {
      assert std.isBoolean(Enable) : 'Enable must be a boolean',
      Properties+::: {
        Enable: Enable,
      },
    },
    withTargetAction(TargetAction): {
      assert std.isObject(TargetAction) : 'TargetAction must be a object',
      Properties+::: {
        TargetAction: TargetAction,
      },
    },
    withNextInvocations(NextInvocations): {
      Properties+::: {
        NextInvocations: (if std.isArray(NextInvocations) then NextInvocations else [NextInvocations]),
      },
    },
    withNextInvocationsMixin(NextInvocations): {
      Properties+::: {
        NextInvocations+: (if std.isArray(NextInvocations) then NextInvocations else [NextInvocations]),
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
