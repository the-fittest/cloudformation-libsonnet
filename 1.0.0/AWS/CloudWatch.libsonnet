local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Alarm: {
    '#': d.pkg(
      name='Alarm',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudWatch.libsonnet',
      help='The AWS::CloudWatch::Alarm type specifies an alarm and associates it with the specified metric or metric math expression. When this operation creates an alarm, the alarm state is immediately set to INSUFFICIENT_DATA. The alarm is then evaluated and its state is set appropriately. Any actions associated with the new state are then executed. When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudWatch::Alarm Resource
        * ComparisonOperator The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.
        * EvaluationPeriods The number of periods over which data is compared to the specified threshold. If you are setting an alarm that requires that a number of consecutive data points be breaching to trigger the alarm, this value specifies that number. If you are setting an &#34;M out of N&#34; alarm, this value is the N, and DatapointsToAlarm is the M. For more information, see [Evaluating an Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation) in the *User Guide*.
      |||,
      args=[
        d.arg('ComparisonOperator', 'd.T.string'),
        d.arg('EvaluationPeriods', 'd.T.integer'),
      ]
    ),
    new(
      ComparisonOperator,
      EvaluationPeriods,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ComparisonOperator) : 'ComparisonOperator must be a string',
        ComparisonOperator: ComparisonOperator,
        assert std.isNumber(EvaluationPeriods) : 'EvaluationPeriods must be a integer',
        EvaluationPeriods: EvaluationPeriods,
      },
      DependsOn:: [],
      Type: 'AWS::CloudWatch::Alarm',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withThresholdMetricId': d.fn('`withThresholdMetricId` ThresholdMetricId ', [d.arg('ThresholdMetricId', d.T.string)]),
    withThresholdMetricId(ThresholdMetricId): {
      assert std.isString(ThresholdMetricId) : 'ThresholdMetricId must be a string',
      Properties+::: { ThresholdMetricId: ThresholdMetricId },
    },
    '#withEvaluateLowSampleCountPercentile': d.fn('`withEvaluateLowSampleCountPercentile` EvaluateLowSampleCountPercentile ', [d.arg('EvaluateLowSampleCountPercentile', d.T.string)]),
    withEvaluateLowSampleCountPercentile(EvaluateLowSampleCountPercentile): {
      assert std.isString(EvaluateLowSampleCountPercentile) : 'EvaluateLowSampleCountPercentile must be a string',
      Properties+::: { EvaluateLowSampleCountPercentile: EvaluateLowSampleCountPercentile },
    },
    '#withExtendedStatistic': d.fn('`withExtendedStatistic` ExtendedStatistic ', [d.arg('ExtendedStatistic', d.T.string)]),
    withExtendedStatistic(ExtendedStatistic): {
      assert std.isString(ExtendedStatistic) : 'ExtendedStatistic must be a string',
      Properties+::: { ExtendedStatistic: ExtendedStatistic },
    },
    '#withTreatMissingData': d.fn('`withTreatMissingData` TreatMissingData ', [d.arg('TreatMissingData', d.T.string)]),
    withTreatMissingData(TreatMissingData): {
      assert std.isString(TreatMissingData) : 'TreatMissingData must be a string',
      Properties+::: { TreatMissingData: TreatMissingData },
    },
    '#withDimensions': d.fn('`withDimensions` Dimensions ', [d.arg('Dimensions', d.T.array)]),
    withDimensions(Dimensions): {
      assert std.isArray(Dimensions) : 'Dimensions must be a array',
      Properties+::: { Dimensions: Dimensions },
    },
    '#withPeriod': d.fn('`withPeriod` Period ', [d.arg('Period', d.T.integer)]),
    withPeriod(Period): {
      assert std.isNumber(Period) : 'Period must be a integer',
      Properties+::: { Period: Period },
    },
    '#withUnit': d.fn('`withUnit` Unit ', [d.arg('Unit', d.T.string)]),
    withUnit(Unit): {
      assert std.isString(Unit) : 'Unit must be a string',
      Properties+::: { Unit: Unit },
    },
    '#withNamespace': d.fn('`withNamespace` Namespace ', [d.arg('Namespace', d.T.string)]),
    withNamespace(Namespace): {
      assert std.isString(Namespace) : 'Namespace must be a string',
      Properties+::: { Namespace: Namespace },
    },
    '#withOKActions': d.fn('`withOKActions` OKActions ', [d.arg('OKActions', d.T.array)]),
    withOKActions(OKActions): {
      assert std.isArray(OKActions) : 'OKActions must be a array',
      Properties+::: { OKActions: OKActions },
    },
    '#withAlarmActions': d.fn('`withAlarmActions` AlarmActions ', [d.arg('AlarmActions', d.T.array)]),
    withAlarmActions(AlarmActions): {
      assert std.isArray(AlarmActions) : 'AlarmActions must be a array',
      Properties+::: { AlarmActions: AlarmActions },
    },
    '#withMetricName': d.fn('`withMetricName` MetricName ', [d.arg('MetricName', d.T.string)]),
    withMetricName(MetricName): {
      assert std.isString(MetricName) : 'MetricName must be a string',
      Properties+::: { MetricName: MetricName },
    },
    '#withActionsEnabled': d.fn('`withActionsEnabled` ActionsEnabled ', [d.arg('ActionsEnabled', d.T.boolean)]),
    withActionsEnabled(ActionsEnabled): {
      assert std.isBoolean(ActionsEnabled) : 'ActionsEnabled must be a boolean',
      Properties+::: { ActionsEnabled: ActionsEnabled },
    },
    '#withMetrics': d.fn('`withMetrics` Metrics ', [d.arg('Metrics', d.T.array)]),
    withMetrics(Metrics): {
      assert std.isArray(Metrics) : 'Metrics must be a array',
      Properties+::: { Metrics: Metrics },
    },
    '#withAlarmDescription': d.fn('`withAlarmDescription` AlarmDescription ', [d.arg('AlarmDescription', d.T.string)]),
    withAlarmDescription(AlarmDescription): {
      assert std.isString(AlarmDescription) : 'AlarmDescription must be a string',
      Properties+::: { AlarmDescription: AlarmDescription },
    },
    '#withAlarmName': d.fn('`withAlarmName` AlarmName ', [d.arg('AlarmName', d.T.string)]),
    withAlarmName(AlarmName): {
      assert std.isString(AlarmName) : 'AlarmName must be a string',
      Properties+::: { AlarmName: AlarmName },
    },
    '#withStatistic': d.fn('`withStatistic` Statistic ', [d.arg('Statistic', d.T.string)]),
    withStatistic(Statistic): {
      assert std.isString(Statistic) : 'Statistic must be a string',
      Properties+::: { Statistic: Statistic },
    },
    '#withInsufficientDataActions': d.fn('`withInsufficientDataActions` InsufficientDataActions ', [d.arg('InsufficientDataActions', d.T.array)]),
    withInsufficientDataActions(InsufficientDataActions): {
      assert std.isArray(InsufficientDataActions) : 'InsufficientDataActions must be a array',
      Properties+::: { InsufficientDataActions: InsufficientDataActions },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDatapointsToAlarm': d.fn('`withDatapointsToAlarm` DatapointsToAlarm ', [d.arg('DatapointsToAlarm', d.T.integer)]),
    withDatapointsToAlarm(DatapointsToAlarm): {
      assert std.isNumber(DatapointsToAlarm) : 'DatapointsToAlarm must be a integer',
      Properties+::: { DatapointsToAlarm: DatapointsToAlarm },
    },
    '#withThreshold': d.fn('`withThreshold` Threshold ', [d.arg('Threshold', d.T.integer)]),
    withThreshold(Threshold): {
      // Type: number
      Properties+::: { Threshold: Threshold },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  AnomalyDetector: {
    '#': d.pkg(
      name='AnomalyDetector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudWatch.libsonnet',
      help='Resource Type definition for AWS::CloudWatch::AnomalyDetector',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudWatch::AnomalyDetector Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudWatch::AnomalyDetector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMetricCharacteristics': d.fn('`withMetricCharacteristics` MetricCharacteristics ', [d.arg('MetricCharacteristics', d.T.object)]),
    withMetricCharacteristics(MetricCharacteristics): {
      assert std.isObject(MetricCharacteristics) : 'MetricCharacteristics must be a object',
      Properties+::: { MetricCharacteristics: MetricCharacteristics },
    },
    '#withMetricName': d.fn('`withMetricName` MetricName ', [d.arg('MetricName', d.T.string)]),
    withMetricName(MetricName): {
      assert std.isString(MetricName) : 'MetricName must be a string',
      Properties+::: { MetricName: MetricName },
    },
    '#withStat': d.fn('`withStat` Stat ', [d.arg('Stat', d.T.string)]),
    withStat(Stat): {
      assert std.isString(Stat) : 'Stat must be a string',
      Properties+::: { Stat: Stat },
    },
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration', d.T.object)]),
    withConfiguration(Configuration): {
      assert std.isObject(Configuration) : 'Configuration must be a object',
      Properties+::: { Configuration: Configuration },
    },
    '#withMetricMathAnomalyDetector': d.fn('`withMetricMathAnomalyDetector` MetricMathAnomalyDetector ', [d.arg('MetricMathAnomalyDetector', d.T.object)]),
    withMetricMathAnomalyDetector(MetricMathAnomalyDetector): {
      assert std.isObject(MetricMathAnomalyDetector) : 'MetricMathAnomalyDetector must be a object',
      Properties+::: { MetricMathAnomalyDetector: MetricMathAnomalyDetector },
    },
    '#withDimensions': d.fn('`withDimensions` Dimensions ', [d.arg('Dimensions', d.T.array)]),
    withDimensions(Dimensions): {
      assert std.isArray(Dimensions) : 'Dimensions must be a array',
      Properties+::: { Dimensions: Dimensions },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNamespace': d.fn('`withNamespace` Namespace ', [d.arg('Namespace', d.T.string)]),
    withNamespace(Namespace): {
      assert std.isString(Namespace) : 'Namespace must be a string',
      Properties+::: { Namespace: Namespace },
    },
    '#withSingleMetricAnomalyDetector': d.fn('`withSingleMetricAnomalyDetector` SingleMetricAnomalyDetector ', [d.arg('SingleMetricAnomalyDetector', d.T.object)]),
    withSingleMetricAnomalyDetector(SingleMetricAnomalyDetector): {
      assert std.isObject(SingleMetricAnomalyDetector) : 'SingleMetricAnomalyDetector must be a object',
      Properties+::: { SingleMetricAnomalyDetector: SingleMetricAnomalyDetector },
    },
  },
  CompositeAlarm: {
    '#': d.pkg(
      name='CompositeAlarm',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudWatch.libsonnet',
      help='The AWS::CloudWatch::CompositeAlarm type specifies an alarm which aggregates the states of other Alarms (Metric or Composite Alarms) as defined by the AlarmRule expression',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudWatch::CompositeAlarm Resource
        * AlarmRule Expression which aggregates the state of other Alarms (Metric or Composite Alarms)
      |||,
      args=[
        d.arg('AlarmRule', 'd.T.string'),
      ]
    ),
    new(
      AlarmRule,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AlarmRule) : 'AlarmRule must be a string',
        AlarmRule: AlarmRule,
      },
      DependsOn:: [],
      Type: 'AWS::CloudWatch::CompositeAlarm',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAlarmName': d.fn('`withAlarmName` AlarmName ', [d.arg('AlarmName', d.T.string)]),
    withAlarmName(AlarmName): {
      assert std.isString(AlarmName) : 'AlarmName must be a string',
      Properties+::: { AlarmName: AlarmName },
    },
    '#withAlarmDescription': d.fn('`withAlarmDescription` AlarmDescription ', [d.arg('AlarmDescription', d.T.string)]),
    withAlarmDescription(AlarmDescription): {
      assert std.isString(AlarmDescription) : 'AlarmDescription must be a string',
      Properties+::: { AlarmDescription: AlarmDescription },
    },
    '#withActionsEnabled': d.fn('`withActionsEnabled` ActionsEnabled ', [d.arg('ActionsEnabled', d.T.boolean)]),
    withActionsEnabled(ActionsEnabled): {
      assert std.isBoolean(ActionsEnabled) : 'ActionsEnabled must be a boolean',
      Properties+::: { ActionsEnabled: ActionsEnabled },
    },
    '#withOKActions': d.fn('`withOKActions` OKActions ', [d.arg('OKActions', d.T.array)]),
    withOKActions(OKActions): {
      assert std.isArray(OKActions) : 'OKActions must be a array',
      Properties+::: { OKActions: OKActions },
    },
    '#withAlarmActions': d.fn('`withAlarmActions` AlarmActions ', [d.arg('AlarmActions', d.T.array)]),
    withAlarmActions(AlarmActions): {
      assert std.isArray(AlarmActions) : 'AlarmActions must be a array',
      Properties+::: { AlarmActions: AlarmActions },
    },
    '#withInsufficientDataActions': d.fn('`withInsufficientDataActions` InsufficientDataActions ', [d.arg('InsufficientDataActions', d.T.array)]),
    withInsufficientDataActions(InsufficientDataActions): {
      assert std.isArray(InsufficientDataActions) : 'InsufficientDataActions must be a array',
      Properties+::: { InsufficientDataActions: InsufficientDataActions },
    },
    '#withActionsSuppressor': d.fn('`withActionsSuppressor` ActionsSuppressor ', [d.arg('ActionsSuppressor', d.T.string)]),
    withActionsSuppressor(ActionsSuppressor): {
      assert std.isString(ActionsSuppressor) : 'ActionsSuppressor must be a string',
      Properties+::: { ActionsSuppressor: ActionsSuppressor },
    },
    '#withActionsSuppressorWaitPeriod': d.fn('`withActionsSuppressorWaitPeriod` ActionsSuppressorWaitPeriod ', [d.arg('ActionsSuppressorWaitPeriod', d.T.integer)]),
    withActionsSuppressorWaitPeriod(ActionsSuppressorWaitPeriod): {
      assert std.isNumber(ActionsSuppressorWaitPeriod) : 'ActionsSuppressorWaitPeriod must be a integer',
      Properties+::: { ActionsSuppressorWaitPeriod: ActionsSuppressorWaitPeriod },
    },
    '#withActionsSuppressorExtensionPeriod': d.fn('`withActionsSuppressorExtensionPeriod` ActionsSuppressorExtensionPeriod ', [d.arg('ActionsSuppressorExtensionPeriod', d.T.integer)]),
    withActionsSuppressorExtensionPeriod(ActionsSuppressorExtensionPeriod): {
      assert std.isNumber(ActionsSuppressorExtensionPeriod) : 'ActionsSuppressorExtensionPeriod must be a integer',
      Properties+::: { ActionsSuppressorExtensionPeriod: ActionsSuppressorExtensionPeriod },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Dashboard: {
    '#': d.pkg(
      name='Dashboard',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudWatch.libsonnet',
      help='Resource Type definition for AWS::CloudWatch::Dashboard',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudWatch::Dashboard Resource
        * DashboardBody The detailed information about the dashboard in JSON format, including the widgets to include and their location on the dashboard
      |||,
      args=[
        d.arg('DashboardBody', 'd.T.string'),
      ]
    ),
    new(
      DashboardBody,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DashboardBody) : 'DashboardBody must be a string',
        DashboardBody: DashboardBody,
      },
      DependsOn:: [],
      Type: 'AWS::CloudWatch::Dashboard',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDashboardName': d.fn('`withDashboardName` DashboardName ', [d.arg('DashboardName', d.T.string)]),
    withDashboardName(DashboardName): {
      assert std.isString(DashboardName) : 'DashboardName must be a string',
      Properties+::: { DashboardName: DashboardName },
    },
  },
  InsightRule: {
    '#': d.pkg(
      name='InsightRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudWatch.libsonnet',
      help='Resource Type definition for AWS::CloudWatch::InsightRule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudWatch::InsightRule Resource
        * RuleState 
        * RuleBody 
        * RuleName 
      |||,
      args=[
        d.arg('RuleState', 'd.T.string'),
        d.arg('RuleBody', 'd.T.string'),
        d.arg('RuleName', 'd.T.string'),
      ]
    ),
    new(
      RuleState,
      RuleBody,
      RuleName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RuleState) : 'RuleState must be a string',
        RuleState: RuleState,
        assert std.isString(RuleBody) : 'RuleBody must be a string',
        RuleBody: RuleBody,
        assert std.isString(RuleName) : 'RuleName must be a string',
        RuleName: RuleName,
      },
      DependsOn:: [],
      Type: 'AWS::CloudWatch::InsightRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  MetricStream: {
    '#': d.pkg(
      name='MetricStream',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudWatch.libsonnet',
      help='Resource Type definition for Metric Stream',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudWatch::MetricStream Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudWatch::MetricStream',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationDate': d.fn('`withCreationDate` CreationDate ', [d.arg('CreationDate', d.T.string)]),
    withCreationDate(CreationDate): {
      assert std.isString(CreationDate) : 'CreationDate must be a string',
      Properties+::: { CreationDate: CreationDate },
    },
    '#withExcludeFilters': d.fn('`withExcludeFilters` ExcludeFilters ', [d.arg('ExcludeFilters', d.T.array)]),
    withExcludeFilters(ExcludeFilters): {
      assert std.isArray(ExcludeFilters) : 'ExcludeFilters must be a array',
      Properties+::: { ExcludeFilters: ExcludeFilters },
    },
    '#withFirehoseArn': d.fn('`withFirehoseArn` FirehoseArn ', [d.arg('FirehoseArn', d.T.string)]),
    withFirehoseArn(FirehoseArn): {
      assert std.isString(FirehoseArn) : 'FirehoseArn must be a string',
      Properties+::: { FirehoseArn: FirehoseArn },
    },
    '#withIncludeFilters': d.fn('`withIncludeFilters` IncludeFilters ', [d.arg('IncludeFilters', d.T.array)]),
    withIncludeFilters(IncludeFilters): {
      assert std.isArray(IncludeFilters) : 'IncludeFilters must be a array',
      Properties+::: { IncludeFilters: IncludeFilters },
    },
    '#withLastUpdateDate': d.fn('`withLastUpdateDate` LastUpdateDate ', [d.arg('LastUpdateDate', d.T.string)]),
    withLastUpdateDate(LastUpdateDate): {
      assert std.isString(LastUpdateDate) : 'LastUpdateDate must be a string',
      Properties+::: { LastUpdateDate: LastUpdateDate },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withOutputFormat': d.fn('`withOutputFormat` OutputFormat ', [d.arg('OutputFormat', d.T.string)]),
    withOutputFormat(OutputFormat): {
      assert std.isString(OutputFormat) : 'OutputFormat must be a string',
      Properties+::: { OutputFormat: OutputFormat },
    },
    '#withStatisticsConfigurations': d.fn('`withStatisticsConfigurations` StatisticsConfigurations ', [d.arg('StatisticsConfigurations', d.T.array)]),
    withStatisticsConfigurations(StatisticsConfigurations): {
      assert std.isArray(StatisticsConfigurations) : 'StatisticsConfigurations must be a array',
      Properties+::: { StatisticsConfigurations: StatisticsConfigurations },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withIncludeLinkedAccountsMetrics': d.fn('`withIncludeLinkedAccountsMetrics` IncludeLinkedAccountsMetrics ', [d.arg('IncludeLinkedAccountsMetrics', d.T.boolean)]),
    withIncludeLinkedAccountsMetrics(IncludeLinkedAccountsMetrics): {
      assert std.isBoolean(IncludeLinkedAccountsMetrics) : 'IncludeLinkedAccountsMetrics must be a boolean',
      Properties+::: { IncludeLinkedAccountsMetrics: IncludeLinkedAccountsMetrics },
    },
  },
}
