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
    Type: 'AWS::Neptune::DBCluster',
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else Endpoint,
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
  setClusterResourceId(ClusterResourceId): {
    Properties+::: {
      ClusterResourceId:
        if !std.isString(ClusterResourceId) then (error 'ClusterResourceId must be a string')
        else if std.isEmpty(ClusterResourceId) then (error 'ClusterResourceId must be not empty')
        else ClusterResourceId,
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
  setBackupRetentionPeriod(BackupRetentionPeriod): {
    Properties+::: {
      BackupRetentionPeriod:
        if !std.isNumber(BackupRetentionPeriod) then (error 'BackupRetentionPeriod must be an number')
        else if BackupRetentionPeriod < 1 then error ('BackupRetentionPeriod should be at least 1')
        else BackupRetentionPeriod,
    },
  },
  setCopyTagsToSnapshot(CopyTagsToSnapshot): {
    Properties+::: {
      CopyTagsToSnapshot:
        if !std.isBoolean(CopyTagsToSnapshot) then (error 'CopyTagsToSnapshot must be a boolean') else CopyTagsToSnapshot,
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
  setDBInstanceParameterGroupName(DBInstanceParameterGroupName): {
    Properties+::: {
      DBInstanceParameterGroupName:
        if !std.isString(DBInstanceParameterGroupName) then (error 'DBInstanceParameterGroupName must be a string')
        else if std.isEmpty(DBInstanceParameterGroupName) then (error 'DBInstanceParameterGroupName must be not empty')
        else DBInstanceParameterGroupName,
    },
  },
  setDBPort(DBPort): {
    Properties+::: {
      DBPort:
        if !std.isNumber(DBPort) then (error 'DBPort must be an number')
        else DBPort,
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
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else EngineVersion,
    },
  },
  setIamAuthEnabled(IamAuthEnabled): {
    Properties+::: {
      IamAuthEnabled:
        if !std.isBoolean(IamAuthEnabled) then (error 'IamAuthEnabled must be a boolean') else IamAuthEnabled,
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
  setServerlessScalingConfiguration(ServerlessScalingConfiguration): {
    Properties+::: {
      ServerlessScalingConfiguration:
        if !std.isObject(ServerlessScalingConfiguration) then (error 'ServerlessScalingConfiguration must be an object')
        else if !std.objectHas(ServerlessScalingConfiguration, 'MinCapacity') then (error ' have attribute MinCapacity')
        else if !std.objectHas(ServerlessScalingConfiguration, 'MaxCapacity') then (error ' have attribute MaxCapacity')
        else ServerlessScalingConfiguration,
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
  setStorageEncrypted(StorageEncrypted): {
    Properties+::: {
      StorageEncrypted:
        if !std.isBoolean(StorageEncrypted) then (error 'StorageEncrypted must be a boolean') else StorageEncrypted,
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
  setTagsMixin(Tags): {
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
  setVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: VpcSecurityGroupIds,
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
