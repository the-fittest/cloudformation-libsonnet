{
  new(
    Role,
    Command,
  ): {
    local base = self,
    Properties: {
      Role:
        if !std.isString(Role) then (error 'Role must be a string')
        else if std.isEmpty(Role) then (error 'Role must be not empty')
        else Role,
      Command:
        if !std.isObject(Command) then (error 'Command must be an object')
        else Command,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::Job',
  },
  setConnections(Connections): {
    Properties+::: {
      Connections:
        if !std.isObject(Connections) then (error 'Connections must be an object')
        else Connections,
    },
  },
  setMaxRetries(MaxRetries): {
    Properties+::: {
      MaxRetries:
        if !std.isNumber(MaxRetries) then (error 'MaxRetries must be an number')
        else MaxRetries,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setTimeout(Timeout): {
    Properties+::: {
      Timeout:
        if !std.isNumber(Timeout) then (error 'Timeout must be an number')
        else Timeout,
    },
  },
  setAllocatedCapacity(AllocatedCapacity): {
    Properties+::: {
      AllocatedCapacity:
        if !std.isNumber(AllocatedCapacity) then (error 'AllocatedCapacity must be an number')
        else AllocatedCapacity,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setDefaultArguments(DefaultArguments): {
    Properties+::: {
      DefaultArguments:
        if !std.isObject(DefaultArguments) then (error 'DefaultArguments must be an object')
        else DefaultArguments,
    },
  },
  setNotificationProperty(NotificationProperty): {
    Properties+::: {
      NotificationProperty:
        if !std.isObject(NotificationProperty) then (error 'NotificationProperty must be an object')
        else NotificationProperty,
    },
  },
  setWorkerType(WorkerType): {
    Properties+::: {
      WorkerType:
        if !std.isString(WorkerType) then (error 'WorkerType must be a string')
        else if std.isEmpty(WorkerType) then (error 'WorkerType must be not empty')
        else if WorkerType != 'Standard' && WorkerType != 'G.1X' && WorkerType != 'G.2X' && WorkerType != 'G.025X' && WorkerType != 'G.4X' && WorkerType != 'G.8X' && WorkerType != 'Z.2X' then (error "WorkerType should be 'Standard' or 'G.1X' or 'G.2X' or 'G.025X' or 'G.4X' or 'G.8X' or 'Z.2X'")
        else WorkerType,
    },
  },
  setExecutionClass(ExecutionClass): {
    Properties+::: {
      ExecutionClass:
        if !std.isString(ExecutionClass) then (error 'ExecutionClass must be a string')
        else if std.isEmpty(ExecutionClass) then (error 'ExecutionClass must be not empty')
        else ExecutionClass,
    },
  },
  setLogUri(LogUri): {
    Properties+::: {
      LogUri:
        if !std.isString(LogUri) then (error 'LogUri must be a string')
        else if std.isEmpty(LogUri) then (error 'LogUri must be not empty')
        else LogUri,
    },
  },
  setGlueVersion(GlueVersion): {
    Properties+::: {
      GlueVersion:
        if !std.isString(GlueVersion) then (error 'GlueVersion must be a string')
        else if std.isEmpty(GlueVersion) then (error 'GlueVersion must be not empty')
        else GlueVersion,
    },
  },
  setExecutionProperty(ExecutionProperty): {
    Properties+::: {
      ExecutionProperty:
        if !std.isObject(ExecutionProperty) then (error 'ExecutionProperty must be an object')
        else ExecutionProperty,
    },
  },
  setSecurityConfiguration(SecurityConfiguration): {
    Properties+::: {
      SecurityConfiguration:
        if !std.isString(SecurityConfiguration) then (error 'SecurityConfiguration must be a string')
        else if std.isEmpty(SecurityConfiguration) then (error 'SecurityConfiguration must be not empty')
        else SecurityConfiguration,
    },
  },
  setNumberOfWorkers(NumberOfWorkers): {
    Properties+::: {
      NumberOfWorkers:
        if !std.isNumber(NumberOfWorkers) then (error 'NumberOfWorkers must be an number')
        else NumberOfWorkers,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setMaxCapacity(MaxCapacity): {
    Properties+::: {
      MaxCapacity:
        if !std.isNumber(MaxCapacity) then (error 'MaxCapacity must be an number')
        else MaxCapacity,
    },
  },
  setNonOverridableArguments(NonOverridableArguments): {
    Properties+::: {
      NonOverridableArguments:
        if !std.isObject(NonOverridableArguments) then (error 'NonOverridableArguments must be an object')
        else NonOverridableArguments,
    },
  },
  setMaintenanceWindow(MaintenanceWindow): {
    Properties+::: {
      MaintenanceWindow:
        if !std.isString(MaintenanceWindow) then (error 'MaintenanceWindow must be a string')
        else if std.isEmpty(MaintenanceWindow) then (error 'MaintenanceWindow must be not empty')
        else MaintenanceWindow,
    },
  },
  setJobMode(JobMode): {
    Properties+::: {
      JobMode:
        if !std.isString(JobMode) then (error 'JobMode must be a string')
        else if std.isEmpty(JobMode) then (error 'JobMode must be not empty')
        else JobMode,
    },
  },
  setJobRunQueuingEnabled(JobRunQueuingEnabled): {
    Properties+::: {
      JobRunQueuingEnabled:
        if !std.isBoolean(JobRunQueuingEnabled) then (error 'JobRunQueuingEnabled must be a boolean') else JobRunQueuingEnabled,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
