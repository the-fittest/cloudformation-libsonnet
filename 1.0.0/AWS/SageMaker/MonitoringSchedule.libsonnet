{
  new(
    MonitoringScheduleConfig,
    MonitoringScheduleName,
  ): {
    local base = self,
    Properties: {
      MonitoringScheduleConfig:
        if !std.isObject(MonitoringScheduleConfig) then (error 'MonitoringScheduleConfig must be an object')
        else MonitoringScheduleConfig,
      MonitoringScheduleName:
        if !std.isString(MonitoringScheduleName) then (error 'MonitoringScheduleName must be a string')
        else if std.isEmpty(MonitoringScheduleName) then (error 'MonitoringScheduleName must be not empty')
        else if std.length(MonitoringScheduleName) > 63 then error ('MonitoringScheduleName should have not more than 63 characters')
        else MonitoringScheduleName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::MonitoringSchedule',
  },
  setMonitoringScheduleArn(MonitoringScheduleArn): {
    Properties+::: {
      MonitoringScheduleArn:
        if !std.isString(MonitoringScheduleArn) then (error 'MonitoringScheduleArn must be a string')
        else if std.isEmpty(MonitoringScheduleArn) then (error 'MonitoringScheduleArn must be not empty')
        else if std.length(MonitoringScheduleArn) < 1 then error ('MonitoringScheduleArn should have at least 1 characters')
        else if std.length(MonitoringScheduleArn) > 256 then error ('MonitoringScheduleArn should have not more than 256 characters')
        else MonitoringScheduleArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setEndpointName(EndpointName): {
    Properties+::: {
      EndpointName:
        if !std.isString(EndpointName) then (error 'EndpointName must be a string')
        else if std.isEmpty(EndpointName) then (error 'EndpointName must be not empty')
        else if std.length(EndpointName) > 63 then error ('EndpointName should have not more than 63 characters')
        else EndpointName,
    },
  },
  setFailureReason(FailureReason): {
    Properties+::: {
      FailureReason:
        if !std.isString(FailureReason) then (error 'FailureReason must be a string')
        else if std.isEmpty(FailureReason) then (error 'FailureReason must be not empty')
        else if std.length(FailureReason) < 1 then error ('FailureReason should have at least 1 characters')
        else if std.length(FailureReason) > 1024 then error ('FailureReason should have not more than 1024 characters')
        else FailureReason,
    },
  },
  setLastModifiedTime(LastModifiedTime): {
    Properties+::: {
      LastModifiedTime:
        if !std.isString(LastModifiedTime) then (error 'LastModifiedTime must be a string')
        else if std.isEmpty(LastModifiedTime) then (error 'LastModifiedTime must be not empty')
        else LastModifiedTime,
    },
  },
  setLastMonitoringExecutionSummary(LastMonitoringExecutionSummary): {
    Properties+::: {
      LastMonitoringExecutionSummary:
        if !std.isObject(LastMonitoringExecutionSummary) then (error 'LastMonitoringExecutionSummary must be an object')
        else if !std.objectHas(LastMonitoringExecutionSummary, 'CreationTime') then (error ' have attribute CreationTime')
        else if !std.objectHas(LastMonitoringExecutionSummary, 'LastModifiedTime') then (error ' have attribute LastModifiedTime')
        else if !std.objectHas(LastMonitoringExecutionSummary, 'MonitoringExecutionStatus') then (error ' have attribute MonitoringExecutionStatus')
        else if !std.objectHas(LastMonitoringExecutionSummary, 'MonitoringScheduleName') then (error ' have attribute MonitoringScheduleName')
        else if !std.objectHas(LastMonitoringExecutionSummary, 'ScheduledTime') then (error ' have attribute ScheduledTime')
        else LastMonitoringExecutionSummary,
    },
  },
  setMonitoringScheduleStatus(MonitoringScheduleStatus): {
    Properties+::: {
      MonitoringScheduleStatus:
        if !std.isString(MonitoringScheduleStatus) then (error 'MonitoringScheduleStatus must be a string')
        else if std.isEmpty(MonitoringScheduleStatus) then (error 'MonitoringScheduleStatus must be not empty')
        else if MonitoringScheduleStatus != 'Pending' && MonitoringScheduleStatus != 'Failed' && MonitoringScheduleStatus != 'Scheduled' && MonitoringScheduleStatus != 'Stopped' then (error "MonitoringScheduleStatus should be 'Pending' or 'Failed' or 'Scheduled' or 'Stopped'")
        else MonitoringScheduleStatus,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
