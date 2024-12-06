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
      AlarmName:
        if !std.isString(AlarmName) then (error 'AlarmName must be a string')
        else if std.isEmpty(AlarmName) then (error 'AlarmName must be not empty')
        else AlarmName,
      MonitoredResourceName:
        if !std.isString(MonitoredResourceName) then (error 'MonitoredResourceName must be a string')
        else if std.isEmpty(MonitoredResourceName) then (error 'MonitoredResourceName must be not empty')
        else MonitoredResourceName,
      MetricName:
        if !std.isString(MetricName) then (error 'MetricName must be a string')
        else if std.isEmpty(MetricName) then (error 'MetricName must be not empty')
        else MetricName,
      ComparisonOperator:
        if !std.isString(ComparisonOperator) then (error 'ComparisonOperator must be a string')
        else if std.isEmpty(ComparisonOperator) then (error 'ComparisonOperator must be not empty')
        else ComparisonOperator,
      EvaluationPeriods:
        if !std.isNumber(EvaluationPeriods) then (error 'EvaluationPeriods must be an number')
        else EvaluationPeriods,
      Threshold:
        if !std.isNumber(Threshold) then (error 'Threshold must be an number')
        else Threshold,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Alarm',
  },
  setContactProtocols(ContactProtocols): {
    Properties+::: {
      ContactProtocols:
        if !std.isArray(ContactProtocols) then (error 'ContactProtocols must be an array')
        else ContactProtocols,
    },
  },
  pushContactProtocols(ContactProtocols): {
    Properties+::: {
      ContactProtocols+: ContactProtocols,
    },
  },
  setAlarmArn(AlarmArn): {
    Properties+::: {
      AlarmArn:
        if !std.isString(AlarmArn) then (error 'AlarmArn must be a string')
        else if std.isEmpty(AlarmArn) then (error 'AlarmArn must be not empty')
        else AlarmArn,
    },
  },
  setDatapointsToAlarm(DatapointsToAlarm): {
    Properties+::: {
      DatapointsToAlarm:
        if !std.isNumber(DatapointsToAlarm) then (error 'DatapointsToAlarm must be an number')
        else DatapointsToAlarm,
    },
  },
  setNotificationEnabled(NotificationEnabled): {
    Properties+::: {
      NotificationEnabled:
        if !std.isBoolean(NotificationEnabled) then (error 'NotificationEnabled must be a boolean') else NotificationEnabled,
    },
  },
  setNotificationTriggers(NotificationTriggers): {
    Properties+::: {
      NotificationTriggers:
        if !std.isArray(NotificationTriggers) then (error 'NotificationTriggers must be an array')
        else NotificationTriggers,
    },
  },
  pushNotificationTriggers(NotificationTriggers): {
    Properties+::: {
      NotificationTriggers+: NotificationTriggers,
    },
  },
  setTreatMissingData(TreatMissingData): {
    Properties+::: {
      TreatMissingData:
        if !std.isString(TreatMissingData) then (error 'TreatMissingData must be a string')
        else if std.isEmpty(TreatMissingData) then (error 'TreatMissingData must be not empty')
        else TreatMissingData,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
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
