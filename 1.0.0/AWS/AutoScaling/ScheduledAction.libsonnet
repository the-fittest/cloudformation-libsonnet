{
  new(
    AutoScalingGroupName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
      AutoScalingGroupName: AutoScalingGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::ScheduledAction',
  },
  withScheduledActionName(ScheduledActionName): {
    assert std.isString(ScheduledActionName) : 'ScheduledActionName must be a string',
    Properties+::: {
      ScheduledActionName: ScheduledActionName,
    },
  },
  withMinSize(MinSize): {
    assert std.isNumber(MinSize) : 'MinSize must be a number',
    Properties+::: {
      MinSize: MinSize,
    },
  },
  withRecurrence(Recurrence): {
    assert std.isString(Recurrence) : 'Recurrence must be a string',
    Properties+::: {
      Recurrence: Recurrence,
    },
  },
  withTimeZone(TimeZone): {
    assert std.isString(TimeZone) : 'TimeZone must be a string',
    Properties+::: {
      TimeZone: TimeZone,
    },
  },
  withEndTime(EndTime): {
    assert std.isString(EndTime) : 'EndTime must be a string',
    Properties+::: {
      EndTime: EndTime,
    },
  },
  withStartTime(StartTime): {
    assert std.isString(StartTime) : 'StartTime must be a string',
    Properties+::: {
      StartTime: StartTime,
    },
  },
  withDesiredCapacity(DesiredCapacity): {
    assert std.isNumber(DesiredCapacity) : 'DesiredCapacity must be a number',
    Properties+::: {
      DesiredCapacity: DesiredCapacity,
    },
  },
  withMaxSize(MaxSize): {
    assert std.isNumber(MaxSize) : 'MaxSize must be a number',
    Properties+::: {
      MaxSize: MaxSize,
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
