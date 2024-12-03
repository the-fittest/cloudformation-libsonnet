local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DBCluster: {
    '#': d.pkg(
      name='DBCluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Neptune.libsonnet',
      help='The AWS::Neptune::DBCluster resource creates an Amazon Neptune DB cluster.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Neptune::DBCluster Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Neptune::DBCluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withReadEndpoint': d.fn('`withReadEndpoint` ReadEndpoint ', [d.arg('ReadEndpoint', d.T.string)]),
    withReadEndpoint(ReadEndpoint): {
      assert std.isString(ReadEndpoint) : 'ReadEndpoint must be a string',
      Properties+::: { ReadEndpoint: ReadEndpoint },
    },
    '#withClusterResourceId': d.fn('`withClusterResourceId` ClusterResourceId ', [d.arg('ClusterResourceId', d.T.string)]),
    withClusterResourceId(ClusterResourceId): {
      assert std.isString(ClusterResourceId) : 'ClusterResourceId must be a string',
      Properties+::: { ClusterResourceId: ClusterResourceId },
    },
    '#withAssociatedRoles': d.fn('`withAssociatedRoles` AssociatedRoles ', [d.arg('AssociatedRoles', d.T.array)]),
    withAssociatedRoles(AssociatedRoles): {
      assert std.isArray(AssociatedRoles) : 'AssociatedRoles must be a array',
      Properties+::: { AssociatedRoles: AssociatedRoles },
    },
    '#withAvailabilityZones': d.fn('`withAvailabilityZones` AvailabilityZones ', [d.arg('AvailabilityZones', d.T.array)]),
    withAvailabilityZones(AvailabilityZones): {
      assert std.isArray(AvailabilityZones) : 'AvailabilityZones must be a array',
      Properties+::: { AvailabilityZones: AvailabilityZones },
    },
    '#withBackupRetentionPeriod': d.fn('`withBackupRetentionPeriod` BackupRetentionPeriod ', [d.arg('BackupRetentionPeriod', d.T.integer)]),
    withBackupRetentionPeriod(BackupRetentionPeriod): {
      assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a integer',
      Properties+::: { BackupRetentionPeriod: BackupRetentionPeriod },
    },
    '#withCopyTagsToSnapshot': d.fn('`withCopyTagsToSnapshot` CopyTagsToSnapshot ', [d.arg('CopyTagsToSnapshot', d.T.boolean)]),
    withCopyTagsToSnapshot(CopyTagsToSnapshot): {
      assert std.isBoolean(CopyTagsToSnapshot) : 'CopyTagsToSnapshot must be a boolean',
      Properties+::: { CopyTagsToSnapshot: CopyTagsToSnapshot },
    },
    '#withDBClusterIdentifier': d.fn('`withDBClusterIdentifier` DBClusterIdentifier ', [d.arg('DBClusterIdentifier', d.T.string)]),
    withDBClusterIdentifier(DBClusterIdentifier): {
      assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
      Properties+::: { DBClusterIdentifier: DBClusterIdentifier },
    },
    '#withDBClusterParameterGroupName': d.fn('`withDBClusterParameterGroupName` DBClusterParameterGroupName ', [d.arg('DBClusterParameterGroupName', d.T.string)]),
    withDBClusterParameterGroupName(DBClusterParameterGroupName): {
      assert std.isString(DBClusterParameterGroupName) : 'DBClusterParameterGroupName must be a string',
      Properties+::: { DBClusterParameterGroupName: DBClusterParameterGroupName },
    },
    '#withDBInstanceParameterGroupName': d.fn('`withDBInstanceParameterGroupName` DBInstanceParameterGroupName ', [d.arg('DBInstanceParameterGroupName', d.T.string)]),
    withDBInstanceParameterGroupName(DBInstanceParameterGroupName): {
      assert std.isString(DBInstanceParameterGroupName) : 'DBInstanceParameterGroupName must be a string',
      Properties+::: { DBInstanceParameterGroupName: DBInstanceParameterGroupName },
    },
    '#withDBPort': d.fn('`withDBPort` DBPort ', [d.arg('DBPort', d.T.integer)]),
    withDBPort(DBPort): {
      assert std.isNumber(DBPort) : 'DBPort must be a integer',
      Properties+::: { DBPort: DBPort },
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
    '#withEnableCloudwatchLogsExports': d.fn('`withEnableCloudwatchLogsExports` EnableCloudwatchLogsExports ', [d.arg('EnableCloudwatchLogsExports', d.T.array)]),
    withEnableCloudwatchLogsExports(EnableCloudwatchLogsExports): {
      assert std.isArray(EnableCloudwatchLogsExports) : 'EnableCloudwatchLogsExports must be a array',
      Properties+::: { EnableCloudwatchLogsExports: EnableCloudwatchLogsExports },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withIamAuthEnabled': d.fn('`withIamAuthEnabled` IamAuthEnabled ', [d.arg('IamAuthEnabled', d.T.boolean)]),
    withIamAuthEnabled(IamAuthEnabled): {
      assert std.isBoolean(IamAuthEnabled) : 'IamAuthEnabled must be a boolean',
      Properties+::: { IamAuthEnabled: IamAuthEnabled },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.string)]),
    withPort(Port): {
      assert std.isString(Port) : 'Port must be a string',
      Properties+::: { Port: Port },
    },
    '#withPreferredBackupWindow': d.fn('`withPreferredBackupWindow` PreferredBackupWindow ', [d.arg('PreferredBackupWindow', d.T.string)]),
    withPreferredBackupWindow(PreferredBackupWindow): {
      assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
      Properties+::: { PreferredBackupWindow: PreferredBackupWindow },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withRestoreToTime': d.fn('`withRestoreToTime` RestoreToTime ', [d.arg('RestoreToTime', d.T.string)]),
    withRestoreToTime(RestoreToTime): {
      assert std.isString(RestoreToTime) : 'RestoreToTime must be a string',
      Properties+::: { RestoreToTime: RestoreToTime },
    },
    '#withRestoreType': d.fn('`withRestoreType` RestoreType ', [d.arg('RestoreType', d.T.string)]),
    withRestoreType(RestoreType): {
      assert std.isString(RestoreType) : 'RestoreType must be a string',
      Properties+::: { RestoreType: RestoreType },
    },
    '#withServerlessScalingConfiguration': d.fn('`withServerlessScalingConfiguration` ServerlessScalingConfiguration ', [d.arg('ServerlessScalingConfiguration', d.T.object)]),
    withServerlessScalingConfiguration(ServerlessScalingConfiguration): {
      assert std.isObject(ServerlessScalingConfiguration) : 'ServerlessScalingConfiguration must be a object',
      Properties+::: { ServerlessScalingConfiguration: ServerlessScalingConfiguration },
    },
    '#withSnapshotIdentifier': d.fn('`withSnapshotIdentifier` SnapshotIdentifier ', [d.arg('SnapshotIdentifier', d.T.string)]),
    withSnapshotIdentifier(SnapshotIdentifier): {
      assert std.isString(SnapshotIdentifier) : 'SnapshotIdentifier must be a string',
      Properties+::: { SnapshotIdentifier: SnapshotIdentifier },
    },
    '#withSourceDBClusterIdentifier': d.fn('`withSourceDBClusterIdentifier` SourceDBClusterIdentifier ', [d.arg('SourceDBClusterIdentifier', d.T.string)]),
    withSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
      assert std.isString(SourceDBClusterIdentifier) : 'SourceDBClusterIdentifier must be a string',
      Properties+::: { SourceDBClusterIdentifier: SourceDBClusterIdentifier },
    },
    '#withStorageEncrypted': d.fn('`withStorageEncrypted` StorageEncrypted ', [d.arg('StorageEncrypted', d.T.boolean)]),
    withStorageEncrypted(StorageEncrypted): {
      assert std.isBoolean(StorageEncrypted) : 'StorageEncrypted must be a boolean',
      Properties+::: { StorageEncrypted: StorageEncrypted },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUseLatestRestorableTime': d.fn('`withUseLatestRestorableTime` UseLatestRestorableTime ', [d.arg('UseLatestRestorableTime', d.T.boolean)]),
    withUseLatestRestorableTime(UseLatestRestorableTime): {
      assert std.isBoolean(UseLatestRestorableTime) : 'UseLatestRestorableTime must be a boolean',
      Properties+::: { UseLatestRestorableTime: UseLatestRestorableTime },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
  },
  DBClusterParameterGroup: {
    '#': d.pkg(
      name='DBClusterParameterGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Neptune.libsonnet',
      help='Resource Type definition for AWS::Neptune::DBClusterParameterGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Neptune::DBClusterParameterGroup Resource
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
      Type: 'AWS::Neptune::DBClusterParameterGroup',
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Neptune.libsonnet',
      help='Resource Type definition for AWS::Neptune::DBInstance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Neptune::DBInstance Resource
        * DBInstanceClass 
      |||,
      args=[
        d.arg('DBInstanceClass', 'd.T.string'),
      ]
    ),
    new(
      DBInstanceClass,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBInstanceClass) : 'DBInstanceClass must be a string',
        DBInstanceClass: DBInstanceClass,
      },
      DependsOn:: [],
      Type: 'AWS::Neptune::DBInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.string)]),
    withPort(Port): {
      assert std.isString(Port) : 'Port must be a string',
      Properties+::: { Port: Port },
    },
    '#withDBParameterGroupName': d.fn('`withDBParameterGroupName` DBParameterGroupName ', [d.arg('DBParameterGroupName', d.T.string)]),
    withDBParameterGroupName(DBParameterGroupName): {
      assert std.isString(DBParameterGroupName) : 'DBParameterGroupName must be a string',
      Properties+::: { DBParameterGroupName: DBParameterGroupName },
    },
    '#withAllowMajorVersionUpgrade': d.fn('`withAllowMajorVersionUpgrade` AllowMajorVersionUpgrade ', [d.arg('AllowMajorVersionUpgrade', d.T.boolean)]),
    withAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
      assert std.isBoolean(AllowMajorVersionUpgrade) : 'AllowMajorVersionUpgrade must be a boolean',
      Properties+::: { AllowMajorVersionUpgrade: AllowMajorVersionUpgrade },
    },
    '#withDBClusterIdentifier': d.fn('`withDBClusterIdentifier` DBClusterIdentifier ', [d.arg('DBClusterIdentifier', d.T.string)]),
    withDBClusterIdentifier(DBClusterIdentifier): {
      assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
      Properties+::: { DBClusterIdentifier: DBClusterIdentifier },
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
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withDBSubnetGroupName': d.fn('`withDBSubnetGroupName` DBSubnetGroupName ', [d.arg('DBSubnetGroupName', d.T.string)]),
    withDBSubnetGroupName(DBSubnetGroupName): {
      assert std.isString(DBSubnetGroupName) : 'DBSubnetGroupName must be a string',
      Properties+::: { DBSubnetGroupName: DBSubnetGroupName },
    },
    '#withDBInstanceIdentifier': d.fn('`withDBInstanceIdentifier` DBInstanceIdentifier ', [d.arg('DBInstanceIdentifier', d.T.string)]),
    withDBInstanceIdentifier(DBInstanceIdentifier): {
      assert std.isString(DBInstanceIdentifier) : 'DBInstanceIdentifier must be a string',
      Properties+::: { DBInstanceIdentifier: DBInstanceIdentifier },
    },
    '#withDBSnapshotIdentifier': d.fn('`withDBSnapshotIdentifier` DBSnapshotIdentifier ', [d.arg('DBSnapshotIdentifier', d.T.string)]),
    withDBSnapshotIdentifier(DBSnapshotIdentifier): {
      assert std.isString(DBSnapshotIdentifier) : 'DBSnapshotIdentifier must be a string',
      Properties+::: { DBSnapshotIdentifier: DBSnapshotIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DBParameterGroup: {
    '#': d.pkg(
      name='DBParameterGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Neptune.libsonnet',
      help='Resource Type definition for AWS::Neptune::DBParameterGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Neptune::DBParameterGroup Resource
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
      Type: 'AWS::Neptune::DBParameterGroup',
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
  DBSubnetGroup: {
    '#': d.pkg(
      name='DBSubnetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Neptune.libsonnet',
      help='Resource Type definition for AWS::Neptune::DBSubnetGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Neptune::DBSubnetGroup Resource
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
      Type: 'AWS::Neptune::DBSubnetGroup',
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Neptune.libsonnet',
      help='Resource Type definition for AWS::Neptune::EventSubscription',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Neptune::EventSubscription Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Neptune::EventSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withSnsTopicArn': d.fn('`withSnsTopicArn` SnsTopicArn ', [d.arg('SnsTopicArn', d.T.string)]),
    withSnsTopicArn(SnsTopicArn): {
      assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
      Properties+::: { SnsTopicArn: SnsTopicArn },
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
    '#withSourceType': d.fn('`withSourceType` SourceType ', [d.arg('SourceType', d.T.string)]),
    withSourceType(SourceType): {
      assert std.isString(SourceType) : 'SourceType must be a string',
      Properties+::: { SourceType: SourceType },
    },
  },
}
