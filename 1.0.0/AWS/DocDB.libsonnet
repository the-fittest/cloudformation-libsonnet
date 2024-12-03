local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DBCluster: {
    '#': d.pkg(
      name='DBCluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DocDB.libsonnet',
      help='Resource Type definition for AWS::DocDB::DBCluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DocDB::DBCluster Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::DocDB::DBCluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStorageEncrypted': d.fn('`withStorageEncrypted` StorageEncrypted ', [d.arg('StorageEncrypted', d.T.boolean)]),
    withStorageEncrypted(StorageEncrypted): {
      assert std.isBoolean(StorageEncrypted) : 'StorageEncrypted must be a boolean',
      Properties+::: { StorageEncrypted: StorageEncrypted },
    },
    '#withRestoreToTime': d.fn('`withRestoreToTime` RestoreToTime ', [d.arg('RestoreToTime', d.T.string)]),
    withRestoreToTime(RestoreToTime): {
      assert std.isString(RestoreToTime) : 'RestoreToTime must be a string',
      Properties+::: { RestoreToTime: RestoreToTime },
    },
    '#withSnapshotIdentifier': d.fn('`withSnapshotIdentifier` SnapshotIdentifier ', [d.arg('SnapshotIdentifier', d.T.string)]),
    withSnapshotIdentifier(SnapshotIdentifier): {
      assert std.isString(SnapshotIdentifier) : 'SnapshotIdentifier must be a string',
      Properties+::: { SnapshotIdentifier: SnapshotIdentifier },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withDBClusterIdentifier': d.fn('`withDBClusterIdentifier` DBClusterIdentifier ', [d.arg('DBClusterIdentifier', d.T.string)]),
    withDBClusterIdentifier(DBClusterIdentifier): {
      assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
      Properties+::: { DBClusterIdentifier: DBClusterIdentifier },
    },
    '#withPreferredBackupWindow': d.fn('`withPreferredBackupWindow` PreferredBackupWindow ', [d.arg('PreferredBackupWindow', d.T.string)]),
    withPreferredBackupWindow(PreferredBackupWindow): {
      assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
      Properties+::: { PreferredBackupWindow: PreferredBackupWindow },
    },
    '#withClusterResourceId': d.fn('`withClusterResourceId` ClusterResourceId ', [d.arg('ClusterResourceId', d.T.string)]),
    withClusterResourceId(ClusterResourceId): {
      assert std.isString(ClusterResourceId) : 'ClusterResourceId must be a string',
      Properties+::: { ClusterResourceId: ClusterResourceId },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
    '#withCopyTagsToSnapshot': d.fn('`withCopyTagsToSnapshot` CopyTagsToSnapshot ', [d.arg('CopyTagsToSnapshot', d.T.boolean)]),
    withCopyTagsToSnapshot(CopyTagsToSnapshot): {
      assert std.isBoolean(CopyTagsToSnapshot) : 'CopyTagsToSnapshot must be a boolean',
      Properties+::: { CopyTagsToSnapshot: CopyTagsToSnapshot },
    },
    '#withRestoreType': d.fn('`withRestoreType` RestoreType ', [d.arg('RestoreType', d.T.string)]),
    withRestoreType(RestoreType): {
      assert std.isString(RestoreType) : 'RestoreType must be a string',
      Properties+::: { RestoreType: RestoreType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withStorageType': d.fn('`withStorageType` StorageType ', [d.arg('StorageType', d.T.string)]),
    withStorageType(StorageType): {
      assert std.isString(StorageType) : 'StorageType must be a string',
      Properties+::: { StorageType: StorageType },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withAvailabilityZones': d.fn('`withAvailabilityZones` AvailabilityZones ', [d.arg('AvailabilityZones', d.T.array)]),
    withAvailabilityZones(AvailabilityZones): {
      assert std.isArray(AvailabilityZones) : 'AvailabilityZones must be a array',
      Properties+::: { AvailabilityZones: AvailabilityZones },
    },
    '#withServerlessV2ScalingConfiguration': d.fn('`withServerlessV2ScalingConfiguration` ServerlessV2ScalingConfiguration ', [d.arg('ServerlessV2ScalingConfiguration', d.T.object)]),
    withServerlessV2ScalingConfiguration(ServerlessV2ScalingConfiguration): {
      assert std.isObject(ServerlessV2ScalingConfiguration) : 'ServerlessV2ScalingConfiguration must be a object',
      Properties+::: { ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withDBSubnetGroupName': d.fn('`withDBSubnetGroupName` DBSubnetGroupName ', [d.arg('DBSubnetGroupName', d.T.string)]),
    withDBSubnetGroupName(DBSubnetGroupName): {
      assert std.isString(DBSubnetGroupName) : 'DBSubnetGroupName must be a string',
      Properties+::: { DBSubnetGroupName: DBSubnetGroupName },
    },
    '#withDeletionProtection': d.fn('`withDeletionProtection` DeletionProtection ', [d.arg('DeletionProtection', d.T.boolean)]),
    withDeletionProtection(DeletionProtection): {
      assert std.isBoolean(DeletionProtection) : 'DeletionProtection must be a boolean',
      Properties+::: { DeletionProtection: DeletionProtection },
    },
    '#withUseLatestRestorableTime': d.fn('`withUseLatestRestorableTime` UseLatestRestorableTime ', [d.arg('UseLatestRestorableTime', d.T.boolean)]),
    withUseLatestRestorableTime(UseLatestRestorableTime): {
      assert std.isBoolean(UseLatestRestorableTime) : 'UseLatestRestorableTime must be a boolean',
      Properties+::: { UseLatestRestorableTime: UseLatestRestorableTime },
    },
    '#withMasterUserPassword': d.fn('`withMasterUserPassword` MasterUserPassword ', [d.arg('MasterUserPassword', d.T.string)]),
    withMasterUserPassword(MasterUserPassword): {
      assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
      Properties+::: { MasterUserPassword: MasterUserPassword },
    },
    '#withSourceDBClusterIdentifier': d.fn('`withSourceDBClusterIdentifier` SourceDBClusterIdentifier ', [d.arg('SourceDBClusterIdentifier', d.T.string)]),
    withSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
      assert std.isString(SourceDBClusterIdentifier) : 'SourceDBClusterIdentifier must be a string',
      Properties+::: { SourceDBClusterIdentifier: SourceDBClusterIdentifier },
    },
    '#withMasterUsername': d.fn('`withMasterUsername` MasterUsername ', [d.arg('MasterUsername', d.T.string)]),
    withMasterUsername(MasterUsername): {
      assert std.isString(MasterUsername) : 'MasterUsername must be a string',
      Properties+::: { MasterUsername: MasterUsername },
    },
    '#withReadEndpoint': d.fn('`withReadEndpoint` ReadEndpoint ', [d.arg('ReadEndpoint', d.T.string)]),
    withReadEndpoint(ReadEndpoint): {
      assert std.isString(ReadEndpoint) : 'ReadEndpoint must be a string',
      Properties+::: { ReadEndpoint: ReadEndpoint },
    },
    '#withDBClusterParameterGroupName': d.fn('`withDBClusterParameterGroupName` DBClusterParameterGroupName ', [d.arg('DBClusterParameterGroupName', d.T.string)]),
    withDBClusterParameterGroupName(DBClusterParameterGroupName): {
      assert std.isString(DBClusterParameterGroupName) : 'DBClusterParameterGroupName must be a string',
      Properties+::: { DBClusterParameterGroupName: DBClusterParameterGroupName },
    },
    '#withBackupRetentionPeriod': d.fn('`withBackupRetentionPeriod` BackupRetentionPeriod ', [d.arg('BackupRetentionPeriod', d.T.integer)]),
    withBackupRetentionPeriod(BackupRetentionPeriod): {
      assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a integer',
      Properties+::: { BackupRetentionPeriod: BackupRetentionPeriod },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEnableCloudwatchLogsExports': d.fn('`withEnableCloudwatchLogsExports` EnableCloudwatchLogsExports ', [d.arg('EnableCloudwatchLogsExports', d.T.array)]),
    withEnableCloudwatchLogsExports(EnableCloudwatchLogsExports): {
      assert std.isArray(EnableCloudwatchLogsExports) : 'EnableCloudwatchLogsExports must be a array',
      Properties+::: { EnableCloudwatchLogsExports: EnableCloudwatchLogsExports },
    },
  },
  DBClusterParameterGroup: {
    '#': d.pkg(
      name='DBClusterParameterGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DocDB.libsonnet',
      help='Resource Type definition for AWS::DocDB::DBClusterParameterGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DocDB::DBClusterParameterGroup Resource
        * Family 
        * Description 
        * Parameters 
      |||,
      args=[
        d.arg('Family', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
        d.arg('Parameters', 'd.T.object'),
      ]
    ),
    new(
      Family,
      Description,
      Parameters,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Family) : 'Family must be a string',
        Family: Family,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isObject(Parameters) : 'Parameters must be a object',
        Parameters: Parameters,
      },
      DependsOn:: [],
      Type: 'AWS::DocDB::DBClusterParameterGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  DBInstance: {
    '#': d.pkg(
      name='DBInstance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DocDB.libsonnet',
      help='Resource Type definition for AWS::DocDB::DBInstance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DocDB::DBInstance Resource
        * DBInstanceClass 
        * DBClusterIdentifier 
      |||,
      args=[
        d.arg('DBInstanceClass', 'd.T.string'),
        d.arg('DBClusterIdentifier', 'd.T.string'),
      ]
    ),
    new(
      DBInstanceClass,
      DBClusterIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBInstanceClass) : 'DBInstanceClass must be a string',
        DBInstanceClass: DBInstanceClass,
        assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
        DBClusterIdentifier: DBClusterIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::DocDB::DBInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.string)]),
    withPort(Port): {
      assert std.isString(Port) : 'Port must be a string',
      Properties+::: { Port: Port },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withEnablePerformanceInsights': d.fn('`withEnablePerformanceInsights` EnablePerformanceInsights ', [d.arg('EnablePerformanceInsights', d.T.boolean)]),
    withEnablePerformanceInsights(EnablePerformanceInsights): {
      assert std.isBoolean(EnablePerformanceInsights) : 'EnablePerformanceInsights must be a boolean',
      Properties+::: { EnablePerformanceInsights: EnablePerformanceInsights },
    },
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withDBInstanceIdentifier': d.fn('`withDBInstanceIdentifier` DBInstanceIdentifier ', [d.arg('DBInstanceIdentifier', d.T.string)]),
    withDBInstanceIdentifier(DBInstanceIdentifier): {
      assert std.isString(DBInstanceIdentifier) : 'DBInstanceIdentifier must be a string',
      Properties+::: { DBInstanceIdentifier: DBInstanceIdentifier },
    },
    '#withCACertificateIdentifier': d.fn('`withCACertificateIdentifier` CACertificateIdentifier ', [d.arg('CACertificateIdentifier', d.T.string)]),
    withCACertificateIdentifier(CACertificateIdentifier): {
      assert std.isString(CACertificateIdentifier) : 'CACertificateIdentifier must be a string',
      Properties+::: { CACertificateIdentifier: CACertificateIdentifier },
    },
    '#withCertificateRotationRestart': d.fn('`withCertificateRotationRestart` CertificateRotationRestart ', [d.arg('CertificateRotationRestart', d.T.boolean)]),
    withCertificateRotationRestart(CertificateRotationRestart): {
      assert std.isBoolean(CertificateRotationRestart) : 'CertificateRotationRestart must be a boolean',
      Properties+::: { CertificateRotationRestart: CertificateRotationRestart },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DBSubnetGroup: {
    '#': d.pkg(
      name='DBSubnetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DocDB.libsonnet',
      help='Resource Type definition for AWS::DocDB::DBSubnetGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DocDB::DBSubnetGroup Resource
        * DBSubnetGroupDescription 
        * SubnetIds 
      |||,
      args=[
        d.arg('DBSubnetGroupDescription', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
      ]
    ),
    new(
      DBSubnetGroupDescription,
      SubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBSubnetGroupDescription) : 'DBSubnetGroupDescription must be a string',
        DBSubnetGroupDescription: DBSubnetGroupDescription,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::DocDB::DBSubnetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDBSubnetGroupName': d.fn('`withDBSubnetGroupName` DBSubnetGroupName ', [d.arg('DBSubnetGroupName', d.T.string)]),
    withDBSubnetGroupName(DBSubnetGroupName): {
      assert std.isString(DBSubnetGroupName) : 'DBSubnetGroupName must be a string',
      Properties+::: { DBSubnetGroupName: DBSubnetGroupName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EventSubscription: {
    '#': d.pkg(
      name='EventSubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DocDB.libsonnet',
      help='Resource Type definition for AWS::DocDB::EventSubscription',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DocDB::EventSubscription Resource
        * SnsTopicArn 
      |||,
      args=[
        d.arg('SnsTopicArn', 'd.T.string'),
      ]
    ),
    new(
      SnsTopicArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
        SnsTopicArn: SnsTopicArn,
      },
      DependsOn:: [],
      Type: 'AWS::DocDB::EventSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSourceType': d.fn('`withSourceType` SourceType ', [d.arg('SourceType', d.T.string)]),
    withSourceType(SourceType): {
      assert std.isString(SourceType) : 'SourceType must be a string',
      Properties+::: { SourceType: SourceType },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withEventCategories': d.fn('`withEventCategories` EventCategories ', [d.arg('EventCategories', d.T.array)]),
    withEventCategories(EventCategories): {
      assert std.isArray(EventCategories) : 'EventCategories must be a array',
      Properties+::: { EventCategories: EventCategories },
    },
    '#withSubscriptionName': d.fn('`withSubscriptionName` SubscriptionName ', [d.arg('SubscriptionName', d.T.string)]),
    withSubscriptionName(SubscriptionName): {
      assert std.isString(SubscriptionName) : 'SubscriptionName must be a string',
      Properties+::: { SubscriptionName: SubscriptionName },
    },
    '#withSourceIds': d.fn('`withSourceIds` SourceIds ', [d.arg('SourceIds', d.T.array)]),
    withSourceIds(SourceIds): {
      assert std.isArray(SourceIds) : 'SourceIds must be a array',
      Properties+::: { SourceIds: SourceIds },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
}
