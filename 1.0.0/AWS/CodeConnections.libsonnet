local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Connection: {
    '#': d.pkg(
      name='Connection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeConnections.libsonnet',
      help='Schema for AWS::CodeConnections::Connection resource which can be used to connect external source providers with other AWS services (i.e. AWS CodePipeline)',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeConnections::Connection Resource
        * ConnectionName The name of the connection. Connection names must be unique in an AWS user account.
      |||,
      args=[
        d.arg('ConnectionName', 'd.T.string'),
      ]
    ),
    new(
      ConnectionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectionName) : 'ConnectionName must be a string',
        ConnectionName: ConnectionName,
      },
      DependsOn:: [],
      Type: 'AWS::CodeConnections::Connection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectionArn': d.fn('`withConnectionArn` ConnectionArn ', [d.arg('ConnectionArn', d.T.string)]),
    withConnectionArn(ConnectionArn): {
      assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
      Properties+::: { ConnectionArn: ConnectionArn },
    },
    '#withConnectionStatus': d.fn('`withConnectionStatus` ConnectionStatus ', [d.arg('ConnectionStatus', d.T.string)]),
    withConnectionStatus(ConnectionStatus): {
      assert std.isString(ConnectionStatus) : 'ConnectionStatus must be a string',
      Properties+::: { ConnectionStatus: ConnectionStatus },
    },
    '#withOwnerAccountId': d.fn('`withOwnerAccountId` OwnerAccountId ', [d.arg('OwnerAccountId', d.T.string)]),
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: { OwnerAccountId: OwnerAccountId },
    },
    '#withProviderType': d.fn('`withProviderType` ProviderType ', [d.arg('ProviderType', d.T.string)]),
    withProviderType(ProviderType): {
      assert std.isString(ProviderType) : 'ProviderType must be a string',
      Properties+::: { ProviderType: ProviderType },
    },
    '#withHostArn': d.fn('`withHostArn` HostArn ', [d.arg('HostArn', d.T.string)]),
    withHostArn(HostArn): {
      assert std.isString(HostArn) : 'HostArn must be a string',
      Properties+::: { HostArn: HostArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
