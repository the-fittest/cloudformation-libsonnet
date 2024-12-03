local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Rule: {
    '#': d.pkg(
      name='Rule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Rbin.libsonnet',
      help='Resource Type definition for AWS::Rbin::Rule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Rbin::Rule Resource
        * RetentionPeriod Information about the retention period for which the retention rule is to retain resources.
        * ResourceType The resource type retained by the retention rule.
      |||,
      args=[
        d.arg('RetentionPeriod', 'd.T.object'),
        d.arg('ResourceType', 'd.T.string'),
      ]
    ),
    new(
      RetentionPeriod,
      ResourceType,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(RetentionPeriod) : 'RetentionPeriod must be a object',
        RetentionPeriod: RetentionPeriod,
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        assert ResourceType == 'EBS_SNAPSHOT' || ResourceType == 'EC2_IMAGE' : "ResourceType must be either 'EBS_SNAPSHOT' or 'EC2_IMAGE'",
        ResourceType: ResourceType,
      },
      DependsOn:: [],
      Type: 'AWS::Rbin::Rule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withIdentifier': d.fn('`withIdentifier` Identifier ', [d.arg('Identifier', d.T.string)]),
    withIdentifier(Identifier): {
      assert std.isString(Identifier) : 'Identifier must be a string',
      Properties+::: { Identifier: Identifier },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.array)]),
    withResourceTags(ResourceTags): {
      assert std.isArray(ResourceTags) : 'ResourceTags must be a array',
      Properties+::: { ResourceTags: ResourceTags },
    },
    '#withExcludeResourceTags': d.fn('`withExcludeResourceTags` ExcludeResourceTags ', [d.arg('ExcludeResourceTags', d.T.array)]),
    withExcludeResourceTags(ExcludeResourceTags): {
      assert std.isArray(ExcludeResourceTags) : 'ExcludeResourceTags must be a array',
      Properties+::: { ExcludeResourceTags: ExcludeResourceTags },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withLockConfiguration': d.fn('`withLockConfiguration` LockConfiguration ', [d.arg('LockConfiguration', d.T.object)]),
    withLockConfiguration(LockConfiguration): {
      assert std.isObject(LockConfiguration) : 'LockConfiguration must be a object',
      Properties+::: { LockConfiguration: LockConfiguration },
    },
    '#withLockState': d.fn('`withLockState` LockState ', [d.arg('LockState', d.T.string)]),
    withLockState(LockState): {
      assert std.isString(LockState) : 'LockState must be a string',
      Properties+::: { LockState: LockState },
    },
  },
}
