{
  new(
    ScheduledActionName,
  ): {
    local base = self,
    Properties: {
      ScheduledActionName:
        if !std.isString(ScheduledActionName) then (error 'ScheduledActionName must be a string')
        else if std.isEmpty(ScheduledActionName) then (error 'ScheduledActionName must be not empty')
        else ScheduledActionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::ScheduledAction',
  },
  setScheduledActionDescription(ScheduledActionDescription): {
    Properties+::: {
      ScheduledActionDescription:
        if !std.isString(ScheduledActionDescription) then (error 'ScheduledActionDescription must be a string')
        else if std.isEmpty(ScheduledActionDescription) then (error 'ScheduledActionDescription must be not empty')
        else ScheduledActionDescription,
    },
  },
  setEndTime(EndTime): {
    Properties+::: {
      EndTime:
        if !std.isString(EndTime) then (error 'EndTime must be a string')
        else if std.isEmpty(EndTime) then (error 'EndTime must be not empty')
        else EndTime,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'ACTIVE' && State != 'DISABLED' then (error "State should be 'ACTIVE' or 'DISABLED'")
        else State,
    },
  },
  setSchedule(Schedule): {
    Properties+::: {
      Schedule:
        if !std.isString(Schedule) then (error 'Schedule must be a string')
        else if std.isEmpty(Schedule) then (error 'Schedule must be not empty')
        else Schedule,
    },
  },
  setIamRole(IamRole): {
    Properties+::: {
      IamRole:
        if !std.isString(IamRole) then (error 'IamRole must be a string')
        else if std.isEmpty(IamRole) then (error 'IamRole must be not empty')
        else IamRole,
    },
  },
  setStartTime(StartTime): {
    Properties+::: {
      StartTime:
        if !std.isString(StartTime) then (error 'StartTime must be a string')
        else if std.isEmpty(StartTime) then (error 'StartTime must be not empty')
        else StartTime,
    },
  },
  setEnable(Enable): {
    Properties+::: {
      Enable:
        if !std.isBoolean(Enable) then (error 'Enable must be a boolean') else Enable,
    },
  },
  setTargetAction(TargetAction): {
    Properties+::: {
      TargetAction:
        if !std.isObject(TargetAction) then (error 'TargetAction must be an object')
        else TargetAction,
    },
  },
  setNextInvocations(NextInvocations): {
    Properties+::: {
      NextInvocations:
        if !std.isArray(NextInvocations) then (error 'NextInvocations must be an array')
        else NextInvocations,
    },
  },
  pushNextInvocations(NextInvocations): {
    Properties+::: {
      NextInvocations+: NextInvocations,
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
