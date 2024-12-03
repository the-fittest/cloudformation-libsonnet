local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Schedule: {
    '#': d.pkg(
      name='Schedule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Scheduler.libsonnet',
      help='Definition of AWS::Scheduler::Schedule Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Scheduler::Schedule Resource
        * FlexibleTimeWindow 
        * ScheduleExpression The scheduling expression.
        * Target 
      |||,
      args=[
        d.arg('FlexibleTimeWindow', 'd.T.object'),
        d.arg('ScheduleExpression', 'd.T.string'),
        d.arg('Target', 'd.T.object'),
      ]
    ),
    new(
      FlexibleTimeWindow,
      ScheduleExpression,
      Target,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(FlexibleTimeWindow) : 'FlexibleTimeWindow must be a object',
        FlexibleTimeWindow: FlexibleTimeWindow,
        assert std.isString(ScheduleExpression) : 'ScheduleExpression must be a string',
        ScheduleExpression: ScheduleExpression,
        assert std.isObject(Target) : 'Target must be a object',
        Target: Target,
      },
      DependsOn:: [],
      Type: 'AWS::Scheduler::Schedule',
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
    '#withEndDate': d.fn('`withEndDate` EndDate ', [d.arg('EndDate', d.T.string)]),
    withEndDate(EndDate): {
      assert std.isString(EndDate) : 'EndDate must be a string',
      Properties+::: { EndDate: EndDate },
    },
    '#withGroupName': d.fn('`withGroupName` GroupName ', [d.arg('GroupName', d.T.string)]),
    withGroupName(GroupName): {
      assert std.isString(GroupName) : 'GroupName must be a string',
      Properties+::: { GroupName: GroupName },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withScheduleExpressionTimezone': d.fn('`withScheduleExpressionTimezone` ScheduleExpressionTimezone ', [d.arg('ScheduleExpressionTimezone', d.T.string)]),
    withScheduleExpressionTimezone(ScheduleExpressionTimezone): {
      assert std.isString(ScheduleExpressionTimezone) : 'ScheduleExpressionTimezone must be a string',
      Properties+::: { ScheduleExpressionTimezone: ScheduleExpressionTimezone },
    },
    '#withStartDate': d.fn('`withStartDate` StartDate ', [d.arg('StartDate', d.T.string)]),
    withStartDate(StartDate): {
      assert std.isString(StartDate) : 'StartDate must be a string',
      Properties+::: { StartDate: StartDate },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
  },
  ScheduleGroup: {
    '#': d.pkg(
      name='ScheduleGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Scheduler.libsonnet',
      help='Definition of AWS::Scheduler::ScheduleGroup Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Scheduler::ScheduleGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Scheduler::ScheduleGroup',
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
    '#withLastModificationDate': d.fn('`withLastModificationDate` LastModificationDate ', [d.arg('LastModificationDate', d.T.string)]),
    withLastModificationDate(LastModificationDate): {
      assert std.isString(LastModificationDate) : 'LastModificationDate must be a string',
      Properties+::: { LastModificationDate: LastModificationDate },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
