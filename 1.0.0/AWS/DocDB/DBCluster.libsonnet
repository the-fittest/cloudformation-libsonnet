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
    Type: 'AWS::DocDB::DBCluster',
  },
  setStorageEncrypted(StorageEncrypted): {
    Properties+::: {
      StorageEncrypted:
        if !std.isBoolean(StorageEncrypted) then (error 'StorageEncrypted must be a boolean') else StorageEncrypted,
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
  setSnapshotIdentifier(SnapshotIdentifier): {
    Properties+::: {
      SnapshotIdentifier:
        if !std.isString(SnapshotIdentifier) then (error 'SnapshotIdentifier must be a string')
        else if std.isEmpty(SnapshotIdentifier) then (error 'SnapshotIdentifier must be not empty')
        else SnapshotIdentifier,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
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
  setPreferredBackupWindow(PreferredBackupWindow): {
    Properties+::: {
      PreferredBackupWindow:
        if !std.isString(PreferredBackupWindow) then (error 'PreferredBackupWindow must be a string')
        else if std.isEmpty(PreferredBackupWindow) then (error 'PreferredBackupWindow must be not empty')
        else PreferredBackupWindow,
    },
  },
  setClusterResourceId(ClusterResourceId): {
    Properties+::: {
      ClusterResourceId:
        if !std.isString(ClusterResourceId) then (error 'ClusterResourceId must be a string')
        else if std.isEmpty(ClusterResourceId) then (error 'ClusterResourceId must be not empty')
        else ClusterResourceId,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else Endpoint,
    },
  },
  setVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds:
        if !std.isArray(VpcSecurityGroupIds) then (error 'VpcSecurityGroupIds must be an array')
        else VpcSecurityGroupIds,
    },
  },
  setVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: VpcSecurityGroupIds,
    },
  },
  setCopyTagsToSnapshot(CopyTagsToSnapshot): {
    Properties+::: {
      CopyTagsToSnapshot:
        if !std.isBoolean(CopyTagsToSnapshot) then (error 'CopyTagsToSnapshot must be a boolean') else CopyTagsToSnapshot,
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
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else EngineVersion,
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
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones:
        if !std.isArray(AvailabilityZones) then (error 'AvailabilityZones must be an array')
        else AvailabilityZones,
    },
  },
  setAvailabilityZonesMixin(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones+: AvailabilityZones,
    },
  },
  setServerlessV2ScalingConfiguration(ServerlessV2ScalingConfiguration): {
    Properties+::: {
      ServerlessV2ScalingConfiguration:
        if !std.isObject(ServerlessV2ScalingConfiguration) then (error 'ServerlessV2ScalingConfiguration must be an object')
        else if !std.objectHas(ServerlessV2ScalingConfiguration, 'MinCapacity') then (error ' have attribute MinCapacity')
        else if !std.objectHas(ServerlessV2ScalingConfiguration, 'MaxCapacity') then (error ' have attribute MaxCapacity')
        else ServerlessV2ScalingConfiguration,
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
  setUseLatestRestorableTime(UseLatestRestorableTime): {
    Properties+::: {
      UseLatestRestorableTime:
        if !std.isBoolean(UseLatestRestorableTime) then (error 'UseLatestRestorableTime must be a boolean') else UseLatestRestorableTime,
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
  setSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
    Properties+::: {
      SourceDBClusterIdentifier:
        if !std.isString(SourceDBClusterIdentifier) then (error 'SourceDBClusterIdentifier must be a string')
        else if std.isEmpty(SourceDBClusterIdentifier) then (error 'SourceDBClusterIdentifier must be not empty')
        else SourceDBClusterIdentifier,
    },
  },
  setMasterUsername(MasterUsername): {
    Properties+::: {
      MasterUsername:
        if !std.isString(MasterUsername) then (error 'MasterUsername must be a string')
        else if std.isEmpty(MasterUsername) then (error 'MasterUsername must be not empty')
        else MasterUsername,
    },
  },
  setReadEndpoint(ReadEndpoint): {
    Properties+::: {
      ReadEndpoint:
        if !std.isString(ReadEndpoint) then (error 'ReadEndpoint must be a string')
        else if std.isEmpty(ReadEndpoint) then (error 'ReadEndpoint must be not empty')
        else ReadEndpoint,
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
  setBackupRetentionPeriod(BackupRetentionPeriod): {
    Properties+::: {
      BackupRetentionPeriod:
        if !std.isNumber(BackupRetentionPeriod) then (error 'BackupRetentionPeriod must be an number')
        else BackupRetentionPeriod,
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
