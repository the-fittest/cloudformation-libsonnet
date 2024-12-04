{
  // AWS Glue Job
  Job: {
    new(
      Role,
      Command,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
        assert std.isObject(Command) : 'Command must be an object',
        Command: Command,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Glue::Job',
    },
    withConnections(Connections): {
      assert std.isObject(Connections) : 'Connections must be a object',
      Properties+::: {
        Connections: Connections,
      },
    },
    withMaxRetries(MaxRetries): {
      assert std.isNumber(MaxRetries) : 'MaxRetries must be a number',
      Properties+::: {
        MaxRetries: MaxRetries,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withTimeout(Timeout): {
      assert std.isNumber(Timeout) : 'Timeout must be a number',
      Properties+::: {
        Timeout: Timeout,
      },
    },
    withAllocatedCapacity(AllocatedCapacity): {
      assert std.isNumber(AllocatedCapacity) : 'AllocatedCapacity must be a number',
      Properties+::: {
        AllocatedCapacity: AllocatedCapacity,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withDefaultArguments(DefaultArguments): {
      assert std.isObject(DefaultArguments) : 'DefaultArguments must be a object',
      Properties+::: {
        DefaultArguments: DefaultArguments,
      },
    },
    withNotificationProperty(NotificationProperty): {
      assert std.isObject(NotificationProperty) : 'NotificationProperty must be a object',
      Properties+::: {
        NotificationProperty: NotificationProperty,
      },
    },
    withWorkerType(WorkerType): {
      assert std.isString(WorkerType) : 'WorkerType must be a string',
      Properties+::: {
        WorkerType: WorkerType,
      },
    },
    withExecutionClass(ExecutionClass): {
      assert std.isString(ExecutionClass) : 'ExecutionClass must be a string',
      Properties+::: {
        ExecutionClass: ExecutionClass,
      },
    },
    withLogUri(LogUri): {
      assert std.isString(LogUri) : 'LogUri must be a string',
      Properties+::: {
        LogUri: LogUri,
      },
    },
    withGlueVersion(GlueVersion): {
      assert std.isString(GlueVersion) : 'GlueVersion must be a string',
      Properties+::: {
        GlueVersion: GlueVersion,
      },
    },
    withExecutionProperty(ExecutionProperty): {
      assert std.isObject(ExecutionProperty) : 'ExecutionProperty must be a object',
      Properties+::: {
        ExecutionProperty: ExecutionProperty,
      },
    },
    withSecurityConfiguration(SecurityConfiguration): {
      assert std.isString(SecurityConfiguration) : 'SecurityConfiguration must be a string',
      Properties+::: {
        SecurityConfiguration: SecurityConfiguration,
      },
    },
    withNumberOfWorkers(NumberOfWorkers): {
      assert std.isNumber(NumberOfWorkers) : 'NumberOfWorkers must be a number',
      Properties+::: {
        NumberOfWorkers: NumberOfWorkers,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
      },
    },
    withMaxCapacity(MaxCapacity): {
      assert std.isNumber(MaxCapacity) : 'MaxCapacity must be a number',
      Properties+::: {
        MaxCapacity: MaxCapacity,
      },
    },
    withNonOverridableArguments(NonOverridableArguments): {
      assert std.isObject(NonOverridableArguments) : 'NonOverridableArguments must be a object',
      Properties+::: {
        NonOverridableArguments: NonOverridableArguments,
      },
    },
    withMaintenanceWindow(MaintenanceWindow): {
      assert std.isString(MaintenanceWindow) : 'MaintenanceWindow must be a string',
      Properties+::: {
        MaintenanceWindow: MaintenanceWindow,
      },
    },
    withJobMode(JobMode): {
      assert std.isString(JobMode) : 'JobMode must be a string',
      Properties+::: {
        JobMode: JobMode,
      },
    },
    withJobRunQueuingEnabled(JobRunQueuingEnabled): {
      assert std.isBoolean(JobRunQueuingEnabled) : 'JobRunQueuingEnabled must be a boolean',
      Properties+::: {
        JobRunQueuingEnabled: JobRunQueuingEnabled,
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
