local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Member: {
    '#': d.pkg(
      name='Member',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ManagedBlockchain.libsonnet',
      help='Resource Type definition for AWS::ManagedBlockchain::Member',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ManagedBlockchain::Member Resource
        * MemberConfiguration 
      |||,
      args=[
        d.arg('MemberConfiguration', 'd.T.object'),
      ]
    ),
    new(
      MemberConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(MemberConfiguration) : 'MemberConfiguration must be a object',
        MemberConfiguration: MemberConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::ManagedBlockchain::Member',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMemberId': d.fn('`withMemberId` MemberId ', [d.arg('MemberId', d.T.string)]),
    withMemberId(MemberId): {
      assert std.isString(MemberId) : 'MemberId must be a string',
      Properties+::: { MemberId: MemberId },
    },
    '#withNetworkConfiguration': d.fn('`withNetworkConfiguration` NetworkConfiguration ', [d.arg('NetworkConfiguration', d.T.object)]),
    withNetworkConfiguration(NetworkConfiguration): {
      assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
      Properties+::: { NetworkConfiguration: NetworkConfiguration },
    },
    '#withNetworkId': d.fn('`withNetworkId` NetworkId ', [d.arg('NetworkId', d.T.string)]),
    withNetworkId(NetworkId): {
      assert std.isString(NetworkId) : 'NetworkId must be a string',
      Properties+::: { NetworkId: NetworkId },
    },
    '#withInvitationId': d.fn('`withInvitationId` InvitationId ', [d.arg('InvitationId', d.T.string)]),
    withInvitationId(InvitationId): {
      assert std.isString(InvitationId) : 'InvitationId must be a string',
      Properties+::: { InvitationId: InvitationId },
    },
  },
  Node: {
    '#': d.pkg(
      name='Node',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ManagedBlockchain.libsonnet',
      help='Resource Type definition for AWS::ManagedBlockchain::Node',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ManagedBlockchain::Node Resource
        * MemberId 
        * NetworkId 
        * NodeConfiguration 
      |||,
      args=[
        d.arg('MemberId', 'd.T.string'),
        d.arg('NetworkId', 'd.T.string'),
        d.arg('NodeConfiguration', 'd.T.object'),
      ]
    ),
    new(
      MemberId,
      NetworkId,
      NodeConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MemberId) : 'MemberId must be a string',
        MemberId: MemberId,
        assert std.isString(NetworkId) : 'NetworkId must be a string',
        NetworkId: NetworkId,
        assert std.isObject(NodeConfiguration) : 'NodeConfiguration must be a object',
        NodeConfiguration: NodeConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::ManagedBlockchain::Node',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withNodeId': d.fn('`withNodeId` NodeId ', [d.arg('NodeId', d.T.string)]),
    withNodeId(NodeId): {
      assert std.isString(NodeId) : 'NodeId must be a string',
      Properties+::: { NodeId: NodeId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
}
