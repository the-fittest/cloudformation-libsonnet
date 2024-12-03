local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AnomalyMonitor: {
    '#': d.pkg(
      name='AnomalyMonitor',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CE.libsonnet',
      help='AWS Cost Anomaly Detection leverages advanced Machine Learning technologies to identify anomalous spend and root causes, so you can quickly take action. You can use Cost Anomaly Detection by creating monitor.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CE::AnomalyMonitor Resource
        * MonitorName The name of the monitor.
        * MonitorType 
      |||,
      args=[
        d.arg('MonitorName', 'd.T.string'),
        d.arg('MonitorType', 'd.T.string'),
      ]
    ),
    new(
      MonitorName,
      MonitorType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MonitorName) : 'MonitorName must be a string',
        MonitorName: MonitorName,
        assert std.isString(MonitorType) : 'MonitorType must be a string',
        assert MonitorType == 'DIMENSIONAL' || MonitorType == 'CUSTOM' : "MonitorType must be either 'DIMENSIONAL' or 'CUSTOM'",
        MonitorType: MonitorType,
      },
      DependsOn:: [],
      Type: 'AWS::CE::AnomalyMonitor',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMonitorArn': d.fn('`withMonitorArn` MonitorArn ', [d.arg('MonitorArn', d.T.string)]),
    withMonitorArn(MonitorArn): {
      assert std.isString(MonitorArn) : 'MonitorArn must be a string',
      Properties+::: { MonitorArn: MonitorArn },
    },
    '#withCreationDate': d.fn('`withCreationDate` CreationDate ', [d.arg('CreationDate', d.T.string)]),
    withCreationDate(CreationDate): {
      assert std.isString(CreationDate) : 'CreationDate must be a string',
      Properties+::: { CreationDate: CreationDate },
    },
    '#withLastEvaluatedDate': d.fn('`withLastEvaluatedDate` LastEvaluatedDate ', [d.arg('LastEvaluatedDate', d.T.string)]),
    withLastEvaluatedDate(LastEvaluatedDate): {
      assert std.isString(LastEvaluatedDate) : 'LastEvaluatedDate must be a string',
      Properties+::: { LastEvaluatedDate: LastEvaluatedDate },
    },
    '#withLastUpdatedDate': d.fn('`withLastUpdatedDate` LastUpdatedDate ', [d.arg('LastUpdatedDate', d.T.string)]),
    withLastUpdatedDate(LastUpdatedDate): {
      assert std.isString(LastUpdatedDate) : 'LastUpdatedDate must be a string',
      Properties+::: { LastUpdatedDate: LastUpdatedDate },
    },
    '#withMonitorDimension': d.fn('`withMonitorDimension` MonitorDimension ', [d.arg('MonitorDimension', d.T.string)]),
    withMonitorDimension(MonitorDimension): {
      assert std.isString(MonitorDimension) : 'MonitorDimension must be a string',
      assert MonitorDimension == 'SERVICE' : "MonitorDimension must be either 'SERVICE'",
      Properties+::: { MonitorDimension: MonitorDimension },
    },
    '#withMonitorSpecification': d.fn('`withMonitorSpecification` MonitorSpecification ', [d.arg('MonitorSpecification', d.T.string)]),
    withMonitorSpecification(MonitorSpecification): {
      assert std.isString(MonitorSpecification) : 'MonitorSpecification must be a string',
      Properties+::: { MonitorSpecification: MonitorSpecification },
    },
    '#withDimensionalValueCount': d.fn('`withDimensionalValueCount` DimensionalValueCount ', [d.arg('DimensionalValueCount', d.T.integer)]),
    withDimensionalValueCount(DimensionalValueCount): {
      assert std.isNumber(DimensionalValueCount) : 'DimensionalValueCount must be a integer',
      Properties+::: { DimensionalValueCount: DimensionalValueCount },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.array)]),
    withResourceTags(ResourceTags): {
      assert std.isArray(ResourceTags) : 'ResourceTags must be a array',
      Properties+::: { ResourceTags: ResourceTags },
    },
  },
  AnomalySubscription: {
    '#': d.pkg(
      name='AnomalySubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CE.libsonnet',
      help='AWS Cost Anomaly Detection leverages advanced Machine Learning technologies to identify anomalous spend and root causes, so you can quickly take action. Create subscription to be notified',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CE::AnomalySubscription Resource
        * MonitorArnList A list of cost anomaly monitors.
        * Subscribers A list of subscriber
        * Frequency The frequency at which anomaly reports are sent over email. 
        * SubscriptionName The name of the subscription.
      |||,
      args=[
        d.arg('MonitorArnList', 'd.T.array'),
        d.arg('Subscribers', 'd.T.array'),
        d.arg('Frequency', 'd.T.string'),
        d.arg('SubscriptionName', 'd.T.string'),
      ]
    ),
    new(
      MonitorArnList,
      Subscribers,
      Frequency,
      SubscriptionName,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(MonitorArnList) : 'MonitorArnList must be a array',
        MonitorArnList: MonitorArnList,
        assert std.isArray(Subscribers) : 'Subscribers must be a array',
        Subscribers: Subscribers,
        assert std.isString(Frequency) : 'Frequency must be a string',
        assert Frequency == 'DAILY' || Frequency == 'IMMEDIATE' || Frequency == 'WEEKLY' : "Frequency must be either 'DAILY' or 'IMMEDIATE' or 'WEEKLY'",
        Frequency: Frequency,
        assert std.isString(SubscriptionName) : 'SubscriptionName must be a string',
        SubscriptionName: SubscriptionName,
      },
      DependsOn:: [],
      Type: 'AWS::CE::AnomalySubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSubscriptionArn': d.fn('`withSubscriptionArn` SubscriptionArn ', [d.arg('SubscriptionArn', d.T.string)]),
    withSubscriptionArn(SubscriptionArn): {
      assert std.isString(SubscriptionArn) : 'SubscriptionArn must be a string',
      Properties+::: { SubscriptionArn: SubscriptionArn },
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
    '#withThreshold': d.fn('`withThreshold` Threshold ', [d.arg('Threshold', d.T.integer)]),
    withThreshold(Threshold): {
      // Type: number
      Properties+::: { Threshold: Threshold },
    },
    '#withThresholdExpression': d.fn('`withThresholdExpression` ThresholdExpression ', [d.arg('ThresholdExpression', d.T.string)]),
    withThresholdExpression(ThresholdExpression): {
      assert std.isString(ThresholdExpression) : 'ThresholdExpression must be a string',
      Properties+::: { ThresholdExpression: ThresholdExpression },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.array)]),
    withResourceTags(ResourceTags): {
      assert std.isArray(ResourceTags) : 'ResourceTags must be a array',
      Properties+::: { ResourceTags: ResourceTags },
    },
  },
  CostCategory: {
    '#': d.pkg(
      name='CostCategory',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CE.libsonnet',
      help='Cost Category enables you to map your cost and usage into meaningful categories. You can use Cost Category to organize your costs using a rule-based engine.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CE::CostCategory Resource
        * Name 
        * RuleVersion 
        * Rules JSON array format of Expression in Billing and Cost Management API
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('RuleVersion', 'd.T.string'),
        d.arg('Rules', 'd.T.string'),
      ]
    ),
    new(
      Name,
      RuleVersion,
      Rules,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RuleVersion) : 'RuleVersion must be a string',
        assert RuleVersion == 'CostCategoryExpression.v1' : "RuleVersion must be either 'CostCategoryExpression.v1'",
        RuleVersion: RuleVersion,
        assert std.isString(Rules) : 'Rules must be a string',
        Rules: Rules,
      },
      DependsOn:: [],
      Type: 'AWS::CE::CostCategory',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withEffectiveStart': d.fn('`withEffectiveStart` EffectiveStart ', [d.arg('EffectiveStart', d.T.string)]),
    withEffectiveStart(EffectiveStart): {
      assert std.isString(EffectiveStart) : 'EffectiveStart must be a string',
      Properties+::: { EffectiveStart: EffectiveStart },
    },
    '#withSplitChargeRules': d.fn('`withSplitChargeRules` SplitChargeRules ', [d.arg('SplitChargeRules', d.T.string)]),
    withSplitChargeRules(SplitChargeRules): {
      assert std.isString(SplitChargeRules) : 'SplitChargeRules must be a string',
      Properties+::: { SplitChargeRules: SplitChargeRules },
    },
    '#withDefaultValue': d.fn('`withDefaultValue` DefaultValue ', [d.arg('DefaultValue', d.T.string)]),
    withDefaultValue(DefaultValue): {
      assert std.isString(DefaultValue) : 'DefaultValue must be a string',
      Properties+::: { DefaultValue: DefaultValue },
    },
  },
}
