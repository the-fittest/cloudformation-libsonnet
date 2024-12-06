{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::DBCluster',
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isObject(Endpoint) then (error 'Endpoint must be an object')
        else Endpoint,
    },
  },
  setReadEndpoint(ReadEndpoint): {
    Properties+::: {
      ReadEndpoint:
        if !std.isObject(ReadEndpoint) then (error 'ReadEndpoint must be an object')
        else ReadEndpoint,
    },
  },
  setAllocatedStorage(AllocatedStorage): {
    Properties+::: {
      AllocatedStorage:
        if !std.isNumber(AllocatedStorage) then (error 'AllocatedStorage must be an number')
        else AllocatedStorage,
    },
  },
  setAssociatedRoles(AssociatedRoles): {
    Properties+::: {
      AssociatedRoles:
        if !std.isArray(AssociatedRoles) then (error 'AssociatedRoles must be an array')
        else AssociatedRoles,
    },
  },
  pushAssociatedRoles(AssociatedRoles): {
    Properties+::: {
      AssociatedRoles+: AssociatedRoles,
    },
  },
  setAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones:
        if !std.isArray(AvailabilityZones) then (error 'AvailabilityZones must be an array')
        else AvailabilityZones,
    },
  },
  pushAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones+: AvailabilityZones,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
    },
  },
  setBacktrackWindow(BacktrackWindow): {
    Properties+::: {
      BacktrackWindow:
        if !std.isNumber(BacktrackWindow) then (error 'BacktrackWindow must be an number')
        else BacktrackWindow,
    },
  },
  setBackupRetentionPeriod(BackupRetentionPeriod): {
    Properties+::: {
      BackupRetentionPeriod:
        if !std.isNumber(BackupRetentionPeriod) then (error 'BackupRetentionPeriod must be an number')
        else if BackupRetentionPeriod < 1 then error ('BackupRetentionPeriod should be at least 1')
        else BackupRetentionPeriod,
    },
  },
  setClusterScalabilityType(ClusterScalabilityType): {
    Properties+::: {
      ClusterScalabilityType:
        if !std.isString(ClusterScalabilityType) then (error 'ClusterScalabilityType must be a string')
        else if std.isEmpty(ClusterScalabilityType) then (error 'ClusterScalabilityType must be not empty')
        else ClusterScalabilityType,
    },
  },
  setCopyTagsToSnapshot(CopyTagsToSnapshot): {
    Properties+::: {
      CopyTagsToSnapshot:
        if !std.isBoolean(CopyTagsToSnapshot) then (error 'CopyTagsToSnapshot must be a boolean') else CopyTagsToSnapshot,
    },
  },
  setDatabaseName(DatabaseName): {
    Properties+::: {
      DatabaseName:
        if !std.isString(DatabaseName) then (error 'DatabaseName must be a string')
        else if std.isEmpty(DatabaseName) then (error 'DatabaseName must be not empty')
        else DatabaseName,
    },
  },
  setDBClusterArn(DBClusterArn): {
    Properties+::: {
      DBClusterArn:
        if !std.isString(DBClusterArn) then (error 'DBClusterArn must be a string')
        else if std.isEmpty(DBClusterArn) then (error 'DBClusterArn must be not empty')
        else DBClusterArn,
    },
  },
  setDBClusterInstanceClass(DBClusterInstanceClass): {
    Properties+::: {
      DBClusterInstanceClass:
        if !std.isString(DBClusterInstanceClass) then (error 'DBClusterInstanceClass must be a string')
        else if std.isEmpty(DBClusterInstanceClass) then (error 'DBClusterInstanceClass must be not empty')
        else DBClusterInstanceClass,
    },
  },
  setDBClusterResourceId(DBClusterResourceId): {
    Properties+::: {
      DBClusterResourceId:
        if !std.isString(DBClusterResourceId) then (error 'DBClusterResourceId must be a string')
        else if std.isEmpty(DBClusterResourceId) then (error 'DBClusterResourceId must be not empty')
        else DBClusterResourceId,
    },
  },
  setDBInstanceParameterGroupName(DBInstanceParameterGroupName): {
    Properties+::: {
      DBInstanceParameterGroupName:
        if !std.isString(DBInstanceParameterGroupName) then (error 'DBInstanceParameterGroupName must be a string')
        else if std.isEmpty(DBInstanceParameterGroupName) then (error 'DBInstanceParameterGroupName must be not empty')
        else DBInstanceParameterGroupName,
    },
  },
  setDBSystemId(DBSystemId): {
    Properties+::: {
      DBSystemId:
        if !std.isString(DBSystemId) then (error 'DBSystemId must be a string')
        else if std.isEmpty(DBSystemId) then (error 'DBSystemId must be not empty')
        else DBSystemId,
    },
  },
  setGlobalClusterIdentifier(GlobalClusterIdentifier): {
    Properties+::: {
      GlobalClusterIdentifier:
        if !std.isString(GlobalClusterIdentifier) then (error 'GlobalClusterIdentifier must be a string')
        else if std.isEmpty(GlobalClusterIdentifier) then (error 'GlobalClusterIdentifier must be not empty')
        else if std.length(GlobalClusterIdentifier) > 63 then error ('GlobalClusterIdentifier should have not more than 63 characters')
        else GlobalClusterIdentifier,
    },
  },
  setDBClusterIdentifier(DBClusterIdentifier): {
    Properties+::: {
      DBClusterIdentifier:
        if !std.isString(DBClusterIdentifier) then (error 'DBClusterIdentifier must be a string')
        else if std.isEmpty(DBClusterIdentifier) then (error 'DBClusterIdentifier must be not empty')
        else if std.length(DBClusterIdentifier) < 1 then error ('DBClusterIdentifier should have at least 1 characters')
        else if std.length(DBClusterIdentifier) > 63 then error ('DBClusterIdentifier should have not more than 63 characters')
        else DBClusterIdentifier,
    },
  },
  setDBClusterParameterGroupName(DBClusterParameterGroupName): {
    Properties+::: {
      DBClusterParameterGroupName:
        if !std.isString(DBClusterParameterGroupName) then (error 'DBClusterParameterGroupName must be a string')
        else if std.isEmpty(DBClusterParameterGroupName) then (error 'DBClusterParameterGroupName must be not empty')
        else DBClusterParameterGroupName,
    },
  },
  setDBSubnetGroupName(DBSubnetGroupName): {
    Properties+::: {
      DBSubnetGroupName:
        if !std.isString(DBSubnetGroupName) then (error 'DBSubnetGroupName must be a string')
        else if std.isEmpty(DBSubnetGroupName) then (error 'DBSubnetGroupName must be not empty')
        else DBSubnetGroupName,
    },
  },
  setDeletionProtection(DeletionProtection): {
    Properties+::: {
      DeletionProtection:
        if !std.isBoolean(DeletionProtection) then (error 'DeletionProtection must be a boolean') else DeletionProtection,
    },
  },
  setDomain(Domain): {
    Properties+::: {
      Domain:
        if !std.isString(Domain) then (error 'Domain must be a string')
        else if std.isEmpty(Domain) then (error 'Domain must be not empty')
        else Domain,
    },
  },
  setDomainIAMRoleName(DomainIAMRoleName): {
    Properties+::: {
      DomainIAMRoleName:
        if !std.isString(DomainIAMRoleName) then (error 'DomainIAMRoleName must be a string')
        else if std.isEmpty(DomainIAMRoleName) then (error 'DomainIAMRoleName must be not empty')
        else DomainIAMRoleName,
    },
  },
  setEnableCloudwatchLogsExports(EnableCloudwatchLogsExports): {
    Properties+::: {
      EnableCloudwatchLogsExports:
        if !std.isArray(EnableCloudwatchLogsExports) then (error 'EnableCloudwatchLogsExports must be an array')
        else EnableCloudwatchLogsExports,
    },
  },
  pushEnableCloudwatchLogsExports(EnableCloudwatchLogsExports): {
    Properties+::: {
      EnableCloudwatchLogsExports+: EnableCloudwatchLogsExports,
    },
  },
  setEnableGlobalWriteForwarding(EnableGlobalWriteForwarding): {
    Properties+::: {
      EnableGlobalWriteForwarding:
        if !std.isBoolean(EnableGlobalWriteForwarding) then (error 'EnableGlobalWriteForwarding must be a boolean') else EnableGlobalWriteForwarding,
    },
  },
  setEnableHttpEndpoint(EnableHttpEndpoint): {
    Properties+::: {
      EnableHttpEndpoint:
        if !std.isBoolean(EnableHttpEndpoint) then (error 'EnableHttpEndpoint must be a boolean') else EnableHttpEndpoint,
    },
  },
  setEnableIAMDatabaseAuthentication(EnableIAMDatabaseAuthentication): {
    Properties+::: {
      EnableIAMDatabaseAuthentication:
        if !std.isBoolean(EnableIAMDatabaseAuthentication) then (error 'EnableIAMDatabaseAuthentication must be a boolean') else EnableIAMDatabaseAuthentication,
    },
  },
  setEnableLocalWriteForwarding(EnableLocalWriteForwarding): {
    Properties+::: {
      EnableLocalWriteForwarding:
        if !std.isBoolean(EnableLocalWriteForwarding) then (error 'EnableLocalWriteForwarding must be a boolean') else EnableLocalWriteForwarding,
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
  setEngineLifecycleSupport(EngineLifecycleSupport): {
    Properties+::: {
      EngineLifecycleSupport:
        if !std.isString(EngineLifecycleSupport) then (error 'EngineLifecycleSupport must be a string')
        else if std.isEmpty(EngineLifecycleSupport) then (error 'EngineLifecycleSupport must be not empty')
        else EngineLifecycleSupport,
    },
  },
  setEngineMode(EngineMode): {
    Properties+::: {
      EngineMode:
        if !std.isString(EngineMode) then (error 'EngineMode must be a string')
        else if std.isEmpty(EngineMode) then (error 'EngineMode must be not empty')
        else EngineMode,
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
  setManageMasterUserPassword(ManageMasterUserPassword): {
    Properties+::: {
      ManageMasterUserPassword:
        if !std.isBoolean(ManageMasterUserPassword) then (error 'ManageMasterUserPassword must be a boolean') else ManageMasterUserPassword,
    },
  },
  setIops(Iops): {
    Properties+::: {
      Iops:
        if !std.isNumber(Iops) then (error 'Iops must be an number')
        else Iops,
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
  setMasterUsername(MasterUsername): {
    Properties+::: {
      MasterUsername:
        if !std.isString(MasterUsername) then (error 'MasterUsername must be a string')
        else if std.isEmpty(MasterUsername) then (error 'MasterUsername must be not empty')
        else if std.length(MasterUsername) < 1 then error ('MasterUsername should have at least 1 characters')
        else MasterUsername,
    },
  },
  setMasterUserPassword(MasterUserPassword): {
    Properties+::: {
      MasterUserPassword:
        if !std.isString(MasterUserPassword) then (error 'MasterUserPassword must be a string')
        else if std.isEmpty(MasterUserPassword) then (error 'MasterUserPassword must be not empty')
        else MasterUserPassword,
    },
  },
  setMasterUserSecret(MasterUserSecret): {
    Properties+::: {
      MasterUserSecret:
        if !std.isObject(MasterUserSecret) then (error 'MasterUserSecret must be an object')
        else MasterUserSecret,
    },
  },
  setMonitoringInterval(MonitoringInterval): {
    Properties+::: {
      MonitoringInterval:
        if !std.isNumber(MonitoringInterval) then (error 'MonitoringInterval must be an number')
        else MonitoringInterval,
    },
  },
  setMonitoringRoleArn(MonitoringRoleArn): {
    Properties+::: {
      MonitoringRoleArn:
        if !std.isString(MonitoringRoleArn) then (error 'MonitoringRoleArn must be a string')
        else if std.isEmpty(MonitoringRoleArn) then (error 'MonitoringRoleArn must be not empty')
        else MonitoringRoleArn,
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
  setPerformanceInsightsEnabled(PerformanceInsightsEnabled): {
    Properties+::: {
      PerformanceInsightsEnabled:
        if !std.isBoolean(PerformanceInsightsEnabled) then (error 'PerformanceInsightsEnabled must be a boolean') else PerformanceInsightsEnabled,
    },
  },
  setPerformanceInsightsKmsKeyId(PerformanceInsightsKmsKeyId): {
    Properties+::: {
      PerformanceInsightsKmsKeyId:
        if !std.isString(PerformanceInsightsKmsKeyId) then (error 'PerformanceInsightsKmsKeyId must be a string')
        else if std.isEmpty(PerformanceInsightsKmsKeyId) then (error 'PerformanceInsightsKmsKeyId must be not empty')
        else PerformanceInsightsKmsKeyId,
    },
  },
  setPerformanceInsightsRetentionPeriod(PerformanceInsightsRetentionPeriod): {
    Properties+::: {
      PerformanceInsightsRetentionPeriod:
        if !std.isNumber(PerformanceInsightsRetentionPeriod) then (error 'PerformanceInsightsRetentionPeriod must be an number')
        else PerformanceInsightsRetentionPeriod,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setPreferredBackupWindow(PreferredBackupWindow): {
    Properties+::: {
      PreferredBackupWindow:
        if !std.isString(PreferredBackupWindow) then (error 'PreferredBackupWindow must be a string')
        else if std.isEmpty(PreferredBackupWindow) then (error 'PreferredBackupWindow must be not empty')
        else PreferredBackupWindow,
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
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
    },
  },
  setReplicationSourceIdentifier(ReplicationSourceIdentifier): {
    Properties+::: {
      ReplicationSourceIdentifier:
        if !std.isString(ReplicationSourceIdentifier) then (error 'ReplicationSourceIdentifier must be a string')
        else if std.isEmpty(ReplicationSourceIdentifier) then (error 'ReplicationSourceIdentifier must be not empty')
        else ReplicationSourceIdentifier,
    },
  },
  setRestoreToTime(RestoreToTime): {
    Properties+::: {
      RestoreToTime:
        if !std.isString(RestoreToTime) then (error 'RestoreToTime must be a string')
        else if std.isEmpty(RestoreToTime) then (error 'RestoreToTime must be not empty')
        else RestoreToTime,
    },
  },
  setRestoreType(RestoreType): {
    Properties+::: {
      RestoreType:
        if !std.isString(RestoreType) then (error 'RestoreType must be a string')
        else if std.isEmpty(RestoreType) then (error 'RestoreType must be not empty')
        else RestoreType,
    },
  },
  setServerlessV2ScalingConfiguration(ServerlessV2ScalingConfiguration): {
    Properties+::: {
      ServerlessV2ScalingConfiguration:
        if !std.isObject(ServerlessV2ScalingConfiguration) then (error 'ServerlessV2ScalingConfiguration must be an object')
        else ServerlessV2ScalingConfiguration,
    },
  },
  setScalingConfiguration(ScalingConfiguration): {
    Properties+::: {
      ScalingConfiguration:
        if !std.isObject(ScalingConfiguration) then (error 'ScalingConfiguration must be an object')
        else ScalingConfiguration,
    },
  },
  setSnapshotIdentifier(SnapshotIdentifier): {
    Properties+::: {
      SnapshotIdentifier:
        if !std.isString(SnapshotIdentifier) then (error 'SnapshotIdentifier must be a string')
        else if std.isEmpty(SnapshotIdentifier) then (error 'SnapshotIdentifier must be not empty')
        else SnapshotIdentifier,
    },
  },
  setSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
    Properties+::: {
      SourceDBClusterIdentifier:
        if !std.isString(SourceDBClusterIdentifier) then (error 'SourceDBClusterIdentifier must be a string')
        else if std.isEmpty(SourceDBClusterIdentifier) then (error 'SourceDBClusterIdentifier must be not empty')
        else SourceDBClusterIdentifier,
    },
  },
  setSourceRegion(SourceRegion): {
    Properties+::: {
      SourceRegion:
        if !std.isString(SourceRegion) then (error 'SourceRegion must be a string')
        else if std.isEmpty(SourceRegion) then (error 'SourceRegion must be not empty')
        else SourceRegion,
    },
  },
  setStorageEncrypted(StorageEncrypted): {
    Properties+::: {
      StorageEncrypted:
        if !std.isBoolean(StorageEncrypted) then (error 'StorageEncrypted must be a boolean') else StorageEncrypted,
    },
  },
  setStorageThroughput(StorageThroughput): {
    Properties+::: {
      StorageThroughput:
        if !std.isNumber(StorageThroughput) then (error 'StorageThroughput must be an number')
        else StorageThroughput,
    },
  },
  setStorageType(StorageType): {
    Properties+::: {
      StorageType:
        if !std.isString(StorageType) then (error 'StorageType must be a string')
        else if std.isEmpty(StorageType) then (error 'StorageType must be not empty')
        else StorageType,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setUseLatestRestorableTime(UseLatestRestorableTime): {
    Properties+::: {
      UseLatestRestorableTime:
        if !std.isBoolean(UseLatestRestorableTime) then (error 'UseLatestRestorableTime must be a boolean') else UseLatestRestorableTime,
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
