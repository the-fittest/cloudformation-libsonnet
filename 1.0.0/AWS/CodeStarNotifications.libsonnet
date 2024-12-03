local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  NotificationRule: {
    '#': d.pkg(
      name='NotificationRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeStarNotifications.libsonnet',
      help='Resource Type definition for AWS::CodeStarNotifications::NotificationRule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeStarNotifications::NotificationRule Resource
        * EventTypeIds 
        * Resource 
        * DetailType 
        * Targets 
        * Name 
      |||,
      args=[
        d.arg('EventTypeIds', 'd.T.array'),
        d.arg('Resource', 'd.T.string'),
        d.arg('DetailType', 'd.T.string'),
        d.arg('Targets', 'd.T.array'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      EventTypeIds,
      Resource,
      DetailType,
      Targets,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(EventTypeIds) : 'EventTypeIds must be a array',
        EventTypeIds: EventTypeIds,
        assert std.isString(Resource) : 'Resource must be a string',
        Resource: Resource,
        assert std.isString(DetailType) : 'DetailType must be a string',
        assert DetailType == 'BASIC' || DetailType == 'FULL' : "DetailType must be either 'BASIC' or 'FULL'",
        DetailType: DetailType,
        assert std.isArray(Targets) : 'Targets must be a array',
        Targets: Targets,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::CodeStarNotifications::NotificationRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEventTypeId': d.fn('`withEventTypeId` EventTypeId ', [d.arg('EventTypeId', d.T.string)]),
    withEventTypeId(EventTypeId): {
      assert std.isString(EventTypeId) : 'EventTypeId must be a string',
      Properties+::: { EventTypeId: EventTypeId },
    },
    '#withCreatedBy': d.fn('`withCreatedBy` CreatedBy ', [d.arg('CreatedBy', d.T.string)]),
    withCreatedBy(CreatedBy): {
      assert std.isString(CreatedBy) : 'CreatedBy must be a string',
      Properties+::: { CreatedBy: CreatedBy },
    },
    '#withTargetAddress': d.fn('`withTargetAddress` TargetAddress ', [d.arg('TargetAddress', d.T.string)]),
    withTargetAddress(TargetAddress): {
      assert std.isString(TargetAddress) : 'TargetAddress must be a string',
      Properties+::: { TargetAddress: TargetAddress },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ENABLED' || Status == 'DISABLED' : "Status must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
}
