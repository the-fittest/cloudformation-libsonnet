local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Keyspace: {
    '#': d.pkg(
      name='Keyspace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cassandra.libsonnet',
      help='Resource schema for AWS::Cassandra::Keyspace',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cassandra::Keyspace Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::Cassandra::Keyspace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withKeyspaceName': d.fn('`withKeyspaceName` KeyspaceName ', [d.arg('KeyspaceName', d.T.string)]),
    withKeyspaceName(KeyspaceName): {
      assert std.isString(KeyspaceName) : 'KeyspaceName must be a string',
      Properties+::: { KeyspaceName: KeyspaceName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withReplicationSpecification': d.fn('`withReplicationSpecification` ReplicationSpecification ', [d.arg('ReplicationSpecification', d.T.object)]),
    withReplicationSpecification(ReplicationSpecification): {
      assert std.isObject(ReplicationSpecification) : 'ReplicationSpecification must be a object',
      Properties+::: { ReplicationSpecification: ReplicationSpecification },
    },
  },
  Table: {
    '#': d.pkg(
      name='Table',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cassandra.libsonnet',
      help='Resource schema for AWS::Cassandra::Table',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cassandra::Table Resource
        * KeyspaceName Name for Cassandra keyspace
        * PartitionKeyColumns Partition key columns of the table
      |||,
      args=[
        d.arg('KeyspaceName', 'd.T.string'),
        d.arg('PartitionKeyColumns', 'd.T.array'),
      ]
    ),
    new(
      KeyspaceName,
      PartitionKeyColumns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(KeyspaceName) : 'KeyspaceName must be a string',
        KeyspaceName: KeyspaceName,
        assert std.isArray(PartitionKeyColumns) : 'PartitionKeyColumns must be a array',
        PartitionKeyColumns: PartitionKeyColumns,
      },
      DependsOn:: [],
      Type: 'AWS::Cassandra::Table',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTableName': d.fn('`withTableName` TableName ', [d.arg('TableName', d.T.string)]),
    withTableName(TableName): {
      assert std.isString(TableName) : 'TableName must be a string',
      Properties+::: { TableName: TableName },
    },
    '#withRegularColumns': d.fn('`withRegularColumns` RegularColumns ', [d.arg('RegularColumns', d.T.array)]),
    withRegularColumns(RegularColumns): {
      assert std.isArray(RegularColumns) : 'RegularColumns must be a array',
      Properties+::: { RegularColumns: RegularColumns },
    },
    '#withClusteringKeyColumns': d.fn('`withClusteringKeyColumns` ClusteringKeyColumns ', [d.arg('ClusteringKeyColumns', d.T.array)]),
    withClusteringKeyColumns(ClusteringKeyColumns): {
      assert std.isArray(ClusteringKeyColumns) : 'ClusteringKeyColumns must be a array',
      Properties+::: { ClusteringKeyColumns: ClusteringKeyColumns },
    },
    '#withBillingMode': d.fn('`withBillingMode` BillingMode ', [d.arg('BillingMode', d.T.object)]),
    withBillingMode(BillingMode): {
      assert std.isObject(BillingMode) : 'BillingMode must be a object',
      Properties+::: { BillingMode: BillingMode },
    },
    '#withPointInTimeRecoveryEnabled': d.fn('`withPointInTimeRecoveryEnabled` PointInTimeRecoveryEnabled ', [d.arg('PointInTimeRecoveryEnabled', d.T.boolean)]),
    withPointInTimeRecoveryEnabled(PointInTimeRecoveryEnabled): {
      assert std.isBoolean(PointInTimeRecoveryEnabled) : 'PointInTimeRecoveryEnabled must be a boolean',
      Properties+::: { PointInTimeRecoveryEnabled: PointInTimeRecoveryEnabled },
    },
    '#withClientSideTimestampsEnabled': d.fn('`withClientSideTimestampsEnabled` ClientSideTimestampsEnabled ', [d.arg('ClientSideTimestampsEnabled', d.T.boolean)]),
    withClientSideTimestampsEnabled(ClientSideTimestampsEnabled): {
      assert std.isBoolean(ClientSideTimestampsEnabled) : 'ClientSideTimestampsEnabled must be a boolean',
      Properties+::: { ClientSideTimestampsEnabled: ClientSideTimestampsEnabled },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDefaultTimeToLive': d.fn('`withDefaultTimeToLive` DefaultTimeToLive ', [d.arg('DefaultTimeToLive', d.T.integer)]),
    withDefaultTimeToLive(DefaultTimeToLive): {
      assert std.isNumber(DefaultTimeToLive) : 'DefaultTimeToLive must be a integer',
      Properties+::: { DefaultTimeToLive: DefaultTimeToLive },
    },
    '#withEncryptionSpecification': d.fn('`withEncryptionSpecification` EncryptionSpecification ', [d.arg('EncryptionSpecification', d.T.object)]),
    withEncryptionSpecification(EncryptionSpecification): {
      assert std.isObject(EncryptionSpecification) : 'EncryptionSpecification must be a object',
      Properties+::: { EncryptionSpecification: EncryptionSpecification },
    },
    '#withAutoScalingSpecifications': d.fn('`withAutoScalingSpecifications` AutoScalingSpecifications ', [d.arg('AutoScalingSpecifications', d.T.object)]),
    withAutoScalingSpecifications(AutoScalingSpecifications): {
      assert std.isObject(AutoScalingSpecifications) : 'AutoScalingSpecifications must be a object',
      Properties+::: { AutoScalingSpecifications: AutoScalingSpecifications },
    },
    '#withReplicaSpecifications': d.fn('`withReplicaSpecifications` ReplicaSpecifications ', [d.arg('ReplicaSpecifications', d.T.array)]),
    withReplicaSpecifications(ReplicaSpecifications): {
      assert std.isArray(ReplicaSpecifications) : 'ReplicaSpecifications must be a array',
      Properties+::: { ReplicaSpecifications: ReplicaSpecifications },
    },
  },
}
