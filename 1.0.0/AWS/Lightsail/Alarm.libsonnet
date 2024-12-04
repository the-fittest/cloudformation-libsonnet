{
  new(
    AlarmName,
    MonitoredResourceName,
    MetricName,
    ComparisonOperator,
    EvaluationPeriods,
    Threshold,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AlarmName) : 'AlarmName must be a string',
      AlarmName: AlarmName,
      assert std.isString(MonitoredResourceName) : 'MonitoredResourceName must be a string',
      MonitoredResourceName: MonitoredResourceName,
      assert std.isString(MetricName) : 'MetricName must be a string',
      MetricName: MetricName,
      assert std.isString(ComparisonOperator) : 'ComparisonOperator must be a string',
      ComparisonOperator: ComparisonOperator,
      assert std.isNumber(EvaluationPeriods) : 'EvaluationPeriods must be a number',
      EvaluationPeriods: EvaluationPeriods,
      assert std.isNumber(Threshold) : 'Threshold must be a number',
      Threshold: Threshold,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Alarm',
  },
  withContactProtocols(ContactProtocols): {
    Properties+::: {
      ContactProtocols: (if std.isArray(ContactProtocols) then ContactProtocols else [ContactProtocols]),
    },
  },
  withContactProtocolsMixin(ContactProtocols): {
    Properties+::: {
      ContactProtocols+: (if std.isArray(ContactProtocols) then ContactProtocols else [ContactProtocols]),
    },
  },
  withAlarmArn(AlarmArn): {
    assert std.isString(AlarmArn) : 'AlarmArn must be a string',
    Properties+::: {
      AlarmArn: AlarmArn,
    },
  },
  withDatapointsToAlarm(DatapointsToAlarm): {
    assert std.isNumber(DatapointsToAlarm) : 'DatapointsToAlarm must be a number',
    Properties+::: {
      DatapointsToAlarm: DatapointsToAlarm,
    },
  },
  withNotificationEnabled(NotificationEnabled): {
    assert std.isBoolean(NotificationEnabled) : 'NotificationEnabled must be a boolean',
    Properties+::: {
      NotificationEnabled: NotificationEnabled,
    },
  },
  withNotificationTriggers(NotificationTriggers): {
    Properties+::: {
      NotificationTriggers: (if std.isArray(NotificationTriggers) then NotificationTriggers else [NotificationTriggers]),
    },
  },
  withNotificationTriggersMixin(NotificationTriggers): {
    Properties+::: {
      NotificationTriggers+: (if std.isArray(NotificationTriggers) then NotificationTriggers else [NotificationTriggers]),
    },
  },
  withTreatMissingData(TreatMissingData): {
    assert std.isString(TreatMissingData) : 'TreatMissingData must be a string',
    Properties+::: {
      TreatMissingData: TreatMissingData,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    Properties+::: {
      State: State,
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
