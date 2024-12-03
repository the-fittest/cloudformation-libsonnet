local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  BatchScramSecret: {
    '#': d.pkg(
      name='BatchScramSecret',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MSK.libsonnet',
      help='Resource Type definition for AWS::MSK::BatchScramSecret',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MSK::BatchScramSecret Resource
        * ClusterArn 
      |||,
      args=[
        d.arg('ClusterArn', 'd.T.string'),
      ]
    ),
    new(
      ClusterArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterArn) : 'ClusterArn must be a string',
        ClusterArn: ClusterArn,
      },
      DependsOn:: [],
      Type: 'AWS::MSK::BatchScramSecret',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSecretArnList': d.fn('`withSecretArnList` SecretArnList ', [d.arg('SecretArnList', d.T.array)]),
    withSecretArnList(SecretArnList): {
      assert std.isArray(SecretArnList) : 'SecretArnList must be a array',
      Properties+::: { SecretArnList: SecretArnList },
    },
  },
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MSK.libsonnet',
      help='Resource Type definition for AWS::MSK::Cluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MSK::Cluster Resource
        * BrokerNodeGroupInfo 
        * KafkaVersion 
        * NumberOfBrokerNodes 
        * ClusterName 
      |||,
      args=[
        d.arg('BrokerNodeGroupInfo', 'd.T.object'),
        d.arg('KafkaVersion', 'd.T.string'),
        d.arg('NumberOfBrokerNodes', 'd.T.integer'),
        d.arg('ClusterName', 'd.T.string'),
      ]
    ),
    new(
      BrokerNodeGroupInfo,
      KafkaVersion,
      NumberOfBrokerNodes,
      ClusterName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(BrokerNodeGroupInfo) : 'BrokerNodeGroupInfo must be a object',
        BrokerNodeGroupInfo: BrokerNodeGroupInfo,
        assert std.isString(KafkaVersion) : 'KafkaVersion must be a string',
        KafkaVersion: KafkaVersion,
        assert std.isNumber(NumberOfBrokerNodes) : 'NumberOfBrokerNodes must be a integer',
        NumberOfBrokerNodes: NumberOfBrokerNodes,
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
      },
      DependsOn:: [],
      Type: 'AWS::MSK::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEnhancedMonitoring': d.fn('`withEnhancedMonitoring` EnhancedMonitoring ', [d.arg('EnhancedMonitoring', d.T.string)]),
    withEnhancedMonitoring(EnhancedMonitoring): {
      assert std.isString(EnhancedMonitoring) : 'EnhancedMonitoring must be a string',
      assert EnhancedMonitoring == 'DEFAULT' || EnhancedMonitoring == 'PER_BROKER' || EnhancedMonitoring == 'PER_TOPIC_PER_BROKER' || EnhancedMonitoring == 'PER_TOPIC_PER_PARTITION' : "EnhancedMonitoring must be either 'DEFAULT' or 'PER_BROKER' or 'PER_TOPIC_PER_BROKER' or 'PER_TOPIC_PER_PARTITION'",
      Properties+::: { EnhancedMonitoring: EnhancedMonitoring },
    },
    '#withEncryptionInfo': d.fn('`withEncryptionInfo` EncryptionInfo ', [d.arg('EncryptionInfo', d.T.object)]),
    withEncryptionInfo(EncryptionInfo): {
      assert std.isObject(EncryptionInfo) : 'EncryptionInfo must be a object',
      Properties+::: { EncryptionInfo: EncryptionInfo },
    },
    '#withOpenMonitoring': d.fn('`withOpenMonitoring` OpenMonitoring ', [d.arg('OpenMonitoring', d.T.object)]),
    withOpenMonitoring(OpenMonitoring): {
      assert std.isObject(OpenMonitoring) : 'OpenMonitoring must be a object',
      Properties+::: { OpenMonitoring: OpenMonitoring },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCurrentVersion': d.fn('`withCurrentVersion` CurrentVersion ', [d.arg('CurrentVersion', d.T.string)]),
    withCurrentVersion(CurrentVersion): {
      assert std.isString(CurrentVersion) : 'CurrentVersion must be a string',
      Properties+::: { CurrentVersion: CurrentVersion },
    },
    '#withClientAuthentication': d.fn('`withClientAuthentication` ClientAuthentication ', [d.arg('ClientAuthentication', d.T.object)]),
    withClientAuthentication(ClientAuthentication): {
      assert std.isObject(ClientAuthentication) : 'ClientAuthentication must be a object',
      Properties+::: { ClientAuthentication: ClientAuthentication },
    },
    '#withLoggingInfo': d.fn('`withLoggingInfo` LoggingInfo ', [d.arg('LoggingInfo', d.T.object)]),
    withLoggingInfo(LoggingInfo): {
      assert std.isObject(LoggingInfo) : 'LoggingInfo must be a object',
      Properties+::: { LoggingInfo: LoggingInfo },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withConfigurationInfo': d.fn('`withConfigurationInfo` ConfigurationInfo ', [d.arg('ConfigurationInfo', d.T.object)]),
    withConfigurationInfo(ConfigurationInfo): {
      assert std.isObject(ConfigurationInfo) : 'ConfigurationInfo must be a object',
      Properties+::: { ConfigurationInfo: ConfigurationInfo },
    },
    '#withStorageMode': d.fn('`withStorageMode` StorageMode ', [d.arg('StorageMode', d.T.string)]),
    withStorageMode(StorageMode): {
      assert std.isString(StorageMode) : 'StorageMode must be a string',
      assert StorageMode == 'LOCAL' || StorageMode == 'TIERED' : "StorageMode must be either 'LOCAL' or 'TIERED'",
      Properties+::: { StorageMode: StorageMode },
    },
  },
  ClusterPolicy: {
    '#': d.pkg(
      name='ClusterPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MSK.libsonnet',
      help='Resource Type definition for AWS::MSK::ClusterPolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MSK::ClusterPolicy Resource
        * Policy A policy document containing permissions to add to the specified cluster.
        * ClusterArn The arn of the cluster for the resource policy.
      |||,
      args=[
        d.arg('Policy', 'd.T.object'),
        d.arg('ClusterArn', 'd.T.string'),
      ]
    ),
    new(
      Policy,
      ClusterArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Policy) : 'Policy must be a object',
        Policy: Policy,
        assert std.isString(ClusterArn) : 'ClusterArn must be a string',
        ClusterArn: ClusterArn,
      },
      DependsOn:: [],
      Type: 'AWS::MSK::ClusterPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCurrentVersion': d.fn('`withCurrentVersion` CurrentVersion ', [d.arg('CurrentVersion', d.T.string)]),
    withCurrentVersion(CurrentVersion): {
      assert std.isString(CurrentVersion) : 'CurrentVersion must be a string',
      Properties+::: { CurrentVersion: CurrentVersion },
    },
  },
  Configuration: {
    '#': d.pkg(
      name='Configuration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MSK.libsonnet',
      help='Resource Type definition for AWS::MSK::Configuration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MSK::Configuration Resource
        * ServerProperties 
        * Name 
      |||,
      args=[
        d.arg('ServerProperties', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ServerProperties,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServerProperties) : 'ServerProperties must be a string',
        ServerProperties: ServerProperties,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::MSK::Configuration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKafkaVersionsList': d.fn('`withKafkaVersionsList` KafkaVersionsList ', [d.arg('KafkaVersionsList', d.T.array)]),
    withKafkaVersionsList(KafkaVersionsList): {
      assert std.isArray(KafkaVersionsList) : 'KafkaVersionsList must be a array',
      Properties+::: { KafkaVersionsList: KafkaVersionsList },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withLatestRevision': d.fn('`withLatestRevision` LatestRevision ', [d.arg('LatestRevision', d.T.object)]),
    withLatestRevision(LatestRevision): {
      assert std.isObject(LatestRevision) : 'LatestRevision must be a object',
      Properties+::: { LatestRevision: LatestRevision },
    },
  },
  Replicator: {
    '#': d.pkg(
      name='Replicator',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MSK.libsonnet',
      help='Resource Type definition for AWS::MSK::Replicator',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MSK::Replicator Resource
        * ReplicatorName The name of the replicator.
        * ReplicationInfoList A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
        * KafkaClusters Specifies a list of Kafka clusters which are targets of the replicator.
        * ServiceExecutionRoleArn The Amazon Resource Name (ARN) of the IAM role used by the replicator to access external resources.
      |||,
      args=[
        d.arg('ReplicatorName', 'd.T.string'),
        d.arg('ReplicationInfoList', 'd.T.array'),
        d.arg('KafkaClusters', 'd.T.array'),
        d.arg('ServiceExecutionRoleArn', 'd.T.string'),
      ]
    ),
    new(
      ReplicatorName,
      ReplicationInfoList,
      KafkaClusters,
      ServiceExecutionRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ReplicatorName) : 'ReplicatorName must be a string',
        ReplicatorName: ReplicatorName,
        assert std.isArray(ReplicationInfoList) : 'ReplicationInfoList must be a array',
        ReplicationInfoList: ReplicationInfoList,
        assert std.isArray(KafkaClusters) : 'KafkaClusters must be a array',
        KafkaClusters: KafkaClusters,
        assert std.isString(ServiceExecutionRoleArn) : 'ServiceExecutionRoleArn must be a string',
        ServiceExecutionRoleArn: ServiceExecutionRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::MSK::Replicator',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withReplicatorArn': d.fn('`withReplicatorArn` ReplicatorArn ', [d.arg('ReplicatorArn', d.T.string)]),
    withReplicatorArn(ReplicatorArn): {
      assert std.isString(ReplicatorArn) : 'ReplicatorArn must be a string',
      Properties+::: { ReplicatorArn: ReplicatorArn },
    },
    '#withCurrentVersion': d.fn('`withCurrentVersion` CurrentVersion ', [d.arg('CurrentVersion', d.T.string)]),
    withCurrentVersion(CurrentVersion): {
      assert std.isString(CurrentVersion) : 'CurrentVersion must be a string',
      Properties+::: { CurrentVersion: CurrentVersion },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ServerlessCluster: {
    '#': d.pkg(
      name='ServerlessCluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MSK.libsonnet',
      help='Resource Type definition for AWS::MSK::ServerlessCluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MSK::ServerlessCluster Resource
        * ClusterName 
        * VpcConfigs 
        * ClientAuthentication 
      |||,
      args=[
        d.arg('ClusterName', 'd.T.string'),
        d.arg('VpcConfigs', 'd.T.array'),
        d.arg('ClientAuthentication', 'd.T.object'),
      ]
    ),
    new(
      ClusterName,
      VpcConfigs,
      ClientAuthentication,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
        assert std.isArray(VpcConfigs) : 'VpcConfigs must be a array',
        VpcConfigs: VpcConfigs,
        assert std.isObject(ClientAuthentication) : 'ClientAuthentication must be a object',
        ClientAuthentication: ClientAuthentication,
      },
      DependsOn:: [],
      Type: 'AWS::MSK::ServerlessCluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
  },
  VpcConnection: {
    '#': d.pkg(
      name='VpcConnection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MSK.libsonnet',
      help='Resource Type definition for AWS::MSK::VpcConnection',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MSK::VpcConnection Resource
        * Authentication 
        * ClientSubnets 
        * SecurityGroups 
        * TargetClusterArn The Amazon Resource Name (ARN) of the target cluster
        * VpcId 
      |||,
      args=[
        d.arg('Authentication', 'd.T.string'),
        d.arg('ClientSubnets', 'd.T.array'),
        d.arg('SecurityGroups', 'd.T.array'),
        d.arg('TargetClusterArn', 'd.T.string'),
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      Authentication,
      ClientSubnets,
      SecurityGroups,
      TargetClusterArn,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Authentication) : 'Authentication must be a string',
        Authentication: Authentication,
        assert std.isArray(ClientSubnets) : 'ClientSubnets must be a array',
        ClientSubnets: ClientSubnets,
        assert std.isArray(SecurityGroups) : 'SecurityGroups must be a array',
        SecurityGroups: SecurityGroups,
        assert std.isString(TargetClusterArn) : 'TargetClusterArn must be a string',
        TargetClusterArn: TargetClusterArn,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::MSK::VpcConnection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
  },
}
