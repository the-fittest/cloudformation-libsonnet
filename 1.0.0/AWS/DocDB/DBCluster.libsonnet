{
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
    Type: 'AWS::DocDB::DBCluster',
  },
  withStorageEncrypted(StorageEncrypted): {
    assert std.isBoolean(StorageEncrypted) : 'StorageEncrypted must be a boolean',
    Properties+::: {
      StorageEncrypted: StorageEncrypted,
    },
  },
  withRestoreToTime(RestoreToTime): {
    assert std.isString(RestoreToTime) : 'RestoreToTime must be a string',
    Properties+::: {
      RestoreToTime: RestoreToTime,
    },
  },
  withSnapshotIdentifier(SnapshotIdentifier): {
    assert std.isString(SnapshotIdentifier) : 'SnapshotIdentifier must be a string',
    Properties+::: {
      SnapshotIdentifier: SnapshotIdentifier,
    },
  },
  withPort(Port): {
    assert std.isNumber(Port) : 'Port must be a number',
    Properties+::: {
      Port: Port,
    },
  },
  withDBClusterIdentifier(DBClusterIdentifier): {
    assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
    Properties+::: {
      DBClusterIdentifier: DBClusterIdentifier,
    },
  },
  withPreferredBackupWindow(PreferredBackupWindow): {
    assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
    Properties+::: {
      PreferredBackupWindow: PreferredBackupWindow,
    },
  },
  withClusterResourceId(ClusterResourceId): {
    assert std.isString(ClusterResourceId) : 'ClusterResourceId must be a string',
    Properties+::: {
      ClusterResourceId: ClusterResourceId,
    },
  },
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
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
  withCopyTagsToSnapshot(CopyTagsToSnapshot): {
    assert std.isBoolean(CopyTagsToSnapshot) : 'CopyTagsToSnapshot must be a boolean',
    Properties+::: {
      CopyTagsToSnapshot: CopyTagsToSnapshot,
    },
  },
  withRestoreType(RestoreType): {
    assert std.isString(RestoreType) : 'RestoreType must be a string',
    Properties+::: {
      RestoreType: RestoreType,
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
  withStorageType(StorageType): {
    assert std.isString(StorageType) : 'StorageType must be a string',
    Properties+::: {
      StorageType: StorageType,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
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
  withServerlessV2ScalingConfiguration(ServerlessV2ScalingConfiguration): {
    assert std.isObject(ServerlessV2ScalingConfiguration) : 'ServerlessV2ScalingConfiguration must be a object',
    Properties+::: {
      ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration,
    },
  },
  withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
    Properties+::: {
      PreferredMaintenanceWindow: PreferredMaintenanceWindow,
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
  withUseLatestRestorableTime(UseLatestRestorableTime): {
    assert std.isBoolean(UseLatestRestorableTime) : 'UseLatestRestorableTime must be a boolean',
    Properties+::: {
      UseLatestRestorableTime: UseLatestRestorableTime,
    },
  },
  withMasterUserPassword(MasterUserPassword): {
    assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
    Properties+::: {
      MasterUserPassword: MasterUserPassword,
    },
  },
  withSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
    assert std.isString(SourceDBClusterIdentifier) : 'SourceDBClusterIdentifier must be a string',
    Properties+::: {
      SourceDBClusterIdentifier: SourceDBClusterIdentifier,
    },
  },
  withMasterUsername(MasterUsername): {
    assert std.isString(MasterUsername) : 'MasterUsername must be a string',
    Properties+::: {
      MasterUsername: MasterUsername,
    },
  },
  withReadEndpoint(ReadEndpoint): {
    assert std.isString(ReadEndpoint) : 'ReadEndpoint must be a string',
    Properties+::: {
      ReadEndpoint: ReadEndpoint,
    },
  },
  withDBClusterParameterGroupName(DBClusterParameterGroupName): {
    assert std.isString(DBClusterParameterGroupName) : 'DBClusterParameterGroupName must be a string',
    Properties+::: {
      DBClusterParameterGroupName: DBClusterParameterGroupName,
    },
  },
  withBackupRetentionPeriod(BackupRetentionPeriod): {
    assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a number',
    Properties+::: {
      BackupRetentionPeriod: BackupRetentionPeriod,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
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
