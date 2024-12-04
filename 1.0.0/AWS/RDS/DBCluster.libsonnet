{
  // AWS RDS DBCluster
  DBCluster: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RDS::DBCluster',
    },
    withEndpoint(Endpoint): {
      assert std.isObject(Endpoint) : 'Endpoint must be a object',
      Properties+::: {
        Endpoint: Endpoint,
      },
    },
    withReadEndpoint(ReadEndpoint): {
      assert std.isObject(ReadEndpoint) : 'ReadEndpoint must be a object',
      Properties+::: {
        ReadEndpoint: ReadEndpoint,
      },
    },
    withAllocatedStorage(AllocatedStorage): {
      assert std.isNumber(AllocatedStorage) : 'AllocatedStorage must be a number',
      Properties+::: {
        AllocatedStorage: AllocatedStorage,
      },
    },
    withAssociatedRoles(AssociatedRoles): {
      Properties+::: {
        AssociatedRoles: (if std.isArray(AssociatedRoles) then AssociatedRoles else [AssociatedRoles]),
      },
    },
    withAssociatedRolesMixin(AssociatedRoles): {
      Properties+::: {
        AssociatedRoles+: (if std.isArray(AssociatedRoles) then AssociatedRoles else [AssociatedRoles]),
      },
    },
    withAvailabilityZones(AvailabilityZones): {
      Properties+::: {
        AvailabilityZones: (if std.isArray(AvailabilityZones) then AvailabilityZones else [AvailabilityZones]),
      },
    },
    withAvailabilityZonesMixin(AvailabilityZones): {
      Properties+::: {
        AvailabilityZones+: (if std.isArray(AvailabilityZones) then AvailabilityZones else [AvailabilityZones]),
      },
    },
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: {
        AutoMinorVersionUpgrade: AutoMinorVersionUpgrade,
      },
    },
    withBacktrackWindow(BacktrackWindow): {
      assert std.isNumber(BacktrackWindow) : 'BacktrackWindow must be a number',
      Properties+::: {
        BacktrackWindow: BacktrackWindow,
      },
    },
    withBackupRetentionPeriod(BackupRetentionPeriod): {
      assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a number',
      Properties+::: {
        BackupRetentionPeriod: BackupRetentionPeriod,
      },
    },
    withClusterScalabilityType(ClusterScalabilityType): {
      assert std.isString(ClusterScalabilityType) : 'ClusterScalabilityType must be a string',
      Properties+::: {
        ClusterScalabilityType: ClusterScalabilityType,
      },
    },
    withCopyTagsToSnapshot(CopyTagsToSnapshot): {
      assert std.isBoolean(CopyTagsToSnapshot) : 'CopyTagsToSnapshot must be a boolean',
      Properties+::: {
        CopyTagsToSnapshot: CopyTagsToSnapshot,
      },
    },
    withDatabaseName(DatabaseName): {
      assert std.isString(DatabaseName) : 'DatabaseName must be a string',
      Properties+::: {
        DatabaseName: DatabaseName,
      },
    },
    withDBClusterArn(DBClusterArn): {
      assert std.isString(DBClusterArn) : 'DBClusterArn must be a string',
      Properties+::: {
        DBClusterArn: DBClusterArn,
      },
    },
    withDBClusterInstanceClass(DBClusterInstanceClass): {
      assert std.isString(DBClusterInstanceClass) : 'DBClusterInstanceClass must be a string',
      Properties+::: {
        DBClusterInstanceClass: DBClusterInstanceClass,
      },
    },
    withDBClusterResourceId(DBClusterResourceId): {
      assert std.isString(DBClusterResourceId) : 'DBClusterResourceId must be a string',
      Properties+::: {
        DBClusterResourceId: DBClusterResourceId,
      },
    },
    withDBInstanceParameterGroupName(DBInstanceParameterGroupName): {
      assert std.isString(DBInstanceParameterGroupName) : 'DBInstanceParameterGroupName must be a string',
      Properties+::: {
        DBInstanceParameterGroupName: DBInstanceParameterGroupName,
      },
    },
    withDBSystemId(DBSystemId): {
      assert std.isString(DBSystemId) : 'DBSystemId must be a string',
      Properties+::: {
        DBSystemId: DBSystemId,
      },
    },
    withGlobalClusterIdentifier(GlobalClusterIdentifier): {
      assert std.isString(GlobalClusterIdentifier) : 'GlobalClusterIdentifier must be a string',
      Properties+::: {
        GlobalClusterIdentifier: GlobalClusterIdentifier,
      },
    },
    withDBClusterIdentifier(DBClusterIdentifier): {
      assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
      Properties+::: {
        DBClusterIdentifier: DBClusterIdentifier,
      },
    },
    withDBClusterParameterGroupName(DBClusterParameterGroupName): {
      assert std.isString(DBClusterParameterGroupName) : 'DBClusterParameterGroupName must be a string',
      Properties+::: {
        DBClusterParameterGroupName: DBClusterParameterGroupName,
      },
    },
    withDBSubnetGroupName(DBSubnetGroupName): {
      assert std.isString(DBSubnetGroupName) : 'DBSubnetGroupName must be a string',
      Properties+::: {
        DBSubnetGroupName: DBSubnetGroupName,
      },
    },
    withDeletionProtection(DeletionProtection): {
      assert std.isBoolean(DeletionProtection) : 'DeletionProtection must be a boolean',
      Properties+::: {
        DeletionProtection: DeletionProtection,
      },
    },
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      Properties+::: {
        Domain: Domain,
      },
    },
    withDomainIAMRoleName(DomainIAMRoleName): {
      assert std.isString(DomainIAMRoleName) : 'DomainIAMRoleName must be a string',
      Properties+::: {
        DomainIAMRoleName: DomainIAMRoleName,
      },
    },
    withEnableCloudwatchLogsExports(EnableCloudwatchLogsExports): {
      Properties+::: {
        EnableCloudwatchLogsExports: (if std.isArray(EnableCloudwatchLogsExports) then EnableCloudwatchLogsExports else [EnableCloudwatchLogsExports]),
      },
    },
    withEnableCloudwatchLogsExportsMixin(EnableCloudwatchLogsExports): {
      Properties+::: {
        EnableCloudwatchLogsExports+: (if std.isArray(EnableCloudwatchLogsExports) then EnableCloudwatchLogsExports else [EnableCloudwatchLogsExports]),
      },
    },
    withEnableGlobalWriteForwarding(EnableGlobalWriteForwarding): {
      assert std.isBoolean(EnableGlobalWriteForwarding) : 'EnableGlobalWriteForwarding must be a boolean',
      Properties+::: {
        EnableGlobalWriteForwarding: EnableGlobalWriteForwarding,
      },
    },
    withEnableHttpEndpoint(EnableHttpEndpoint): {
      assert std.isBoolean(EnableHttpEndpoint) : 'EnableHttpEndpoint must be a boolean',
      Properties+::: {
        EnableHttpEndpoint: EnableHttpEndpoint,
      },
    },
    withEnableIAMDatabaseAuthentication(EnableIAMDatabaseAuthentication): {
      assert std.isBoolean(EnableIAMDatabaseAuthentication) : 'EnableIAMDatabaseAuthentication must be a boolean',
      Properties+::: {
        EnableIAMDatabaseAuthentication: EnableIAMDatabaseAuthentication,
      },
    },
    withEnableLocalWriteForwarding(EnableLocalWriteForwarding): {
      assert std.isBoolean(EnableLocalWriteForwarding) : 'EnableLocalWriteForwarding must be a boolean',
      Properties+::: {
        EnableLocalWriteForwarding: EnableLocalWriteForwarding,
      },
    },
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: {
        Engine: Engine,
      },
    },
    withEngineLifecycleSupport(EngineLifecycleSupport): {
      assert std.isString(EngineLifecycleSupport) : 'EngineLifecycleSupport must be a string',
      Properties+::: {
        EngineLifecycleSupport: EngineLifecycleSupport,
      },
    },
    withEngineMode(EngineMode): {
      assert std.isString(EngineMode) : 'EngineMode must be a string',
      Properties+::: {
        EngineMode: EngineMode,
      },
    },
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: {
        EngineVersion: EngineVersion,
      },
    },
    withManageMasterUserPassword(ManageMasterUserPassword): {
      assert std.isBoolean(ManageMasterUserPassword) : 'ManageMasterUserPassword must be a boolean',
      Properties+::: {
        ManageMasterUserPassword: ManageMasterUserPassword,
      },
    },
    withIops(Iops): {
      assert std.isNumber(Iops) : 'Iops must be a number',
      Properties+::: {
        Iops: Iops,
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withMasterUsername(MasterUsername): {
      assert std.isString(MasterUsername) : 'MasterUsername must be a string',
      Properties+::: {
        MasterUsername: MasterUsername,
      },
    },
    withMasterUserPassword(MasterUserPassword): {
      assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
      Properties+::: {
        MasterUserPassword: MasterUserPassword,
      },
    },
    withMasterUserSecret(MasterUserSecret): {
      assert std.isObject(MasterUserSecret) : 'MasterUserSecret must be a object',
      Properties+::: {
        MasterUserSecret: MasterUserSecret,
      },
    },
    withMonitoringInterval(MonitoringInterval): {
      assert std.isNumber(MonitoringInterval) : 'MonitoringInterval must be a number',
      Properties+::: {
        MonitoringInterval: MonitoringInterval,
      },
    },
    withMonitoringRoleArn(MonitoringRoleArn): {
      assert std.isString(MonitoringRoleArn) : 'MonitoringRoleArn must be a string',
      Properties+::: {
        MonitoringRoleArn: MonitoringRoleArn,
      },
    },
    withNetworkType(NetworkType): {
      assert std.isString(NetworkType) : 'NetworkType must be a string',
      Properties+::: {
        NetworkType: NetworkType,
      },
    },
    withPerformanceInsightsEnabled(PerformanceInsightsEnabled): {
      assert std.isBoolean(PerformanceInsightsEnabled) : 'PerformanceInsightsEnabled must be a boolean',
      Properties+::: {
        PerformanceInsightsEnabled: PerformanceInsightsEnabled,
      },
    },
    withPerformanceInsightsKmsKeyId(PerformanceInsightsKmsKeyId): {
      assert std.isString(PerformanceInsightsKmsKeyId) : 'PerformanceInsightsKmsKeyId must be a string',
      Properties+::: {
        PerformanceInsightsKmsKeyId: PerformanceInsightsKmsKeyId,
      },
    },
    withPerformanceInsightsRetentionPeriod(PerformanceInsightsRetentionPeriod): {
      assert std.isNumber(PerformanceInsightsRetentionPeriod) : 'PerformanceInsightsRetentionPeriod must be a number',
      Properties+::: {
        PerformanceInsightsRetentionPeriod: PerformanceInsightsRetentionPeriod,
      },
    },
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a number',
      Properties+::: {
        Port: Port,
      },
    },
    withPreferredBackupWindow(PreferredBackupWindow): {
      assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
      Properties+::: {
        PreferredBackupWindow: PreferredBackupWindow,
      },
    },
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: {
        PreferredMaintenanceWindow: PreferredMaintenanceWindow,
      },
    },
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: {
        PubliclyAccessible: PubliclyAccessible,
      },
    },
    withReplicationSourceIdentifier(ReplicationSourceIdentifier): {
      assert std.isString(ReplicationSourceIdentifier) : 'ReplicationSourceIdentifier must be a string',
      Properties+::: {
        ReplicationSourceIdentifier: ReplicationSourceIdentifier,
      },
    },
    withRestoreToTime(RestoreToTime): {
      assert std.isString(RestoreToTime) : 'RestoreToTime must be a string',
      Properties+::: {
        RestoreToTime: RestoreToTime,
      },
    },
    withRestoreType(RestoreType): {
      assert std.isString(RestoreType) : 'RestoreType must be a string',
      Properties+::: {
        RestoreType: RestoreType,
      },
    },
    withServerlessV2ScalingConfiguration(ServerlessV2ScalingConfiguration): {
      assert std.isObject(ServerlessV2ScalingConfiguration) : 'ServerlessV2ScalingConfiguration must be a object',
      Properties+::: {
        ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration,
      },
    },
    withScalingConfiguration(ScalingConfiguration): {
      assert std.isObject(ScalingConfiguration) : 'ScalingConfiguration must be a object',
      Properties+::: {
        ScalingConfiguration: ScalingConfiguration,
      },
    },
    withSnapshotIdentifier(SnapshotIdentifier): {
      assert std.isString(SnapshotIdentifier) : 'SnapshotIdentifier must be a string',
      Properties+::: {
        SnapshotIdentifier: SnapshotIdentifier,
      },
    },
    withSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
      assert std.isString(SourceDBClusterIdentifier) : 'SourceDBClusterIdentifier must be a string',
      Properties+::: {
        SourceDBClusterIdentifier: SourceDBClusterIdentifier,
      },
    },
    withSourceRegion(SourceRegion): {
      assert std.isString(SourceRegion) : 'SourceRegion must be a string',
      Properties+::: {
        SourceRegion: SourceRegion,
      },
    },
    withStorageEncrypted(StorageEncrypted): {
      assert std.isBoolean(StorageEncrypted) : 'StorageEncrypted must be a boolean',
      Properties+::: {
        StorageEncrypted: StorageEncrypted,
      },
    },
    withStorageThroughput(StorageThroughput): {
      assert std.isNumber(StorageThroughput) : 'StorageThroughput must be a number',
      Properties+::: {
        StorageThroughput: StorageThroughput,
      },
    },
    withStorageType(StorageType): {
      assert std.isString(StorageType) : 'StorageType must be a string',
      Properties+::: {
        StorageType: StorageType,
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
    withUseLatestRestorableTime(UseLatestRestorableTime): {
      assert std.isBoolean(UseLatestRestorableTime) : 'UseLatestRestorableTime must be a boolean',
      Properties+::: {
        UseLatestRestorableTime: UseLatestRestorableTime,
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
  },
}
