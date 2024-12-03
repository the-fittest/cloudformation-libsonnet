local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  JobTemplate: {
    '#': d.pkg(
      name='JobTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConvert.libsonnet',
      help='Resource Type definition for AWS::MediaConvert::JobTemplate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConvert::JobTemplate Resource
        * SettingsJson 
      |||,
      args=[
        d.arg('SettingsJson', 'd.T.object'),
      ]
    ),
    new(
      SettingsJson,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(SettingsJson) : 'SettingsJson must be a object',
        SettingsJson: SettingsJson,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConvert::JobTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCategory': d.fn('`withCategory` Category ', [d.arg('Category', d.T.string)]),
    withCategory(Category): {
      assert std.isString(Category) : 'Category must be a string',
      Properties+::: { Category: Category },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAccelerationSettings': d.fn('`withAccelerationSettings` AccelerationSettings ', [d.arg('AccelerationSettings', d.T.object)]),
    withAccelerationSettings(AccelerationSettings): {
      assert std.isObject(AccelerationSettings) : 'AccelerationSettings must be a object',
      Properties+::: { AccelerationSettings: AccelerationSettings },
    },
    '#withPriority': d.fn('`withPriority` Priority ', [d.arg('Priority', d.T.integer)]),
    withPriority(Priority): {
      assert std.isNumber(Priority) : 'Priority must be a integer',
      Properties+::: { Priority: Priority },
    },
    '#withStatusUpdateInterval': d.fn('`withStatusUpdateInterval` StatusUpdateInterval ', [d.arg('StatusUpdateInterval', d.T.string)]),
    withStatusUpdateInterval(StatusUpdateInterval): {
      assert std.isString(StatusUpdateInterval) : 'StatusUpdateInterval must be a string',
      Properties+::: { StatusUpdateInterval: StatusUpdateInterval },
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
    '#withQueue': d.fn('`withQueue` Queue ', [d.arg('Queue', d.T.string)]),
    withQueue(Queue): {
      assert std.isString(Queue) : 'Queue must be a string',
      Properties+::: { Queue: Queue },
    },
    '#withHopDestinations': d.fn('`withHopDestinations` HopDestinations ', [d.arg('HopDestinations', d.T.array)]),
    withHopDestinations(HopDestinations): {
      assert std.isArray(HopDestinations) : 'HopDestinations must be a array',
      Properties+::: { HopDestinations: HopDestinations },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  Preset: {
    '#': d.pkg(
      name='Preset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConvert.libsonnet',
      help='Resource Type definition for AWS::MediaConvert::Preset',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConvert::Preset Resource
        * SettingsJson 
      |||,
      args=[
        d.arg('SettingsJson', 'd.T.object'),
      ]
    ),
    new(
      SettingsJson,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(SettingsJson) : 'SettingsJson must be a object',
        SettingsJson: SettingsJson,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConvert::Preset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCategory': d.fn('`withCategory` Category ', [d.arg('Category', d.T.string)]),
    withCategory(Category): {
      assert std.isString(Category) : 'Category must be a string',
      Properties+::: { Category: Category },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  Queue: {
    '#': d.pkg(
      name='Queue',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConvert.libsonnet',
      help='Resource Type definition for AWS::MediaConvert::Queue',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConvert::Queue Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::MediaConvert::Queue',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPricingPlan': d.fn('`withPricingPlan` PricingPlan ', [d.arg('PricingPlan', d.T.string)]),
    withPricingPlan(PricingPlan): {
      assert std.isString(PricingPlan) : 'PricingPlan must be a string',
      Properties+::: { PricingPlan: PricingPlan },
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
}
