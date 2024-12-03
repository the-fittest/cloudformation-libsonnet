local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Experiment: {
    '#': d.pkg(
      name='Experiment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Evidently.libsonnet',
      help='Resource Type definition for AWS::Evidently::Experiment.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Evidently::Experiment Resource
        * Name 
        * Project 
        * Treatments 
        * MetricGoals 
        * OnlineAbConfig 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Project', 'd.T.string'),
        d.arg('Treatments', 'd.T.array'),
        d.arg('MetricGoals', 'd.T.array'),
        d.arg('OnlineAbConfig', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Project,
      Treatments,
      MetricGoals,
      OnlineAbConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Project) : 'Project must be a string',
        Project: Project,
        assert std.isArray(Treatments) : 'Treatments must be a array',
        Treatments: Treatments,
        assert std.isArray(MetricGoals) : 'MetricGoals must be a array',
        MetricGoals: MetricGoals,
        assert std.isObject(OnlineAbConfig) : 'OnlineAbConfig must be a object',
        OnlineAbConfig: OnlineAbConfig,
      },
      DependsOn:: [],
      Type: 'AWS::Evidently::Experiment',
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
    '#withRunningStatus': d.fn('`withRunningStatus` RunningStatus ', [d.arg('RunningStatus', d.T.object)]),
    withRunningStatus(RunningStatus): {
      assert std.isObject(RunningStatus) : 'RunningStatus must be a object',
      Properties+::: { RunningStatus: RunningStatus },
    },
    '#withRandomizationSalt': d.fn('`withRandomizationSalt` RandomizationSalt ', [d.arg('RandomizationSalt', d.T.string)]),
    withRandomizationSalt(RandomizationSalt): {
      assert std.isString(RandomizationSalt) : 'RandomizationSalt must be a string',
      Properties+::: { RandomizationSalt: RandomizationSalt },
    },
    '#withSamplingRate': d.fn('`withSamplingRate` SamplingRate ', [d.arg('SamplingRate', d.T.integer)]),
    withSamplingRate(SamplingRate): {
      assert std.isNumber(SamplingRate) : 'SamplingRate must be a integer',
      Properties+::: { SamplingRate: SamplingRate },
    },
    '#withSegment': d.fn('`withSegment` Segment ', [d.arg('Segment', d.T.string)]),
    withSegment(Segment): {
      assert std.isString(Segment) : 'Segment must be a string',
      Properties+::: { Segment: Segment },
    },
    '#withRemoveSegment': d.fn('`withRemoveSegment` RemoveSegment ', [d.arg('RemoveSegment', d.T.boolean)]),
    withRemoveSegment(RemoveSegment): {
      assert std.isBoolean(RemoveSegment) : 'RemoveSegment must be a boolean',
      Properties+::: { RemoveSegment: RemoveSegment },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Feature: {
    '#': d.pkg(
      name='Feature',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Evidently.libsonnet',
      help='Resource Type definition for AWS::Evidently::Feature.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Evidently::Feature Resource
        * Name 
        * Project 
        * Variations 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Project', 'd.T.string'),
        d.arg('Variations', 'd.T.array'),
      ]
    ),
    new(
      Name,
      Project,
      Variations,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Project) : 'Project must be a string',
        Project: Project,
        assert std.isArray(Variations) : 'Variations must be a array',
        Variations: Variations,
      },
      DependsOn:: [],
      Type: 'AWS::Evidently::Feature',
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
    '#withEvaluationStrategy': d.fn('`withEvaluationStrategy` EvaluationStrategy ', [d.arg('EvaluationStrategy', d.T.string)]),
    withEvaluationStrategy(EvaluationStrategy): {
      assert std.isString(EvaluationStrategy) : 'EvaluationStrategy must be a string',
      assert EvaluationStrategy == 'ALL_RULES' || EvaluationStrategy == 'DEFAULT_VARIATION' : "EvaluationStrategy must be either 'ALL_RULES' or 'DEFAULT_VARIATION'",
      Properties+::: { EvaluationStrategy: EvaluationStrategy },
    },
    '#withDefaultVariation': d.fn('`withDefaultVariation` DefaultVariation ', [d.arg('DefaultVariation', d.T.string)]),
    withDefaultVariation(DefaultVariation): {
      assert std.isString(DefaultVariation) : 'DefaultVariation must be a string',
      Properties+::: { DefaultVariation: DefaultVariation },
    },
    '#withEntityOverrides': d.fn('`withEntityOverrides` EntityOverrides ', [d.arg('EntityOverrides', d.T.array)]),
    withEntityOverrides(EntityOverrides): {
      assert std.isArray(EntityOverrides) : 'EntityOverrides must be a array',
      Properties+::: { EntityOverrides: EntityOverrides },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Launch: {
    '#': d.pkg(
      name='Launch',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Evidently.libsonnet',
      help='Resource Type definition for AWS::Evidently::Launch.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Evidently::Launch Resource
        * Name 
        * Project 
        * Groups 
        * ScheduledSplitsConfig 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Project', 'd.T.string'),
        d.arg('Groups', 'd.T.array'),
        d.arg('ScheduledSplitsConfig', 'd.T.array'),
      ]
    ),
    new(
      Name,
      Project,
      Groups,
      ScheduledSplitsConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Project) : 'Project must be a string',
        Project: Project,
        assert std.isArray(Groups) : 'Groups must be a array',
        Groups: Groups,
        assert std.isArray(ScheduledSplitsConfig) : 'ScheduledSplitsConfig must be a array',
        ScheduledSplitsConfig: ScheduledSplitsConfig,
      },
      DependsOn:: [],
      Type: 'AWS::Evidently::Launch',
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
    '#withRandomizationSalt': d.fn('`withRandomizationSalt` RandomizationSalt ', [d.arg('RandomizationSalt', d.T.string)]),
    withRandomizationSalt(RandomizationSalt): {
      assert std.isString(RandomizationSalt) : 'RandomizationSalt must be a string',
      Properties+::: { RandomizationSalt: RandomizationSalt },
    },
    '#withMetricMonitors': d.fn('`withMetricMonitors` MetricMonitors ', [d.arg('MetricMonitors', d.T.array)]),
    withMetricMonitors(MetricMonitors): {
      assert std.isArray(MetricMonitors) : 'MetricMonitors must be a array',
      Properties+::: { MetricMonitors: MetricMonitors },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withExecutionStatus': d.fn('`withExecutionStatus` ExecutionStatus ', [d.arg('ExecutionStatus', d.T.object)]),
    withExecutionStatus(ExecutionStatus): {
      assert std.isObject(ExecutionStatus) : 'ExecutionStatus must be a object',
      Properties+::: { ExecutionStatus: ExecutionStatus },
    },
  },
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Evidently.libsonnet',
      help='Resource Type definition for AWS::Evidently::Project',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Evidently::Project Resource
        * Name 
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
      Type: 'AWS::Evidently::Project',
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
    '#withDataDelivery': d.fn('`withDataDelivery` DataDelivery ', [d.arg('DataDelivery', d.T.object)]),
    withDataDelivery(DataDelivery): {
      assert std.isObject(DataDelivery) : 'DataDelivery must be a object',
      Properties+::: { DataDelivery: DataDelivery },
    },
    '#withAppConfigResource': d.fn('`withAppConfigResource` AppConfigResource ', [d.arg('AppConfigResource', d.T.object)]),
    withAppConfigResource(AppConfigResource): {
      assert std.isObject(AppConfigResource) : 'AppConfigResource must be a object',
      Properties+::: { AppConfigResource: AppConfigResource },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Segment: {
    '#': d.pkg(
      name='Segment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Evidently.libsonnet',
      help='Resource Type definition for AWS::Evidently::Segment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Evidently::Segment Resource
        * Name 
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
      Type: 'AWS::Evidently::Segment',
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
    '#withPattern': d.fn('`withPattern` Pattern ', [d.arg('Pattern', d.T.string)]),
    withPattern(Pattern): {
      assert std.isString(Pattern) : 'Pattern must be a string',
      Properties+::: { Pattern: Pattern },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
