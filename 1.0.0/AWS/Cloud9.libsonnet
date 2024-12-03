local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  EnvironmentEC2: {
    '#': d.pkg(
      name='EnvironmentEC2',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cloud9.libsonnet',
      help='Resource Type definition for AWS::Cloud9::EnvironmentEC2',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cloud9::EnvironmentEC2 Resource
        * ImageId 
        * InstanceType 
      |||,
      args=[
        d.arg('ImageId', 'd.T.string'),
        d.arg('InstanceType', 'd.T.string'),
      ]
    ),
    new(
      ImageId,
      InstanceType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ImageId) : 'ImageId must be a string',
        ImageId: ImageId,
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
      },
      DependsOn:: [],
      Type: 'AWS::Cloud9::EnvironmentEC2',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRepositories': d.fn('`withRepositories` Repositories ', [d.arg('Repositories', d.T.array)]),
    withRepositories(Repositories): {
      assert std.isArray(Repositories) : 'Repositories must be a array',
      Properties+::: { Repositories: Repositories },
    },
    '#withOwnerArn': d.fn('`withOwnerArn` OwnerArn ', [d.arg('OwnerArn', d.T.string)]),
    withOwnerArn(OwnerArn): {
      assert std.isString(OwnerArn) : 'OwnerArn must be a string',
      Properties+::: { OwnerArn: OwnerArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withConnectionType': d.fn('`withConnectionType` ConnectionType ', [d.arg('ConnectionType', d.T.string)]),
    withConnectionType(ConnectionType): {
      assert std.isString(ConnectionType) : 'ConnectionType must be a string',
      Properties+::: { ConnectionType: ConnectionType },
    },
    '#withAutomaticStopTimeMinutes': d.fn('`withAutomaticStopTimeMinutes` AutomaticStopTimeMinutes ', [d.arg('AutomaticStopTimeMinutes', d.T.integer)]),
    withAutomaticStopTimeMinutes(AutomaticStopTimeMinutes): {
      assert std.isNumber(AutomaticStopTimeMinutes) : 'AutomaticStopTimeMinutes must be a integer',
      Properties+::: { AutomaticStopTimeMinutes: AutomaticStopTimeMinutes },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
}
