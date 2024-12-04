{
  // AWS SSM MaintenanceWindowTask
  MaintenanceWindowTask: {
    new(
      WindowId,
      Priority,
      TaskType,
      TaskArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WindowId) : 'WindowId must be a string',
        WindowId: WindowId,
        assert std.isNumber(Priority) : 'Priority must be a number',
        Priority: Priority,
        assert std.isString(TaskType) : 'TaskType must be a string',
        TaskType: TaskType,
        assert std.isString(TaskArn) : 'TaskArn must be a string',
        TaskArn: TaskArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SSM::MaintenanceWindowTask',
    },
    withMaxErrors(MaxErrors): {
      assert std.isString(MaxErrors) : 'MaxErrors must be a string',
      Properties+::: {
        MaxErrors: MaxErrors,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withServiceRoleArn(ServiceRoleArn): {
      assert std.isString(ServiceRoleArn) : 'ServiceRoleArn must be a string',
      Properties+::: {
        ServiceRoleArn: ServiceRoleArn,
      },
    },
    withMaxConcurrency(MaxConcurrency): {
      assert std.isString(MaxConcurrency) : 'MaxConcurrency must be a string',
      Properties+::: {
        MaxConcurrency: MaxConcurrency,
      },
    },
    withTargets(Targets): {
      Properties+::: {
        Targets: (if std.isArray(Targets) then Targets else [Targets]),
      },
    },
    withTargetsMixin(Targets): {
      Properties+::: {
        Targets+: (if std.isArray(Targets) then Targets else [Targets]),
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withTaskInvocationParameters(TaskInvocationParameters): {
      assert std.isObject(TaskInvocationParameters) : 'TaskInvocationParameters must be a object',
      Properties+::: {
        TaskInvocationParameters: TaskInvocationParameters,
      },
    },
    withTaskParameters(TaskParameters): {
      assert std.isObject(TaskParameters) : 'TaskParameters must be a object',
      Properties+::: {
        TaskParameters: TaskParameters,
      },
    },
    withCutoffBehavior(CutoffBehavior): {
      assert std.isString(CutoffBehavior) : 'CutoffBehavior must be a string',
      Properties+::: {
        CutoffBehavior: CutoffBehavior,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withLoggingInfo(LoggingInfo): {
      assert std.isObject(LoggingInfo) : 'LoggingInfo must be a object',
      Properties+::: {
        LoggingInfo: LoggingInfo,
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
