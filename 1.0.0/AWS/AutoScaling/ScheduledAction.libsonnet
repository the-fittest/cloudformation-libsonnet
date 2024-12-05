{
  new(
    AutoScalingGroupName,
  ): {
    local base = self,
    Properties: {
      AutoScalingGroupName:
        if !std.isString(AutoScalingGroupName) then (error 'AutoScalingGroupName must be a string')
        else if std.isEmpty(AutoScalingGroupName) then (error 'AutoScalingGroupName must be not empty')
        else AutoScalingGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::ScheduledAction',
  },
  setScheduledActionName(ScheduledActionName): {
    Properties+::: {
      ScheduledActionName:
        if !std.isString(ScheduledActionName) then (error 'ScheduledActionName must be a string')
        else if std.isEmpty(ScheduledActionName) then (error 'ScheduledActionName must be not empty')
        else ScheduledActionName,
    },
  },
  setMinSize(MinSize): {
    Properties+::: {
      MinSize:
        if !std.isNumber(MinSize) then (error 'MinSize must be an number')
        else MinSize,
    },
  },
  setRecurrence(Recurrence): {
    Properties+::: {
      Recurrence:
        if !std.isString(Recurrence) then (error 'Recurrence must be a string')
        else if std.isEmpty(Recurrence) then (error 'Recurrence must be not empty')
        else Recurrence,
    },
  },
  setTimeZone(TimeZone): {
    Properties+::: {
      TimeZone:
        if !std.isString(TimeZone) then (error 'TimeZone must be a string')
        else if std.isEmpty(TimeZone) then (error 'TimeZone must be not empty')
        else TimeZone,
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
  setStartTime(StartTime): {
    Properties+::: {
      StartTime:
        if !std.isString(StartTime) then (error 'StartTime must be a string')
        else if std.isEmpty(StartTime) then (error 'StartTime must be not empty')
        else StartTime,
    },
  },
  setDesiredCapacity(DesiredCapacity): {
    Properties+::: {
      DesiredCapacity:
        if !std.isNumber(DesiredCapacity) then (error 'DesiredCapacity must be an number')
        else DesiredCapacity,
    },
  },
  setMaxSize(MaxSize): {
    Properties+::: {
      MaxSize:
        if !std.isNumber(MaxSize) then (error 'MaxSize must be an number')
        else MaxSize,
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
