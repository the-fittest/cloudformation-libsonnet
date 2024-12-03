local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CustomDBEngineVersion: {
    '#': d.pkg(
      name='CustomDBEngineVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='The AWS::RDS::CustomDBEngineVersion resource creates an Amazon RDS custom DB engine version.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::CustomDBEngineVersion Resource
        * Engine The database engine to use for your custom engine version (CEV). The only supported value is custom-oracle-ee.
        * EngineVersion The name of your CEV. The name format is 19.customized_string . For example, a valid name is 19.my_cev1. This setting is required for RDS Custom for Oracle, but optional for Amazon RDS. The combination of Engine and EngineVersion is unique per customer per Region.
      |||,
      args=[
        d.arg('Engine', 'd.T.string'),
        d.arg('EngineVersion', 'd.T.string'),
      ]
    ),
    new(
      Engine,
      EngineVersion,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Engine) : 'Engine must be a string',
        Engine: Engine,
        assert std.isString(EngineVersion) : 'EngineVersion must be a string',
        EngineVersion: EngineVersion,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::CustomDBEngineVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDatabaseInstallationFilesS3BucketName': d.fn('`withDatabaseInstallationFilesS3BucketName` DatabaseInstallationFilesS3BucketName ', [d.arg('DatabaseInstallationFilesS3BucketName', d.T.string)]),
    withDatabaseInstallationFilesS3BucketName(DatabaseInstallationFilesS3BucketName): {
      assert std.isString(DatabaseInstallationFilesS3BucketName) : 'DatabaseInstallationFilesS3BucketName must be a string',
      Properties+::: { DatabaseInstallationFilesS3BucketName: DatabaseInstallationFilesS3BucketName },
    },
    '#withDatabaseInstallationFilesS3Prefix': d.fn('`withDatabaseInstallationFilesS3Prefix` DatabaseInstallationFilesS3Prefix ', [d.arg('DatabaseInstallationFilesS3Prefix', d.T.string)]),
    withDatabaseInstallationFilesS3Prefix(DatabaseInstallationFilesS3Prefix): {
      assert std.isString(DatabaseInstallationFilesS3Prefix) : 'DatabaseInstallationFilesS3Prefix must be a string',
      Properties+::: { DatabaseInstallationFilesS3Prefix: DatabaseInstallationFilesS3Prefix },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKMSKeyId': d.fn('`withKMSKeyId` KMSKeyId ', [d.arg('KMSKeyId', d.T.string)]),
    withKMSKeyId(KMSKeyId): {
      assert std.isString(KMSKeyId) : 'KMSKeyId must be a string',
      Properties+::: { KMSKeyId: KMSKeyId },
    },
    '#withManifest': d.fn('`withManifest` Manifest ', [d.arg('Manifest', d.T.string)]),
    withManifest(Manifest): {
      assert std.isString(Manifest) : 'Manifest must be a string',
      Properties+::: { Manifest: Manifest },
    },
    '#withDBEngineVersionArn': d.fn('`withDBEngineVersionArn` DBEngineVersionArn ', [d.arg('DBEngineVersionArn', d.T.string)]),
    withDBEngineVersionArn(DBEngineVersionArn): {
      assert std.isString(DBEngineVersionArn) : 'DBEngineVersionArn must be a string',
      Properties+::: { DBEngineVersionArn: DBEngineVersionArn },
    },
    '#withSourceCustomDbEngineVersionIdentifier': d.fn('`withSourceCustomDbEngineVersionIdentifier` SourceCustomDbEngineVersionIdentifier ', [d.arg('SourceCustomDbEngineVersionIdentifier', d.T.string)]),
    withSourceCustomDbEngineVersionIdentifier(SourceCustomDbEngineVersionIdentifier): {
      assert std.isString(SourceCustomDbEngineVersionIdentifier) : 'SourceCustomDbEngineVersionIdentifier must be a string',
      Properties+::: { SourceCustomDbEngineVersionIdentifier: SourceCustomDbEngineVersionIdentifier },
    },
    '#withUseAwsProvidedLatestImage': d.fn('`withUseAwsProvidedLatestImage` UseAwsProvidedLatestImage ', [d.arg('UseAwsProvidedLatestImage', d.T.boolean)]),
    withUseAwsProvidedLatestImage(UseAwsProvidedLatestImage): {
      assert std.isBoolean(UseAwsProvidedLatestImage) : 'UseAwsProvidedLatestImage must be a boolean',
      Properties+::: { UseAwsProvidedLatestImage: UseAwsProvidedLatestImage },
    },
    '#withImageId': d.fn('`withImageId` ImageId ', [d.arg('ImageId', d.T.string)]),
    withImageId(ImageId): {
      assert std.isString(ImageId) : 'ImageId must be a string',
      Properties+::: { ImageId: ImageId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'available' || Status == 'inactive' || Status == 'inactive-except-restore' : "Status must be either 'available' or 'inactive' or 'inactive-except-restore'",
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DBCluster: {
    '#': d.pkg(
      name='DBCluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='The AWS::RDS::DBCluster resource creates an Amazon Aurora DB cluster or Multi-AZ DB cluster. For more information about creating an Aurora DB cluster, see [Creating an Amazon Aurora DB cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.CreateInstance.html) in the *Amazon Aurora User Guide*. For more information about creating a Multi-AZ DB cluster, see [Creating a Multi-AZ DB cluster](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/create-multi-az-db-cluster.html) in the *Amazon RDS User Guide*.You can only create this resource in AWS Regions where Amazon Aurora or Multi-AZ DB clusters are supported.*Updating DB clusters*  When properties labeled &#34;*Update requires:* [Replacement](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement)&#34; are updated, AWS CloudFormation first creates a replacement DB cluster, then changes references from other dependent resources to point to the replacement DB cluster, and finally deletes the old DB cluster.We highly recommend that you take a snapshot of the database before updating the stack. If you dont, you lose the data when AWS CloudFormation replaces your DB cluster. To preserve your data, perform the following procedure:1.Deactivate any applications that are using the DB cluster so that theres no activity on the DB instance.1.Create a snapshot of the DB cluster. For more information, see [Creating a DB cluster snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CreateSnapshotCluster.html).1.If you want to restore your DB cluster using a DB cluster snapshot, modify the updated template with your DB cluster changes and add the SnapshotIdentifier property with the ID of the DB cluster snapshot that you want to use. After you restore a DB cluster with a SnapshotIdentifier property, you must specify the same SnapshotIdentifier property for any future updates to the DB cluster. When you specify this property for an update, the DB cluster is not restored from the DB cluster snapshot again, and the data in the database is not changed. However, if you dont specify the SnapshotIdentifier property, an empty DB cluster is created, and the original DB cluster is deleted. If you specify a property that is different from the previous snapshot restore property, a new DB cluster is restored from the specified SnapshotIdentifier property, and the original DB cluster is deleted.1.Update the stack.Currently, when you are updating the stack for an Aurora Serverless DB cluster, you cant include changes to any other properties when you specify one of the following properties: PreferredBackupWindow, PreferredMaintenanceWindow, and Port. This limitation doesnt apply to provisioned DB clusters. For more information about updating other properties of this resource, see ModifyDBCluster. For more information about updating stacks, see [CloudFormation Stacks Updates](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).*Deleting DB clusters*  The default DeletionPolicy for AWS::RDS::DBCluster resources is Snapshot. For more information about how AWS CloudFormation deletes resources, see [DeletionPolicy Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBCluster Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::RDS::DBCluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.object)]),
    withEndpoint(Endpoint): {
      assert std.isObject(Endpoint) : 'Endpoint must be a object',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withReadEndpoint': d.fn('`withReadEndpoint` ReadEndpoint ', [d.arg('ReadEndpoint', d.T.object)]),
    withReadEndpoint(ReadEndpoint): {
      assert std.isObject(ReadEndpoint) : 'ReadEndpoint must be a object',
      Properties+::: { ReadEndpoint: ReadEndpoint },
    },
    '#withAllocatedStorage': d.fn('`withAllocatedStorage` AllocatedStorage ', [d.arg('AllocatedStorage', d.T.integer)]),
    withAllocatedStorage(AllocatedStorage): {
      assert std.isNumber(AllocatedStorage) : 'AllocatedStorage must be a integer',
      Properties+::: { AllocatedStorage: AllocatedStorage },
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
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withBacktrackWindow': d.fn('`withBacktrackWindow` BacktrackWindow ', [d.arg('BacktrackWindow', d.T.integer)]),
    withBacktrackWindow(BacktrackWindow): {
      assert std.isNumber(BacktrackWindow) : 'BacktrackWindow must be a integer',
      Properties+::: { BacktrackWindow: BacktrackWindow },
    },
    '#withBackupRetentionPeriod': d.fn('`withBackupRetentionPeriod` BackupRetentionPeriod ', [d.arg('BackupRetentionPeriod', d.T.integer)]),
    withBackupRetentionPeriod(BackupRetentionPeriod): {
      assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a integer',
      Properties+::: { BackupRetentionPeriod: BackupRetentionPeriod },
    },
    '#withClusterScalabilityType': d.fn('`withClusterScalabilityType` ClusterScalabilityType ', [d.arg('ClusterScalabilityType', d.T.string)]),
    withClusterScalabilityType(ClusterScalabilityType): {
      assert std.isString(ClusterScalabilityType) : 'ClusterScalabilityType must be a string',
      Properties+::: { ClusterScalabilityType: ClusterScalabilityType },
    },
    '#withCopyTagsToSnapshot': d.fn('`withCopyTagsToSnapshot` CopyTagsToSnapshot ', [d.arg('CopyTagsToSnapshot', d.T.boolean)]),
    withCopyTagsToSnapshot(CopyTagsToSnapshot): {
      assert std.isBoolean(CopyTagsToSnapshot) : 'CopyTagsToSnapshot must be a boolean',
      Properties+::: { CopyTagsToSnapshot: CopyTagsToSnapshot },
    },
    '#withDatabaseName': d.fn('`withDatabaseName` DatabaseName ', [d.arg('DatabaseName', d.T.string)]),
    withDatabaseName(DatabaseName): {
      assert std.isString(DatabaseName) : 'DatabaseName must be a string',
      Properties+::: { DatabaseName: DatabaseName },
    },
    '#withDBClusterArn': d.fn('`withDBClusterArn` DBClusterArn ', [d.arg('DBClusterArn', d.T.string)]),
    withDBClusterArn(DBClusterArn): {
      assert std.isString(DBClusterArn) : 'DBClusterArn must be a string',
      Properties+::: { DBClusterArn: DBClusterArn },
    },
    '#withDBClusterInstanceClass': d.fn('`withDBClusterInstanceClass` DBClusterInstanceClass ', [d.arg('DBClusterInstanceClass', d.T.string)]),
    withDBClusterInstanceClass(DBClusterInstanceClass): {
      assert std.isString(DBClusterInstanceClass) : 'DBClusterInstanceClass must be a string',
      Properties+::: { DBClusterInstanceClass: DBClusterInstanceClass },
    },
    '#withDBClusterResourceId': d.fn('`withDBClusterResourceId` DBClusterResourceId ', [d.arg('DBClusterResourceId', d.T.string)]),
    withDBClusterResourceId(DBClusterResourceId): {
      assert std.isString(DBClusterResourceId) : 'DBClusterResourceId must be a string',
      Properties+::: { DBClusterResourceId: DBClusterResourceId },
    },
    '#withDBInstanceParameterGroupName': d.fn('`withDBInstanceParameterGroupName` DBInstanceParameterGroupName ', [d.arg('DBInstanceParameterGroupName', d.T.string)]),
    withDBInstanceParameterGroupName(DBInstanceParameterGroupName): {
      assert std.isString(DBInstanceParameterGroupName) : 'DBInstanceParameterGroupName must be a string',
      Properties+::: { DBInstanceParameterGroupName: DBInstanceParameterGroupName },
    },
    '#withDBSystemId': d.fn('`withDBSystemId` DBSystemId ', [d.arg('DBSystemId', d.T.string)]),
    withDBSystemId(DBSystemId): {
      assert std.isString(DBSystemId) : 'DBSystemId must be a string',
      Properties+::: { DBSystemId: DBSystemId },
    },
    '#withGlobalClusterIdentifier': d.fn('`withGlobalClusterIdentifier` GlobalClusterIdentifier ', [d.arg('GlobalClusterIdentifier', d.T.string)]),
    withGlobalClusterIdentifier(GlobalClusterIdentifier): {
      assert std.isString(GlobalClusterIdentifier) : 'GlobalClusterIdentifier must be a string',
      Properties+::: { GlobalClusterIdentifier: GlobalClusterIdentifier },
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
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      Properties+::: { Domain: Domain },
    },
    '#withDomainIAMRoleName': d.fn('`withDomainIAMRoleName` DomainIAMRoleName ', [d.arg('DomainIAMRoleName', d.T.string)]),
    withDomainIAMRoleName(DomainIAMRoleName): {
      assert std.isString(DomainIAMRoleName) : 'DomainIAMRoleName must be a string',
      Properties+::: { DomainIAMRoleName: DomainIAMRoleName },
    },
    '#withEnableCloudwatchLogsExports': d.fn('`withEnableCloudwatchLogsExports` EnableCloudwatchLogsExports ', [d.arg('EnableCloudwatchLogsExports', d.T.array)]),
    withEnableCloudwatchLogsExports(EnableCloudwatchLogsExports): {
      assert std.isArray(EnableCloudwatchLogsExports) : 'EnableCloudwatchLogsExports must be a array',
      Properties+::: { EnableCloudwatchLogsExports: EnableCloudwatchLogsExports },
    },
    '#withEnableGlobalWriteForwarding': d.fn('`withEnableGlobalWriteForwarding` EnableGlobalWriteForwarding ', [d.arg('EnableGlobalWriteForwarding', d.T.boolean)]),
    withEnableGlobalWriteForwarding(EnableGlobalWriteForwarding): {
      assert std.isBoolean(EnableGlobalWriteForwarding) : 'EnableGlobalWriteForwarding must be a boolean',
      Properties+::: { EnableGlobalWriteForwarding: EnableGlobalWriteForwarding },
    },
    '#withEnableHttpEndpoint': d.fn('`withEnableHttpEndpoint` EnableHttpEndpoint ', [d.arg('EnableHttpEndpoint', d.T.boolean)]),
    withEnableHttpEndpoint(EnableHttpEndpoint): {
      assert std.isBoolean(EnableHttpEndpoint) : 'EnableHttpEndpoint must be a boolean',
      Properties+::: { EnableHttpEndpoint: EnableHttpEndpoint },
    },
    '#withEnableIAMDatabaseAuthentication': d.fn('`withEnableIAMDatabaseAuthentication` EnableIAMDatabaseAuthentication ', [d.arg('EnableIAMDatabaseAuthentication', d.T.boolean)]),
    withEnableIAMDatabaseAuthentication(EnableIAMDatabaseAuthentication): {
      assert std.isBoolean(EnableIAMDatabaseAuthentication) : 'EnableIAMDatabaseAuthentication must be a boolean',
      Properties+::: { EnableIAMDatabaseAuthentication: EnableIAMDatabaseAuthentication },
    },
    '#withEnableLocalWriteForwarding': d.fn('`withEnableLocalWriteForwarding` EnableLocalWriteForwarding ', [d.arg('EnableLocalWriteForwarding', d.T.boolean)]),
    withEnableLocalWriteForwarding(EnableLocalWriteForwarding): {
      assert std.isBoolean(EnableLocalWriteForwarding) : 'EnableLocalWriteForwarding must be a boolean',
      Properties+::: { EnableLocalWriteForwarding: EnableLocalWriteForwarding },
    },
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: { Engine: Engine },
    },
    '#withEngineLifecycleSupport': d.fn('`withEngineLifecycleSupport` EngineLifecycleSupport ', [d.arg('EngineLifecycleSupport', d.T.string)]),
    withEngineLifecycleSupport(EngineLifecycleSupport): {
      assert std.isString(EngineLifecycleSupport) : 'EngineLifecycleSupport must be a string',
      Properties+::: { EngineLifecycleSupport: EngineLifecycleSupport },
    },
    '#withEngineMode': d.fn('`withEngineMode` EngineMode ', [d.arg('EngineMode', d.T.string)]),
    withEngineMode(EngineMode): {
      assert std.isString(EngineMode) : 'EngineMode must be a string',
      Properties+::: { EngineMode: EngineMode },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withManageMasterUserPassword': d.fn('`withManageMasterUserPassword` ManageMasterUserPassword ', [d.arg('ManageMasterUserPassword', d.T.boolean)]),
    withManageMasterUserPassword(ManageMasterUserPassword): {
      assert std.isBoolean(ManageMasterUserPassword) : 'ManageMasterUserPassword must be a boolean',
      Properties+::: { ManageMasterUserPassword: ManageMasterUserPassword },
    },
    '#withIops': d.fn('`withIops` Iops ', [d.arg('Iops', d.T.integer)]),
    withIops(Iops): {
      assert std.isNumber(Iops) : 'Iops must be a integer',
      Properties+::: { Iops: Iops },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withMasterUsername': d.fn('`withMasterUsername` MasterUsername ', [d.arg('MasterUsername', d.T.string)]),
    withMasterUsername(MasterUsername): {
      assert std.isString(MasterUsername) : 'MasterUsername must be a string',
      Properties+::: { MasterUsername: MasterUsername },
    },
    '#withMasterUserPassword': d.fn('`withMasterUserPassword` MasterUserPassword ', [d.arg('MasterUserPassword', d.T.string)]),
    withMasterUserPassword(MasterUserPassword): {
      assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
      Properties+::: { MasterUserPassword: MasterUserPassword },
    },
    '#withMasterUserSecret': d.fn('`withMasterUserSecret` MasterUserSecret ', [d.arg('MasterUserSecret', d.T.object)]),
    withMasterUserSecret(MasterUserSecret): {
      assert std.isObject(MasterUserSecret) : 'MasterUserSecret must be a object',
      Properties+::: { MasterUserSecret: MasterUserSecret },
    },
    '#withMonitoringInterval': d.fn('`withMonitoringInterval` MonitoringInterval ', [d.arg('MonitoringInterval', d.T.integer)]),
    withMonitoringInterval(MonitoringInterval): {
      assert std.isNumber(MonitoringInterval) : 'MonitoringInterval must be a integer',
      Properties+::: { MonitoringInterval: MonitoringInterval },
    },
    '#withMonitoringRoleArn': d.fn('`withMonitoringRoleArn` MonitoringRoleArn ', [d.arg('MonitoringRoleArn', d.T.string)]),
    withMonitoringRoleArn(MonitoringRoleArn): {
      assert std.isString(MonitoringRoleArn) : 'MonitoringRoleArn must be a string',
      Properties+::: { MonitoringRoleArn: MonitoringRoleArn },
    },
    '#withNetworkType': d.fn('`withNetworkType` NetworkType ', [d.arg('NetworkType', d.T.string)]),
    withNetworkType(NetworkType): {
      assert std.isString(NetworkType) : 'NetworkType must be a string',
      Properties+::: { NetworkType: NetworkType },
    },
    '#withPerformanceInsightsEnabled': d.fn('`withPerformanceInsightsEnabled` PerformanceInsightsEnabled ', [d.arg('PerformanceInsightsEnabled', d.T.boolean)]),
    withPerformanceInsightsEnabled(PerformanceInsightsEnabled): {
      assert std.isBoolean(PerformanceInsightsEnabled) : 'PerformanceInsightsEnabled must be a boolean',
      Properties+::: { PerformanceInsightsEnabled: PerformanceInsightsEnabled },
    },
    '#withPerformanceInsightsKmsKeyId': d.fn('`withPerformanceInsightsKmsKeyId` PerformanceInsightsKmsKeyId ', [d.arg('PerformanceInsightsKmsKeyId', d.T.string)]),
    withPerformanceInsightsKmsKeyId(PerformanceInsightsKmsKeyId): {
      assert std.isString(PerformanceInsightsKmsKeyId) : 'PerformanceInsightsKmsKeyId must be a string',
      Properties+::: { PerformanceInsightsKmsKeyId: PerformanceInsightsKmsKeyId },
    },
    '#withPerformanceInsightsRetentionPeriod': d.fn('`withPerformanceInsightsRetentionPeriod` PerformanceInsightsRetentionPeriod ', [d.arg('PerformanceInsightsRetentionPeriod', d.T.integer)]),
    withPerformanceInsightsRetentionPeriod(PerformanceInsightsRetentionPeriod): {
      assert std.isNumber(PerformanceInsightsRetentionPeriod) : 'PerformanceInsightsRetentionPeriod must be a integer',
      Properties+::: { PerformanceInsightsRetentionPeriod: PerformanceInsightsRetentionPeriod },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
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
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withReplicationSourceIdentifier': d.fn('`withReplicationSourceIdentifier` ReplicationSourceIdentifier ', [d.arg('ReplicationSourceIdentifier', d.T.string)]),
    withReplicationSourceIdentifier(ReplicationSourceIdentifier): {
      assert std.isString(ReplicationSourceIdentifier) : 'ReplicationSourceIdentifier must be a string',
      Properties+::: { ReplicationSourceIdentifier: ReplicationSourceIdentifier },
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
    '#withServerlessV2ScalingConfiguration': d.fn('`withServerlessV2ScalingConfiguration` ServerlessV2ScalingConfiguration ', [d.arg('ServerlessV2ScalingConfiguration', d.T.object)]),
    withServerlessV2ScalingConfiguration(ServerlessV2ScalingConfiguration): {
      assert std.isObject(ServerlessV2ScalingConfiguration) : 'ServerlessV2ScalingConfiguration must be a object',
      Properties+::: { ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration },
    },
    '#withScalingConfiguration': d.fn('`withScalingConfiguration` ScalingConfiguration ', [d.arg('ScalingConfiguration', d.T.object)]),
    withScalingConfiguration(ScalingConfiguration): {
      assert std.isObject(ScalingConfiguration) : 'ScalingConfiguration must be a object',
      Properties+::: { ScalingConfiguration: ScalingConfiguration },
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
    '#withSourceRegion': d.fn('`withSourceRegion` SourceRegion ', [d.arg('SourceRegion', d.T.string)]),
    withSourceRegion(SourceRegion): {
      assert std.isString(SourceRegion) : 'SourceRegion must be a string',
      Properties+::: { SourceRegion: SourceRegion },
    },
    '#withStorageEncrypted': d.fn('`withStorageEncrypted` StorageEncrypted ', [d.arg('StorageEncrypted', d.T.boolean)]),
    withStorageEncrypted(StorageEncrypted): {
      assert std.isBoolean(StorageEncrypted) : 'StorageEncrypted must be a boolean',
      Properties+::: { StorageEncrypted: StorageEncrypted },
    },
    '#withStorageThroughput': d.fn('`withStorageThroughput` StorageThroughput ', [d.arg('StorageThroughput', d.T.integer)]),
    withStorageThroughput(StorageThroughput): {
      assert std.isNumber(StorageThroughput) : 'StorageThroughput must be a integer',
      Properties+::: { StorageThroughput: StorageThroughput },
    },
    '#withStorageType': d.fn('`withStorageType` StorageType ', [d.arg('StorageType', d.T.string)]),
    withStorageType(StorageType): {
      assert std.isString(StorageType) : 'StorageType must be a string',
      Properties+::: { StorageType: StorageType },
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='The AWS::RDS::DBClusterParameterGroup resource creates a new Amazon RDS DB cluster parameter group. For information about configuring parameters for Amazon Aurora DB clusters, see [Working with parameter groups](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_WorkingWithParamGroups.html) in the *Amazon Aurora User Guide*.If you apply a parameter group to a DB cluster, then its DB instances might need to reboot. This can result in an outage while the DB instances are rebooting. If you apply a change to parameter group associated with a stopped DB cluster, then the updated stack waits until the DB cluster is started.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBClusterParameterGroup Resource
        * Description The description for the DB cluster parameter group.
        * Family The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.*Aurora MySQL*  Example: aurora-mysql5.7, aurora-mysql8.0 *Aurora PostgreSQL*  Example: aurora-postgresql14 *RDS for MySQL*  Example: mysql8.0 *RDS for PostgreSQL*  Example: postgres13  To list all of the available parameter group families for a DB engine, use the following command:aws rds describe-db-engine-versions --query &#34;DBEngineVersions[].DBParameterGroupFamily&#34; --engine &lt;engine&gt;  For example, to list all of the available parameter group families for the Aurora PostgreSQL DB engine, use the following command:aws rds describe-db-engine-versions --query &#34;DBEngineVersions[].DBParameterGroupFamily&#34; --engine aurora-postgresql The output contains duplicates.The following are the valid DB engine values:+aurora-mysql +aurora-postgresql +mysql +postgres
        * Parameters Provides a list of parameters for the DB cluster parameter group.
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
        d.arg('Family', 'd.T.string'),
        d.arg('Parameters', 'd.T.object'),
      ]
    ),
    new(
      Description,
      Family,
      Parameters,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isString(Family) : 'Family must be a string',
        Family: Family,
        assert std.isObject(Parameters) : 'Parameters must be a object',
        Parameters: Parameters,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::DBClusterParameterGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDBClusterParameterGroupName': d.fn('`withDBClusterParameterGroupName` DBClusterParameterGroupName ', [d.arg('DBClusterParameterGroupName', d.T.string)]),
    withDBClusterParameterGroupName(DBClusterParameterGroupName): {
      assert std.isString(DBClusterParameterGroupName) : 'DBClusterParameterGroupName must be a string',
      Properties+::: { DBClusterParameterGroupName: DBClusterParameterGroupName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DBInstance: {
    '#': d.pkg(
      name='DBInstance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='The AWS::RDS::DBInstance resource creates an Amazon DB instance. The new DB instance can be an RDS DB instance, or it can be a DB instance in an Aurora DB cluster. For more information about creating an RDS DB instance, see [Creating an Amazon RDS DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateDBInstance.html) in the *Amazon RDS User Guide*. For more information about creating a DB instance in an Aurora DB cluster, see [Creating an Amazon Aurora DB cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.CreateInstance.html) in the *Amazon Aurora User Guide*. If you import an existing DB instance, and the template configuration doesnt match the actual configuration of the DB instance, AWS CloudFormation applies the changes in the template during the import operation.If a DB instance is deleted or replaced during an update, AWS CloudFormation deletes all automated snapshots. However, it retains manual DB snapshots. During an update that requires replacement, you can apply a stack policy to prevent DB instances from being replaced. For more information, see [Prevent Updates to Stack Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html).*Updating DB instances*  When properties labeled &#34;*Update requires:* [Replacement](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement)&#34; are updated, AWS CloudFormation first creates a replacement DB instance, then changes references from other dependent resources to point to the replacement DB instance, and finally deletes the old DB instance.We highly recommend that you take a snapshot of the database before updating the stack. If you dont, you lose the data when AWS CloudFormation replaces your DB instance. To preserve your data, perform the following procedure:1.Deactivate any applications that are using the DB instance so that theres no activity on the DB instance.1.Create a snapshot of the DB instance. For more information, see [Creating a DB Snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateSnapshot.html).1.If you want to restore your instance using a DB snapshot, modify the updated template with your DB instance changes and add the DBSnapshotIdentifier property with the ID of the DB snapshot that you want to use. After you restore a DB instance with a DBSnapshotIdentifier property, you can delete the DBSnapshotIdentifier property. When you specify this property for an update, the DB instance is not restored from the DB snapshot again, and the data in the database is not changed. However, if you dont specify the DBSnapshotIdentifier property, an empty DB instance is created, and the original DB instance is deleted. If you specify a property that is different from the previous snapshot restore property, a new DB instance is restored from the specified DBSnapshotIdentifier property, and the original DB instance is deleted.1.Update the stack.For more information about updating other properties of this resource, see ModifyDBInstance. For more information about updating stacks, see [CloudFormation Stacks Updates](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).*Deleting DB instances*  For DB instances that are part of an Aurora DB cluster, you can set a deletion policy for your DB instance to control how AWS CloudFormation handles the DB instance when the stack is deleted. For Amazon RDS DB instances, you can choose to *retain* the DB instance, to *delete* the DB instance, or to *create a snapshot* of the DB instance. The default AWS CloudFormation behavior depends on the DBClusterIdentifier property:1.For AWS::RDS::DBInstance resources that dont specify the DBClusterIdentifier property, AWS CloudFormation saves a snapshot of the DB instance.1.For AWS::RDS::DBInstance resources that do specify the DBClusterIdentifier property, AWS CloudFormation deletes the DB instance.For more information, see [DeletionPolicy Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBInstance Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::RDS::DBInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAllocatedStorage': d.fn('`withAllocatedStorage` AllocatedStorage ', [d.arg('AllocatedStorage', d.T.string)]),
    withAllocatedStorage(AllocatedStorage): {
      assert std.isString(AllocatedStorage) : 'AllocatedStorage must be a string',
      Properties+::: { AllocatedStorage: AllocatedStorage },
    },
    '#withAllowMajorVersionUpgrade': d.fn('`withAllowMajorVersionUpgrade` AllowMajorVersionUpgrade ', [d.arg('AllowMajorVersionUpgrade', d.T.boolean)]),
    withAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
      assert std.isBoolean(AllowMajorVersionUpgrade) : 'AllowMajorVersionUpgrade must be a boolean',
      Properties+::: { AllowMajorVersionUpgrade: AllowMajorVersionUpgrade },
    },
    '#withAssociatedRoles': d.fn('`withAssociatedRoles` AssociatedRoles ', [d.arg('AssociatedRoles', d.T.array)]),
    withAssociatedRoles(AssociatedRoles): {
      assert std.isArray(AssociatedRoles) : 'AssociatedRoles must be a array',
      Properties+::: { AssociatedRoles: AssociatedRoles },
    },
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withAutomaticBackupReplicationRegion': d.fn('`withAutomaticBackupReplicationRegion` AutomaticBackupReplicationRegion ', [d.arg('AutomaticBackupReplicationRegion', d.T.string)]),
    withAutomaticBackupReplicationRegion(AutomaticBackupReplicationRegion): {
      assert std.isString(AutomaticBackupReplicationRegion) : 'AutomaticBackupReplicationRegion must be a string',
      Properties+::: { AutomaticBackupReplicationRegion: AutomaticBackupReplicationRegion },
    },
    '#withAutomaticBackupReplicationKmsKeyId': d.fn('`withAutomaticBackupReplicationKmsKeyId` AutomaticBackupReplicationKmsKeyId ', [d.arg('AutomaticBackupReplicationKmsKeyId', d.T.string)]),
    withAutomaticBackupReplicationKmsKeyId(AutomaticBackupReplicationKmsKeyId): {
      assert std.isString(AutomaticBackupReplicationKmsKeyId) : 'AutomaticBackupReplicationKmsKeyId must be a string',
      Properties+::: { AutomaticBackupReplicationKmsKeyId: AutomaticBackupReplicationKmsKeyId },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withBackupRetentionPeriod': d.fn('`withBackupRetentionPeriod` BackupRetentionPeriod ', [d.arg('BackupRetentionPeriod', d.T.integer)]),
    withBackupRetentionPeriod(BackupRetentionPeriod): {
      assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a integer',
      Properties+::: { BackupRetentionPeriod: BackupRetentionPeriod },
    },
    '#withCACertificateIdentifier': d.fn('`withCACertificateIdentifier` CACertificateIdentifier ', [d.arg('CACertificateIdentifier', d.T.string)]),
    withCACertificateIdentifier(CACertificateIdentifier): {
      assert std.isString(CACertificateIdentifier) : 'CACertificateIdentifier must be a string',
      Properties+::: { CACertificateIdentifier: CACertificateIdentifier },
    },
    '#withCertificateDetails': d.fn('`withCertificateDetails` CertificateDetails ', [d.arg('CertificateDetails', d.T.object)]),
    withCertificateDetails(CertificateDetails): {
      assert std.isObject(CertificateDetails) : 'CertificateDetails must be a object',
      Properties+::: { CertificateDetails: CertificateDetails },
    },
    '#withCertificateRotationRestart': d.fn('`withCertificateRotationRestart` CertificateRotationRestart ', [d.arg('CertificateRotationRestart', d.T.boolean)]),
    withCertificateRotationRestart(CertificateRotationRestart): {
      assert std.isBoolean(CertificateRotationRestart) : 'CertificateRotationRestart must be a boolean',
      Properties+::: { CertificateRotationRestart: CertificateRotationRestart },
    },
    '#withCharacterSetName': d.fn('`withCharacterSetName` CharacterSetName ', [d.arg('CharacterSetName', d.T.string)]),
    withCharacterSetName(CharacterSetName): {
      assert std.isString(CharacterSetName) : 'CharacterSetName must be a string',
      Properties+::: { CharacterSetName: CharacterSetName },
    },
    '#withCopyTagsToSnapshot': d.fn('`withCopyTagsToSnapshot` CopyTagsToSnapshot ', [d.arg('CopyTagsToSnapshot', d.T.boolean)]),
    withCopyTagsToSnapshot(CopyTagsToSnapshot): {
      assert std.isBoolean(CopyTagsToSnapshot) : 'CopyTagsToSnapshot must be a boolean',
      Properties+::: { CopyTagsToSnapshot: CopyTagsToSnapshot },
    },
    '#withCustomIAMInstanceProfile': d.fn('`withCustomIAMInstanceProfile` CustomIAMInstanceProfile ', [d.arg('CustomIAMInstanceProfile', d.T.string)]),
    withCustomIAMInstanceProfile(CustomIAMInstanceProfile): {
      assert std.isString(CustomIAMInstanceProfile) : 'CustomIAMInstanceProfile must be a string',
      Properties+::: { CustomIAMInstanceProfile: CustomIAMInstanceProfile },
    },
    '#withDBClusterIdentifier': d.fn('`withDBClusterIdentifier` DBClusterIdentifier ', [d.arg('DBClusterIdentifier', d.T.string)]),
    withDBClusterIdentifier(DBClusterIdentifier): {
      assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
      Properties+::: { DBClusterIdentifier: DBClusterIdentifier },
    },
    '#withDBClusterSnapshotIdentifier': d.fn('`withDBClusterSnapshotIdentifier` DBClusterSnapshotIdentifier ', [d.arg('DBClusterSnapshotIdentifier', d.T.string)]),
    withDBClusterSnapshotIdentifier(DBClusterSnapshotIdentifier): {
      assert std.isString(DBClusterSnapshotIdentifier) : 'DBClusterSnapshotIdentifier must be a string',
      Properties+::: { DBClusterSnapshotIdentifier: DBClusterSnapshotIdentifier },
    },
    '#withDBInstanceArn': d.fn('`withDBInstanceArn` DBInstanceArn ', [d.arg('DBInstanceArn', d.T.string)]),
    withDBInstanceArn(DBInstanceArn): {
      assert std.isString(DBInstanceArn) : 'DBInstanceArn must be a string',
      Properties+::: { DBInstanceArn: DBInstanceArn },
    },
    '#withDBInstanceClass': d.fn('`withDBInstanceClass` DBInstanceClass ', [d.arg('DBInstanceClass', d.T.string)]),
    withDBInstanceClass(DBInstanceClass): {
      assert std.isString(DBInstanceClass) : 'DBInstanceClass must be a string',
      Properties+::: { DBInstanceClass: DBInstanceClass },
    },
    '#withDBInstanceIdentifier': d.fn('`withDBInstanceIdentifier` DBInstanceIdentifier ', [d.arg('DBInstanceIdentifier', d.T.string)]),
    withDBInstanceIdentifier(DBInstanceIdentifier): {
      assert std.isString(DBInstanceIdentifier) : 'DBInstanceIdentifier must be a string',
      Properties+::: { DBInstanceIdentifier: DBInstanceIdentifier },
    },
    '#withDbiResourceId': d.fn('`withDbiResourceId` DbiResourceId ', [d.arg('DbiResourceId', d.T.string)]),
    withDbiResourceId(DbiResourceId): {
      assert std.isString(DbiResourceId) : 'DbiResourceId must be a string',
      Properties+::: { DbiResourceId: DbiResourceId },
    },
    '#withDBName': d.fn('`withDBName` DBName ', [d.arg('DBName', d.T.string)]),
    withDBName(DBName): {
      assert std.isString(DBName) : 'DBName must be a string',
      Properties+::: { DBName: DBName },
    },
    '#withDBParameterGroupName': d.fn('`withDBParameterGroupName` DBParameterGroupName ', [d.arg('DBParameterGroupName', d.T.string)]),
    withDBParameterGroupName(DBParameterGroupName): {
      assert std.isString(DBParameterGroupName) : 'DBParameterGroupName must be a string',
      Properties+::: { DBParameterGroupName: DBParameterGroupName },
    },
    '#withDBSecurityGroups': d.fn('`withDBSecurityGroups` DBSecurityGroups ', [d.arg('DBSecurityGroups', d.T.array)]),
    withDBSecurityGroups(DBSecurityGroups): {
      assert std.isArray(DBSecurityGroups) : 'DBSecurityGroups must be a array',
      Properties+::: { DBSecurityGroups: DBSecurityGroups },
    },
    '#withDBSnapshotIdentifier': d.fn('`withDBSnapshotIdentifier` DBSnapshotIdentifier ', [d.arg('DBSnapshotIdentifier', d.T.string)]),
    withDBSnapshotIdentifier(DBSnapshotIdentifier): {
      assert std.isString(DBSnapshotIdentifier) : 'DBSnapshotIdentifier must be a string',
      Properties+::: { DBSnapshotIdentifier: DBSnapshotIdentifier },
    },
    '#withDBSubnetGroupName': d.fn('`withDBSubnetGroupName` DBSubnetGroupName ', [d.arg('DBSubnetGroupName', d.T.string)]),
    withDBSubnetGroupName(DBSubnetGroupName): {
      assert std.isString(DBSubnetGroupName) : 'DBSubnetGroupName must be a string',
      Properties+::: { DBSubnetGroupName: DBSubnetGroupName },
    },
    '#withDBSystemId': d.fn('`withDBSystemId` DBSystemId ', [d.arg('DBSystemId', d.T.string)]),
    withDBSystemId(DBSystemId): {
      assert std.isString(DBSystemId) : 'DBSystemId must be a string',
      Properties+::: { DBSystemId: DBSystemId },
    },
    '#withDedicatedLogVolume': d.fn('`withDedicatedLogVolume` DedicatedLogVolume ', [d.arg('DedicatedLogVolume', d.T.boolean)]),
    withDedicatedLogVolume(DedicatedLogVolume): {
      assert std.isBoolean(DedicatedLogVolume) : 'DedicatedLogVolume must be a boolean',
      Properties+::: { DedicatedLogVolume: DedicatedLogVolume },
    },
    '#withDeleteAutomatedBackups': d.fn('`withDeleteAutomatedBackups` DeleteAutomatedBackups ', [d.arg('DeleteAutomatedBackups', d.T.boolean)]),
    withDeleteAutomatedBackups(DeleteAutomatedBackups): {
      assert std.isBoolean(DeleteAutomatedBackups) : 'DeleteAutomatedBackups must be a boolean',
      Properties+::: { DeleteAutomatedBackups: DeleteAutomatedBackups },
    },
    '#withDeletionProtection': d.fn('`withDeletionProtection` DeletionProtection ', [d.arg('DeletionProtection', d.T.boolean)]),
    withDeletionProtection(DeletionProtection): {
      assert std.isBoolean(DeletionProtection) : 'DeletionProtection must be a boolean',
      Properties+::: { DeletionProtection: DeletionProtection },
    },
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      Properties+::: { Domain: Domain },
    },
    '#withDomainAuthSecretArn': d.fn('`withDomainAuthSecretArn` DomainAuthSecretArn ', [d.arg('DomainAuthSecretArn', d.T.string)]),
    withDomainAuthSecretArn(DomainAuthSecretArn): {
      assert std.isString(DomainAuthSecretArn) : 'DomainAuthSecretArn must be a string',
      Properties+::: { DomainAuthSecretArn: DomainAuthSecretArn },
    },
    '#withDomainDnsIps': d.fn('`withDomainDnsIps` DomainDnsIps ', [d.arg('DomainDnsIps', d.T.array)]),
    withDomainDnsIps(DomainDnsIps): {
      assert std.isArray(DomainDnsIps) : 'DomainDnsIps must be a array',
      Properties+::: { DomainDnsIps: DomainDnsIps },
    },
    '#withDomainFqdn': d.fn('`withDomainFqdn` DomainFqdn ', [d.arg('DomainFqdn', d.T.string)]),
    withDomainFqdn(DomainFqdn): {
      assert std.isString(DomainFqdn) : 'DomainFqdn must be a string',
      Properties+::: { DomainFqdn: DomainFqdn },
    },
    '#withDomainIAMRoleName': d.fn('`withDomainIAMRoleName` DomainIAMRoleName ', [d.arg('DomainIAMRoleName', d.T.string)]),
    withDomainIAMRoleName(DomainIAMRoleName): {
      assert std.isString(DomainIAMRoleName) : 'DomainIAMRoleName must be a string',
      Properties+::: { DomainIAMRoleName: DomainIAMRoleName },
    },
    '#withDomainOu': d.fn('`withDomainOu` DomainOu ', [d.arg('DomainOu', d.T.string)]),
    withDomainOu(DomainOu): {
      assert std.isString(DomainOu) : 'DomainOu must be a string',
      Properties+::: { DomainOu: DomainOu },
    },
    '#withEnableCloudwatchLogsExports': d.fn('`withEnableCloudwatchLogsExports` EnableCloudwatchLogsExports ', [d.arg('EnableCloudwatchLogsExports', d.T.array)]),
    withEnableCloudwatchLogsExports(EnableCloudwatchLogsExports): {
      assert std.isArray(EnableCloudwatchLogsExports) : 'EnableCloudwatchLogsExports must be a array',
      Properties+::: { EnableCloudwatchLogsExports: EnableCloudwatchLogsExports },
    },
    '#withEnableIAMDatabaseAuthentication': d.fn('`withEnableIAMDatabaseAuthentication` EnableIAMDatabaseAuthentication ', [d.arg('EnableIAMDatabaseAuthentication', d.T.boolean)]),
    withEnableIAMDatabaseAuthentication(EnableIAMDatabaseAuthentication): {
      assert std.isBoolean(EnableIAMDatabaseAuthentication) : 'EnableIAMDatabaseAuthentication must be a boolean',
      Properties+::: { EnableIAMDatabaseAuthentication: EnableIAMDatabaseAuthentication },
    },
    '#withEnablePerformanceInsights': d.fn('`withEnablePerformanceInsights` EnablePerformanceInsights ', [d.arg('EnablePerformanceInsights', d.T.boolean)]),
    withEnablePerformanceInsights(EnablePerformanceInsights): {
      assert std.isBoolean(EnablePerformanceInsights) : 'EnablePerformanceInsights must be a boolean',
      Properties+::: { EnablePerformanceInsights: EnablePerformanceInsights },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.object)]),
    withEndpoint(Endpoint): {
      assert std.isObject(Endpoint) : 'Endpoint must be a object',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: { Engine: Engine },
    },
    '#withEngineLifecycleSupport': d.fn('`withEngineLifecycleSupport` EngineLifecycleSupport ', [d.arg('EngineLifecycleSupport', d.T.string)]),
    withEngineLifecycleSupport(EngineLifecycleSupport): {
      assert std.isString(EngineLifecycleSupport) : 'EngineLifecycleSupport must be a string',
      Properties+::: { EngineLifecycleSupport: EngineLifecycleSupport },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withManageMasterUserPassword': d.fn('`withManageMasterUserPassword` ManageMasterUserPassword ', [d.arg('ManageMasterUserPassword', d.T.boolean)]),
    withManageMasterUserPassword(ManageMasterUserPassword): {
      assert std.isBoolean(ManageMasterUserPassword) : 'ManageMasterUserPassword must be a boolean',
      Properties+::: { ManageMasterUserPassword: ManageMasterUserPassword },
    },
    '#withIops': d.fn('`withIops` Iops ', [d.arg('Iops', d.T.integer)]),
    withIops(Iops): {
      assert std.isNumber(Iops) : 'Iops must be a integer',
      Properties+::: { Iops: Iops },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withLicenseModel': d.fn('`withLicenseModel` LicenseModel ', [d.arg('LicenseModel', d.T.string)]),
    withLicenseModel(LicenseModel): {
      assert std.isString(LicenseModel) : 'LicenseModel must be a string',
      Properties+::: { LicenseModel: LicenseModel },
    },
    '#withMasterUsername': d.fn('`withMasterUsername` MasterUsername ', [d.arg('MasterUsername', d.T.string)]),
    withMasterUsername(MasterUsername): {
      assert std.isString(MasterUsername) : 'MasterUsername must be a string',
      Properties+::: { MasterUsername: MasterUsername },
    },
    '#withMasterUserPassword': d.fn('`withMasterUserPassword` MasterUserPassword ', [d.arg('MasterUserPassword', d.T.string)]),
    withMasterUserPassword(MasterUserPassword): {
      assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
      Properties+::: { MasterUserPassword: MasterUserPassword },
    },
    '#withMasterUserSecret': d.fn('`withMasterUserSecret` MasterUserSecret ', [d.arg('MasterUserSecret', d.T.object)]),
    withMasterUserSecret(MasterUserSecret): {
      assert std.isObject(MasterUserSecret) : 'MasterUserSecret must be a object',
      Properties+::: { MasterUserSecret: MasterUserSecret },
    },
    '#withMaxAllocatedStorage': d.fn('`withMaxAllocatedStorage` MaxAllocatedStorage ', [d.arg('MaxAllocatedStorage', d.T.integer)]),
    withMaxAllocatedStorage(MaxAllocatedStorage): {
      assert std.isNumber(MaxAllocatedStorage) : 'MaxAllocatedStorage must be a integer',
      Properties+::: { MaxAllocatedStorage: MaxAllocatedStorage },
    },
    '#withMonitoringInterval': d.fn('`withMonitoringInterval` MonitoringInterval ', [d.arg('MonitoringInterval', d.T.integer)]),
    withMonitoringInterval(MonitoringInterval): {
      assert std.isNumber(MonitoringInterval) : 'MonitoringInterval must be a integer',
      Properties+::: { MonitoringInterval: MonitoringInterval },
    },
    '#withMonitoringRoleArn': d.fn('`withMonitoringRoleArn` MonitoringRoleArn ', [d.arg('MonitoringRoleArn', d.T.string)]),
    withMonitoringRoleArn(MonitoringRoleArn): {
      assert std.isString(MonitoringRoleArn) : 'MonitoringRoleArn must be a string',
      Properties+::: { MonitoringRoleArn: MonitoringRoleArn },
    },
    '#withMultiAZ': d.fn('`withMultiAZ` MultiAZ ', [d.arg('MultiAZ', d.T.boolean)]),
    withMultiAZ(MultiAZ): {
      assert std.isBoolean(MultiAZ) : 'MultiAZ must be a boolean',
      Properties+::: { MultiAZ: MultiAZ },
    },
    '#withNcharCharacterSetName': d.fn('`withNcharCharacterSetName` NcharCharacterSetName ', [d.arg('NcharCharacterSetName', d.T.string)]),
    withNcharCharacterSetName(NcharCharacterSetName): {
      assert std.isString(NcharCharacterSetName) : 'NcharCharacterSetName must be a string',
      Properties+::: { NcharCharacterSetName: NcharCharacterSetName },
    },
    '#withNetworkType': d.fn('`withNetworkType` NetworkType ', [d.arg('NetworkType', d.T.string)]),
    withNetworkType(NetworkType): {
      assert std.isString(NetworkType) : 'NetworkType must be a string',
      Properties+::: { NetworkType: NetworkType },
    },
    '#withOptionGroupName': d.fn('`withOptionGroupName` OptionGroupName ', [d.arg('OptionGroupName', d.T.string)]),
    withOptionGroupName(OptionGroupName): {
      assert std.isString(OptionGroupName) : 'OptionGroupName must be a string',
      Properties+::: { OptionGroupName: OptionGroupName },
    },
    '#withPerformanceInsightsKMSKeyId': d.fn('`withPerformanceInsightsKMSKeyId` PerformanceInsightsKMSKeyId ', [d.arg('PerformanceInsightsKMSKeyId', d.T.string)]),
    withPerformanceInsightsKMSKeyId(PerformanceInsightsKMSKeyId): {
      assert std.isString(PerformanceInsightsKMSKeyId) : 'PerformanceInsightsKMSKeyId must be a string',
      Properties+::: { PerformanceInsightsKMSKeyId: PerformanceInsightsKMSKeyId },
    },
    '#withPerformanceInsightsRetentionPeriod': d.fn('`withPerformanceInsightsRetentionPeriod` PerformanceInsightsRetentionPeriod ', [d.arg('PerformanceInsightsRetentionPeriod', d.T.integer)]),
    withPerformanceInsightsRetentionPeriod(PerformanceInsightsRetentionPeriod): {
      assert std.isNumber(PerformanceInsightsRetentionPeriod) : 'PerformanceInsightsRetentionPeriod must be a integer',
      Properties+::: { PerformanceInsightsRetentionPeriod: PerformanceInsightsRetentionPeriod },
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
    '#withProcessorFeatures': d.fn('`withProcessorFeatures` ProcessorFeatures ', [d.arg('ProcessorFeatures', d.T.array)]),
    withProcessorFeatures(ProcessorFeatures): {
      assert std.isArray(ProcessorFeatures) : 'ProcessorFeatures must be a array',
      Properties+::: { ProcessorFeatures: ProcessorFeatures },
    },
    '#withPromotionTier': d.fn('`withPromotionTier` PromotionTier ', [d.arg('PromotionTier', d.T.integer)]),
    withPromotionTier(PromotionTier): {
      assert std.isNumber(PromotionTier) : 'PromotionTier must be a integer',
      Properties+::: { PromotionTier: PromotionTier },
    },
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withReplicaMode': d.fn('`withReplicaMode` ReplicaMode ', [d.arg('ReplicaMode', d.T.string)]),
    withReplicaMode(ReplicaMode): {
      assert std.isString(ReplicaMode) : 'ReplicaMode must be a string',
      Properties+::: { ReplicaMode: ReplicaMode },
    },
    '#withRestoreTime': d.fn('`withRestoreTime` RestoreTime ', [d.arg('RestoreTime', d.T.string)]),
    withRestoreTime(RestoreTime): {
      assert std.isString(RestoreTime) : 'RestoreTime must be a string',
      Properties+::: { RestoreTime: RestoreTime },
    },
    '#withSourceDBClusterIdentifier': d.fn('`withSourceDBClusterIdentifier` SourceDBClusterIdentifier ', [d.arg('SourceDBClusterIdentifier', d.T.string)]),
    withSourceDBClusterIdentifier(SourceDBClusterIdentifier): {
      assert std.isString(SourceDBClusterIdentifier) : 'SourceDBClusterIdentifier must be a string',
      Properties+::: { SourceDBClusterIdentifier: SourceDBClusterIdentifier },
    },
    '#withSourceDbiResourceId': d.fn('`withSourceDbiResourceId` SourceDbiResourceId ', [d.arg('SourceDbiResourceId', d.T.string)]),
    withSourceDbiResourceId(SourceDbiResourceId): {
      assert std.isString(SourceDbiResourceId) : 'SourceDbiResourceId must be a string',
      Properties+::: { SourceDbiResourceId: SourceDbiResourceId },
    },
    '#withSourceDBInstanceAutomatedBackupsArn': d.fn('`withSourceDBInstanceAutomatedBackupsArn` SourceDBInstanceAutomatedBackupsArn ', [d.arg('SourceDBInstanceAutomatedBackupsArn', d.T.string)]),
    withSourceDBInstanceAutomatedBackupsArn(SourceDBInstanceAutomatedBackupsArn): {
      assert std.isString(SourceDBInstanceAutomatedBackupsArn) : 'SourceDBInstanceAutomatedBackupsArn must be a string',
      Properties+::: { SourceDBInstanceAutomatedBackupsArn: SourceDBInstanceAutomatedBackupsArn },
    },
    '#withSourceDBInstanceIdentifier': d.fn('`withSourceDBInstanceIdentifier` SourceDBInstanceIdentifier ', [d.arg('SourceDBInstanceIdentifier', d.T.string)]),
    withSourceDBInstanceIdentifier(SourceDBInstanceIdentifier): {
      assert std.isString(SourceDBInstanceIdentifier) : 'SourceDBInstanceIdentifier must be a string',
      Properties+::: { SourceDBInstanceIdentifier: SourceDBInstanceIdentifier },
    },
    '#withSourceRegion': d.fn('`withSourceRegion` SourceRegion ', [d.arg('SourceRegion', d.T.string)]),
    withSourceRegion(SourceRegion): {
      assert std.isString(SourceRegion) : 'SourceRegion must be a string',
      Properties+::: { SourceRegion: SourceRegion },
    },
    '#withStorageEncrypted': d.fn('`withStorageEncrypted` StorageEncrypted ', [d.arg('StorageEncrypted', d.T.boolean)]),
    withStorageEncrypted(StorageEncrypted): {
      assert std.isBoolean(StorageEncrypted) : 'StorageEncrypted must be a boolean',
      Properties+::: { StorageEncrypted: StorageEncrypted },
    },
    '#withStorageType': d.fn('`withStorageType` StorageType ', [d.arg('StorageType', d.T.string)]),
    withStorageType(StorageType): {
      assert std.isString(StorageType) : 'StorageType must be a string',
      Properties+::: { StorageType: StorageType },
    },
    '#withStorageThroughput': d.fn('`withStorageThroughput` StorageThroughput ', [d.arg('StorageThroughput', d.T.integer)]),
    withStorageThroughput(StorageThroughput): {
      assert std.isNumber(StorageThroughput) : 'StorageThroughput must be a integer',
      Properties+::: { StorageThroughput: StorageThroughput },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTdeCredentialArn': d.fn('`withTdeCredentialArn` TdeCredentialArn ', [d.arg('TdeCredentialArn', d.T.string)]),
    withTdeCredentialArn(TdeCredentialArn): {
      assert std.isString(TdeCredentialArn) : 'TdeCredentialArn must be a string',
      Properties+::: { TdeCredentialArn: TdeCredentialArn },
    },
    '#withTdeCredentialPassword': d.fn('`withTdeCredentialPassword` TdeCredentialPassword ', [d.arg('TdeCredentialPassword', d.T.string)]),
    withTdeCredentialPassword(TdeCredentialPassword): {
      assert std.isString(TdeCredentialPassword) : 'TdeCredentialPassword must be a string',
      Properties+::: { TdeCredentialPassword: TdeCredentialPassword },
    },
    '#withTimezone': d.fn('`withTimezone` Timezone ', [d.arg('Timezone', d.T.string)]),
    withTimezone(Timezone): {
      assert std.isString(Timezone) : 'Timezone must be a string',
      Properties+::: { Timezone: Timezone },
    },
    '#withUseDefaultProcessorFeatures': d.fn('`withUseDefaultProcessorFeatures` UseDefaultProcessorFeatures ', [d.arg('UseDefaultProcessorFeatures', d.T.boolean)]),
    withUseDefaultProcessorFeatures(UseDefaultProcessorFeatures): {
      assert std.isBoolean(UseDefaultProcessorFeatures) : 'UseDefaultProcessorFeatures must be a boolean',
      Properties+::: { UseDefaultProcessorFeatures: UseDefaultProcessorFeatures },
    },
    '#withUseLatestRestorableTime': d.fn('`withUseLatestRestorableTime` UseLatestRestorableTime ', [d.arg('UseLatestRestorableTime', d.T.boolean)]),
    withUseLatestRestorableTime(UseLatestRestorableTime): {
      assert std.isBoolean(UseLatestRestorableTime) : 'UseLatestRestorableTime must be a boolean',
      Properties+::: { UseLatestRestorableTime: UseLatestRestorableTime },
    },
    '#withVPCSecurityGroups': d.fn('`withVPCSecurityGroups` VPCSecurityGroups ', [d.arg('VPCSecurityGroups', d.T.array)]),
    withVPCSecurityGroups(VPCSecurityGroups): {
      assert std.isArray(VPCSecurityGroups) : 'VPCSecurityGroups must be a array',
      Properties+::: { VPCSecurityGroups: VPCSecurityGroups },
    },
  },
  DBParameterGroup: {
    '#': d.pkg(
      name='DBParameterGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='The AWS::RDS::DBParameterGroup resource creates a custom parameter group for an RDS database family. This type can be declared in a template and referenced in the DBParameterGroupName property of an AWS::RDS::DBInstance resource. For information about configuring parameters for Amazon RDS DB instances, see [Working with parameter groups](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithParamGroups.html) in the *Amazon RDS User Guide*. For information about configuring parameters for Amazon Aurora DB instances, see [Working with parameter groups](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_WorkingWithParamGroups.html) in the *Amazon Aurora User Guide*.Applying a parameter group to a DB instance may require the DB instance to reboot, resulting in a database outage for the duration of the reboot.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBParameterGroup Resource
        * Family The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family. To list all of the available parameter group families for a DB engine, use the following command:aws rds describe-db-engine-versions --query &#34;DBEngineVersions[].DBParameterGroupFamily&#34; --engine &lt;engine&gt;  For example, to list all of the available parameter group families for the MySQL DB engine, use the following command:aws rds describe-db-engine-versions --query &#34;DBEngineVersions[].DBParameterGroupFamily&#34; --engine mysql The output contains duplicates.The following are the valid DB engine values:+aurora-mysql +aurora-postgresql +db2-ae +db2-se +mysql +oracle-ee +oracle-ee-cdb +oracle-se2 +oracle-se2-cdb +postgres +sqlserver-ee +sqlserver-se +sqlserver-ex +sqlserver-web
        * Description Provides the customer-specified description for this DB parameter group.
      |||,
      args=[
        d.arg('Family', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
      ]
    ),
    new(
      Family,
      Description,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Family) : 'Family must be a string',
        Family: Family,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::DBParameterGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDBParameterGroupName': d.fn('`withDBParameterGroupName` DBParameterGroupName ', [d.arg('DBParameterGroupName', d.T.string)]),
    withDBParameterGroupName(DBParameterGroupName): {
      assert std.isString(DBParameterGroupName) : 'DBParameterGroupName must be a string',
      Properties+::: { DBParameterGroupName: DBParameterGroupName },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DBProxy: {
    '#': d.pkg(
      name='DBProxy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='Resource schema for AWS::RDS::DBProxy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBProxy Resource
        * Auth The authorization mechanism that the proxy uses.
        * DBProxyName The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region.
        * EngineFamily The kinds of databases that the proxy can connect to.
        * RoleArn The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
        * VpcSubnetIds VPC subnet IDs to associate with the new proxy.
      |||,
      args=[
        d.arg('Auth', 'd.T.array'),
        d.arg('DBProxyName', 'd.T.string'),
        d.arg('EngineFamily', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('VpcSubnetIds', 'd.T.array'),
      ]
    ),
    new(
      Auth,
      DBProxyName,
      EngineFamily,
      RoleArn,
      VpcSubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Auth) : 'Auth must be a array',
        Auth: Auth,
        assert std.isString(DBProxyName) : 'DBProxyName must be a string',
        DBProxyName: DBProxyName,
        assert std.isString(EngineFamily) : 'EngineFamily must be a string',
        assert EngineFamily == 'MYSQL' || EngineFamily == 'POSTGRESQL' || EngineFamily == 'SQLSERVER' : "EngineFamily must be either 'MYSQL' or 'POSTGRESQL' or 'SQLSERVER'",
        EngineFamily: EngineFamily,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isArray(VpcSubnetIds) : 'VpcSubnetIds must be a array',
        VpcSubnetIds: VpcSubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::DBProxy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDBProxyArn': d.fn('`withDBProxyArn` DBProxyArn ', [d.arg('DBProxyArn', d.T.string)]),
    withDBProxyArn(DBProxyArn): {
      assert std.isString(DBProxyArn) : 'DBProxyArn must be a string',
      Properties+::: { DBProxyArn: DBProxyArn },
    },
    '#withDebugLogging': d.fn('`withDebugLogging` DebugLogging ', [d.arg('DebugLogging', d.T.boolean)]),
    withDebugLogging(DebugLogging): {
      assert std.isBoolean(DebugLogging) : 'DebugLogging must be a boolean',
      Properties+::: { DebugLogging: DebugLogging },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withIdleClientTimeout': d.fn('`withIdleClientTimeout` IdleClientTimeout ', [d.arg('IdleClientTimeout', d.T.integer)]),
    withIdleClientTimeout(IdleClientTimeout): {
      assert std.isNumber(IdleClientTimeout) : 'IdleClientTimeout must be a integer',
      Properties+::: { IdleClientTimeout: IdleClientTimeout },
    },
    '#withRequireTLS': d.fn('`withRequireTLS` RequireTLS ', [d.arg('RequireTLS', d.T.boolean)]),
    withRequireTLS(RequireTLS): {
      assert std.isBoolean(RequireTLS) : 'RequireTLS must be a boolean',
      Properties+::: { RequireTLS: RequireTLS },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
  },
  DBProxyEndpoint: {
    '#': d.pkg(
      name='DBProxyEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='Resource schema for AWS::RDS::DBProxyEndpoint.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBProxyEndpoint Resource
        * DBProxyName The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region.
        * DBProxyEndpointName The identifier for the DB proxy endpoint. This name must be unique for all DB proxy endpoints owned by your AWS account in the specified AWS Region.
        * VpcSubnetIds VPC subnet IDs to associate with the new DB proxy endpoint.
      |||,
      args=[
        d.arg('DBProxyName', 'd.T.string'),
        d.arg('DBProxyEndpointName', 'd.T.string'),
        d.arg('VpcSubnetIds', 'd.T.array'),
      ]
    ),
    new(
      DBProxyName,
      DBProxyEndpointName,
      VpcSubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBProxyName) : 'DBProxyName must be a string',
        DBProxyName: DBProxyName,
        assert std.isString(DBProxyEndpointName) : 'DBProxyEndpointName must be a string',
        DBProxyEndpointName: DBProxyEndpointName,
        assert std.isArray(VpcSubnetIds) : 'VpcSubnetIds must be a array',
        VpcSubnetIds: VpcSubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::DBProxyEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDBProxyEndpointArn': d.fn('`withDBProxyEndpointArn` DBProxyEndpointArn ', [d.arg('DBProxyEndpointArn', d.T.string)]),
    withDBProxyEndpointArn(DBProxyEndpointArn): {
      assert std.isString(DBProxyEndpointArn) : 'DBProxyEndpointArn must be a string',
      Properties+::: { DBProxyEndpointArn: DBProxyEndpointArn },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withTargetRole': d.fn('`withTargetRole` TargetRole ', [d.arg('TargetRole', d.T.string)]),
    withTargetRole(TargetRole): {
      assert std.isString(TargetRole) : 'TargetRole must be a string',
      assert TargetRole == 'READ_WRITE' || TargetRole == 'READ_ONLY' : "TargetRole must be either 'READ_WRITE' or 'READ_ONLY'",
      Properties+::: { TargetRole: TargetRole },
    },
    '#withIsDefault': d.fn('`withIsDefault` IsDefault ', [d.arg('IsDefault', d.T.boolean)]),
    withIsDefault(IsDefault): {
      assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
      Properties+::: { IsDefault: IsDefault },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DBProxyTargetGroup: {
    '#': d.pkg(
      name='DBProxyTargetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='Resource schema for AWS::RDS::DBProxyTargetGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBProxyTargetGroup Resource
        * DBProxyName The identifier for the proxy.
        * TargetGroupName The identifier for the DBProxyTargetGroup
      |||,
      args=[
        d.arg('DBProxyName', 'd.T.string'),
        d.arg('TargetGroupName', 'd.T.string'),
      ]
    ),
    new(
      DBProxyName,
      TargetGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBProxyName) : 'DBProxyName must be a string',
        DBProxyName: DBProxyName,
        assert std.isString(TargetGroupName) : 'TargetGroupName must be a string',
        assert TargetGroupName == 'default' : "TargetGroupName must be either 'default'",
        TargetGroupName: TargetGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::DBProxyTargetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTargetGroupArn': d.fn('`withTargetGroupArn` TargetGroupArn ', [d.arg('TargetGroupArn', d.T.string)]),
    withTargetGroupArn(TargetGroupArn): {
      assert std.isString(TargetGroupArn) : 'TargetGroupArn must be a string',
      Properties+::: { TargetGroupArn: TargetGroupArn },
    },
    '#withConnectionPoolConfigurationInfo': d.fn('`withConnectionPoolConfigurationInfo` ConnectionPoolConfigurationInfo ', [d.arg('ConnectionPoolConfigurationInfo', d.T.object)]),
    withConnectionPoolConfigurationInfo(ConnectionPoolConfigurationInfo): {
      assert std.isObject(ConnectionPoolConfigurationInfo) : 'ConnectionPoolConfigurationInfo must be a object',
      Properties+::: { ConnectionPoolConfigurationInfo: ConnectionPoolConfigurationInfo },
    },
    '#withDBInstanceIdentifiers': d.fn('`withDBInstanceIdentifiers` DBInstanceIdentifiers ', [d.arg('DBInstanceIdentifiers', d.T.array)]),
    withDBInstanceIdentifiers(DBInstanceIdentifiers): {
      assert std.isArray(DBInstanceIdentifiers) : 'DBInstanceIdentifiers must be a array',
      Properties+::: { DBInstanceIdentifiers: DBInstanceIdentifiers },
    },
    '#withDBClusterIdentifiers': d.fn('`withDBClusterIdentifiers` DBClusterIdentifiers ', [d.arg('DBClusterIdentifiers', d.T.array)]),
    withDBClusterIdentifiers(DBClusterIdentifiers): {
      assert std.isArray(DBClusterIdentifiers) : 'DBClusterIdentifiers must be a array',
      Properties+::: { DBClusterIdentifiers: DBClusterIdentifiers },
    },
  },
  DBSecurityGroup: {
    '#': d.pkg(
      name='DBSecurityGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='Resource Type definition for AWS::RDS::DBSecurityGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBSecurityGroup Resource
        * GroupDescription 
        * DBSecurityGroupIngress 
      |||,
      args=[
        d.arg('GroupDescription', 'd.T.string'),
        d.arg('DBSecurityGroupIngress', 'd.T.array'),
      ]
    ),
    new(
      GroupDescription,
      DBSecurityGroupIngress,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GroupDescription) : 'GroupDescription must be a string',
        GroupDescription: GroupDescription,
        assert std.isArray(DBSecurityGroupIngress) : 'DBSecurityGroupIngress must be a array',
        DBSecurityGroupIngress: DBSecurityGroupIngress,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::DBSecurityGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEC2VpcId': d.fn('`withEC2VpcId` EC2VpcId ', [d.arg('EC2VpcId', d.T.string)]),
    withEC2VpcId(EC2VpcId): {
      assert std.isString(EC2VpcId) : 'EC2VpcId must be a string',
      Properties+::: { EC2VpcId: EC2VpcId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DBSecurityGroupIngress: {
    '#': d.pkg(
      name='DBSecurityGroupIngress',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='Resource Type definition for AWS::RDS::DBSecurityGroupIngress',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBSecurityGroupIngress Resource
        * DBSecurityGroupName 
      |||,
      args=[
        d.arg('DBSecurityGroupName', 'd.T.string'),
      ]
    ),
    new(
      DBSecurityGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBSecurityGroupName) : 'DBSecurityGroupName must be a string',
        DBSecurityGroupName: DBSecurityGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::DBSecurityGroupIngress',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withCIDRIP': d.fn('`withCIDRIP` CIDRIP ', [d.arg('CIDRIP', d.T.string)]),
    withCIDRIP(CIDRIP): {
      assert std.isString(CIDRIP) : 'CIDRIP must be a string',
      Properties+::: { CIDRIP: CIDRIP },
    },
    '#withEC2SecurityGroupId': d.fn('`withEC2SecurityGroupId` EC2SecurityGroupId ', [d.arg('EC2SecurityGroupId', d.T.string)]),
    withEC2SecurityGroupId(EC2SecurityGroupId): {
      assert std.isString(EC2SecurityGroupId) : 'EC2SecurityGroupId must be a string',
      Properties+::: { EC2SecurityGroupId: EC2SecurityGroupId },
    },
    '#withEC2SecurityGroupName': d.fn('`withEC2SecurityGroupName` EC2SecurityGroupName ', [d.arg('EC2SecurityGroupName', d.T.string)]),
    withEC2SecurityGroupName(EC2SecurityGroupName): {
      assert std.isString(EC2SecurityGroupName) : 'EC2SecurityGroupName must be a string',
      Properties+::: { EC2SecurityGroupName: EC2SecurityGroupName },
    },
    '#withEC2SecurityGroupOwnerId': d.fn('`withEC2SecurityGroupOwnerId` EC2SecurityGroupOwnerId ', [d.arg('EC2SecurityGroupOwnerId', d.T.string)]),
    withEC2SecurityGroupOwnerId(EC2SecurityGroupOwnerId): {
      assert std.isString(EC2SecurityGroupOwnerId) : 'EC2SecurityGroupOwnerId must be a string',
      Properties+::: { EC2SecurityGroupOwnerId: EC2SecurityGroupOwnerId },
    },
  },
  DBShardGroup: {
    '#': d.pkg(
      name='DBShardGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='Creates a new DB shard group for Aurora Limitless Database. You must enable Aurora Limitless Database to create a DB shard group. Valid for: Aurora DB clusters only',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBShardGroup Resource
        * DBClusterIdentifier The name of the primary DB cluster for the DB shard group.
        * MaxACU The maximum capacity of the DB shard group in Aurora capacity units (ACUs).
      |||,
      args=[
        d.arg('DBClusterIdentifier', 'd.T.string'),
        d.arg('MaxACU', 'd.T.integer'),
      ]
    ),
    new(
      DBClusterIdentifier,
      MaxACU,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
        DBClusterIdentifier: DBClusterIdentifier,
        // Type: number
        MaxACU: MaxACU,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::DBShardGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDBShardGroupResourceId': d.fn('`withDBShardGroupResourceId` DBShardGroupResourceId ', [d.arg('DBShardGroupResourceId', d.T.string)]),
    withDBShardGroupResourceId(DBShardGroupResourceId): {
      assert std.isString(DBShardGroupResourceId) : 'DBShardGroupResourceId must be a string',
      Properties+::: { DBShardGroupResourceId: DBShardGroupResourceId },
    },
    '#withDBShardGroupIdentifier': d.fn('`withDBShardGroupIdentifier` DBShardGroupIdentifier ', [d.arg('DBShardGroupIdentifier', d.T.string)]),
    withDBShardGroupIdentifier(DBShardGroupIdentifier): {
      assert std.isString(DBShardGroupIdentifier) : 'DBShardGroupIdentifier must be a string',
      Properties+::: { DBShardGroupIdentifier: DBShardGroupIdentifier },
    },
    '#withComputeRedundancy': d.fn('`withComputeRedundancy` ComputeRedundancy ', [d.arg('ComputeRedundancy', d.T.integer)]),
    withComputeRedundancy(ComputeRedundancy): {
      assert std.isNumber(ComputeRedundancy) : 'ComputeRedundancy must be a integer',
      Properties+::: { ComputeRedundancy: ComputeRedundancy },
    },
    '#withMinACU': d.fn('`withMinACU` MinACU ', [d.arg('MinACU', d.T.integer)]),
    withMinACU(MinACU): {
      // Type: number
      Properties+::: { MinACU: MinACU },
    },
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='The AWS::RDS::DBSubnetGroup resource creates a database subnet group. Subnet groups must contain at least two subnets in two different Availability Zones in the same region.  For more information, see [Working with DB subnet groups](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Subnets) in the *Amazon RDS User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::DBSubnetGroup Resource
        * DBSubnetGroupDescription The description for the DB subnet group.
        * SubnetIds The EC2 Subnet IDs for the DB subnet group.
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
      Type: 'AWS::RDS::DBSubnetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='The AWS::RDS::EventSubscription resource allows you to receive notifications for Amazon Relational Database Service events through the Amazon Simple Notification Service (Amazon SNS). For more information, see [Using Amazon RDS Event Notification](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html) in the *Amazon RDS User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::EventSubscription Resource
        * SnsTopicArn The Amazon Resource Name (ARN) of the SNS topic created for event notification. SNS automatically creates the ARN when you create a topic and subscribe to it.RDS doesnt support FIFO (first in, first out) topics. For more information, see [Message ordering and deduplication (FIFO topics)](https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html) in the *Amazon Simple Notification Service Developer Guide*.
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
      Type: 'AWS::RDS::EventSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSubscriptionName': d.fn('`withSubscriptionName` SubscriptionName ', [d.arg('SubscriptionName', d.T.string)]),
    withSubscriptionName(SubscriptionName): {
      assert std.isString(SubscriptionName) : 'SubscriptionName must be a string',
      Properties+::: { SubscriptionName: SubscriptionName },
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
    '#withSourceIds': d.fn('`withSourceIds` SourceIds ', [d.arg('SourceIds', d.T.array)]),
    withSourceIds(SourceIds): {
      assert std.isArray(SourceIds) : 'SourceIds must be a array',
      Properties+::: { SourceIds: SourceIds },
    },
    '#withSourceType': d.fn('`withSourceType` SourceType ', [d.arg('SourceType', d.T.string)]),
    withSourceType(SourceType): {
      assert std.isString(SourceType) : 'SourceType must be a string',
      Properties+::: { SourceType: SourceType },
    },
  },
  GlobalCluster: {
    '#': d.pkg(
      name='GlobalCluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='Resource Type definition for AWS::RDS::GlobalCluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::GlobalCluster Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::RDS::GlobalCluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      assert Engine == 'aurora' || Engine == 'aurora-mysql' || Engine == 'aurora-postgresql' : "Engine must be either 'aurora' or 'aurora-mysql' or 'aurora-postgresql'",
      Properties+::: { Engine: Engine },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEngineLifecycleSupport': d.fn('`withEngineLifecycleSupport` EngineLifecycleSupport ', [d.arg('EngineLifecycleSupport', d.T.string)]),
    withEngineLifecycleSupport(EngineLifecycleSupport): {
      assert std.isString(EngineLifecycleSupport) : 'EngineLifecycleSupport must be a string',
      Properties+::: { EngineLifecycleSupport: EngineLifecycleSupport },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withDeletionProtection': d.fn('`withDeletionProtection` DeletionProtection ', [d.arg('DeletionProtection', d.T.boolean)]),
    withDeletionProtection(DeletionProtection): {
      assert std.isBoolean(DeletionProtection) : 'DeletionProtection must be a boolean',
      Properties+::: { DeletionProtection: DeletionProtection },
    },
    '#withGlobalClusterIdentifier': d.fn('`withGlobalClusterIdentifier` GlobalClusterIdentifier ', [d.arg('GlobalClusterIdentifier', d.T.string)]),
    withGlobalClusterIdentifier(GlobalClusterIdentifier): {
      assert std.isString(GlobalClusterIdentifier) : 'GlobalClusterIdentifier must be a string',
      Properties+::: { GlobalClusterIdentifier: GlobalClusterIdentifier },
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
    '#withGlobalEndpoint': d.fn('`withGlobalEndpoint` GlobalEndpoint ', [d.arg('GlobalEndpoint', d.T.object)]),
    withGlobalEndpoint(GlobalEndpoint): {
      assert std.isObject(GlobalEndpoint) : 'GlobalEndpoint must be a object',
      Properties+::: { GlobalEndpoint: GlobalEndpoint },
    },
  },
  Integration: {
    '#': d.pkg(
      name='Integration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='A zero-ETL integration with Amazon Redshift.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::Integration Resource
        * SourceArn The Amazon Resource Name (ARN) of the database to use as the source for replication.
        * TargetArn The ARN of the Redshift data warehouse to use as the target for replication.
      |||,
      args=[
        d.arg('SourceArn', 'd.T.string'),
        d.arg('TargetArn', 'd.T.string'),
      ]
    ),
    new(
      SourceArn,
      TargetArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SourceArn) : 'SourceArn must be a string',
        SourceArn: SourceArn,
        assert std.isString(TargetArn) : 'TargetArn must be a string',
        TargetArn: TargetArn,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::Integration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIntegrationName': d.fn('`withIntegrationName` IntegrationName ', [d.arg('IntegrationName', d.T.string)]),
    withIntegrationName(IntegrationName): {
      assert std.isString(IntegrationName) : 'IntegrationName must be a string',
      Properties+::: { IntegrationName: IntegrationName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDataFilter': d.fn('`withDataFilter` DataFilter ', [d.arg('DataFilter', d.T.string)]),
    withDataFilter(DataFilter): {
      assert std.isString(DataFilter) : 'DataFilter must be a string',
      Properties+::: { DataFilter: DataFilter },
    },
    '#withIntegrationArn': d.fn('`withIntegrationArn` IntegrationArn ', [d.arg('IntegrationArn', d.T.string)]),
    withIntegrationArn(IntegrationArn): {
      assert std.isString(IntegrationArn) : 'IntegrationArn must be a string',
      Properties+::: { IntegrationArn: IntegrationArn },
    },
    '#withKMSKeyId': d.fn('`withKMSKeyId` KMSKeyId ', [d.arg('KMSKeyId', d.T.string)]),
    withKMSKeyId(KMSKeyId): {
      assert std.isString(KMSKeyId) : 'KMSKeyId must be a string',
      Properties+::: { KMSKeyId: KMSKeyId },
    },
    '#withAdditionalEncryptionContext': d.fn('`withAdditionalEncryptionContext` AdditionalEncryptionContext ', [d.arg('AdditionalEncryptionContext', d.T.object)]),
    withAdditionalEncryptionContext(AdditionalEncryptionContext): {
      assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
      Properties+::: { AdditionalEncryptionContext: AdditionalEncryptionContext },
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
  },
  OptionGroup: {
    '#': d.pkg(
      name='OptionGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RDS.libsonnet',
      help='The AWS::RDS::OptionGroup resource creates or updates an option group, to enable and configure features that are specific to a particular DB engine.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RDS::OptionGroup Resource
        * EngineName Specifies the name of the engine that this option group should be associated with. Valid Values: +mariadb +mysql +oracle-ee +oracle-ee-cdb +oracle-se2 +oracle-se2-cdb +postgres +sqlserver-ee +sqlserver-se +sqlserver-ex +sqlserver-web
        * MajorEngineVersion Specifies the major version of the engine that this option group should be associated with.
        * OptionGroupDescription The description of the option group.
      |||,
      args=[
        d.arg('EngineName', 'd.T.string'),
        d.arg('MajorEngineVersion', 'd.T.string'),
        d.arg('OptionGroupDescription', 'd.T.string'),
      ]
    ),
    new(
      EngineName,
      MajorEngineVersion,
      OptionGroupDescription,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EngineName) : 'EngineName must be a string',
        EngineName: EngineName,
        assert std.isString(MajorEngineVersion) : 'MajorEngineVersion must be a string',
        MajorEngineVersion: MajorEngineVersion,
        assert std.isString(OptionGroupDescription) : 'OptionGroupDescription must be a string',
        OptionGroupDescription: OptionGroupDescription,
      },
      DependsOn:: [],
      Type: 'AWS::RDS::OptionGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOptionGroupName': d.fn('`withOptionGroupName` OptionGroupName ', [d.arg('OptionGroupName', d.T.string)]),
    withOptionGroupName(OptionGroupName): {
      assert std.isString(OptionGroupName) : 'OptionGroupName must be a string',
      Properties+::: { OptionGroupName: OptionGroupName },
    },
    '#withOptionConfigurations': d.fn('`withOptionConfigurations` OptionConfigurations ', [d.arg('OptionConfigurations', d.T.array)]),
    withOptionConfigurations(OptionConfigurations): {
      assert std.isArray(OptionConfigurations) : 'OptionConfigurations must be a array',
      Properties+::: { OptionConfigurations: OptionConfigurations },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
