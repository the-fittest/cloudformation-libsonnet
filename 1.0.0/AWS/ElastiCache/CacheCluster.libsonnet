{
  new(
    CacheNodeType,
    NumCacheNodes,
    Engine,
  ): {
    local base = self,
    Properties: {
      assert std.isString(CacheNodeType) : 'CacheNodeType must be a string',
      CacheNodeType: CacheNodeType,
      assert std.isNumber(NumCacheNodes) : 'NumCacheNodes must be a number',
      NumCacheNodes: NumCacheNodes,
      assert std.isString(Engine) : 'Engine must be a string',
      Engine: Engine,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::CacheCluster',
  },
  withCacheSecurityGroupNames(CacheSecurityGroupNames): {
    Properties+::: {
      CacheSecurityGroupNames: (if std.isArray(CacheSecurityGroupNames) then CacheSecurityGroupNames else [CacheSecurityGroupNames]),
    },
  },
  withCacheSecurityGroupNamesMixin(CacheSecurityGroupNames): {
    Properties+::: {
      CacheSecurityGroupNames+: (if std.isArray(CacheSecurityGroupNames) then CacheSecurityGroupNames else [CacheSecurityGroupNames]),
    },
  },
  withSnapshotArns(SnapshotArns): {
    Properties+::: {
      SnapshotArns: (if std.isArray(SnapshotArns) then SnapshotArns else [SnapshotArns]),
    },
  },
  withSnapshotArnsMixin(SnapshotArns): {
    Properties+::: {
      SnapshotArns+: (if std.isArray(SnapshotArns) then SnapshotArns else [SnapshotArns]),
    },
  },
  withPort(Port): {
    assert std.isNumber(Port) : 'Port must be a number',
    Properties+::: {
      Port: Port,
    },
  },
  withConfigurationEndpointAddress(ConfigurationEndpointAddress): {
    assert std.isString(ConfigurationEndpointAddress) : 'ConfigurationEndpointAddress must be a string',
    Properties+::: {
      ConfigurationEndpointAddress: ConfigurationEndpointAddress,
    },
  },
  withNotificationTopicArn(NotificationTopicArn): {
    assert std.isString(NotificationTopicArn) : 'NotificationTopicArn must be a string',
    Properties+::: {
      NotificationTopicArn: NotificationTopicArn,
    },
  },
  withSnapshotName(SnapshotName): {
    assert std.isString(SnapshotName) : 'SnapshotName must be a string',
    Properties+::: {
      SnapshotName: SnapshotName,
    },
  },
  withTransitEncryptionEnabled(TransitEncryptionEnabled): {
    assert std.isBoolean(TransitEncryptionEnabled) : 'TransitEncryptionEnabled must be a boolean',
    Properties+::: {
      TransitEncryptionEnabled: TransitEncryptionEnabled,
    },
  },
  withNetworkType(NetworkType): {
    assert std.isString(NetworkType) : 'NetworkType must be a string',
    Properties+::: {
      NetworkType: NetworkType,
    },
  },
  withPreferredAvailabilityZones(PreferredAvailabilityZones): {
    Properties+::: {
      PreferredAvailabilityZones: (if std.isArray(PreferredAvailabilityZones) then PreferredAvailabilityZones else [PreferredAvailabilityZones]),
    },
  },
  withPreferredAvailabilityZonesMixin(PreferredAvailabilityZones): {
    Properties+::: {
      PreferredAvailabilityZones+: (if std.isArray(PreferredAvailabilityZones) then PreferredAvailabilityZones else [PreferredAvailabilityZones]),
    },
  },
  withVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
    },
  },
  withVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
    },
  },
  withClusterName(ClusterName): {
    assert std.isString(ClusterName) : 'ClusterName must be a string',
    Properties+::: {
      ClusterName: ClusterName,
    },
  },
  withRedisEndpointAddress(RedisEndpointAddress): {
    assert std.isString(RedisEndpointAddress) : 'RedisEndpointAddress must be a string',
    Properties+::: {
      RedisEndpointAddress: RedisEndpointAddress,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withRedisEndpointPort(RedisEndpointPort): {
    assert std.isString(RedisEndpointPort) : 'RedisEndpointPort must be a string',
    Properties+::: {
      RedisEndpointPort: RedisEndpointPort,
    },
  },
  withCacheSubnetGroupName(CacheSubnetGroupName): {
    assert std.isString(CacheSubnetGroupName) : 'CacheSubnetGroupName must be a string',
    Properties+::: {
      CacheSubnetGroupName: CacheSubnetGroupName,
    },
  },
  withCacheParameterGroupName(CacheParameterGroupName): {
    assert std.isString(CacheParameterGroupName) : 'CacheParameterGroupName must be a string',
    Properties+::: {
      CacheParameterGroupName: CacheParameterGroupName,
    },
  },
  withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
    Properties+::: {
      PreferredMaintenanceWindow: PreferredMaintenanceWindow,
    },
  },
  withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
    Properties+::: {
      AutoMinorVersionUpgrade: AutoMinorVersionUpgrade,
    },
  },
  withPreferredAvailabilityZone(PreferredAvailabilityZone): {
    assert std.isString(PreferredAvailabilityZone) : 'PreferredAvailabilityZone must be a string',
    Properties+::: {
      PreferredAvailabilityZone: PreferredAvailabilityZone,
    },
  },
  withSnapshotWindow(SnapshotWindow): {
    assert std.isString(SnapshotWindow) : 'SnapshotWindow must be a string',
    Properties+::: {
      SnapshotWindow: SnapshotWindow,
    },
  },
  withSnapshotRetentionLimit(SnapshotRetentionLimit): {
    assert std.isNumber(SnapshotRetentionLimit) : 'SnapshotRetentionLimit must be a number',
    Properties+::: {
      SnapshotRetentionLimit: SnapshotRetentionLimit,
    },
  },
  withConfigurationEndpointPort(ConfigurationEndpointPort): {
    assert std.isString(ConfigurationEndpointPort) : 'ConfigurationEndpointPort must be a string',
    Properties+::: {
      ConfigurationEndpointPort: ConfigurationEndpointPort,
    },
  },
  withIpDiscovery(IpDiscovery): {
    assert std.isString(IpDiscovery) : 'IpDiscovery must be a string',
    Properties+::: {
      IpDiscovery: IpDiscovery,
    },
  },
  withLogDeliveryConfigurations(LogDeliveryConfigurations): {
    Properties+::: {
      LogDeliveryConfigurations: (if std.isArray(LogDeliveryConfigurations) then LogDeliveryConfigurations else [LogDeliveryConfigurations]),
    },
  },
  withLogDeliveryConfigurationsMixin(LogDeliveryConfigurations): {
    Properties+::: {
      LogDeliveryConfigurations+: (if std.isArray(LogDeliveryConfigurations) then LogDeliveryConfigurations else [LogDeliveryConfigurations]),
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withAZMode(AZMode): {
    assert std.isString(AZMode) : 'AZMode must be a string',
    Properties+::: {
      AZMode: AZMode,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
