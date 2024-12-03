local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ServiceLevelObjective: {
    '#': d.pkg(
      name='ServiceLevelObjective',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApplicationSignals.libsonnet',
      help='Resource Type definition for AWS::ApplicationSignals::ServiceLevelObjective',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApplicationSignals::ServiceLevelObjective Resource
        * Name The name of this SLO.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::ApplicationSignals::ServiceLevelObjective',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.integer)]),
    withCreatedTime(CreatedTime): {
      assert std.isNumber(CreatedTime) : 'CreatedTime must be a integer',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.integer)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isNumber(LastUpdatedTime) : 'LastUpdatedTime must be a integer',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withSli': d.fn('`withSli` Sli ', [d.arg('Sli', d.T.object)]),
    withSli(Sli): {
      assert std.isObject(Sli) : 'Sli must be a object',
      Properties+::: { Sli: Sli },
    },
    '#withRequestBasedSli': d.fn('`withRequestBasedSli` RequestBasedSli ', [d.arg('RequestBasedSli', d.T.object)]),
    withRequestBasedSli(RequestBasedSli): {
      assert std.isObject(RequestBasedSli) : 'RequestBasedSli must be a object',
      Properties+::: { RequestBasedSli: RequestBasedSli },
    },
    '#withEvaluationType': d.fn('`withEvaluationType` EvaluationType ', [d.arg('EvaluationType', d.T.string)]),
    withEvaluationType(EvaluationType): {
      assert std.isString(EvaluationType) : 'EvaluationType must be a string',
      assert EvaluationType == 'PeriodBased' || EvaluationType == 'RequestBased' : "EvaluationType must be either 'PeriodBased' or 'RequestBased'",
      Properties+::: { EvaluationType: EvaluationType },
    },
    '#withGoal': d.fn('`withGoal` Goal ', [d.arg('Goal', d.T.object)]),
    withGoal(Goal): {
      assert std.isObject(Goal) : 'Goal must be a object',
      Properties+::: { Goal: Goal },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withBurnRateConfigurations': d.fn('`withBurnRateConfigurations` BurnRateConfigurations ', [d.arg('BurnRateConfigurations', d.T.array)]),
    withBurnRateConfigurations(BurnRateConfigurations): {
      assert std.isArray(BurnRateConfigurations) : 'BurnRateConfigurations must be a array',
      Properties+::: { BurnRateConfigurations: BurnRateConfigurations },
    },
  },
}
