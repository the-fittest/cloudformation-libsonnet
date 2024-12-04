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
    Type: 'AWS::Neptune::DBCluster',
  },
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
    },
  },
  withReadEndpoint(ReadEndpoint): {
    assert std.isString(ReadEndpoint) : 'ReadEndpoint must be a string',
    Properties+::: {
      ReadEndpoint: ReadEndpoint,
    },
  },
  withClusterResourceId(ClusterResourceId): {
    assert std.isString(ClusterResourceId) : 'ClusterResourceId must be a string',
    Properties+::: {
      ClusterResourceId: ClusterResourceId,
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
  withBackupRetentionPeriod(BackupRetentionPeriod): {
    assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a number',
    Properties+::: {
      BackupRetentionPeriod: BackupRetentionPeriod,
    },
  },
  withCopyTagsToSnapshot(CopyTagsToSnapshot): {
    assert std.isBoolean(CopyTagsToSnapshot) : 'CopyTagsToSnapshot must be a boolean',
    Properties+::: {
      CopyTagsToSnapshot: CopyTagsToSnapshot,
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
  withDBInstanceParameterGroupName(DBInstanceParameterGroupName): {
    assert std.isString(DBInstanceParameterGroupName) : 'DBInstanceParameterGroupName must be a string',
    Properties+::: {
      DBInstanceParameterGroupName: DBInstanceParameterGroupName,
    },
  },
  withDBPort(DBPort): {
    assert std.isNumber(DBPort) : 'DBPort must be a number',
    Properties+::: {
      DBPort: DBPort,
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
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withIamAuthEnabled(IamAuthEnabled): {
    assert std.isBoolean(IamAuthEnabled) : 'IamAuthEnabled must be a boolean',
    Properties+::: {
      IamAuthEnabled: IamAuthEnabled,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
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
  withServerlessScalingConfiguration(ServerlessScalingConfiguration): {
    assert std.isObject(ServerlessScalingConfiguration) : 'ServerlessScalingConfiguration must be a object',
    Properties+::: {
      ServerlessScalingConfiguration: ServerlessScalingConfiguration,
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
  withStorageEncrypted(StorageEncrypted): {
    assert std.isBoolean(StorageEncrypted) : 'StorageEncrypted must be a boolean',
    Properties+::: {
      StorageEncrypted: StorageEncrypted,
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
}
