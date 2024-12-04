{
  new(
    ComparisonOperator,
    EvaluationPeriods,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ComparisonOperator) : 'ComparisonOperator must be a string',
      ComparisonOperator: ComparisonOperator,
      assert std.isNumber(EvaluationPeriods) : 'EvaluationPeriods must be a number',
      EvaluationPeriods: EvaluationPeriods,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudWatch::Alarm',
  },
  withThresholdMetricId(ThresholdMetricId): {
    assert std.isString(ThresholdMetricId) : 'ThresholdMetricId must be a string',
    Properties+::: {
      ThresholdMetricId: ThresholdMetricId,
    },
  },
  withEvaluateLowSampleCountPercentile(EvaluateLowSampleCountPercentile): {
    assert std.isString(EvaluateLowSampleCountPercentile) : 'EvaluateLowSampleCountPercentile must be a string',
    Properties+::: {
      EvaluateLowSampleCountPercentile: EvaluateLowSampleCountPercentile,
    },
  },
  withExtendedStatistic(ExtendedStatistic): {
    assert std.isString(ExtendedStatistic) : 'ExtendedStatistic must be a string',
    Properties+::: {
      ExtendedStatistic: ExtendedStatistic,
    },
  },
  withTreatMissingData(TreatMissingData): {
    assert std.isString(TreatMissingData) : 'TreatMissingData must be a string',
    Properties+::: {
      TreatMissingData: TreatMissingData,
    },
  },
  withDimensions(Dimensions): {
    Properties+::: {
      Dimensions: (if std.isArray(Dimensions) then Dimensions else [Dimensions]),
    },
  },
  withDimensionsMixin(Dimensions): {
    Properties+::: {
      Dimensions+: (if std.isArray(Dimensions) then Dimensions else [Dimensions]),
    },
  },
  withPeriod(Period): {
    assert std.isNumber(Period) : 'Period must be a number',
    Properties+::: {
      Period: Period,
    },
  },
  withUnit(Unit): {
    assert std.isString(Unit) : 'Unit must be a string',
    Properties+::: {
      Unit: Unit,
    },
  },
  withNamespace(Namespace): {
    assert std.isString(Namespace) : 'Namespace must be a string',
    Properties+::: {
      Namespace: Namespace,
    },
  },
  withOKActions(OKActions): {
    Properties+::: {
      OKActions: (if std.isArray(OKActions) then OKActions else [OKActions]),
    },
  },
  withOKActionsMixin(OKActions): {
    Properties+::: {
      OKActions+: (if std.isArray(OKActions) then OKActions else [OKActions]),
    },
  },
  withAlarmActions(AlarmActions): {
    Properties+::: {
      AlarmActions: (if std.isArray(AlarmActions) then AlarmActions else [AlarmActions]),
    },
  },
  withAlarmActionsMixin(AlarmActions): {
    Properties+::: {
      AlarmActions+: (if std.isArray(AlarmActions) then AlarmActions else [AlarmActions]),
    },
  },
  withMetricName(MetricName): {
    assert std.isString(MetricName) : 'MetricName must be a string',
    Properties+::: {
      MetricName: MetricName,
    },
  },
  withActionsEnabled(ActionsEnabled): {
    assert std.isBoolean(ActionsEnabled) : 'ActionsEnabled must be a boolean',
    Properties+::: {
      ActionsEnabled: ActionsEnabled,
    },
  },
  withMetrics(Metrics): {
    Properties+::: {
      Metrics: (if std.isArray(Metrics) then Metrics else [Metrics]),
    },
  },
  withMetricsMixin(Metrics): {
    Properties+::: {
      Metrics+: (if std.isArray(Metrics) then Metrics else [Metrics]),
    },
  },
  withAlarmDescription(AlarmDescription): {
    assert std.isString(AlarmDescription) : 'AlarmDescription must be a string',
    Properties+::: {
      AlarmDescription: AlarmDescription,
    },
  },
  withAlarmName(AlarmName): {
    assert std.isString(AlarmName) : 'AlarmName must be a string',
    Properties+::: {
      AlarmName: AlarmName,
    },
  },
  withStatistic(Statistic): {
    assert std.isString(Statistic) : 'Statistic must be a string',
    Properties+::: {
      Statistic: Statistic,
    },
  },
  withInsufficientDataActions(InsufficientDataActions): {
    Properties+::: {
      InsufficientDataActions: (if std.isArray(InsufficientDataActions) then InsufficientDataActions else [InsufficientDataActions]),
    },
  },
  withInsufficientDataActionsMixin(InsufficientDataActions): {
    Properties+::: {
      InsufficientDataActions+: (if std.isArray(InsufficientDataActions) then InsufficientDataActions else [InsufficientDataActions]),
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDatapointsToAlarm(DatapointsToAlarm): {
    assert std.isNumber(DatapointsToAlarm) : 'DatapointsToAlarm must be a number',
    Properties+::: {
      DatapointsToAlarm: DatapointsToAlarm,
    },
  },
  withThreshold(Threshold): {
    assert std.isNumber(Threshold) : 'Threshold must be a number',
    Properties+::: {
      Threshold: Threshold,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
