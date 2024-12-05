{
  new(
    WindowId,
    Priority,
    TaskType,
    TaskArn,
  ): {
    local base = self,
    Properties: {
      WindowId:
        if !std.isString(WindowId) then (error 'WindowId must be a string')
        else if std.isEmpty(WindowId) then (error 'WindowId must be not empty')
        else WindowId,
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else Priority,
      TaskType:
        if !std.isString(TaskType) then (error 'TaskType must be a string')
        else if std.isEmpty(TaskType) then (error 'TaskType must be not empty')
        else TaskType,
      TaskArn:
        if !std.isString(TaskArn) then (error 'TaskArn must be a string')
        else if std.isEmpty(TaskArn) then (error 'TaskArn must be not empty')
        else TaskArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSM::MaintenanceWindowTask',
  },
  setMaxErrors(MaxErrors): {
    Properties+::: {
      MaxErrors:
        if !std.isString(MaxErrors) then (error 'MaxErrors must be a string')
        else if std.isEmpty(MaxErrors) then (error 'MaxErrors must be not empty')
        else MaxErrors,
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
  setServiceRoleArn(ServiceRoleArn): {
    Properties+::: {
      ServiceRoleArn:
        if !std.isString(ServiceRoleArn) then (error 'ServiceRoleArn must be a string')
        else if std.isEmpty(ServiceRoleArn) then (error 'ServiceRoleArn must be not empty')
        else ServiceRoleArn,
    },
  },
  setMaxConcurrency(MaxConcurrency): {
    Properties+::: {
      MaxConcurrency:
        if !std.isString(MaxConcurrency) then (error 'MaxConcurrency must be a string')
        else if std.isEmpty(MaxConcurrency) then (error 'MaxConcurrency must be not empty')
        else MaxConcurrency,
    },
  },
  setTargets(Targets): {
    Properties+::: {
      Targets:
        if !std.isArray(Targets) then (error 'Targets must be an array')
        else Targets,
    },
  },
  setTargetsMixin(Targets): {
    Properties+::: {
      Targets+: Targets,
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
  setTaskInvocationParameters(TaskInvocationParameters): {
    Properties+::: {
      TaskInvocationParameters:
        if !std.isObject(TaskInvocationParameters) then (error 'TaskInvocationParameters must be an object')
        else TaskInvocationParameters,
    },
  },
  setTaskParameters(TaskParameters): {
    Properties+::: {
      TaskParameters:
        if !std.isObject(TaskParameters) then (error 'TaskParameters must be an object')
        else TaskParameters,
    },
  },
  setCutoffBehavior(CutoffBehavior): {
    Properties+::: {
      CutoffBehavior:
        if !std.isString(CutoffBehavior) then (error 'CutoffBehavior must be a string')
        else if std.isEmpty(CutoffBehavior) then (error 'CutoffBehavior must be not empty')
        else CutoffBehavior,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setLoggingInfo(LoggingInfo): {
    Properties+::: {
      LoggingInfo:
        if !std.isObject(LoggingInfo) then (error 'LoggingInfo must be an object')
        else if !std.objectHas(LoggingInfo, 'S3Bucket') then (error ' have attribute S3Bucket')
        else if !std.objectHas(LoggingInfo, 'Region') then (error ' have attribute Region')
        else LoggingInfo,
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
