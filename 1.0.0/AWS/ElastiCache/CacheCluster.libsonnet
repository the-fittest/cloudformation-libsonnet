{
  new(
    CacheNodeType,
    NumCacheNodes,
    Engine,
  ): {
    local base = self,
    Properties: {
      CacheNodeType:
        if !std.isString(CacheNodeType) then (error 'CacheNodeType must be a string')
        else if std.isEmpty(CacheNodeType) then (error 'CacheNodeType must be not empty')
        else CacheNodeType,
      NumCacheNodes:
        if !std.isNumber(NumCacheNodes) then (error 'NumCacheNodes must be an number')
        else NumCacheNodes,
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else Engine,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::CacheCluster',
  },
  setCacheSecurityGroupNames(CacheSecurityGroupNames): {
    Properties+::: {
      CacheSecurityGroupNames:
        if !std.isArray(CacheSecurityGroupNames) then (error 'CacheSecurityGroupNames must be an array')
        else CacheSecurityGroupNames,
    },
  },
  pushCacheSecurityGroupNames(CacheSecurityGroupNames): {
    Properties+::: {
      CacheSecurityGroupNames+: CacheSecurityGroupNames,
    },
  },
  setSnapshotArns(SnapshotArns): {
    Properties+::: {
      SnapshotArns:
        if !std.isArray(SnapshotArns) then (error 'SnapshotArns must be an array')
        else SnapshotArns,
    },
  },
  pushSnapshotArns(SnapshotArns): {
    Properties+::: {
      SnapshotArns+: SnapshotArns,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setConfigurationEndpointAddress(ConfigurationEndpointAddress): {
    Properties+::: {
      ConfigurationEndpointAddress:
        if !std.isString(ConfigurationEndpointAddress) then (error 'ConfigurationEndpointAddress must be a string')
        else if std.isEmpty(ConfigurationEndpointAddress) then (error 'ConfigurationEndpointAddress must be not empty')
        else ConfigurationEndpointAddress,
    },
  },
  setNotificationTopicArn(NotificationTopicArn): {
    Properties+::: {
      NotificationTopicArn:
        if !std.isString(NotificationTopicArn) then (error 'NotificationTopicArn must be a string')
        else if std.isEmpty(NotificationTopicArn) then (error 'NotificationTopicArn must be not empty')
        else NotificationTopicArn,
    },
  },
  setSnapshotName(SnapshotName): {
    Properties+::: {
      SnapshotName:
        if !std.isString(SnapshotName) then (error 'SnapshotName must be a string')
        else if std.isEmpty(SnapshotName) then (error 'SnapshotName must be not empty')
        else SnapshotName,
    },
  },
  setTransitEncryptionEnabled(TransitEncryptionEnabled): {
    Properties+::: {
      TransitEncryptionEnabled:
        if !std.isBoolean(TransitEncryptionEnabled) then (error 'TransitEncryptionEnabled must be a boolean') else TransitEncryptionEnabled,
    },
  },
  setNetworkType(NetworkType): {
    Properties+::: {
      NetworkType:
        if !std.isString(NetworkType) then (error 'NetworkType must be a string')
        else if std.isEmpty(NetworkType) then (error 'NetworkType must be not empty')
        else NetworkType,
    },
  },
  setPreferredAvailabilityZones(PreferredAvailabilityZones): {
    Properties+::: {
      PreferredAvailabilityZones:
        if !std.isArray(PreferredAvailabilityZones) then (error 'PreferredAvailabilityZones must be an array')
        else PreferredAvailabilityZones,
    },
  },
  pushPreferredAvailabilityZones(PreferredAvailabilityZones): {
    Properties+::: {
      PreferredAvailabilityZones+: PreferredAvailabilityZones,
    },
  },
  setVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds:
        if !std.isArray(VpcSecurityGroupIds) then (error 'VpcSecurityGroupIds must be an array')
        else VpcSecurityGroupIds,
    },
  },
  pushVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: VpcSecurityGroupIds,
    },
  },
  setClusterName(ClusterName): {
    Properties+::: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else ClusterName,
    },
  },
  setRedisEndpointAddress(RedisEndpointAddress): {
    Properties+::: {
      RedisEndpointAddress:
        if !std.isString(RedisEndpointAddress) then (error 'RedisEndpointAddress must be a string')
        else if std.isEmpty(RedisEndpointAddress) then (error 'RedisEndpointAddress must be not empty')
        else RedisEndpointAddress,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else EngineVersion,
    },
  },
  setRedisEndpointPort(RedisEndpointPort): {
    Properties+::: {
      RedisEndpointPort:
        if !std.isString(RedisEndpointPort) then (error 'RedisEndpointPort must be a string')
        else if std.isEmpty(RedisEndpointPort) then (error 'RedisEndpointPort must be not empty')
        else RedisEndpointPort,
    },
  },
  setCacheSubnetGroupName(CacheSubnetGroupName): {
    Properties+::: {
      CacheSubnetGroupName:
        if !std.isString(CacheSubnetGroupName) then (error 'CacheSubnetGroupName must be a string')
        else if std.isEmpty(CacheSubnetGroupName) then (error 'CacheSubnetGroupName must be not empty')
        else CacheSubnetGroupName,
    },
  },
  setCacheParameterGroupName(CacheParameterGroupName): {
    Properties+::: {
      CacheParameterGroupName:
        if !std.isString(CacheParameterGroupName) then (error 'CacheParameterGroupName must be a string')
        else if std.isEmpty(CacheParameterGroupName) then (error 'CacheParameterGroupName must be not empty')
        else CacheParameterGroupName,
    },
  },
  setPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    Properties+::: {
      PreferredMaintenanceWindow:
        if !std.isString(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be a string')
        else if std.isEmpty(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be not empty')
        else PreferredMaintenanceWindow,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
    },
  },
  setPreferredAvailabilityZone(PreferredAvailabilityZone): {
    Properties+::: {
      PreferredAvailabilityZone:
        if !std.isString(PreferredAvailabilityZone) then (error 'PreferredAvailabilityZone must be a string')
        else if std.isEmpty(PreferredAvailabilityZone) then (error 'PreferredAvailabilityZone must be not empty')
        else PreferredAvailabilityZone,
    },
  },
  setSnapshotWindow(SnapshotWindow): {
    Properties+::: {
      SnapshotWindow:
        if !std.isString(SnapshotWindow) then (error 'SnapshotWindow must be a string')
        else if std.isEmpty(SnapshotWindow) then (error 'SnapshotWindow must be not empty')
        else SnapshotWindow,
    },
  },
  setSnapshotRetentionLimit(SnapshotRetentionLimit): {
    Properties+::: {
      SnapshotRetentionLimit:
        if !std.isNumber(SnapshotRetentionLimit) then (error 'SnapshotRetentionLimit must be an number')
        else SnapshotRetentionLimit,
    },
  },
  setConfigurationEndpointPort(ConfigurationEndpointPort): {
    Properties+::: {
      ConfigurationEndpointPort:
        if !std.isString(ConfigurationEndpointPort) then (error 'ConfigurationEndpointPort must be a string')
        else if std.isEmpty(ConfigurationEndpointPort) then (error 'ConfigurationEndpointPort must be not empty')
        else ConfigurationEndpointPort,
    },
  },
  setIpDiscovery(IpDiscovery): {
    Properties+::: {
      IpDiscovery:
        if !std.isString(IpDiscovery) then (error 'IpDiscovery must be a string')
        else if std.isEmpty(IpDiscovery) then (error 'IpDiscovery must be not empty')
        else IpDiscovery,
    },
  },
  setLogDeliveryConfigurations(LogDeliveryConfigurations): {
    Properties+::: {
      LogDeliveryConfigurations:
        if !std.isArray(LogDeliveryConfigurations) then (error 'LogDeliveryConfigurations must be an array')
        else LogDeliveryConfigurations,
    },
  },
  pushLogDeliveryConfigurations(LogDeliveryConfigurations): {
    Properties+::: {
      LogDeliveryConfigurations+: LogDeliveryConfigurations,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setAZMode(AZMode): {
    Properties+::: {
      AZMode:
        if !std.isString(AZMode) then (error 'AZMode must be a string')
        else if std.isEmpty(AZMode) then (error 'AZMode must be not empty')
        else AZMode,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
