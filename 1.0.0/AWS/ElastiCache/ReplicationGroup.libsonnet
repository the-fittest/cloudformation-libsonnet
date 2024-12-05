{
  new(
    ReplicationGroupDescription,
  ): {
    local base = self,
    Properties: {
      ReplicationGroupDescription:
        if !std.isString(ReplicationGroupDescription) then (error 'ReplicationGroupDescription must be a string')
        else if std.isEmpty(ReplicationGroupDescription) then (error 'ReplicationGroupDescription must be not empty')
        else ReplicationGroupDescription,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::ReplicationGroup',
  },
  setPreferredCacheClusterAZs(PreferredCacheClusterAZs): {
    Properties+::: {
      PreferredCacheClusterAZs:
        if !std.isArray(PreferredCacheClusterAZs) then (error 'PreferredCacheClusterAZs must be an array')
        else PreferredCacheClusterAZs,
    },
  },
  setPreferredCacheClusterAZsMixin(PreferredCacheClusterAZs): {
    Properties+::: {
      PreferredCacheClusterAZs+: PreferredCacheClusterAZs,
    },
  },
  setReaderEndPointPort(ReaderEndPointPort): {
    Properties+::: {
      ReaderEndPointPort:
        if !std.isString(ReaderEndPointPort) then (error 'ReaderEndPointPort must be a string')
        else if std.isEmpty(ReaderEndPointPort) then (error 'ReaderEndPointPort must be not empty')
        else ReaderEndPointPort,
    },
  },
  setNodeGroupConfiguration(NodeGroupConfiguration): {
    Properties+::: {
      NodeGroupConfiguration:
        if !std.isArray(NodeGroupConfiguration) then (error 'NodeGroupConfiguration must be an array')
        else NodeGroupConfiguration,
    },
  },
  setNodeGroupConfigurationMixin(NodeGroupConfiguration): {
    Properties+::: {
      NodeGroupConfiguration+: NodeGroupConfiguration,
    },
  },
  setSnapshotArns(SnapshotArns): {
    Properties+::: {
      SnapshotArns:
        if !std.isArray(SnapshotArns) then (error 'SnapshotArns must be an array')
        else SnapshotArns,
    },
  },
  setSnapshotArnsMixin(SnapshotArns): {
    Properties+::: {
      SnapshotArns+: SnapshotArns,
    },
  },
  setConfigurationEndPointPort(ConfigurationEndPointPort): {
    Properties+::: {
      ConfigurationEndPointPort:
        if !std.isString(ConfigurationEndPointPort) then (error 'ConfigurationEndPointPort must be a string')
        else if std.isEmpty(ConfigurationEndPointPort) then (error 'ConfigurationEndPointPort must be not empty')
        else ConfigurationEndPointPort,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setNumNodeGroups(NumNodeGroups): {
    Properties+::: {
      NumNodeGroups:
        if !std.isNumber(NumNodeGroups) then (error 'NumNodeGroups must be an number')
        else NumNodeGroups,
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
  setAutomaticFailoverEnabled(AutomaticFailoverEnabled): {
    Properties+::: {
      AutomaticFailoverEnabled:
        if !std.isBoolean(AutomaticFailoverEnabled) then (error 'AutomaticFailoverEnabled must be a boolean') else AutomaticFailoverEnabled,
    },
  },
  setReplicasPerNodeGroup(ReplicasPerNodeGroup): {
    Properties+::: {
      ReplicasPerNodeGroup:
        if !std.isNumber(ReplicasPerNodeGroup) then (error 'ReplicasPerNodeGroup must be an number')
        else ReplicasPerNodeGroup,
    },
  },
  setTransitEncryptionEnabled(TransitEncryptionEnabled): {
    Properties+::: {
      TransitEncryptionEnabled:
        if !std.isBoolean(TransitEncryptionEnabled) then (error 'TransitEncryptionEnabled must be a boolean') else TransitEncryptionEnabled,
    },
  },
  setEngine(Engine): {
    Properties+::: {
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else Engine,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setPrimaryEndPointAddress(PrimaryEndPointAddress): {
    Properties+::: {
      PrimaryEndPointAddress:
        if !std.isString(PrimaryEndPointAddress) then (error 'PrimaryEndPointAddress must be a string')
        else if std.isEmpty(PrimaryEndPointAddress) then (error 'PrimaryEndPointAddress must be not empty')
        else PrimaryEndPointAddress,
    },
  },
  setGlobalReplicationGroupId(GlobalReplicationGroupId): {
    Properties+::: {
      GlobalReplicationGroupId:
        if !std.isString(GlobalReplicationGroupId) then (error 'GlobalReplicationGroupId must be a string')
        else if std.isEmpty(GlobalReplicationGroupId) then (error 'GlobalReplicationGroupId must be not empty')
        else GlobalReplicationGroupId,
    },
  },
  setConfigurationEndPointAddress(ConfigurationEndPointAddress): {
    Properties+::: {
      ConfigurationEndPointAddress:
        if !std.isString(ConfigurationEndPointAddress) then (error 'ConfigurationEndPointAddress must be a string')
        else if std.isEmpty(ConfigurationEndPointAddress) then (error 'ConfigurationEndPointAddress must be not empty')
        else ConfigurationEndPointAddress,
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
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setPrimaryClusterId(PrimaryClusterId): {
    Properties+::: {
      PrimaryClusterId:
        if !std.isString(PrimaryClusterId) then (error 'PrimaryClusterId must be a string')
        else if std.isEmpty(PrimaryClusterId) then (error 'PrimaryClusterId must be not empty')
        else PrimaryClusterId,
    },
  },
  setReadEndPointPorts(ReadEndPointPorts): {
    Properties+::: {
      ReadEndPointPorts:
        if !std.isString(ReadEndPointPorts) then (error 'ReadEndPointPorts must be a string')
        else if std.isEmpty(ReadEndPointPorts) then (error 'ReadEndPointPorts must be not empty')
        else ReadEndPointPorts,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  setSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
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
  setTransitEncryptionMode(TransitEncryptionMode): {
    Properties+::: {
      TransitEncryptionMode:
        if !std.isString(TransitEncryptionMode) then (error 'TransitEncryptionMode must be a string')
        else if std.isEmpty(TransitEncryptionMode) then (error 'TransitEncryptionMode must be not empty')
        else TransitEncryptionMode,
    },
  },
  setSnapshotRetentionLimit(SnapshotRetentionLimit): {
    Properties+::: {
      SnapshotRetentionLimit:
        if !std.isNumber(SnapshotRetentionLimit) then (error 'SnapshotRetentionLimit must be an number')
        else SnapshotRetentionLimit,
    },
  },
  setReadEndPointAddressesList(ReadEndPointAddressesList): {
    Properties+::: {
      ReadEndPointAddressesList:
        if !std.isArray(ReadEndPointAddressesList) then (error 'ReadEndPointAddressesList must be an array')
        else ReadEndPointAddressesList,
    },
  },
  setReadEndPointAddressesListMixin(ReadEndPointAddressesList): {
    Properties+::: {
      ReadEndPointAddressesList+: ReadEndPointAddressesList,
    },
  },
  setSnapshottingClusterId(SnapshottingClusterId): {
    Properties+::: {
      SnapshottingClusterId:
        if !std.isString(SnapshottingClusterId) then (error 'SnapshottingClusterId must be a string')
        else if std.isEmpty(SnapshottingClusterId) then (error 'SnapshottingClusterId must be not empty')
        else SnapshottingClusterId,
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
  setReadEndPointAddresses(ReadEndPointAddresses): {
    Properties+::: {
      ReadEndPointAddresses:
        if !std.isString(ReadEndPointAddresses) then (error 'ReadEndPointAddresses must be a string')
        else if std.isEmpty(ReadEndPointAddresses) then (error 'ReadEndPointAddresses must be not empty')
        else ReadEndPointAddresses,
    },
  },
  setPrimaryEndPointPort(PrimaryEndPointPort): {
    Properties+::: {
      PrimaryEndPointPort:
        if !std.isString(PrimaryEndPointPort) then (error 'PrimaryEndPointPort must be a string')
        else if std.isEmpty(PrimaryEndPointPort) then (error 'PrimaryEndPointPort must be not empty')
        else PrimaryEndPointPort,
    },
  },
  setCacheSecurityGroupNames(CacheSecurityGroupNames): {
    Properties+::: {
      CacheSecurityGroupNames:
        if !std.isArray(CacheSecurityGroupNames) then (error 'CacheSecurityGroupNames must be an array')
        else CacheSecurityGroupNames,
    },
  },
  setCacheSecurityGroupNamesMixin(CacheSecurityGroupNames): {
    Properties+::: {
      CacheSecurityGroupNames+: CacheSecurityGroupNames,
    },
  },
  setClusterMode(ClusterMode): {
    Properties+::: {
      ClusterMode:
        if !std.isString(ClusterMode) then (error 'ClusterMode must be a string')
        else if std.isEmpty(ClusterMode) then (error 'ClusterMode must be not empty')
        else ClusterMode,
    },
  },
  setReadEndPointPortsList(ReadEndPointPortsList): {
    Properties+::: {
      ReadEndPointPortsList:
        if !std.isArray(ReadEndPointPortsList) then (error 'ReadEndPointPortsList must be an array')
        else ReadEndPointPortsList,
    },
  },
  setReadEndPointPortsListMixin(ReadEndPointPortsList): {
    Properties+::: {
      ReadEndPointPortsList+: ReadEndPointPortsList,
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
  setReaderEndPointAddress(ReaderEndPointAddress): {
    Properties+::: {
      ReaderEndPointAddress:
        if !std.isString(ReaderEndPointAddress) then (error 'ReaderEndPointAddress must be a string')
        else if std.isEmpty(ReaderEndPointAddress) then (error 'ReaderEndPointAddress must be not empty')
        else ReaderEndPointAddress,
    },
  },
  setMultiAZEnabled(MultiAZEnabled): {
    Properties+::: {
      MultiAZEnabled:
        if !std.isBoolean(MultiAZEnabled) then (error 'MultiAZEnabled must be a boolean') else MultiAZEnabled,
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
  setReplicationGroupId(ReplicationGroupId): {
    Properties+::: {
      ReplicationGroupId:
        if !std.isString(ReplicationGroupId) then (error 'ReplicationGroupId must be a string')
        else if std.isEmpty(ReplicationGroupId) then (error 'ReplicationGroupId must be not empty')
        else ReplicationGroupId,
    },
  },
  setNumCacheClusters(NumCacheClusters): {
    Properties+::: {
      NumCacheClusters:
        if !std.isNumber(NumCacheClusters) then (error 'NumCacheClusters must be an number')
        else NumCacheClusters,
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
  setAtRestEncryptionEnabled(AtRestEncryptionEnabled): {
    Properties+::: {
      AtRestEncryptionEnabled:
        if !std.isBoolean(AtRestEncryptionEnabled) then (error 'AtRestEncryptionEnabled must be a boolean') else AtRestEncryptionEnabled,
    },
  },
  setCacheNodeType(CacheNodeType): {
    Properties+::: {
      CacheNodeType:
        if !std.isString(CacheNodeType) then (error 'CacheNodeType must be a string')
        else if std.isEmpty(CacheNodeType) then (error 'CacheNodeType must be not empty')
        else CacheNodeType,
    },
  },
  setUserGroupIds(UserGroupIds): {
    Properties+::: {
      UserGroupIds:
        if !std.isArray(UserGroupIds) then (error 'UserGroupIds must be an array')
        else UserGroupIds,
    },
  },
  setUserGroupIdsMixin(UserGroupIds): {
    Properties+::: {
      UserGroupIds+: UserGroupIds,
    },
  },
  setAuthToken(AuthToken): {
    Properties+::: {
      AuthToken:
        if !std.isString(AuthToken) then (error 'AuthToken must be a string')
        else if std.isEmpty(AuthToken) then (error 'AuthToken must be not empty')
        else AuthToken,
    },
  },
  setDataTieringEnabled(DataTieringEnabled): {
    Properties+::: {
      DataTieringEnabled:
        if !std.isBoolean(DataTieringEnabled) then (error 'DataTieringEnabled must be a boolean') else DataTieringEnabled,
    },
  },
  setLogDeliveryConfigurations(LogDeliveryConfigurations): {
    Properties+::: {
      LogDeliveryConfigurations:
        if !std.isArray(LogDeliveryConfigurations) then (error 'LogDeliveryConfigurations must be an array')
        else LogDeliveryConfigurations,
    },
  },
  setLogDeliveryConfigurationsMixin(LogDeliveryConfigurations): {
    Properties+::: {
      LogDeliveryConfigurations+: LogDeliveryConfigurations,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
