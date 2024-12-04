{
  new(
    ReplicationGroupDescription,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ReplicationGroupDescription) : 'ReplicationGroupDescription must be a string',
      ReplicationGroupDescription: ReplicationGroupDescription,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::ReplicationGroup',
  },
  withPreferredCacheClusterAZs(PreferredCacheClusterAZs): {
    Properties+::: {
      PreferredCacheClusterAZs: (if std.isArray(PreferredCacheClusterAZs) then PreferredCacheClusterAZs else [PreferredCacheClusterAZs]),
    },
  },
  withPreferredCacheClusterAZsMixin(PreferredCacheClusterAZs): {
    Properties+::: {
      PreferredCacheClusterAZs+: (if std.isArray(PreferredCacheClusterAZs) then PreferredCacheClusterAZs else [PreferredCacheClusterAZs]),
    },
  },
  withReaderEndPointPort(ReaderEndPointPort): {
    assert std.isString(ReaderEndPointPort) : 'ReaderEndPointPort must be a string',
    Properties+::: {
      ReaderEndPointPort: ReaderEndPointPort,
    },
  },
  withNodeGroupConfiguration(NodeGroupConfiguration): {
    Properties+::: {
      NodeGroupConfiguration: (if std.isArray(NodeGroupConfiguration) then NodeGroupConfiguration else [NodeGroupConfiguration]),
    },
  },
  withNodeGroupConfigurationMixin(NodeGroupConfiguration): {
    Properties+::: {
      NodeGroupConfiguration+: (if std.isArray(NodeGroupConfiguration) then NodeGroupConfiguration else [NodeGroupConfiguration]),
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
  withConfigurationEndPointPort(ConfigurationEndPointPort): {
    assert std.isString(ConfigurationEndPointPort) : 'ConfigurationEndPointPort must be a string',
    Properties+::: {
      ConfigurationEndPointPort: ConfigurationEndPointPort,
    },
  },
  withPort(Port): {
    assert std.isNumber(Port) : 'Port must be a number',
    Properties+::: {
      Port: Port,
    },
  },
  withNumNodeGroups(NumNodeGroups): {
    assert std.isNumber(NumNodeGroups) : 'NumNodeGroups must be a number',
    Properties+::: {
      NumNodeGroups: NumNodeGroups,
    },
  },
  withNotificationTopicArn(NotificationTopicArn): {
    assert std.isString(NotificationTopicArn) : 'NotificationTopicArn must be a string',
    Properties+::: {
      NotificationTopicArn: NotificationTopicArn,
    },
  },
  withAutomaticFailoverEnabled(AutomaticFailoverEnabled): {
    assert std.isBoolean(AutomaticFailoverEnabled) : 'AutomaticFailoverEnabled must be a boolean',
    Properties+::: {
      AutomaticFailoverEnabled: AutomaticFailoverEnabled,
    },
  },
  withReplicasPerNodeGroup(ReplicasPerNodeGroup): {
    assert std.isNumber(ReplicasPerNodeGroup) : 'ReplicasPerNodeGroup must be a number',
    Properties+::: {
      ReplicasPerNodeGroup: ReplicasPerNodeGroup,
    },
  },
  withTransitEncryptionEnabled(TransitEncryptionEnabled): {
    assert std.isBoolean(TransitEncryptionEnabled) : 'TransitEncryptionEnabled must be a boolean',
    Properties+::: {
      TransitEncryptionEnabled: TransitEncryptionEnabled,
    },
  },
  withEngine(Engine): {
    assert std.isString(Engine) : 'Engine must be a string',
    Properties+::: {
      Engine: Engine,
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
  withPrimaryEndPointAddress(PrimaryEndPointAddress): {
    assert std.isString(PrimaryEndPointAddress) : 'PrimaryEndPointAddress must be a string',
    Properties+::: {
      PrimaryEndPointAddress: PrimaryEndPointAddress,
    },
  },
  withGlobalReplicationGroupId(GlobalReplicationGroupId): {
    assert std.isString(GlobalReplicationGroupId) : 'GlobalReplicationGroupId must be a string',
    Properties+::: {
      GlobalReplicationGroupId: GlobalReplicationGroupId,
    },
  },
  withConfigurationEndPointAddress(ConfigurationEndPointAddress): {
    assert std.isString(ConfigurationEndPointAddress) : 'ConfigurationEndPointAddress must be a string',
    Properties+::: {
      ConfigurationEndPointAddress: ConfigurationEndPointAddress,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withPrimaryClusterId(PrimaryClusterId): {
    assert std.isString(PrimaryClusterId) : 'PrimaryClusterId must be a string',
    Properties+::: {
      PrimaryClusterId: PrimaryClusterId,
    },
  },
  withReadEndPointPorts(ReadEndPointPorts): {
    assert std.isString(ReadEndPointPorts) : 'ReadEndPointPorts must be a string',
    Properties+::: {
      ReadEndPointPorts: ReadEndPointPorts,
    },
  },
  withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
    Properties+::: {
      AutoMinorVersionUpgrade: AutoMinorVersionUpgrade,
    },
  },
  withSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withSnapshotWindow(SnapshotWindow): {
    assert std.isString(SnapshotWindow) : 'SnapshotWindow must be a string',
    Properties+::: {
      SnapshotWindow: SnapshotWindow,
    },
  },
  withTransitEncryptionMode(TransitEncryptionMode): {
    assert std.isString(TransitEncryptionMode) : 'TransitEncryptionMode must be a string',
    Properties+::: {
      TransitEncryptionMode: TransitEncryptionMode,
    },
  },
  withSnapshotRetentionLimit(SnapshotRetentionLimit): {
    assert std.isNumber(SnapshotRetentionLimit) : 'SnapshotRetentionLimit must be a number',
    Properties+::: {
      SnapshotRetentionLimit: SnapshotRetentionLimit,
    },
  },
  withReadEndPointAddressesList(ReadEndPointAddressesList): {
    Properties+::: {
      ReadEndPointAddressesList: (if std.isArray(ReadEndPointAddressesList) then ReadEndPointAddressesList else [ReadEndPointAddressesList]),
    },
  },
  withReadEndPointAddressesListMixin(ReadEndPointAddressesList): {
    Properties+::: {
      ReadEndPointAddressesList+: (if std.isArray(ReadEndPointAddressesList) then ReadEndPointAddressesList else [ReadEndPointAddressesList]),
    },
  },
  withSnapshottingClusterId(SnapshottingClusterId): {
    assert std.isString(SnapshottingClusterId) : 'SnapshottingClusterId must be a string',
    Properties+::: {
      SnapshottingClusterId: SnapshottingClusterId,
    },
  },
  withIpDiscovery(IpDiscovery): {
    assert std.isString(IpDiscovery) : 'IpDiscovery must be a string',
    Properties+::: {
      IpDiscovery: IpDiscovery,
    },
  },
  withReadEndPointAddresses(ReadEndPointAddresses): {
    assert std.isString(ReadEndPointAddresses) : 'ReadEndPointAddresses must be a string',
    Properties+::: {
      ReadEndPointAddresses: ReadEndPointAddresses,
    },
  },
  withPrimaryEndPointPort(PrimaryEndPointPort): {
    assert std.isString(PrimaryEndPointPort) : 'PrimaryEndPointPort must be a string',
    Properties+::: {
      PrimaryEndPointPort: PrimaryEndPointPort,
    },
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
  withClusterMode(ClusterMode): {
    assert std.isString(ClusterMode) : 'ClusterMode must be a string',
    Properties+::: {
      ClusterMode: ClusterMode,
    },
  },
  withReadEndPointPortsList(ReadEndPointPortsList): {
    Properties+::: {
      ReadEndPointPortsList: (if std.isArray(ReadEndPointPortsList) then ReadEndPointPortsList else [ReadEndPointPortsList]),
    },
  },
  withReadEndPointPortsListMixin(ReadEndPointPortsList): {
    Properties+::: {
      ReadEndPointPortsList+: (if std.isArray(ReadEndPointPortsList) then ReadEndPointPortsList else [ReadEndPointPortsList]),
    },
  },
  withSnapshotName(SnapshotName): {
    assert std.isString(SnapshotName) : 'SnapshotName must be a string',
    Properties+::: {
      SnapshotName: SnapshotName,
    },
  },
  withReaderEndPointAddress(ReaderEndPointAddress): {
    assert std.isString(ReaderEndPointAddress) : 'ReaderEndPointAddress must be a string',
    Properties+::: {
      ReaderEndPointAddress: ReaderEndPointAddress,
    },
  },
  withMultiAZEnabled(MultiAZEnabled): {
    assert std.isBoolean(MultiAZEnabled) : 'MultiAZEnabled must be a boolean',
    Properties+::: {
      MultiAZEnabled: MultiAZEnabled,
    },
  },
  withNetworkType(NetworkType): {
    assert std.isString(NetworkType) : 'NetworkType must be a string',
    Properties+::: {
      NetworkType: NetworkType,
    },
  },
  withReplicationGroupId(ReplicationGroupId): {
    assert std.isString(ReplicationGroupId) : 'ReplicationGroupId must be a string',
    Properties+::: {
      ReplicationGroupId: ReplicationGroupId,
    },
  },
  withNumCacheClusters(NumCacheClusters): {
    assert std.isNumber(NumCacheClusters) : 'NumCacheClusters must be a number',
    Properties+::: {
      NumCacheClusters: NumCacheClusters,
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
  withAtRestEncryptionEnabled(AtRestEncryptionEnabled): {
    assert std.isBoolean(AtRestEncryptionEnabled) : 'AtRestEncryptionEnabled must be a boolean',
    Properties+::: {
      AtRestEncryptionEnabled: AtRestEncryptionEnabled,
    },
  },
  withCacheNodeType(CacheNodeType): {
    assert std.isString(CacheNodeType) : 'CacheNodeType must be a string',
    Properties+::: {
      CacheNodeType: CacheNodeType,
    },
  },
  withUserGroupIds(UserGroupIds): {
    Properties+::: {
      UserGroupIds: (if std.isArray(UserGroupIds) then UserGroupIds else [UserGroupIds]),
    },
  },
  withUserGroupIdsMixin(UserGroupIds): {
    Properties+::: {
      UserGroupIds+: (if std.isArray(UserGroupIds) then UserGroupIds else [UserGroupIds]),
    },
  },
  withAuthToken(AuthToken): {
    assert std.isString(AuthToken) : 'AuthToken must be a string',
    Properties+::: {
      AuthToken: AuthToken,
    },
  },
  withDataTieringEnabled(DataTieringEnabled): {
    assert std.isBoolean(DataTieringEnabled) : 'DataTieringEnabled must be a boolean',
    Properties+::: {
      DataTieringEnabled: DataTieringEnabled,
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
