{
  // AWS RDS DBInstance
  DBInstance: {
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
      Type: 'AWS::RDS::DBInstance',
    },
    withAllocatedStorage(AllocatedStorage): {
      assert std.isString(AllocatedStorage) : 'AllocatedStorage must be a string',
      Properties+::: {
        AllocatedStorage: AllocatedStorage,
      },
    },
    withAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
      assert std.isBoolean(AllowMajorVersionUpgrade) : 'AllowMajorVersionUpgrade must be a boolean',
      Properties+::: {
        AllowMajorVersionUpgrade: AllowMajorVersionUpgrade,
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
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: {
        AutoMinorVersionUpgrade: AutoMinorVersionUpgrade,
      },
    },
    withAutomaticBackupReplicationRegion(AutomaticBackupReplicationRegion): {
      assert std.isString(AutomaticBackupReplicationRegion) : 'AutomaticBackupReplicationRegion must be a string',
      Properties+::: {
        AutomaticBackupReplicationRegion: AutomaticBackupReplicationRegion,
      },
    },
    withAutomaticBackupReplicationKmsKeyId(AutomaticBackupReplicationKmsKeyId): {
      assert std.isString(AutomaticBackupReplicationKmsKeyId) : 'AutomaticBackupReplicationKmsKeyId must be a string',
      Properties+::: {
        AutomaticBackupReplicationKmsKeyId: AutomaticBackupReplicationKmsKeyId,
      },
    },
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: {
        AvailabilityZone: AvailabilityZone,
      },
    },
    withBackupRetentionPeriod(BackupRetentionPeriod): {
      assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a number',
      Properties+::: {
        BackupRetentionPeriod: BackupRetentionPeriod,
      },
    },
    withCACertificateIdentifier(CACertificateIdentifier): {
      assert std.isString(CACertificateIdentifier) : 'CACertificateIdentifier must be a string',
      Properties+::: {
        CACertificateIdentifier: CACertificateIdentifier,
      },
    },
    withCertificateDetails(CertificateDetails): {
      assert std.isObject(CertificateDetails) : 'CertificateDetails must be a object',
      Properties+::: {
        CertificateDetails: CertificateDetails,
      },
    },
    withCertificateRotationRestart(CertificateRotationRestart): {
      assert std.isBoolean(CertificateRotationRestart) : 'CertificateRotationRestart must be a boolean',
      Properties+::: {
        CertificateRotationRestart: CertificateRotationRestart,
      },
    },
    withCharacterSetName(CharacterSetName): {
      assert std.isString(CharacterSetName) : 'CharacterSetName must be a string',
      Properties+::: {
        CharacterSetName: CharacterSetName,
      },
    },
    withCopyTagsToSnapshot(CopyTagsToSnapshot): {
      assert std.isBoolean(CopyTagsToSnapshot) : 'CopyTagsToSnapshot must be a boolean',
      Properties+::: {
        CopyTagsToSnapshot: CopyTagsToSnapshot,
      },
    },
    withCustomIAMInstanceProfile(CustomIAMInstanceProfile): {
      assert std.isString(CustomIAMInstanceProfile) : 'CustomIAMInstanceProfile must be a string',
      Properties+::: {
        CustomIAMInstanceProfile: CustomIAMInstanceProfile,
      },
    },
    withDBClusterIdentifier(DBClusterIdentifier): {
      assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
      Properties+::: {
        DBClusterIdentifier: DBClusterIdentifier,
      },
    },
    withDBClusterSnapshotIdentifier(DBClusterSnapshotIdentifier): {
      assert std.isString(DBClusterSnapshotIdentifier) : 'DBClusterSnapshotIdentifier must be a string',
      Properties+::: {
        DBClusterSnapshotIdentifier: DBClusterSnapshotIdentifier,
      },
    },
    withDBInstanceArn(DBInstanceArn): {
      assert std.isString(DBInstanceArn) : 'DBInstanceArn must be a string',
      Properties+::: {
        DBInstanceArn: DBInstanceArn,
      },
    },
    withDBInstanceClass(DBInstanceClass): {
      assert std.isString(DBInstanceClass) : 'DBInstanceClass must be a string',
      Properties+::: {
        DBInstanceClass: DBInstanceClass,
      },
    },
    withDBInstanceIdentifier(DBInstanceIdentifier): {
      assert std.isString(DBInstanceIdentifier) : 'DBInstanceIdentifier must be a string',
      Properties+::: {
        DBInstanceIdentifier: DBInstanceIdentifier,
      },
    },
    withDbiResourceId(DbiResourceId): {
      assert std.isString(DbiResourceId) : 'DbiResourceId must be a string',
      Properties+::: {
        DbiResourceId: DbiResourceId,
      },
    },
    withDBName(DBName): {
      assert std.isString(DBName) : 'DBName must be a string',
      Properties+::: {
        DBName: DBName,
      },
    },
    withDBParameterGroupName(DBParameterGroupName): {
      assert std.isString(DBParameterGroupName) : 'DBParameterGroupName must be a string',
      Properties+::: {
        DBParameterGroupName: DBParameterGroupName,
      },
    },
    withDBSecurityGroups(DBSecurityGroups): {
      Properties+::: {
        DBSecurityGroups: (if std.isArray(DBSecurityGroups) then DBSecurityGroups else [DBSecurityGroups]),
      },
    },
    withDBSecurityGroupsMixin(DBSecurityGroups): {
      Properties+::: {
        DBSecurityGroups+: (if std.isArray(DBSecurityGroups) then DBSecurityGroups else [DBSecurityGroups]),
      },
    },
    withDBSnapshotIdentifier(DBSnapshotIdentifier): {
      assert std.isString(DBSnapshotIdentifier) : 'DBSnapshotIdentifier must be a string',
      Properties+::: {
        DBSnapshotIdentifier: DBSnapshotIdentifier,
      },
    },
    withDBSubnetGroupName(DBSubnetGroupName): {
      assert std.isString(DBSubnetGroupName) : 'DBSubnetGroupName must be a string',
      Properties+::: {
        DBSubnetGroupName: DBSubnetGroupName,
      },
    },
    withDBSystemId(DBSystemId): {
      assert std.isString(DBSystemId) : 'DBSystemId must be a string',
      Properties+::: {
        DBSystemId: DBSystemId,
      },
    },
    withDedicatedLogVolume(DedicatedLogVolume): {
      assert std.isBoolean(DedicatedLogVolume) : 'DedicatedLogVolume must be a boolean',
      Properties+::: {
        DedicatedLogVolume: DedicatedLogVolume,
      },
    },
    withDeleteAutomatedBackups(DeleteAutomatedBackups): {
      assert std.isBoolean(DeleteAutomatedBackups) : 'DeleteAutomatedBackups must be a boolean',
      Properties+::: {
        DeleteAutomatedBackups: DeleteAutomatedBackups,
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
    withDomainAuthSecretArn(DomainAuthSecretArn): {
      assert std.isString(DomainAuthSecretArn) : 'DomainAuthSecretArn must be a string',
      Properties+::: {
        DomainAuthSecretArn: DomainAuthSecretArn,
      },
    },
    withDomainDnsIps(DomainDnsIps): {
      Properties+::: {
        DomainDnsIps: (if std.isArray(DomainDnsIps) then DomainDnsIps else [DomainDnsIps]),
      },
    },
    withDomainDnsIpsMixin(DomainDnsIps): {
      Properties+::: {
        DomainDnsIps+: (if std.isArray(DomainDnsIps) then DomainDnsIps else [DomainDnsIps]),
      },
    },
    withDomainFqdn(DomainFqdn): {
      assert std.isString(DomainFqdn) : 'DomainFqdn must be a string',
      Properties+::: {
        DomainFqdn: DomainFqdn,
      },
    },
    withDomainIAMRoleName(DomainIAMRoleName): {
      assert std.isString(DomainIAMRoleName) : 'DomainIAMRoleName must be a string',
      Properties+::: {
        DomainIAMRoleName: DomainIAMRoleName,
      },
    },
    withDomainOu(DomainOu): {
      assert std.isString(DomainOu) : 'DomainOu must be a string',
      Properties+::: {
        DomainOu: DomainOu,
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
    withEnableIAMDatabaseAuthentication(EnableIAMDatabaseAuthentication): {
      assert std.isBoolean(EnableIAMDatabaseAuthentication) : 'EnableIAMDatabaseAuthentication must be a boolean',
      Properties+::: {
        EnableIAMDatabaseAuthentication: EnableIAMDatabaseAuthentication,
      },
    },
    withEnablePerformanceInsights(EnablePerformanceInsights): {
      assert std.isBoolean(EnablePerformanceInsights) : 'EnablePerformanceInsights must be a boolean',
      Properties+::: {
        EnablePerformanceInsights: EnablePerformanceInsights,
      },
    },
    withEndpoint(Endpoint): {
      assert std.isObject(Endpoint) : 'Endpoint must be a object',
      Properties+::: {
        Endpoint: Endpoint,
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
    withLicenseModel(LicenseModel): {
      assert std.isString(LicenseModel) : 'LicenseModel must be a string',
      Properties+::: {
        LicenseModel: LicenseModel,
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
    withMaxAllocatedStorage(MaxAllocatedStorage): {
      assert std.isNumber(MaxAllocatedStorage) : 'MaxAllocatedStorage must be a number',
      Properties+::: {
        MaxAllocatedStorage: MaxAllocatedStorage,
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
    withMultiAZ(MultiAZ): {
      assert std.isBoolean(MultiAZ) : 'MultiAZ must be a boolean',
      Properties+::: {
        MultiAZ: MultiAZ,
      },
    },
    withNcharCharacterSetName(NcharCharacterSetName): {
      assert std.isString(NcharCharacterSetName) : 'NcharCharacterSetName must be a string',
      Properties+::: {
        NcharCharacterSetName: NcharCharacterSetName,
      },
    },
    withNetworkType(NetworkType): {
      assert std.isString(NetworkType) : 'NetworkType must be a string',
      Properties+::: {
        NetworkType: NetworkType,
      },
    },
    withOptionGroupName(OptionGroupName): {
      assert std.isString(OptionGroupName) : 'OptionGroupName must be a string',
      Properties+::: {
        OptionGroupName: OptionGroupName,
      },
    },
    withPerformanceInsightsKMSKeyId(PerformanceInsightsKMSKeyId): {
      assert std.isString(PerformanceInsightsKMSKeyId) : 'PerformanceInsightsKMSKeyId must be a string',
      Properties+::: {
        PerformanceInsightsKMSKeyId: PerformanceInsightsKMSKeyId,
      },
    },
    withPerformanceInsightsRetentionPeriod(PerformanceInsightsRetentionPeriod): {
      assert std.isNumber(PerformanceInsightsRetentionPeriod) : 'PerformanceInsightsRetentionPeriod must be a number',
      Properties+::: {
        PerformanceInsightsRetentionPeriod: PerformanceInsightsRetentionPeriod,
      },
    },
    withPort(Port): {
      assert std.isString(Port) : 'Port must be a string',
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
    withProcessorFeatures(ProcessorFeatures): {
      Properties+::: {
        ProcessorFeatures: (if std.isArray(ProcessorFeatures) then ProcessorFeatures else [ProcessorFeatures]),
      },
    },
    withProcessorFeaturesMixin(ProcessorFeatures): {
      Properties+::: {
        ProcessorFeatures+: (if std.isArray(ProcessorFeatures) then ProcessorFeatures else [ProcessorFeatures]),
      },
    },
    withPromotionTier(PromotionTier): {
      assert std.isNumber(PromotionTier) : 'PromotionTier must be a number',
      Properties+::: {
        PromotionTier: PromotionTier,
      },
    },
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: {
        PubliclyAccessible: PubliclyAccessible,
      },
    },
    withReplicaMode(ReplicaMode): {
      assert std.isString(ReplicaMode) : 'ReplicaMode must be a string',
      Properties+::: {
        ReplicaMode: ReplicaMode,
      },
    },
    withRestoreTime(RestoreTime): {
      assert std.isString(RestoreTime) : 'RestoreTime must be a string',
      Properties+::: {
        RestoreTime: RestoreTime,
      },
    },
    withSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
      assert std.isString(SourceDBClusterIdentifier) : 'SourceDBClusterIdentifier must be a string',
      Properties+::: {
        SourceDBClusterIdentifier: SourceDBClusterIdentifier,
      },
    },
    withSourceDbiResourceId(SourceDbiResourceId): {
      assert std.isString(SourceDbiResourceId) : 'SourceDbiResourceId must be a string',
      Properties+::: {
        SourceDbiResourceId: SourceDbiResourceId,
      },
    },
    withSourceDBInstanceAutomatedBackupsArn(SourceDBInstanceAutomatedBackupsArn): {
      assert std.isString(SourceDBInstanceAutomatedBackupsArn) : 'SourceDBInstanceAutomatedBackupsArn must be a string',
      Properties+::: {
        SourceDBInstanceAutomatedBackupsArn: SourceDBInstanceAutomatedBackupsArn,
      },
    },
    withSourceDBInstanceIdentifier(SourceDBInstanceIdentifier): {
      assert std.isString(SourceDBInstanceIdentifier) : 'SourceDBInstanceIdentifier must be a string',
      Properties+::: {
        SourceDBInstanceIdentifier: SourceDBInstanceIdentifier,
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
    withStorageType(StorageType): {
      assert std.isString(StorageType) : 'StorageType must be a string',
      Properties+::: {
        StorageType: StorageType,
      },
    },
    withStorageThroughput(StorageThroughput): {
      assert std.isNumber(StorageThroughput) : 'StorageThroughput must be a number',
      Properties+::: {
        StorageThroughput: StorageThroughput,
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
    withTdeCredentialArn(TdeCredentialArn): {
      assert std.isString(TdeCredentialArn) : 'TdeCredentialArn must be a string',
      Properties+::: {
        TdeCredentialArn: TdeCredentialArn,
      },
    },
    withTdeCredentialPassword(TdeCredentialPassword): {
      assert std.isString(TdeCredentialPassword) : 'TdeCredentialPassword must be a string',
      Properties+::: {
        TdeCredentialPassword: TdeCredentialPassword,
      },
    },
    withTimezone(Timezone): {
      assert std.isString(Timezone) : 'Timezone must be a string',
      Properties+::: {
        Timezone: Timezone,
      },
    },
    withUseDefaultProcessorFeatures(UseDefaultProcessorFeatures): {
      assert std.isBoolean(UseDefaultProcessorFeatures) : 'UseDefaultProcessorFeatures must be a boolean',
      Properties+::: {
        UseDefaultProcessorFeatures: UseDefaultProcessorFeatures,
      },
    },
    withUseLatestRestorableTime(UseLatestRestorableTime): {
      assert std.isBoolean(UseLatestRestorableTime) : 'UseLatestRestorableTime must be a boolean',
      Properties+::: {
        UseLatestRestorableTime: UseLatestRestorableTime,
      },
    },
    withVPCSecurityGroups(VPCSecurityGroups): {
      Properties+::: {
        VPCSecurityGroups: (if std.isArray(VPCSecurityGroups) then VPCSecurityGroups else [VPCSecurityGroups]),
      },
    },
    withVPCSecurityGroupsMixin(VPCSecurityGroups): {
      Properties+::: {
        VPCSecurityGroups+: (if std.isArray(VPCSecurityGroups) then VPCSecurityGroups else [VPCSecurityGroups]),
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
