{
  new(
    ComparisonOperator,
    EvaluationPeriods,
  ): {
    local base = self,
    Properties: {
      ComparisonOperator:
        if !std.isString(ComparisonOperator) then (error 'ComparisonOperator must be a string')
        else if std.isEmpty(ComparisonOperator) then (error 'ComparisonOperator must be not empty')
        else ComparisonOperator,
      EvaluationPeriods:
        if !std.isNumber(EvaluationPeriods) then (error 'EvaluationPeriods must be an number')
        else EvaluationPeriods,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudWatch::Alarm',
  },
  setThresholdMetricId(ThresholdMetricId): {
    Properties+::: {
      ThresholdMetricId:
        if !std.isString(ThresholdMetricId) then (error 'ThresholdMetricId must be a string')
        else if std.isEmpty(ThresholdMetricId) then (error 'ThresholdMetricId must be not empty')
        else ThresholdMetricId,
    },
  },
  setEvaluateLowSampleCountPercentile(EvaluateLowSampleCountPercentile): {
    Properties+::: {
      EvaluateLowSampleCountPercentile:
        if !std.isString(EvaluateLowSampleCountPercentile) then (error 'EvaluateLowSampleCountPercentile must be a string')
        else if std.isEmpty(EvaluateLowSampleCountPercentile) then (error 'EvaluateLowSampleCountPercentile must be not empty')
        else EvaluateLowSampleCountPercentile,
    },
  },
  setExtendedStatistic(ExtendedStatistic): {
    Properties+::: {
      ExtendedStatistic:
        if !std.isString(ExtendedStatistic) then (error 'ExtendedStatistic must be a string')
        else if std.isEmpty(ExtendedStatistic) then (error 'ExtendedStatistic must be not empty')
        else ExtendedStatistic,
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
  setDimensions(Dimensions): {
    Properties+::: {
      Dimensions:
        if !std.isArray(Dimensions) then (error 'Dimensions must be an array')
        else Dimensions,
    },
  },
  setDimensionsMixin(Dimensions): {
    Properties+::: {
      Dimensions+: Dimensions,
    },
  },
  setPeriod(Period): {
    Properties+::: {
      Period:
        if !std.isNumber(Period) then (error 'Period must be an number')
        else Period,
    },
  },
  setUnit(Unit): {
    Properties+::: {
      Unit:
        if !std.isString(Unit) then (error 'Unit must be a string')
        else if std.isEmpty(Unit) then (error 'Unit must be not empty')
        else Unit,
    },
  },
  setNamespace(Namespace): {
    Properties+::: {
      Namespace:
        if !std.isString(Namespace) then (error 'Namespace must be a string')
        else if std.isEmpty(Namespace) then (error 'Namespace must be not empty')
        else Namespace,
    },
  },
  setOKActions(OKActions): {
    Properties+::: {
      OKActions:
        if !std.isArray(OKActions) then (error 'OKActions must be an array')
        else OKActions,
    },
  },
  setOKActionsMixin(OKActions): {
    Properties+::: {
      OKActions+: OKActions,
    },
  },
  setAlarmActions(AlarmActions): {
    Properties+::: {
      AlarmActions:
        if !std.isArray(AlarmActions) then (error 'AlarmActions must be an array')
        else AlarmActions,
    },
  },
  setAlarmActionsMixin(AlarmActions): {
    Properties+::: {
      AlarmActions+: AlarmActions,
    },
  },
  setMetricName(MetricName): {
    Properties+::: {
      MetricName:
        if !std.isString(MetricName) then (error 'MetricName must be a string')
        else if std.isEmpty(MetricName) then (error 'MetricName must be not empty')
        else MetricName,
    },
  },
  setActionsEnabled(ActionsEnabled): {
    Properties+::: {
      ActionsEnabled:
        if !std.isBoolean(ActionsEnabled) then (error 'ActionsEnabled must be a boolean') else ActionsEnabled,
    },
  },
  setMetrics(Metrics): {
    Properties+::: {
      Metrics:
        if !std.isArray(Metrics) then (error 'Metrics must be an array')
        else Metrics,
    },
  },
  setMetricsMixin(Metrics): {
    Properties+::: {
      Metrics+: Metrics,
    },
  },
  setAlarmDescription(AlarmDescription): {
    Properties+::: {
      AlarmDescription:
        if !std.isString(AlarmDescription) then (error 'AlarmDescription must be a string')
        else if std.isEmpty(AlarmDescription) then (error 'AlarmDescription must be not empty')
        else AlarmDescription,
    },
  },
  setAlarmName(AlarmName): {
    Properties+::: {
      AlarmName:
        if !std.isString(AlarmName) then (error 'AlarmName must be a string')
        else if std.isEmpty(AlarmName) then (error 'AlarmName must be not empty')
        else AlarmName,
    },
  },
  setStatistic(Statistic): {
    Properties+::: {
      Statistic:
        if !std.isString(Statistic) then (error 'Statistic must be a string')
        else if std.isEmpty(Statistic) then (error 'Statistic must be not empty')
        else Statistic,
    },
  },
  setInsufficientDataActions(InsufficientDataActions): {
    Properties+::: {
      InsufficientDataActions:
        if !std.isArray(InsufficientDataActions) then (error 'InsufficientDataActions must be an array')
        else InsufficientDataActions,
    },
  },
  setInsufficientDataActionsMixin(InsufficientDataActions): {
    Properties+::: {
      InsufficientDataActions+: InsufficientDataActions,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDatapointsToAlarm(DatapointsToAlarm): {
    Properties+::: {
      DatapointsToAlarm:
        if !std.isNumber(DatapointsToAlarm) then (error 'DatapointsToAlarm must be an number')
        else DatapointsToAlarm,
    },
  },
  setThreshold(Threshold): {
    Properties+::: {
      Threshold:
        if !std.isNumber(Threshold) then (error 'Threshold must be an number')
        else Threshold,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
