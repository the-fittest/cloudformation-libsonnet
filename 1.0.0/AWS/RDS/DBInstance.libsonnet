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
    Type: 'AWS::RDS::DBInstance',
  },
  setAllocatedStorage(AllocatedStorage): {
    Properties+::: {
      AllocatedStorage:
        if !std.isString(AllocatedStorage) then (error 'AllocatedStorage must be a string')
        else if std.isEmpty(AllocatedStorage) then (error 'AllocatedStorage must be not empty')
        else AllocatedStorage,
    },
  },
  setAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
    Properties+::: {
      AllowMajorVersionUpgrade:
        if !std.isBoolean(AllowMajorVersionUpgrade) then (error 'AllowMajorVersionUpgrade must be a boolean') else AllowMajorVersionUpgrade,
    },
  },
  setAssociatedRoles(AssociatedRoles): {
    Properties+::: {
      AssociatedRoles:
        if !std.isArray(AssociatedRoles) then (error 'AssociatedRoles must be an array')
        else AssociatedRoles,
    },
  },
  setAssociatedRolesMixin(AssociatedRoles): {
    Properties+::: {
      AssociatedRoles+: AssociatedRoles,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
    },
  },
  setAutomaticBackupReplicationRegion(AutomaticBackupReplicationRegion): {
    Properties+::: {
      AutomaticBackupReplicationRegion:
        if !std.isString(AutomaticBackupReplicationRegion) then (error 'AutomaticBackupReplicationRegion must be a string')
        else if std.isEmpty(AutomaticBackupReplicationRegion) then (error 'AutomaticBackupReplicationRegion must be not empty')
        else AutomaticBackupReplicationRegion,
    },
  },
  setAutomaticBackupReplicationKmsKeyId(AutomaticBackupReplicationKmsKeyId): {
    Properties+::: {
      AutomaticBackupReplicationKmsKeyId:
        if !std.isString(AutomaticBackupReplicationKmsKeyId) then (error 'AutomaticBackupReplicationKmsKeyId must be a string')
        else if std.isEmpty(AutomaticBackupReplicationKmsKeyId) then (error 'AutomaticBackupReplicationKmsKeyId must be not empty')
        else AutomaticBackupReplicationKmsKeyId,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else AvailabilityZone,
    },
  },
  setBackupRetentionPeriod(BackupRetentionPeriod): {
    Properties+::: {
      BackupRetentionPeriod:
        if !std.isNumber(BackupRetentionPeriod) then (error 'BackupRetentionPeriod must be an number')
        else BackupRetentionPeriod,
    },
  },
  setCACertificateIdentifier(CACertificateIdentifier): {
    Properties+::: {
      CACertificateIdentifier:
        if !std.isString(CACertificateIdentifier) then (error 'CACertificateIdentifier must be a string')
        else if std.isEmpty(CACertificateIdentifier) then (error 'CACertificateIdentifier must be not empty')
        else CACertificateIdentifier,
    },
  },
  setCertificateDetails(CertificateDetails): {
    Properties+::: {
      CertificateDetails:
        if !std.isObject(CertificateDetails) then (error 'CertificateDetails must be an object')
        else CertificateDetails,
    },
  },
  setCertificateRotationRestart(CertificateRotationRestart): {
    Properties+::: {
      CertificateRotationRestart:
        if !std.isBoolean(CertificateRotationRestart) then (error 'CertificateRotationRestart must be a boolean') else CertificateRotationRestart,
    },
  },
  setCharacterSetName(CharacterSetName): {
    Properties+::: {
      CharacterSetName:
        if !std.isString(CharacterSetName) then (error 'CharacterSetName must be a string')
        else if std.isEmpty(CharacterSetName) then (error 'CharacterSetName must be not empty')
        else CharacterSetName,
    },
  },
  setCopyTagsToSnapshot(CopyTagsToSnapshot): {
    Properties+::: {
      CopyTagsToSnapshot:
        if !std.isBoolean(CopyTagsToSnapshot) then (error 'CopyTagsToSnapshot must be a boolean') else CopyTagsToSnapshot,
    },
  },
  setCustomIAMInstanceProfile(CustomIAMInstanceProfile): {
    Properties+::: {
      CustomIAMInstanceProfile:
        if !std.isString(CustomIAMInstanceProfile) then (error 'CustomIAMInstanceProfile must be a string')
        else if std.isEmpty(CustomIAMInstanceProfile) then (error 'CustomIAMInstanceProfile must be not empty')
        else CustomIAMInstanceProfile,
    },
  },
  setDBClusterIdentifier(DBClusterIdentifier): {
    Properties+::: {
      DBClusterIdentifier:
        if !std.isString(DBClusterIdentifier) then (error 'DBClusterIdentifier must be a string')
        else if std.isEmpty(DBClusterIdentifier) then (error 'DBClusterIdentifier must be not empty')
        else DBClusterIdentifier,
    },
  },
  setDBClusterSnapshotIdentifier(DBClusterSnapshotIdentifier): {
    Properties+::: {
      DBClusterSnapshotIdentifier:
        if !std.isString(DBClusterSnapshotIdentifier) then (error 'DBClusterSnapshotIdentifier must be a string')
        else if std.isEmpty(DBClusterSnapshotIdentifier) then (error 'DBClusterSnapshotIdentifier must be not empty')
        else DBClusterSnapshotIdentifier,
    },
  },
  setDBInstanceArn(DBInstanceArn): {
    Properties+::: {
      DBInstanceArn:
        if !std.isString(DBInstanceArn) then (error 'DBInstanceArn must be a string')
        else if std.isEmpty(DBInstanceArn) then (error 'DBInstanceArn must be not empty')
        else DBInstanceArn,
    },
  },
  setDBInstanceClass(DBInstanceClass): {
    Properties+::: {
      DBInstanceClass:
        if !std.isString(DBInstanceClass) then (error 'DBInstanceClass must be a string')
        else if std.isEmpty(DBInstanceClass) then (error 'DBInstanceClass must be not empty')
        else DBInstanceClass,
    },
  },
  setDBInstanceIdentifier(DBInstanceIdentifier): {
    Properties+::: {
      DBInstanceIdentifier:
        if !std.isString(DBInstanceIdentifier) then (error 'DBInstanceIdentifier must be a string')
        else if std.isEmpty(DBInstanceIdentifier) then (error 'DBInstanceIdentifier must be not empty')
        else if std.length(DBInstanceIdentifier) < 1 then error ('DBInstanceIdentifier should have at least 1 characters')
        else if std.length(DBInstanceIdentifier) > 63 then error ('DBInstanceIdentifier should have not more than 63 characters')
        else DBInstanceIdentifier,
    },
  },
  setDbiResourceId(DbiResourceId): {
    Properties+::: {
      DbiResourceId:
        if !std.isString(DbiResourceId) then (error 'DbiResourceId must be a string')
        else if std.isEmpty(DbiResourceId) then (error 'DbiResourceId must be not empty')
        else DbiResourceId,
    },
  },
  setDBName(DBName): {
    Properties+::: {
      DBName:
        if !std.isString(DBName) then (error 'DBName must be a string')
        else if std.isEmpty(DBName) then (error 'DBName must be not empty')
        else DBName,
    },
  },
  setDBParameterGroupName(DBParameterGroupName): {
    Properties+::: {
      DBParameterGroupName:
        if !std.isString(DBParameterGroupName) then (error 'DBParameterGroupName must be a string')
        else if std.isEmpty(DBParameterGroupName) then (error 'DBParameterGroupName must be not empty')
        else DBParameterGroupName,
    },
  },
  setDBSecurityGroups(DBSecurityGroups): {
    Properties+::: {
      DBSecurityGroups:
        if !std.isArray(DBSecurityGroups) then (error 'DBSecurityGroups must be an array')
        else DBSecurityGroups,
    },
  },
  setDBSecurityGroupsMixin(DBSecurityGroups): {
    Properties+::: {
      DBSecurityGroups+: DBSecurityGroups,
    },
  },
  setDBSnapshotIdentifier(DBSnapshotIdentifier): {
    Properties+::: {
      DBSnapshotIdentifier:
        if !std.isString(DBSnapshotIdentifier) then (error 'DBSnapshotIdentifier must be a string')
        else if std.isEmpty(DBSnapshotIdentifier) then (error 'DBSnapshotIdentifier must be not empty')
        else DBSnapshotIdentifier,
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
  setDBSystemId(DBSystemId): {
    Properties+::: {
      DBSystemId:
        if !std.isString(DBSystemId) then (error 'DBSystemId must be a string')
        else if std.isEmpty(DBSystemId) then (error 'DBSystemId must be not empty')
        else DBSystemId,
    },
  },
  setDedicatedLogVolume(DedicatedLogVolume): {
    Properties+::: {
      DedicatedLogVolume:
        if !std.isBoolean(DedicatedLogVolume) then (error 'DedicatedLogVolume must be a boolean') else DedicatedLogVolume,
    },
  },
  setDeleteAutomatedBackups(DeleteAutomatedBackups): {
    Properties+::: {
      DeleteAutomatedBackups:
        if !std.isBoolean(DeleteAutomatedBackups) then (error 'DeleteAutomatedBackups must be a boolean') else DeleteAutomatedBackups,
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
  setDomainAuthSecretArn(DomainAuthSecretArn): {
    Properties+::: {
      DomainAuthSecretArn:
        if !std.isString(DomainAuthSecretArn) then (error 'DomainAuthSecretArn must be a string')
        else if std.isEmpty(DomainAuthSecretArn) then (error 'DomainAuthSecretArn must be not empty')
        else DomainAuthSecretArn,
    },
  },
  setDomainDnsIps(DomainDnsIps): {
    Properties+::: {
      DomainDnsIps:
        if !std.isArray(DomainDnsIps) then (error 'DomainDnsIps must be an array')
        else DomainDnsIps,
    },
  },
  setDomainDnsIpsMixin(DomainDnsIps): {
    Properties+::: {
      DomainDnsIps+: DomainDnsIps,
    },
  },
  setDomainFqdn(DomainFqdn): {
    Properties+::: {
      DomainFqdn:
        if !std.isString(DomainFqdn) then (error 'DomainFqdn must be a string')
        else if std.isEmpty(DomainFqdn) then (error 'DomainFqdn must be not empty')
        else DomainFqdn,
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
  setDomainOu(DomainOu): {
    Properties+::: {
      DomainOu:
        if !std.isString(DomainOu) then (error 'DomainOu must be a string')
        else if std.isEmpty(DomainOu) then (error 'DomainOu must be not empty')
        else DomainOu,
    },
  },
  setEnableCloudwatchLogsExports(EnableCloudwatchLogsExports): {
    Properties+::: {
      EnableCloudwatchLogsExports:
        if !std.isArray(EnableCloudwatchLogsExports) then (error 'EnableCloudwatchLogsExports must be an array')
        else EnableCloudwatchLogsExports,
    },
  },
  setEnableCloudwatchLogsExportsMixin(EnableCloudwatchLogsExports): {
    Properties+::: {
      EnableCloudwatchLogsExports+: EnableCloudwatchLogsExports,
    },
  },
  setEnableIAMDatabaseAuthentication(EnableIAMDatabaseAuthentication): {
    Properties+::: {
      EnableIAMDatabaseAuthentication:
        if !std.isBoolean(EnableIAMDatabaseAuthentication) then (error 'EnableIAMDatabaseAuthentication must be a boolean') else EnableIAMDatabaseAuthentication,
    },
  },
  setEnablePerformanceInsights(EnablePerformanceInsights): {
    Properties+::: {
      EnablePerformanceInsights:
        if !std.isBoolean(EnablePerformanceInsights) then (error 'EnablePerformanceInsights must be a boolean') else EnablePerformanceInsights,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isObject(Endpoint) then (error 'Endpoint must be an object')
        else Endpoint,
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
  setLicenseModel(LicenseModel): {
    Properties+::: {
      LicenseModel:
        if !std.isString(LicenseModel) then (error 'LicenseModel must be a string')
        else if std.isEmpty(LicenseModel) then (error 'LicenseModel must be not empty')
        else LicenseModel,
    },
  },
  setMasterUsername(MasterUsername): {
    Properties+::: {
      MasterUsername:
        if !std.isString(MasterUsername) then (error 'MasterUsername must be a string')
        else if std.isEmpty(MasterUsername) then (error 'MasterUsername must be not empty')
        else if std.length(MasterUsername) < 1 then error ('MasterUsername should have at least 1 characters')
        else if std.length(MasterUsername) > 128 then error ('MasterUsername should have not more than 128 characters')
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
  setMaxAllocatedStorage(MaxAllocatedStorage): {
    Properties+::: {
      MaxAllocatedStorage:
        if !std.isNumber(MaxAllocatedStorage) then (error 'MaxAllocatedStorage must be an number')
        else MaxAllocatedStorage,
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
  setMultiAZ(MultiAZ): {
    Properties+::: {
      MultiAZ:
        if !std.isBoolean(MultiAZ) then (error 'MultiAZ must be a boolean') else MultiAZ,
    },
  },
  setNcharCharacterSetName(NcharCharacterSetName): {
    Properties+::: {
      NcharCharacterSetName:
        if !std.isString(NcharCharacterSetName) then (error 'NcharCharacterSetName must be a string')
        else if std.isEmpty(NcharCharacterSetName) then (error 'NcharCharacterSetName must be not empty')
        else NcharCharacterSetName,
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
  setOptionGroupName(OptionGroupName): {
    Properties+::: {
      OptionGroupName:
        if !std.isString(OptionGroupName) then (error 'OptionGroupName must be a string')
        else if std.isEmpty(OptionGroupName) then (error 'OptionGroupName must be not empty')
        else OptionGroupName,
    },
  },
  setPerformanceInsightsKMSKeyId(PerformanceInsightsKMSKeyId): {
    Properties+::: {
      PerformanceInsightsKMSKeyId:
        if !std.isString(PerformanceInsightsKMSKeyId) then (error 'PerformanceInsightsKMSKeyId must be a string')
        else if std.isEmpty(PerformanceInsightsKMSKeyId) then (error 'PerformanceInsightsKMSKeyId must be not empty')
        else PerformanceInsightsKMSKeyId,
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
        if !std.isString(Port) then (error 'Port must be a string')
        else if std.isEmpty(Port) then (error 'Port must be not empty')
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
  setProcessorFeatures(ProcessorFeatures): {
    Properties+::: {
      ProcessorFeatures:
        if !std.isArray(ProcessorFeatures) then (error 'ProcessorFeatures must be an array')
        else ProcessorFeatures,
    },
  },
  setProcessorFeaturesMixin(ProcessorFeatures): {
    Properties+::: {
      ProcessorFeatures+: ProcessorFeatures,
    },
  },
  setPromotionTier(PromotionTier): {
    Properties+::: {
      PromotionTier:
        if !std.isNumber(PromotionTier) then (error 'PromotionTier must be an number')
        else PromotionTier,
    },
  },
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
    },
  },
  setReplicaMode(ReplicaMode): {
    Properties+::: {
      ReplicaMode:
        if !std.isString(ReplicaMode) then (error 'ReplicaMode must be a string')
        else if std.isEmpty(ReplicaMode) then (error 'ReplicaMode must be not empty')
        else ReplicaMode,
    },
  },
  setRestoreTime(RestoreTime): {
    Properties+::: {
      RestoreTime:
        if !std.isString(RestoreTime) then (error 'RestoreTime must be a string')
        else if std.isEmpty(RestoreTime) then (error 'RestoreTime must be not empty')
        else RestoreTime,
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
  setSourceDbiResourceId(SourceDbiResourceId): {
    Properties+::: {
      SourceDbiResourceId:
        if !std.isString(SourceDbiResourceId) then (error 'SourceDbiResourceId must be a string')
        else if std.isEmpty(SourceDbiResourceId) then (error 'SourceDbiResourceId must be not empty')
        else SourceDbiResourceId,
    },
  },
  setSourceDBInstanceAutomatedBackupsArn(SourceDBInstanceAutomatedBackupsArn): {
    Properties+::: {
      SourceDBInstanceAutomatedBackupsArn:
        if !std.isString(SourceDBInstanceAutomatedBackupsArn) then (error 'SourceDBInstanceAutomatedBackupsArn must be a string')
        else if std.isEmpty(SourceDBInstanceAutomatedBackupsArn) then (error 'SourceDBInstanceAutomatedBackupsArn must be not empty')
        else SourceDBInstanceAutomatedBackupsArn,
    },
  },
  setSourceDBInstanceIdentifier(SourceDBInstanceIdentifier): {
    Properties+::: {
      SourceDBInstanceIdentifier:
        if !std.isString(SourceDBInstanceIdentifier) then (error 'SourceDBInstanceIdentifier must be a string')
        else if std.isEmpty(SourceDBInstanceIdentifier) then (error 'SourceDBInstanceIdentifier must be not empty')
        else SourceDBInstanceIdentifier,
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
  setStorageType(StorageType): {
    Properties+::: {
      StorageType:
        if !std.isString(StorageType) then (error 'StorageType must be a string')
        else if std.isEmpty(StorageType) then (error 'StorageType must be not empty')
        else StorageType,
    },
  },
  setStorageThroughput(StorageThroughput): {
    Properties+::: {
      StorageThroughput:
        if !std.isNumber(StorageThroughput) then (error 'StorageThroughput must be an number')
        else StorageThroughput,
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
  setTdeCredentialArn(TdeCredentialArn): {
    Properties+::: {
      TdeCredentialArn:
        if !std.isString(TdeCredentialArn) then (error 'TdeCredentialArn must be a string')
        else if std.isEmpty(TdeCredentialArn) then (error 'TdeCredentialArn must be not empty')
        else TdeCredentialArn,
    },
  },
  setTdeCredentialPassword(TdeCredentialPassword): {
    Properties+::: {
      TdeCredentialPassword:
        if !std.isString(TdeCredentialPassword) then (error 'TdeCredentialPassword must be a string')
        else if std.isEmpty(TdeCredentialPassword) then (error 'TdeCredentialPassword must be not empty')
        else TdeCredentialPassword,
    },
  },
  setTimezone(Timezone): {
    Properties+::: {
      Timezone:
        if !std.isString(Timezone) then (error 'Timezone must be a string')
        else if std.isEmpty(Timezone) then (error 'Timezone must be not empty')
        else Timezone,
    },
  },
  setUseDefaultProcessorFeatures(UseDefaultProcessorFeatures): {
    Properties+::: {
      UseDefaultProcessorFeatures:
        if !std.isBoolean(UseDefaultProcessorFeatures) then (error 'UseDefaultProcessorFeatures must be a boolean') else UseDefaultProcessorFeatures,
    },
  },
  setUseLatestRestorableTime(UseLatestRestorableTime): {
    Properties+::: {
      UseLatestRestorableTime:
        if !std.isBoolean(UseLatestRestorableTime) then (error 'UseLatestRestorableTime must be a boolean') else UseLatestRestorableTime,
    },
  },
  setVPCSecurityGroups(VPCSecurityGroups): {
    Properties+::: {
      VPCSecurityGroups:
        if !std.isArray(VPCSecurityGroups) then (error 'VPCSecurityGroups must be an array')
        else VPCSecurityGroups,
    },
  },
  setVPCSecurityGroupsMixin(VPCSecurityGroups): {
    Properties+::: {
      VPCSecurityGroups+: VPCSecurityGroups,
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
