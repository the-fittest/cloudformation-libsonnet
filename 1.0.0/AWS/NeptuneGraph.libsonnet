local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Graph: {
    '#': d.pkg(
      name='Graph',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NeptuneGraph.libsonnet',
      help='The AWS::NeptuneGraph::Graph resource creates an Amazon NeptuneGraph Graph.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NeptuneGraph::Graph Resource
        * ProvisionedMemory Memory for the Graph.
      |||,
      args=[
        d.arg('ProvisionedMemory', 'd.T.integer'),
      ]
    ),
    new(
      ProvisionedMemory,
    ): {
      local base = self,
      Properties: {
        assert std.isNumber(ProvisionedMemory) : 'ProvisionedMemory must be a integer',
        ProvisionedMemory: ProvisionedMemory,
      },
      DependsOn:: [],
      Type: 'AWS::NeptuneGraph::Graph',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeletionProtection': d.fn('`withDeletionProtection` DeletionProtection ', [d.arg('DeletionProtection', d.T.boolean)]),
    withDeletionProtection(DeletionProtection): {
      assert std.isBoolean(DeletionProtection) : 'DeletionProtection must be a boolean',
      Properties+::: { DeletionProtection: DeletionProtection },
    },
    '#withGraphName': d.fn('`withGraphName` GraphName ', [d.arg('GraphName', d.T.string)]),
    withGraphName(GraphName): {
      assert std.isString(GraphName) : 'GraphName must be a string',
      Properties+::: { GraphName: GraphName },
    },
    '#withPublicConnectivity': d.fn('`withPublicConnectivity` PublicConnectivity ', [d.arg('PublicConnectivity', d.T.boolean)]),
    withPublicConnectivity(PublicConnectivity): {
      assert std.isBoolean(PublicConnectivity) : 'PublicConnectivity must be a boolean',
      Properties+::: { PublicConnectivity: PublicConnectivity },
    },
    '#withReplicaCount': d.fn('`withReplicaCount` ReplicaCount ', [d.arg('ReplicaCount', d.T.integer)]),
    withReplicaCount(ReplicaCount): {
      assert std.isNumber(ReplicaCount) : 'ReplicaCount must be a integer',
      Properties+::: { ReplicaCount: ReplicaCount },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVectorSearchConfiguration': d.fn('`withVectorSearchConfiguration` VectorSearchConfiguration ', [d.arg('VectorSearchConfiguration', d.T.object)]),
    withVectorSearchConfiguration(VectorSearchConfiguration): {
      assert std.isObject(VectorSearchConfiguration) : 'VectorSearchConfiguration must be a object',
      Properties+::: { VectorSearchConfiguration: VectorSearchConfiguration },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withGraphArn': d.fn('`withGraphArn` GraphArn ', [d.arg('GraphArn', d.T.string)]),
    withGraphArn(GraphArn): {
      assert std.isString(GraphArn) : 'GraphArn must be a string',
      Properties+::: { GraphArn: GraphArn },
    },
    '#withGraphId': d.fn('`withGraphId` GraphId ', [d.arg('GraphId', d.T.string)]),
    withGraphId(GraphId): {
      assert std.isString(GraphId) : 'GraphId must be a string',
      Properties+::: { GraphId: GraphId },
    },
  },
  PrivateGraphEndpoint: {
    '#': d.pkg(
      name='PrivateGraphEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NeptuneGraph.libsonnet',
      help='The AWS::NeptuneGraph::PrivateGraphEndpoint resource creates an Amazon NeptuneGraph PrivateGraphEndpoint.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NeptuneGraph::PrivateGraphEndpoint Resource
        * GraphIdentifier The auto-generated Graph Id assigned by the service.
        * VpcId The VPC where you want the private graph endpoint to be created, ie, the graph will be reachable from within the VPC.
      |||,
      args=[
        d.arg('GraphIdentifier', 'd.T.string'),
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      GraphIdentifier,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GraphIdentifier) : 'GraphIdentifier must be a string',
        GraphIdentifier: GraphIdentifier,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::NeptuneGraph::PrivateGraphEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withSubnetIds': d.fn('`withSubnetIds` SubnetIds ', [d.arg('SubnetIds', d.T.array)]),
    withSubnetIds(SubnetIds): {
      assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
      Properties+::: { SubnetIds: SubnetIds },
    },
    '#withPrivateGraphEndpointIdentifier': d.fn('`withPrivateGraphEndpointIdentifier` PrivateGraphEndpointIdentifier ', [d.arg('PrivateGraphEndpointIdentifier', d.T.string)]),
    withPrivateGraphEndpointIdentifier(PrivateGraphEndpointIdentifier): {
      assert std.isString(PrivateGraphEndpointIdentifier) : 'PrivateGraphEndpointIdentifier must be a string',
      Properties+::: { PrivateGraphEndpointIdentifier: PrivateGraphEndpointIdentifier },
    },
    '#withVpcEndpointId': d.fn('`withVpcEndpointId` VpcEndpointId ', [d.arg('VpcEndpointId', d.T.string)]),
    withVpcEndpointId(VpcEndpointId): {
      assert std.isString(VpcEndpointId) : 'VpcEndpointId must be a string',
      Properties+::: { VpcEndpointId: VpcEndpointId },
    },
  },
}
