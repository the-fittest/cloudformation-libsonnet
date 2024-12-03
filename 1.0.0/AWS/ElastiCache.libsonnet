local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CacheCluster: {
    '#': d.pkg(
      name='CacheCluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='Resource Type definition for AWS::ElastiCache::CacheCluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::CacheCluster Resource
        * CacheNodeType 
        * NumCacheNodes 
        * Engine 
      |||,
      args=[
        d.arg('CacheNodeType', 'd.T.string'),
        d.arg('NumCacheNodes', 'd.T.integer'),
        d.arg('Engine', 'd.T.string'),
      ]
    ),
    new(
      CacheNodeType,
      NumCacheNodes,
      Engine,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CacheNodeType) : 'CacheNodeType must be a string',
        CacheNodeType: CacheNodeType,
        assert std.isNumber(NumCacheNodes) : 'NumCacheNodes must be a integer',
        NumCacheNodes: NumCacheNodes,
        assert std.isString(Engine) : 'Engine must be a string',
        Engine: Engine,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::CacheCluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCacheSecurityGroupNames': d.fn('`withCacheSecurityGroupNames` CacheSecurityGroupNames ', [d.arg('CacheSecurityGroupNames', d.T.array)]),
    withCacheSecurityGroupNames(CacheSecurityGroupNames): {
      assert std.isArray(CacheSecurityGroupNames) : 'CacheSecurityGroupNames must be a array',
      Properties+::: { CacheSecurityGroupNames: CacheSecurityGroupNames },
    },
    '#withSnapshotArns': d.fn('`withSnapshotArns` SnapshotArns ', [d.arg('SnapshotArns', d.T.array)]),
    withSnapshotArns(SnapshotArns): {
      assert std.isArray(SnapshotArns) : 'SnapshotArns must be a array',
      Properties+::: { SnapshotArns: SnapshotArns },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withConfigurationEndpointAddress': d.fn('`withConfigurationEndpointAddress` ConfigurationEndpointAddress ', [d.arg('ConfigurationEndpointAddress', d.T.string)]),
    withConfigurationEndpointAddress(ConfigurationEndpointAddress): {
      assert std.isString(ConfigurationEndpointAddress) : 'ConfigurationEndpointAddress must be a string',
      Properties+::: { ConfigurationEndpointAddress: ConfigurationEndpointAddress },
    },
    '#withNotificationTopicArn': d.fn('`withNotificationTopicArn` NotificationTopicArn ', [d.arg('NotificationTopicArn', d.T.string)]),
    withNotificationTopicArn(NotificationTopicArn): {
      assert std.isString(NotificationTopicArn) : 'NotificationTopicArn must be a string',
      Properties+::: { NotificationTopicArn: NotificationTopicArn },
    },
    '#withSnapshotName': d.fn('`withSnapshotName` SnapshotName ', [d.arg('SnapshotName', d.T.string)]),
    withSnapshotName(SnapshotName): {
      assert std.isString(SnapshotName) : 'SnapshotName must be a string',
      Properties+::: { SnapshotName: SnapshotName },
    },
    '#withTransitEncryptionEnabled': d.fn('`withTransitEncryptionEnabled` TransitEncryptionEnabled ', [d.arg('TransitEncryptionEnabled', d.T.boolean)]),
    withTransitEncryptionEnabled(TransitEncryptionEnabled): {
      assert std.isBoolean(TransitEncryptionEnabled) : 'TransitEncryptionEnabled must be a boolean',
      Properties+::: { TransitEncryptionEnabled: TransitEncryptionEnabled },
    },
    '#withNetworkType': d.fn('`withNetworkType` NetworkType ', [d.arg('NetworkType', d.T.string)]),
    withNetworkType(NetworkType): {
      assert std.isString(NetworkType) : 'NetworkType must be a string',
      Properties+::: { NetworkType: NetworkType },
    },
    '#withPreferredAvailabilityZones': d.fn('`withPreferredAvailabilityZones` PreferredAvailabilityZones ', [d.arg('PreferredAvailabilityZones', d.T.array)]),
    withPreferredAvailabilityZones(PreferredAvailabilityZones): {
      assert std.isArray(PreferredAvailabilityZones) : 'PreferredAvailabilityZones must be a array',
      Properties+::: { PreferredAvailabilityZones: PreferredAvailabilityZones },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
    '#withClusterName': d.fn('`withClusterName` ClusterName ', [d.arg('ClusterName', d.T.string)]),
    withClusterName(ClusterName): {
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      Properties+::: { ClusterName: ClusterName },
    },
    '#withRedisEndpointAddress': d.fn('`withRedisEndpointAddress` RedisEndpointAddress ', [d.arg('RedisEndpointAddress', d.T.string)]),
    withRedisEndpointAddress(RedisEndpointAddress): {
      assert std.isString(RedisEndpointAddress) : 'RedisEndpointAddress must be a string',
      Properties+::: { RedisEndpointAddress: RedisEndpointAddress },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withRedisEndpointPort': d.fn('`withRedisEndpointPort` RedisEndpointPort ', [d.arg('RedisEndpointPort', d.T.string)]),
    withRedisEndpointPort(RedisEndpointPort): {
      assert std.isString(RedisEndpointPort) : 'RedisEndpointPort must be a string',
      Properties+::: { RedisEndpointPort: RedisEndpointPort },
    },
    '#withCacheSubnetGroupName': d.fn('`withCacheSubnetGroupName` CacheSubnetGroupName ', [d.arg('CacheSubnetGroupName', d.T.string)]),
    withCacheSubnetGroupName(CacheSubnetGroupName): {
      assert std.isString(CacheSubnetGroupName) : 'CacheSubnetGroupName must be a string',
      Properties+::: { CacheSubnetGroupName: CacheSubnetGroupName },
    },
    '#withCacheParameterGroupName': d.fn('`withCacheParameterGroupName` CacheParameterGroupName ', [d.arg('CacheParameterGroupName', d.T.string)]),
    withCacheParameterGroupName(CacheParameterGroupName): {
      assert std.isString(CacheParameterGroupName) : 'CacheParameterGroupName must be a string',
      Properties+::: { CacheParameterGroupName: CacheParameterGroupName },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withPreferredAvailabilityZone': d.fn('`withPreferredAvailabilityZone` PreferredAvailabilityZone ', [d.arg('PreferredAvailabilityZone', d.T.string)]),
    withPreferredAvailabilityZone(PreferredAvailabilityZone): {
      assert std.isString(PreferredAvailabilityZone) : 'PreferredAvailabilityZone must be a string',
      Properties+::: { PreferredAvailabilityZone: PreferredAvailabilityZone },
    },
    '#withSnapshotWindow': d.fn('`withSnapshotWindow` SnapshotWindow ', [d.arg('SnapshotWindow', d.T.string)]),
    withSnapshotWindow(SnapshotWindow): {
      assert std.isString(SnapshotWindow) : 'SnapshotWindow must be a string',
      Properties+::: { SnapshotWindow: SnapshotWindow },
    },
    '#withSnapshotRetentionLimit': d.fn('`withSnapshotRetentionLimit` SnapshotRetentionLimit ', [d.arg('SnapshotRetentionLimit', d.T.integer)]),
    withSnapshotRetentionLimit(SnapshotRetentionLimit): {
      assert std.isNumber(SnapshotRetentionLimit) : 'SnapshotRetentionLimit must be a integer',
      Properties+::: { SnapshotRetentionLimit: SnapshotRetentionLimit },
    },
    '#withConfigurationEndpointPort': d.fn('`withConfigurationEndpointPort` ConfigurationEndpointPort ', [d.arg('ConfigurationEndpointPort', d.T.string)]),
    withConfigurationEndpointPort(ConfigurationEndpointPort): {
      assert std.isString(ConfigurationEndpointPort) : 'ConfigurationEndpointPort must be a string',
      Properties+::: { ConfigurationEndpointPort: ConfigurationEndpointPort },
    },
    '#withIpDiscovery': d.fn('`withIpDiscovery` IpDiscovery ', [d.arg('IpDiscovery', d.T.string)]),
    withIpDiscovery(IpDiscovery): {
      assert std.isString(IpDiscovery) : 'IpDiscovery must be a string',
      Properties+::: { IpDiscovery: IpDiscovery },
    },
    '#withLogDeliveryConfigurations': d.fn('`withLogDeliveryConfigurations` LogDeliveryConfigurations ', [d.arg('LogDeliveryConfigurations', d.T.array)]),
    withLogDeliveryConfigurations(LogDeliveryConfigurations): {
      assert std.isArray(LogDeliveryConfigurations) : 'LogDeliveryConfigurations must be a array',
      Properties+::: { LogDeliveryConfigurations: LogDeliveryConfigurations },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAZMode': d.fn('`withAZMode` AZMode ', [d.arg('AZMode', d.T.string)]),
    withAZMode(AZMode): {
      assert std.isString(AZMode) : 'AZMode must be a string',
      Properties+::: { AZMode: AZMode },
    },
  },
  GlobalReplicationGroup: {
    '#': d.pkg(
      name='GlobalReplicationGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='The AWS::ElastiCache::GlobalReplicationGroup resource creates an Amazon ElastiCache Global Replication Group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::GlobalReplicationGroup Resource
        * Members The replication groups that comprise the Global Datastore.
      |||,
      args=[
        d.arg('Members', 'd.T.array'),
      ]
    ),
    new(
      Members,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Members) : 'Members must be a array',
        Members: Members,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::GlobalReplicationGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withGlobalReplicationGroupIdSuffix': d.fn('`withGlobalReplicationGroupIdSuffix` GlobalReplicationGroupIdSuffix ', [d.arg('GlobalReplicationGroupIdSuffix', d.T.string)]),
    withGlobalReplicationGroupIdSuffix(GlobalReplicationGroupIdSuffix): {
      assert std.isString(GlobalReplicationGroupIdSuffix) : 'GlobalReplicationGroupIdSuffix must be a string',
      Properties+::: { GlobalReplicationGroupIdSuffix: GlobalReplicationGroupIdSuffix },
    },
    '#withAutomaticFailoverEnabled': d.fn('`withAutomaticFailoverEnabled` AutomaticFailoverEnabled ', [d.arg('AutomaticFailoverEnabled', d.T.boolean)]),
    withAutomaticFailoverEnabled(AutomaticFailoverEnabled): {
      assert std.isBoolean(AutomaticFailoverEnabled) : 'AutomaticFailoverEnabled must be a boolean',
      Properties+::: { AutomaticFailoverEnabled: AutomaticFailoverEnabled },
    },
    '#withCacheNodeType': d.fn('`withCacheNodeType` CacheNodeType ', [d.arg('CacheNodeType', d.T.string)]),
    withCacheNodeType(CacheNodeType): {
      assert std.isString(CacheNodeType) : 'CacheNodeType must be a string',
      Properties+::: { CacheNodeType: CacheNodeType },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: { Engine: Engine },
    },
    '#withCacheParameterGroupName': d.fn('`withCacheParameterGroupName` CacheParameterGroupName ', [d.arg('CacheParameterGroupName', d.T.string)]),
    withCacheParameterGroupName(CacheParameterGroupName): {
      assert std.isString(CacheParameterGroupName) : 'CacheParameterGroupName must be a string',
      Properties+::: { CacheParameterGroupName: CacheParameterGroupName },
    },
    '#withGlobalNodeGroupCount': d.fn('`withGlobalNodeGroupCount` GlobalNodeGroupCount ', [d.arg('GlobalNodeGroupCount', d.T.integer)]),
    withGlobalNodeGroupCount(GlobalNodeGroupCount): {
      assert std.isNumber(GlobalNodeGroupCount) : 'GlobalNodeGroupCount must be a integer',
      Properties+::: { GlobalNodeGroupCount: GlobalNodeGroupCount },
    },
    '#withGlobalReplicationGroupDescription': d.fn('`withGlobalReplicationGroupDescription` GlobalReplicationGroupDescription ', [d.arg('GlobalReplicationGroupDescription', d.T.string)]),
    withGlobalReplicationGroupDescription(GlobalReplicationGroupDescription): {
      assert std.isString(GlobalReplicationGroupDescription) : 'GlobalReplicationGroupDescription must be a string',
      Properties+::: { GlobalReplicationGroupDescription: GlobalReplicationGroupDescription },
    },
    '#withGlobalReplicationGroupId': d.fn('`withGlobalReplicationGroupId` GlobalReplicationGroupId ', [d.arg('GlobalReplicationGroupId', d.T.string)]),
    withGlobalReplicationGroupId(GlobalReplicationGroupId): {
      assert std.isString(GlobalReplicationGroupId) : 'GlobalReplicationGroupId must be a string',
      Properties+::: { GlobalReplicationGroupId: GlobalReplicationGroupId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withRegionalConfigurations': d.fn('`withRegionalConfigurations` RegionalConfigurations ', [d.arg('RegionalConfigurations', d.T.array)]),
    withRegionalConfigurations(RegionalConfigurations): {
      assert std.isArray(RegionalConfigurations) : 'RegionalConfigurations must be a array',
      Properties+::: { RegionalConfigurations: RegionalConfigurations },
    },
  },
  ParameterGroup: {
    '#': d.pkg(
      name='ParameterGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='Resource Type definition for AWS::ElastiCache::ParameterGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::ParameterGroup Resource
        * Description The description for this cache parameter group.
        * CacheParameterGroupFamily The name of the cache parameter group family that this cache parameter group is compatible with.
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
        d.arg('CacheParameterGroupFamily', 'd.T.string'),
      ]
    ),
    new(
      Description,
      CacheParameterGroupFamily,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isString(CacheParameterGroupFamily) : 'CacheParameterGroupFamily must be a string',
        CacheParameterGroupFamily: CacheParameterGroupFamily,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::ParameterGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProperties': d.fn('`withProperties` Properties ', [d.arg('Properties', d.T.object)]),
    withProperties(Properties): {
      assert std.isObject(Properties) : 'Properties must be a object',
      Properties+::: { Properties: Properties },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCacheParameterGroupName': d.fn('`withCacheParameterGroupName` CacheParameterGroupName ', [d.arg('CacheParameterGroupName', d.T.string)]),
    withCacheParameterGroupName(CacheParameterGroupName): {
      assert std.isString(CacheParameterGroupName) : 'CacheParameterGroupName must be a string',
      Properties+::: { CacheParameterGroupName: CacheParameterGroupName },
    },
  },
  ReplicationGroup: {
    '#': d.pkg(
      name='ReplicationGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='Resource Type definition for AWS::ElastiCache::ReplicationGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::ReplicationGroup Resource
        * ReplicationGroupDescription 
      |||,
      args=[
        d.arg('ReplicationGroupDescription', 'd.T.string'),
      ]
    ),
    new(
      ReplicationGroupDescription,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ReplicationGroupDescription) : 'ReplicationGroupDescription must be a string',
        ReplicationGroupDescription: ReplicationGroupDescription,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::ReplicationGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPreferredCacheClusterAZs': d.fn('`withPreferredCacheClusterAZs` PreferredCacheClusterAZs ', [d.arg('PreferredCacheClusterAZs', d.T.array)]),
    withPreferredCacheClusterAZs(PreferredCacheClusterAZs): {
      assert std.isArray(PreferredCacheClusterAZs) : 'PreferredCacheClusterAZs must be a array',
      Properties+::: { PreferredCacheClusterAZs: PreferredCacheClusterAZs },
    },
    '#withReaderEndPointPort': d.fn('`withReaderEndPointPort` ReaderEndPointPort ', [d.arg('ReaderEndPointPort', d.T.string)]),
    withReaderEndPointPort(ReaderEndPointPort): {
      assert std.isString(ReaderEndPointPort) : 'ReaderEndPointPort must be a string',
      Properties+::: { ReaderEndPointPort: ReaderEndPointPort },
    },
    '#withNodeGroupConfiguration': d.fn('`withNodeGroupConfiguration` NodeGroupConfiguration ', [d.arg('NodeGroupConfiguration', d.T.array)]),
    withNodeGroupConfiguration(NodeGroupConfiguration): {
      assert std.isArray(NodeGroupConfiguration) : 'NodeGroupConfiguration must be a array',
      Properties+::: { NodeGroupConfiguration: NodeGroupConfiguration },
    },
    '#withSnapshotArns': d.fn('`withSnapshotArns` SnapshotArns ', [d.arg('SnapshotArns', d.T.array)]),
    withSnapshotArns(SnapshotArns): {
      assert std.isArray(SnapshotArns) : 'SnapshotArns must be a array',
      Properties+::: { SnapshotArns: SnapshotArns },
    },
    '#withConfigurationEndPointPort': d.fn('`withConfigurationEndPointPort` ConfigurationEndPointPort ', [d.arg('ConfigurationEndPointPort', d.T.string)]),
    withConfigurationEndPointPort(ConfigurationEndPointPort): {
      assert std.isString(ConfigurationEndPointPort) : 'ConfigurationEndPointPort must be a string',
      Properties+::: { ConfigurationEndPointPort: ConfigurationEndPointPort },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withNumNodeGroups': d.fn('`withNumNodeGroups` NumNodeGroups ', [d.arg('NumNodeGroups', d.T.integer)]),
    withNumNodeGroups(NumNodeGroups): {
      assert std.isNumber(NumNodeGroups) : 'NumNodeGroups must be a integer',
      Properties+::: { NumNodeGroups: NumNodeGroups },
    },
    '#withNotificationTopicArn': d.fn('`withNotificationTopicArn` NotificationTopicArn ', [d.arg('NotificationTopicArn', d.T.string)]),
    withNotificationTopicArn(NotificationTopicArn): {
      assert std.isString(NotificationTopicArn) : 'NotificationTopicArn must be a string',
      Properties+::: { NotificationTopicArn: NotificationTopicArn },
    },
    '#withAutomaticFailoverEnabled': d.fn('`withAutomaticFailoverEnabled` AutomaticFailoverEnabled ', [d.arg('AutomaticFailoverEnabled', d.T.boolean)]),
    withAutomaticFailoverEnabled(AutomaticFailoverEnabled): {
      assert std.isBoolean(AutomaticFailoverEnabled) : 'AutomaticFailoverEnabled must be a boolean',
      Properties+::: { AutomaticFailoverEnabled: AutomaticFailoverEnabled },
    },
    '#withReplicasPerNodeGroup': d.fn('`withReplicasPerNodeGroup` ReplicasPerNodeGroup ', [d.arg('ReplicasPerNodeGroup', d.T.integer)]),
    withReplicasPerNodeGroup(ReplicasPerNodeGroup): {
      assert std.isNumber(ReplicasPerNodeGroup) : 'ReplicasPerNodeGroup must be a integer',
      Properties+::: { ReplicasPerNodeGroup: ReplicasPerNodeGroup },
    },
    '#withTransitEncryptionEnabled': d.fn('`withTransitEncryptionEnabled` TransitEncryptionEnabled ', [d.arg('TransitEncryptionEnabled', d.T.boolean)]),
    withTransitEncryptionEnabled(TransitEncryptionEnabled): {
      assert std.isBoolean(TransitEncryptionEnabled) : 'TransitEncryptionEnabled must be a boolean',
      Properties+::: { TransitEncryptionEnabled: TransitEncryptionEnabled },
    },
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: { Engine: Engine },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withPrimaryEndPointAddress': d.fn('`withPrimaryEndPointAddress` PrimaryEndPointAddress ', [d.arg('PrimaryEndPointAddress', d.T.string)]),
    withPrimaryEndPointAddress(PrimaryEndPointAddress): {
      assert std.isString(PrimaryEndPointAddress) : 'PrimaryEndPointAddress must be a string',
      Properties+::: { PrimaryEndPointAddress: PrimaryEndPointAddress },
    },
    '#withGlobalReplicationGroupId': d.fn('`withGlobalReplicationGroupId` GlobalReplicationGroupId ', [d.arg('GlobalReplicationGroupId', d.T.string)]),
    withGlobalReplicationGroupId(GlobalReplicationGroupId): {
      assert std.isString(GlobalReplicationGroupId) : 'GlobalReplicationGroupId must be a string',
      Properties+::: { GlobalReplicationGroupId: GlobalReplicationGroupId },
    },
    '#withConfigurationEndPointAddress': d.fn('`withConfigurationEndPointAddress` ConfigurationEndPointAddress ', [d.arg('ConfigurationEndPointAddress', d.T.string)]),
    withConfigurationEndPointAddress(ConfigurationEndPointAddress): {
      assert std.isString(ConfigurationEndPointAddress) : 'ConfigurationEndPointAddress must be a string',
      Properties+::: { ConfigurationEndPointAddress: ConfigurationEndPointAddress },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withPrimaryClusterId': d.fn('`withPrimaryClusterId` PrimaryClusterId ', [d.arg('PrimaryClusterId', d.T.string)]),
    withPrimaryClusterId(PrimaryClusterId): {
      assert std.isString(PrimaryClusterId) : 'PrimaryClusterId must be a string',
      Properties+::: { PrimaryClusterId: PrimaryClusterId },
    },
    '#withReadEndPointPorts': d.fn('`withReadEndPointPorts` ReadEndPointPorts ', [d.arg('ReadEndPointPorts', d.T.string)]),
    withReadEndPointPorts(ReadEndPointPorts): {
      assert std.isString(ReadEndPointPorts) : 'ReadEndPointPorts must be a string',
      Properties+::: { ReadEndPointPorts: ReadEndPointPorts },
    },
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withSnapshotWindow': d.fn('`withSnapshotWindow` SnapshotWindow ', [d.arg('SnapshotWindow', d.T.string)]),
    withSnapshotWindow(SnapshotWindow): {
      assert std.isString(SnapshotWindow) : 'SnapshotWindow must be a string',
      Properties+::: { SnapshotWindow: SnapshotWindow },
    },
    '#withTransitEncryptionMode': d.fn('`withTransitEncryptionMode` TransitEncryptionMode ', [d.arg('TransitEncryptionMode', d.T.string)]),
    withTransitEncryptionMode(TransitEncryptionMode): {
      assert std.isString(TransitEncryptionMode) : 'TransitEncryptionMode must be a string',
      Properties+::: { TransitEncryptionMode: TransitEncryptionMode },
    },
    '#withSnapshotRetentionLimit': d.fn('`withSnapshotRetentionLimit` SnapshotRetentionLimit ', [d.arg('SnapshotRetentionLimit', d.T.integer)]),
    withSnapshotRetentionLimit(SnapshotRetentionLimit): {
      assert std.isNumber(SnapshotRetentionLimit) : 'SnapshotRetentionLimit must be a integer',
      Properties+::: { SnapshotRetentionLimit: SnapshotRetentionLimit },
    },
    '#withReadEndPointAddressesList': d.fn('`withReadEndPointAddressesList` ReadEndPointAddressesList ', [d.arg('ReadEndPointAddressesList', d.T.array)]),
    withReadEndPointAddressesList(ReadEndPointAddressesList): {
      assert std.isArray(ReadEndPointAddressesList) : 'ReadEndPointAddressesList must be a array',
      Properties+::: { ReadEndPointAddressesList: ReadEndPointAddressesList },
    },
    '#withSnapshottingClusterId': d.fn('`withSnapshottingClusterId` SnapshottingClusterId ', [d.arg('SnapshottingClusterId', d.T.string)]),
    withSnapshottingClusterId(SnapshottingClusterId): {
      assert std.isString(SnapshottingClusterId) : 'SnapshottingClusterId must be a string',
      Properties+::: { SnapshottingClusterId: SnapshottingClusterId },
    },
    '#withIpDiscovery': d.fn('`withIpDiscovery` IpDiscovery ', [d.arg('IpDiscovery', d.T.string)]),
    withIpDiscovery(IpDiscovery): {
      assert std.isString(IpDiscovery) : 'IpDiscovery must be a string',
      Properties+::: { IpDiscovery: IpDiscovery },
    },
    '#withReadEndPointAddresses': d.fn('`withReadEndPointAddresses` ReadEndPointAddresses ', [d.arg('ReadEndPointAddresses', d.T.string)]),
    withReadEndPointAddresses(ReadEndPointAddresses): {
      assert std.isString(ReadEndPointAddresses) : 'ReadEndPointAddresses must be a string',
      Properties+::: { ReadEndPointAddresses: ReadEndPointAddresses },
    },
    '#withPrimaryEndPointPort': d.fn('`withPrimaryEndPointPort` PrimaryEndPointPort ', [d.arg('PrimaryEndPointPort', d.T.string)]),
    withPrimaryEndPointPort(PrimaryEndPointPort): {
      assert std.isString(PrimaryEndPointPort) : 'PrimaryEndPointPort must be a string',
      Properties+::: { PrimaryEndPointPort: PrimaryEndPointPort },
    },
    '#withCacheSecurityGroupNames': d.fn('`withCacheSecurityGroupNames` CacheSecurityGroupNames ', [d.arg('CacheSecurityGroupNames', d.T.array)]),
    withCacheSecurityGroupNames(CacheSecurityGroupNames): {
      assert std.isArray(CacheSecurityGroupNames) : 'CacheSecurityGroupNames must be a array',
      Properties+::: { CacheSecurityGroupNames: CacheSecurityGroupNames },
    },
    '#withClusterMode': d.fn('`withClusterMode` ClusterMode ', [d.arg('ClusterMode', d.T.string)]),
    withClusterMode(ClusterMode): {
      assert std.isString(ClusterMode) : 'ClusterMode must be a string',
      Properties+::: { ClusterMode: ClusterMode },
    },
    '#withReadEndPointPortsList': d.fn('`withReadEndPointPortsList` ReadEndPointPortsList ', [d.arg('ReadEndPointPortsList', d.T.array)]),
    withReadEndPointPortsList(ReadEndPointPortsList): {
      assert std.isArray(ReadEndPointPortsList) : 'ReadEndPointPortsList must be a array',
      Properties+::: { ReadEndPointPortsList: ReadEndPointPortsList },
    },
    '#withSnapshotName': d.fn('`withSnapshotName` SnapshotName ', [d.arg('SnapshotName', d.T.string)]),
    withSnapshotName(SnapshotName): {
      assert std.isString(SnapshotName) : 'SnapshotName must be a string',
      Properties+::: { SnapshotName: SnapshotName },
    },
    '#withReaderEndPointAddress': d.fn('`withReaderEndPointAddress` ReaderEndPointAddress ', [d.arg('ReaderEndPointAddress', d.T.string)]),
    withReaderEndPointAddress(ReaderEndPointAddress): {
      assert std.isString(ReaderEndPointAddress) : 'ReaderEndPointAddress must be a string',
      Properties+::: { ReaderEndPointAddress: ReaderEndPointAddress },
    },
    '#withMultiAZEnabled': d.fn('`withMultiAZEnabled` MultiAZEnabled ', [d.arg('MultiAZEnabled', d.T.boolean)]),
    withMultiAZEnabled(MultiAZEnabled): {
      assert std.isBoolean(MultiAZEnabled) : 'MultiAZEnabled must be a boolean',
      Properties+::: { MultiAZEnabled: MultiAZEnabled },
    },
    '#withNetworkType': d.fn('`withNetworkType` NetworkType ', [d.arg('NetworkType', d.T.string)]),
    withNetworkType(NetworkType): {
      assert std.isString(NetworkType) : 'NetworkType must be a string',
      Properties+::: { NetworkType: NetworkType },
    },
    '#withReplicationGroupId': d.fn('`withReplicationGroupId` ReplicationGroupId ', [d.arg('ReplicationGroupId', d.T.string)]),
    withReplicationGroupId(ReplicationGroupId): {
      assert std.isString(ReplicationGroupId) : 'ReplicationGroupId must be a string',
      Properties+::: { ReplicationGroupId: ReplicationGroupId },
    },
    '#withNumCacheClusters': d.fn('`withNumCacheClusters` NumCacheClusters ', [d.arg('NumCacheClusters', d.T.integer)]),
    withNumCacheClusters(NumCacheClusters): {
      assert std.isNumber(NumCacheClusters) : 'NumCacheClusters must be a integer',
      Properties+::: { NumCacheClusters: NumCacheClusters },
    },
    '#withCacheSubnetGroupName': d.fn('`withCacheSubnetGroupName` CacheSubnetGroupName ', [d.arg('CacheSubnetGroupName', d.T.string)]),
    withCacheSubnetGroupName(CacheSubnetGroupName): {
      assert std.isString(CacheSubnetGroupName) : 'CacheSubnetGroupName must be a string',
      Properties+::: { CacheSubnetGroupName: CacheSubnetGroupName },
    },
    '#withCacheParameterGroupName': d.fn('`withCacheParameterGroupName` CacheParameterGroupName ', [d.arg('CacheParameterGroupName', d.T.string)]),
    withCacheParameterGroupName(CacheParameterGroupName): {
      assert std.isString(CacheParameterGroupName) : 'CacheParameterGroupName must be a string',
      Properties+::: { CacheParameterGroupName: CacheParameterGroupName },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withAtRestEncryptionEnabled': d.fn('`withAtRestEncryptionEnabled` AtRestEncryptionEnabled ', [d.arg('AtRestEncryptionEnabled', d.T.boolean)]),
    withAtRestEncryptionEnabled(AtRestEncryptionEnabled): {
      assert std.isBoolean(AtRestEncryptionEnabled) : 'AtRestEncryptionEnabled must be a boolean',
      Properties+::: { AtRestEncryptionEnabled: AtRestEncryptionEnabled },
    },
    '#withCacheNodeType': d.fn('`withCacheNodeType` CacheNodeType ', [d.arg('CacheNodeType', d.T.string)]),
    withCacheNodeType(CacheNodeType): {
      assert std.isString(CacheNodeType) : 'CacheNodeType must be a string',
      Properties+::: { CacheNodeType: CacheNodeType },
    },
    '#withUserGroupIds': d.fn('`withUserGroupIds` UserGroupIds ', [d.arg('UserGroupIds', d.T.array)]),
    withUserGroupIds(UserGroupIds): {
      assert std.isArray(UserGroupIds) : 'UserGroupIds must be a array',
      Properties+::: { UserGroupIds: UserGroupIds },
    },
    '#withAuthToken': d.fn('`withAuthToken` AuthToken ', [d.arg('AuthToken', d.T.string)]),
    withAuthToken(AuthToken): {
      assert std.isString(AuthToken) : 'AuthToken must be a string',
      Properties+::: { AuthToken: AuthToken },
    },
    '#withDataTieringEnabled': d.fn('`withDataTieringEnabled` DataTieringEnabled ', [d.arg('DataTieringEnabled', d.T.boolean)]),
    withDataTieringEnabled(DataTieringEnabled): {
      assert std.isBoolean(DataTieringEnabled) : 'DataTieringEnabled must be a boolean',
      Properties+::: { DataTieringEnabled: DataTieringEnabled },
    },
    '#withLogDeliveryConfigurations': d.fn('`withLogDeliveryConfigurations` LogDeliveryConfigurations ', [d.arg('LogDeliveryConfigurations', d.T.array)]),
    withLogDeliveryConfigurations(LogDeliveryConfigurations): {
      assert std.isArray(LogDeliveryConfigurations) : 'LogDeliveryConfigurations must be a array',
      Properties+::: { LogDeliveryConfigurations: LogDeliveryConfigurations },
    },
  },
  SecurityGroup: {
    '#': d.pkg(
      name='SecurityGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='Resource Type definition for AWS::ElastiCache::SecurityGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::SecurityGroup Resource
        * Description 
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
      ]
    ),
    new(
      Description,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::SecurityGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  SecurityGroupIngress: {
    '#': d.pkg(
      name='SecurityGroupIngress',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='Resource Type definition for AWS::ElastiCache::SecurityGroupIngress',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::SecurityGroupIngress Resource
        * EC2SecurityGroupName 
        * CacheSecurityGroupName 
      |||,
      args=[
        d.arg('EC2SecurityGroupName', 'd.T.string'),
        d.arg('CacheSecurityGroupName', 'd.T.string'),
      ]
    ),
    new(
      EC2SecurityGroupName,
      CacheSecurityGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EC2SecurityGroupName) : 'EC2SecurityGroupName must be a string',
        EC2SecurityGroupName: EC2SecurityGroupName,
        assert std.isString(CacheSecurityGroupName) : 'CacheSecurityGroupName must be a string',
        CacheSecurityGroupName: CacheSecurityGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::SecurityGroupIngress',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEC2SecurityGroupOwnerId': d.fn('`withEC2SecurityGroupOwnerId` EC2SecurityGroupOwnerId ', [d.arg('EC2SecurityGroupOwnerId', d.T.string)]),
    withEC2SecurityGroupOwnerId(EC2SecurityGroupOwnerId): {
      assert std.isString(EC2SecurityGroupOwnerId) : 'EC2SecurityGroupOwnerId must be a string',
      Properties+::: { EC2SecurityGroupOwnerId: EC2SecurityGroupOwnerId },
    },
  },
  ServerlessCache: {
    '#': d.pkg(
      name='ServerlessCache',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='The AWS::ElastiCache::ServerlessCache resource creates an Amazon ElastiCache Serverless Cache.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::ServerlessCache Resource
        * ServerlessCacheName The name of the Serverless Cache. This value must be unique.
        * Engine The engine name of the Serverless Cache.
      |||,
      args=[
        d.arg('ServerlessCacheName', 'd.T.string'),
        d.arg('Engine', 'd.T.string'),
      ]
    ),
    new(
      ServerlessCacheName,
      Engine,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServerlessCacheName) : 'ServerlessCacheName must be a string',
        ServerlessCacheName: ServerlessCacheName,
        assert std.isString(Engine) : 'Engine must be a string',
        Engine: Engine,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::ServerlessCache',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withMajorEngineVersion': d.fn('`withMajorEngineVersion` MajorEngineVersion ', [d.arg('MajorEngineVersion', d.T.string)]),
    withMajorEngineVersion(MajorEngineVersion): {
      assert std.isString(MajorEngineVersion) : 'MajorEngineVersion must be a string',
      Properties+::: { MajorEngineVersion: MajorEngineVersion },
    },
    '#withFullEngineVersion': d.fn('`withFullEngineVersion` FullEngineVersion ', [d.arg('FullEngineVersion', d.T.string)]),
    withFullEngineVersion(FullEngineVersion): {
      assert std.isString(FullEngineVersion) : 'FullEngineVersion must be a string',
      Properties+::: { FullEngineVersion: FullEngineVersion },
    },
    '#withCacheUsageLimits': d.fn('`withCacheUsageLimits` CacheUsageLimits ', [d.arg('CacheUsageLimits', d.T.object)]),
    withCacheUsageLimits(CacheUsageLimits): {
      assert std.isObject(CacheUsageLimits) : 'CacheUsageLimits must be a object',
      Properties+::: { CacheUsageLimits: CacheUsageLimits },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withSnapshotArnsToRestore': d.fn('`withSnapshotArnsToRestore` SnapshotArnsToRestore ', [d.arg('SnapshotArnsToRestore', d.T.array)]),
    withSnapshotArnsToRestore(SnapshotArnsToRestore): {
      assert std.isArray(SnapshotArnsToRestore) : 'SnapshotArnsToRestore must be a array',
      Properties+::: { SnapshotArnsToRestore: SnapshotArnsToRestore },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUserGroupId': d.fn('`withUserGroupId` UserGroupId ', [d.arg('UserGroupId', d.T.string)]),
    withUserGroupId(UserGroupId): {
      assert std.isString(UserGroupId) : 'UserGroupId must be a string',
      Properties+::: { UserGroupId: UserGroupId },
    },
    '#withSubnetIds': d.fn('`withSubnetIds` SubnetIds ', [d.arg('SubnetIds', d.T.array)]),
    withSubnetIds(SubnetIds): {
      assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
      Properties+::: { SubnetIds: SubnetIds },
    },
    '#withSnapshotRetentionLimit': d.fn('`withSnapshotRetentionLimit` SnapshotRetentionLimit ', [d.arg('SnapshotRetentionLimit', d.T.integer)]),
    withSnapshotRetentionLimit(SnapshotRetentionLimit): {
      assert std.isNumber(SnapshotRetentionLimit) : 'SnapshotRetentionLimit must be a integer',
      Properties+::: { SnapshotRetentionLimit: SnapshotRetentionLimit },
    },
    '#withDailySnapshotTime': d.fn('`withDailySnapshotTime` DailySnapshotTime ', [d.arg('DailySnapshotTime', d.T.string)]),
    withDailySnapshotTime(DailySnapshotTime): {
      assert std.isString(DailySnapshotTime) : 'DailySnapshotTime must be a string',
      Properties+::: { DailySnapshotTime: DailySnapshotTime },
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.object)]),
    withEndpoint(Endpoint): {
      assert std.isObject(Endpoint) : 'Endpoint must be a object',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withReaderEndpoint': d.fn('`withReaderEndpoint` ReaderEndpoint ', [d.arg('ReaderEndpoint', d.T.object)]),
    withReaderEndpoint(ReaderEndpoint): {
      assert std.isObject(ReaderEndpoint) : 'ReaderEndpoint must be a object',
      Properties+::: { ReaderEndpoint: ReaderEndpoint },
    },
    '#withARN': d.fn('`withARN` ARN ', [d.arg('ARN', d.T.string)]),
    withARN(ARN): {
      assert std.isString(ARN) : 'ARN must be a string',
      Properties+::: { ARN: ARN },
    },
    '#withFinalSnapshotName': d.fn('`withFinalSnapshotName` FinalSnapshotName ', [d.arg('FinalSnapshotName', d.T.string)]),
    withFinalSnapshotName(FinalSnapshotName): {
      assert std.isString(FinalSnapshotName) : 'FinalSnapshotName must be a string',
      Properties+::: { FinalSnapshotName: FinalSnapshotName },
    },
  },
  SubnetGroup: {
    '#': d.pkg(
      name='SubnetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='Resource Type definition for AWS::ElastiCache::SubnetGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::SubnetGroup Resource
        * Description The description for the cache subnet group.
        * SubnetIds The EC2 subnet IDs for the cache subnet group.
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
      ]
    ),
    new(
      Description,
      SubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::SubnetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCacheSubnetGroupName': d.fn('`withCacheSubnetGroupName` CacheSubnetGroupName ', [d.arg('CacheSubnetGroupName', d.T.string)]),
    withCacheSubnetGroupName(CacheSubnetGroupName): {
      assert std.isString(CacheSubnetGroupName) : 'CacheSubnetGroupName must be a string',
      Properties+::: { CacheSubnetGroupName: CacheSubnetGroupName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  User: {
    '#': d.pkg(
      name='User',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='Resource Type definition for AWS::ElastiCache::User',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::User Resource
        * UserId The ID of the user.
        * UserName The username of the user.
        * Engine The target cache engine for the user.
      |||,
      args=[
        d.arg('UserId', 'd.T.string'),
        d.arg('UserName', 'd.T.string'),
        d.arg('Engine', 'd.T.string'),
      ]
    ),
    new(
      UserId,
      UserName,
      Engine,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserId) : 'UserId must be a string',
        UserId: UserId,
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
        assert std.isString(Engine) : 'Engine must be a string',
        assert Engine == 'redis' || Engine == 'valkey' : "Engine must be either 'redis' or 'valkey'",
        Engine: Engine,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::User',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withAccessString': d.fn('`withAccessString` AccessString ', [d.arg('AccessString', d.T.string)]),
    withAccessString(AccessString): {
      assert std.isString(AccessString) : 'AccessString must be a string',
      Properties+::: { AccessString: AccessString },
    },
    '#withNoPasswordRequired': d.fn('`withNoPasswordRequired` NoPasswordRequired ', [d.arg('NoPasswordRequired', d.T.boolean)]),
    withNoPasswordRequired(NoPasswordRequired): {
      assert std.isBoolean(NoPasswordRequired) : 'NoPasswordRequired must be a boolean',
      Properties+::: { NoPasswordRequired: NoPasswordRequired },
    },
    '#withPasswords': d.fn('`withPasswords` Passwords ', [d.arg('Passwords', d.T.array)]),
    withPasswords(Passwords): {
      assert std.isArray(Passwords) : 'Passwords must be a array',
      Properties+::: { Passwords: Passwords },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAuthenticationMode': d.fn('`withAuthenticationMode` AuthenticationMode ', [d.arg('AuthenticationMode', d.T.object)]),
    withAuthenticationMode(AuthenticationMode): {
      assert std.isObject(AuthenticationMode) : 'AuthenticationMode must be a object',
      Properties+::: { AuthenticationMode: AuthenticationMode },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  UserGroup: {
    '#': d.pkg(
      name='UserGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElastiCache.libsonnet',
      help='Resource Type definition for AWS::ElastiCache::UserGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElastiCache::UserGroup Resource
        * UserGroupId The ID of the user group.
        * Engine Must be redis.
        * UserIds List of users associated to this user group.
      |||,
      args=[
        d.arg('UserGroupId', 'd.T.string'),
        d.arg('Engine', 'd.T.string'),
        d.arg('UserIds', 'd.T.array'),
      ]
    ),
    new(
      UserGroupId,
      Engine,
      UserIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserGroupId) : 'UserGroupId must be a string',
        UserGroupId: UserGroupId,
        assert std.isString(Engine) : 'Engine must be a string',
        assert Engine == 'redis' : "Engine must be either 'redis'",
        Engine: Engine,
        assert std.isArray(UserIds) : 'UserIds must be a array',
        UserIds: UserIds,
      },
      DependsOn:: [],
      Type: 'AWS::ElastiCache::UserGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
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
  },
}
