local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Alarm: {
    '#': d.pkg(
      name='Alarm',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::Alarm',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::Alarm Resource
        * AlarmName The name for the alarm. Specify the name of an existing alarm to update, and overwrite the previous configuration of the alarm.
        * MonitoredResourceName The name of the Lightsail resource that the alarm monitors.
        * MetricName The name of the metric to associate with the alarm.
        * ComparisonOperator The arithmetic operation to use when comparing the specified statistic to the threshold. The specified statistic value is used as the first operand.
        * EvaluationPeriods The number of most recent periods over which data is compared to the specified threshold. If you are setting an &#34;M out of N&#34; alarm, this value (evaluationPeriods) is the N.
        * Threshold The value against which the specified statistic is compared.
      |||,
      args=[
        d.arg('AlarmName', 'd.T.string'),
        d.arg('MonitoredResourceName', 'd.T.string'),
        d.arg('MetricName', 'd.T.string'),
        d.arg('ComparisonOperator', 'd.T.string'),
        d.arg('EvaluationPeriods', 'd.T.integer'),
        d.arg('Threshold', 'd.T.integer'),
      ]
    ),
    new(
      AlarmName,
      MonitoredResourceName,
      MetricName,
      ComparisonOperator,
      EvaluationPeriods,
      Threshold,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AlarmName) : 'AlarmName must be a string',
        AlarmName: AlarmName,
        assert std.isString(MonitoredResourceName) : 'MonitoredResourceName must be a string',
        MonitoredResourceName: MonitoredResourceName,
        assert std.isString(MetricName) : 'MetricName must be a string',
        MetricName: MetricName,
        assert std.isString(ComparisonOperator) : 'ComparisonOperator must be a string',
        ComparisonOperator: ComparisonOperator,
        assert std.isNumber(EvaluationPeriods) : 'EvaluationPeriods must be a integer',
        EvaluationPeriods: EvaluationPeriods,
        // Type: number
        Threshold: Threshold,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::Alarm',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContactProtocols': d.fn('`withContactProtocols` ContactProtocols ', [d.arg('ContactProtocols', d.T.array)]),
    withContactProtocols(ContactProtocols): {
      assert std.isArray(ContactProtocols) : 'ContactProtocols must be a array',
      Properties+::: { ContactProtocols: ContactProtocols },
    },
    '#withAlarmArn': d.fn('`withAlarmArn` AlarmArn ', [d.arg('AlarmArn', d.T.string)]),
    withAlarmArn(AlarmArn): {
      assert std.isString(AlarmArn) : 'AlarmArn must be a string',
      Properties+::: { AlarmArn: AlarmArn },
    },
    '#withDatapointsToAlarm': d.fn('`withDatapointsToAlarm` DatapointsToAlarm ', [d.arg('DatapointsToAlarm', d.T.integer)]),
    withDatapointsToAlarm(DatapointsToAlarm): {
      assert std.isNumber(DatapointsToAlarm) : 'DatapointsToAlarm must be a integer',
      Properties+::: { DatapointsToAlarm: DatapointsToAlarm },
    },
    '#withNotificationEnabled': d.fn('`withNotificationEnabled` NotificationEnabled ', [d.arg('NotificationEnabled', d.T.boolean)]),
    withNotificationEnabled(NotificationEnabled): {
      assert std.isBoolean(NotificationEnabled) : 'NotificationEnabled must be a boolean',
      Properties+::: { NotificationEnabled: NotificationEnabled },
    },
    '#withNotificationTriggers': d.fn('`withNotificationTriggers` NotificationTriggers ', [d.arg('NotificationTriggers', d.T.array)]),
    withNotificationTriggers(NotificationTriggers): {
      assert std.isArray(NotificationTriggers) : 'NotificationTriggers must be a array',
      Properties+::: { NotificationTriggers: NotificationTriggers },
    },
    '#withTreatMissingData': d.fn('`withTreatMissingData` TreatMissingData ', [d.arg('TreatMissingData', d.T.string)]),
    withTreatMissingData(TreatMissingData): {
      assert std.isString(TreatMissingData) : 'TreatMissingData must be a string',
      Properties+::: { TreatMissingData: TreatMissingData },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
  },
  Bucket: {
    '#': d.pkg(
      name='Bucket',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::Bucket',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::Bucket Resource
        * BucketName The name for the bucket.
        * BundleId The ID of the bundle to use for the bucket.
      |||,
      args=[
        d.arg('BucketName', 'd.T.string'),
        d.arg('BundleId', 'd.T.string'),
      ]
    ),
    new(
      BucketName,
      BundleId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BucketName) : 'BucketName must be a string',
        BucketName: BucketName,
        assert std.isString(BundleId) : 'BundleId must be a string',
        BundleId: BundleId,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::Bucket',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBucketArn': d.fn('`withBucketArn` BucketArn ', [d.arg('BucketArn', d.T.string)]),
    withBucketArn(BucketArn): {
      assert std.isString(BucketArn) : 'BucketArn must be a string',
      Properties+::: { BucketArn: BucketArn },
    },
    '#withObjectVersioning': d.fn('`withObjectVersioning` ObjectVersioning ', [d.arg('ObjectVersioning', d.T.boolean)]),
    withObjectVersioning(ObjectVersioning): {
      assert std.isBoolean(ObjectVersioning) : 'ObjectVersioning must be a boolean',
      Properties+::: { ObjectVersioning: ObjectVersioning },
    },
    '#withAccessRules': d.fn('`withAccessRules` AccessRules ', [d.arg('AccessRules', d.T.object)]),
    withAccessRules(AccessRules): {
      assert std.isObject(AccessRules) : 'AccessRules must be a object',
      Properties+::: { AccessRules: AccessRules },
    },
    '#withResourcesReceivingAccess': d.fn('`withResourcesReceivingAccess` ResourcesReceivingAccess ', [d.arg('ResourcesReceivingAccess', d.T.array)]),
    withResourcesReceivingAccess(ResourcesReceivingAccess): {
      assert std.isArray(ResourcesReceivingAccess) : 'ResourcesReceivingAccess must be a array',
      Properties+::: { ResourcesReceivingAccess: ResourcesReceivingAccess },
    },
    '#withReadOnlyAccessAccounts': d.fn('`withReadOnlyAccessAccounts` ReadOnlyAccessAccounts ', [d.arg('ReadOnlyAccessAccounts', d.T.array)]),
    withReadOnlyAccessAccounts(ReadOnlyAccessAccounts): {
      assert std.isArray(ReadOnlyAccessAccounts) : 'ReadOnlyAccessAccounts must be a array',
      Properties+::: { ReadOnlyAccessAccounts: ReadOnlyAccessAccounts },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
    '#withAbleToUpdateBundle': d.fn('`withAbleToUpdateBundle` AbleToUpdateBundle ', [d.arg('AbleToUpdateBundle', d.T.boolean)]),
    withAbleToUpdateBundle(AbleToUpdateBundle): {
      assert std.isBoolean(AbleToUpdateBundle) : 'AbleToUpdateBundle must be a boolean',
      Properties+::: { AbleToUpdateBundle: AbleToUpdateBundle },
    },
  },
  Certificate: {
    '#': d.pkg(
      name='Certificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::Certificate.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::Certificate Resource
        * CertificateName The name for the certificate.
        * DomainName The domain name (e.g., example.com ) for the certificate.
      |||,
      args=[
        d.arg('CertificateName', 'd.T.string'),
        d.arg('DomainName', 'd.T.string'),
      ]
    ),
    new(
      CertificateName,
      DomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CertificateName) : 'CertificateName must be a string',
        CertificateName: CertificateName,
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::Certificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSubjectAlternativeNames': d.fn('`withSubjectAlternativeNames` SubjectAlternativeNames ', [d.arg('SubjectAlternativeNames', d.T.array)]),
    withSubjectAlternativeNames(SubjectAlternativeNames): {
      assert std.isArray(SubjectAlternativeNames) : 'SubjectAlternativeNames must be a array',
      Properties+::: { SubjectAlternativeNames: SubjectAlternativeNames },
    },
    '#withCertificateArn': d.fn('`withCertificateArn` CertificateArn ', [d.arg('CertificateArn', d.T.string)]),
    withCertificateArn(CertificateArn): {
      assert std.isString(CertificateArn) : 'CertificateArn must be a string',
      Properties+::: { CertificateArn: CertificateArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Container: {
    '#': d.pkg(
      name='Container',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::Container',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::Container Resource
        * ServiceName The name for the container service.
        * Power The power specification for the container service.
        * Scale The scale specification for the container service.
      |||,
      args=[
        d.arg('ServiceName', 'd.T.string'),
        d.arg('Power', 'd.T.string'),
        d.arg('Scale', 'd.T.integer'),
      ]
    ),
    new(
      ServiceName,
      Power,
      Scale,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServiceName) : 'ServiceName must be a string',
        ServiceName: ServiceName,
        assert std.isString(Power) : 'Power must be a string',
        Power: Power,
        assert std.isNumber(Scale) : 'Scale must be a integer',
        Scale: Scale,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::Container',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContainerArn': d.fn('`withContainerArn` ContainerArn ', [d.arg('ContainerArn', d.T.string)]),
    withContainerArn(ContainerArn): {
      assert std.isString(ContainerArn) : 'ContainerArn must be a string',
      Properties+::: { ContainerArn: ContainerArn },
    },
    '#withPublicDomainNames': d.fn('`withPublicDomainNames` PublicDomainNames ', [d.arg('PublicDomainNames', d.T.array)]),
    withPublicDomainNames(PublicDomainNames): {
      assert std.isArray(PublicDomainNames) : 'PublicDomainNames must be a array',
      Properties+::: { PublicDomainNames: PublicDomainNames },
    },
    '#withContainerServiceDeployment': d.fn('`withContainerServiceDeployment` ContainerServiceDeployment ', [d.arg('ContainerServiceDeployment', d.T.object)]),
    withContainerServiceDeployment(ContainerServiceDeployment): {
      assert std.isObject(ContainerServiceDeployment) : 'ContainerServiceDeployment must be a object',
      Properties+::: { ContainerServiceDeployment: ContainerServiceDeployment },
    },
    '#withIsDisabled': d.fn('`withIsDisabled` IsDisabled ', [d.arg('IsDisabled', d.T.boolean)]),
    withIsDisabled(IsDisabled): {
      assert std.isBoolean(IsDisabled) : 'IsDisabled must be a boolean',
      Properties+::: { IsDisabled: IsDisabled },
    },
    '#withPrivateRegistryAccess': d.fn('`withPrivateRegistryAccess` PrivateRegistryAccess ', [d.arg('PrivateRegistryAccess', d.T.object)]),
    withPrivateRegistryAccess(PrivateRegistryAccess): {
      assert std.isObject(PrivateRegistryAccess) : 'PrivateRegistryAccess must be a object',
      Properties+::: { PrivateRegistryAccess: PrivateRegistryAccess },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
    '#withPrincipalArn': d.fn('`withPrincipalArn` PrincipalArn ', [d.arg('PrincipalArn', d.T.string)]),
    withPrincipalArn(PrincipalArn): {
      assert std.isString(PrincipalArn) : 'PrincipalArn must be a string',
      Properties+::: { PrincipalArn: PrincipalArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Database: {
    '#': d.pkg(
      name='Database',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::Database',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::Database Resource
        * RelationalDatabaseName The name to use for your new Lightsail database resource.
        * RelationalDatabaseBlueprintId The blueprint ID for your new database. A blueprint describes the major engine version of a database.
        * RelationalDatabaseBundleId The bundle ID for your new database. A bundle describes the performance specifications for your database.
        * MasterDatabaseName The name of the database to create when the Lightsail database resource is created. For MySQL, if this parameter isnt specified, no database is created in the database resource. For PostgreSQL, if this parameter isnt specified, a database named postgres is created in the database resource.
        * MasterUsername The name for the master user.
      |||,
      args=[
        d.arg('RelationalDatabaseName', 'd.T.string'),
        d.arg('RelationalDatabaseBlueprintId', 'd.T.string'),
        d.arg('RelationalDatabaseBundleId', 'd.T.string'),
        d.arg('MasterDatabaseName', 'd.T.string'),
        d.arg('MasterUsername', 'd.T.string'),
      ]
    ),
    new(
      RelationalDatabaseName,
      RelationalDatabaseBlueprintId,
      RelationalDatabaseBundleId,
      MasterDatabaseName,
      MasterUsername,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RelationalDatabaseName) : 'RelationalDatabaseName must be a string',
        RelationalDatabaseName: RelationalDatabaseName,
        assert std.isString(RelationalDatabaseBlueprintId) : 'RelationalDatabaseBlueprintId must be a string',
        RelationalDatabaseBlueprintId: RelationalDatabaseBlueprintId,
        assert std.isString(RelationalDatabaseBundleId) : 'RelationalDatabaseBundleId must be a string',
        RelationalDatabaseBundleId: RelationalDatabaseBundleId,
        assert std.isString(MasterDatabaseName) : 'MasterDatabaseName must be a string',
        MasterDatabaseName: MasterDatabaseName,
        assert std.isString(MasterUsername) : 'MasterUsername must be a string',
        MasterUsername: MasterUsername,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::Database',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDatabaseArn': d.fn('`withDatabaseArn` DatabaseArn ', [d.arg('DatabaseArn', d.T.string)]),
    withDatabaseArn(DatabaseArn): {
      assert std.isString(DatabaseArn) : 'DatabaseArn must be a string',
      Properties+::: { DatabaseArn: DatabaseArn },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withMasterUserPassword': d.fn('`withMasterUserPassword` MasterUserPassword ', [d.arg('MasterUserPassword', d.T.string)]),
    withMasterUserPassword(MasterUserPassword): {
      assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
      Properties+::: { MasterUserPassword: MasterUserPassword },
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
    '#withCaCertificateIdentifier': d.fn('`withCaCertificateIdentifier` CaCertificateIdentifier ', [d.arg('CaCertificateIdentifier', d.T.string)]),
    withCaCertificateIdentifier(CaCertificateIdentifier): {
      assert std.isString(CaCertificateIdentifier) : 'CaCertificateIdentifier must be a string',
      Properties+::: { CaCertificateIdentifier: CaCertificateIdentifier },
    },
    '#withBackupRetention': d.fn('`withBackupRetention` BackupRetention ', [d.arg('BackupRetention', d.T.boolean)]),
    withBackupRetention(BackupRetention): {
      assert std.isBoolean(BackupRetention) : 'BackupRetention must be a boolean',
      Properties+::: { BackupRetention: BackupRetention },
    },
    '#withRotateMasterUserPassword': d.fn('`withRotateMasterUserPassword` RotateMasterUserPassword ', [d.arg('RotateMasterUserPassword', d.T.boolean)]),
    withRotateMasterUserPassword(RotateMasterUserPassword): {
      assert std.isBoolean(RotateMasterUserPassword) : 'RotateMasterUserPassword must be a boolean',
      Properties+::: { RotateMasterUserPassword: RotateMasterUserPassword },
    },
    '#withRelationalDatabaseParameters': d.fn('`withRelationalDatabaseParameters` RelationalDatabaseParameters ', [d.arg('RelationalDatabaseParameters', d.T.array)]),
    withRelationalDatabaseParameters(RelationalDatabaseParameters): {
      assert std.isArray(RelationalDatabaseParameters) : 'RelationalDatabaseParameters must be a array',
      Properties+::: { RelationalDatabaseParameters: RelationalDatabaseParameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Disk: {
    '#': d.pkg(
      name='Disk',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::Disk',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::Disk Resource
        * DiskName The names to use for your new Lightsail disk.
        * SizeInGb Size of the Lightsail disk
      |||,
      args=[
        d.arg('DiskName', 'd.T.string'),
        d.arg('SizeInGb', 'd.T.integer'),
      ]
    ),
    new(
      DiskName,
      SizeInGb,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DiskName) : 'DiskName must be a string',
        DiskName: DiskName,
        assert std.isNumber(SizeInGb) : 'SizeInGb must be a integer',
        SizeInGb: SizeInGb,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::Disk',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDiskArn': d.fn('`withDiskArn` DiskArn ', [d.arg('DiskArn', d.T.string)]),
    withDiskArn(DiskArn): {
      assert std.isString(DiskArn) : 'DiskArn must be a string',
      Properties+::: { DiskArn: DiskArn },
    },
    '#withSupportCode': d.fn('`withSupportCode` SupportCode ', [d.arg('SupportCode', d.T.string)]),
    withSupportCode(SupportCode): {
      assert std.isString(SupportCode) : 'SupportCode must be a string',
      Properties+::: { SupportCode: SupportCode },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withLocation': d.fn('`withLocation` Location ', [d.arg('Location', d.T.object)]),
    withLocation(Location): {
      assert std.isObject(Location) : 'Location must be a object',
      Properties+::: { Location: Location },
    },
    '#withResourceType': d.fn('`withResourceType` ResourceType ', [d.arg('ResourceType', d.T.string)]),
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      Properties+::: { ResourceType: ResourceType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAddOns': d.fn('`withAddOns` AddOns ', [d.arg('AddOns', d.T.array)]),
    withAddOns(AddOns): {
      assert std.isArray(AddOns) : 'AddOns must be a array',
      Properties+::: { AddOns: AddOns },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withAttachmentState': d.fn('`withAttachmentState` AttachmentState ', [d.arg('AttachmentState', d.T.string)]),
    withAttachmentState(AttachmentState): {
      assert std.isString(AttachmentState) : 'AttachmentState must be a string',
      Properties+::: { AttachmentState: AttachmentState },
    },
    '#withIops': d.fn('`withIops` Iops ', [d.arg('Iops', d.T.integer)]),
    withIops(Iops): {
      assert std.isNumber(Iops) : 'Iops must be a integer',
      Properties+::: { Iops: Iops },
    },
    '#withIsAttached': d.fn('`withIsAttached` IsAttached ', [d.arg('IsAttached', d.T.boolean)]),
    withIsAttached(IsAttached): {
      assert std.isBoolean(IsAttached) : 'IsAttached must be a boolean',
      Properties+::: { IsAttached: IsAttached },
    },
    '#withPath': d.fn('`withPath` Path ', [d.arg('Path', d.T.string)]),
    withPath(Path): {
      assert std.isString(Path) : 'Path must be a string',
      Properties+::: { Path: Path },
    },
    '#withAttachedTo': d.fn('`withAttachedTo` AttachedTo ', [d.arg('AttachedTo', d.T.string)]),
    withAttachedTo(AttachedTo): {
      assert std.isString(AttachedTo) : 'AttachedTo must be a string',
      Properties+::: { AttachedTo: AttachedTo },
    },
  },
  Instance: {
    '#': d.pkg(
      name='Instance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::Instance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::Instance Resource
        * InstanceName The names to use for your new Lightsail instance.
        * BlueprintId The ID for a virtual private server image (e.g., app_wordpress_4_4 or app_lamp_7_0 ). Use the get blueprints operation to return a list of available images (or blueprints ).
        * BundleId The bundle of specification information for your virtual private server (or instance ), including the pricing plan (e.g., micro_1_0 ).
      |||,
      args=[
        d.arg('InstanceName', 'd.T.string'),
        d.arg('BlueprintId', 'd.T.string'),
        d.arg('BundleId', 'd.T.string'),
      ]
    ),
    new(
      InstanceName,
      BlueprintId,
      BundleId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceName) : 'InstanceName must be a string',
        InstanceName: InstanceName,
        assert std.isString(BlueprintId) : 'BlueprintId must be a string',
        BlueprintId: BlueprintId,
        assert std.isString(BundleId) : 'BundleId must be a string',
        BundleId: BundleId,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::Instance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSupportCode': d.fn('`withSupportCode` SupportCode ', [d.arg('SupportCode', d.T.string)]),
    withSupportCode(SupportCode): {
      assert std.isString(SupportCode) : 'SupportCode must be a string',
      Properties+::: { SupportCode: SupportCode },
    },
    '#withResourceType': d.fn('`withResourceType` ResourceType ', [d.arg('ResourceType', d.T.string)]),
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      Properties+::: { ResourceType: ResourceType },
    },
    '#withIsStaticIp': d.fn('`withIsStaticIp` IsStaticIp ', [d.arg('IsStaticIp', d.T.boolean)]),
    withIsStaticIp(IsStaticIp): {
      assert std.isBoolean(IsStaticIp) : 'IsStaticIp must be a boolean',
      Properties+::: { IsStaticIp: IsStaticIp },
    },
    '#withPrivateIpAddress': d.fn('`withPrivateIpAddress` PrivateIpAddress ', [d.arg('PrivateIpAddress', d.T.string)]),
    withPrivateIpAddress(PrivateIpAddress): {
      assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
      Properties+::: { PrivateIpAddress: PrivateIpAddress },
    },
    '#withPublicIpAddress': d.fn('`withPublicIpAddress` PublicIpAddress ', [d.arg('PublicIpAddress', d.T.string)]),
    withPublicIpAddress(PublicIpAddress): {
      assert std.isString(PublicIpAddress) : 'PublicIpAddress must be a string',
      Properties+::: { PublicIpAddress: PublicIpAddress },
    },
    '#withIpv6Addresses': d.fn('`withIpv6Addresses` Ipv6Addresses ', [d.arg('Ipv6Addresses', d.T.array)]),
    withIpv6Addresses(Ipv6Addresses): {
      assert std.isArray(Ipv6Addresses) : 'Ipv6Addresses must be a array',
      Properties+::: { Ipv6Addresses: Ipv6Addresses },
    },
    '#withLocation': d.fn('`withLocation` Location ', [d.arg('Location', d.T.object)]),
    withLocation(Location): {
      assert std.isObject(Location) : 'Location must be a object',
      Properties+::: { Location: Location },
    },
    '#withHardware': d.fn('`withHardware` Hardware ', [d.arg('Hardware', d.T.object)]),
    withHardware(Hardware): {
      assert std.isObject(Hardware) : 'Hardware must be a object',
      Properties+::: { Hardware: Hardware },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.object)]),
    withState(State): {
      assert std.isObject(State) : 'State must be a object',
      Properties+::: { State: State },
    },
    '#withNetworking': d.fn('`withNetworking` Networking ', [d.arg('Networking', d.T.object)]),
    withNetworking(Networking): {
      assert std.isObject(Networking) : 'Networking must be a object',
      Properties+::: { Networking: Networking },
    },
    '#withUserName': d.fn('`withUserName` UserName ', [d.arg('UserName', d.T.string)]),
    withUserName(UserName): {
      assert std.isString(UserName) : 'UserName must be a string',
      Properties+::: { UserName: UserName },
    },
    '#withSshKeyName': d.fn('`withSshKeyName` SshKeyName ', [d.arg('SshKeyName', d.T.string)]),
    withSshKeyName(SshKeyName): {
      assert std.isString(SshKeyName) : 'SshKeyName must be a string',
      Properties+::: { SshKeyName: SshKeyName },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withAddOns': d.fn('`withAddOns` AddOns ', [d.arg('AddOns', d.T.array)]),
    withAddOns(AddOns): {
      assert std.isArray(AddOns) : 'AddOns must be a array',
      Properties+::: { AddOns: AddOns },
    },
    '#withUserData': d.fn('`withUserData` UserData ', [d.arg('UserData', d.T.string)]),
    withUserData(UserData): {
      assert std.isString(UserData) : 'UserData must be a string',
      Properties+::: { UserData: UserData },
    },
    '#withKeyPairName': d.fn('`withKeyPairName` KeyPairName ', [d.arg('KeyPairName', d.T.string)]),
    withKeyPairName(KeyPairName): {
      assert std.isString(KeyPairName) : 'KeyPairName must be a string',
      Properties+::: { KeyPairName: KeyPairName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withInstanceArn': d.fn('`withInstanceArn` InstanceArn ', [d.arg('InstanceArn', d.T.string)]),
    withInstanceArn(InstanceArn): {
      assert std.isString(InstanceArn) : 'InstanceArn must be a string',
      Properties+::: { InstanceArn: InstanceArn },
    },
  },
  LoadBalancer: {
    '#': d.pkg(
      name='LoadBalancer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::LoadBalancer',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::LoadBalancer Resource
        * LoadBalancerName The name of your load balancer.
        * InstancePort The instance port where youre creating your load balancer.
      |||,
      args=[
        d.arg('LoadBalancerName', 'd.T.string'),
        d.arg('InstancePort', 'd.T.integer'),
      ]
    ),
    new(
      LoadBalancerName,
      InstancePort,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LoadBalancerName) : 'LoadBalancerName must be a string',
        LoadBalancerName: LoadBalancerName,
        assert std.isNumber(InstancePort) : 'InstancePort must be a integer',
        InstancePort: InstancePort,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::LoadBalancer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLoadBalancerArn': d.fn('`withLoadBalancerArn` LoadBalancerArn ', [d.arg('LoadBalancerArn', d.T.string)]),
    withLoadBalancerArn(LoadBalancerArn): {
      assert std.isString(LoadBalancerArn) : 'LoadBalancerArn must be a string',
      Properties+::: { LoadBalancerArn: LoadBalancerArn },
    },
    '#withIpAddressType': d.fn('`withIpAddressType` IpAddressType ', [d.arg('IpAddressType', d.T.string)]),
    withIpAddressType(IpAddressType): {
      assert std.isString(IpAddressType) : 'IpAddressType must be a string',
      Properties+::: { IpAddressType: IpAddressType },
    },
    '#withAttachedInstances': d.fn('`withAttachedInstances` AttachedInstances ', [d.arg('AttachedInstances', d.T.array)]),
    withAttachedInstances(AttachedInstances): {
      assert std.isArray(AttachedInstances) : 'AttachedInstances must be a array',
      Properties+::: { AttachedInstances: AttachedInstances },
    },
    '#withHealthCheckPath': d.fn('`withHealthCheckPath` HealthCheckPath ', [d.arg('HealthCheckPath', d.T.string)]),
    withHealthCheckPath(HealthCheckPath): {
      assert std.isString(HealthCheckPath) : 'HealthCheckPath must be a string',
      Properties+::: { HealthCheckPath: HealthCheckPath },
    },
    '#withSessionStickinessEnabled': d.fn('`withSessionStickinessEnabled` SessionStickinessEnabled ', [d.arg('SessionStickinessEnabled', d.T.boolean)]),
    withSessionStickinessEnabled(SessionStickinessEnabled): {
      assert std.isBoolean(SessionStickinessEnabled) : 'SessionStickinessEnabled must be a boolean',
      Properties+::: { SessionStickinessEnabled: SessionStickinessEnabled },
    },
    '#withSessionStickinessLBCookieDurationSeconds': d.fn('`withSessionStickinessLBCookieDurationSeconds` SessionStickinessLBCookieDurationSeconds ', [d.arg('SessionStickinessLBCookieDurationSeconds', d.T.string)]),
    withSessionStickinessLBCookieDurationSeconds(SessionStickinessLBCookieDurationSeconds): {
      assert std.isString(SessionStickinessLBCookieDurationSeconds) : 'SessionStickinessLBCookieDurationSeconds must be a string',
      Properties+::: { SessionStickinessLBCookieDurationSeconds: SessionStickinessLBCookieDurationSeconds },
    },
    '#withTlsPolicyName': d.fn('`withTlsPolicyName` TlsPolicyName ', [d.arg('TlsPolicyName', d.T.string)]),
    withTlsPolicyName(TlsPolicyName): {
      assert std.isString(TlsPolicyName) : 'TlsPolicyName must be a string',
      Properties+::: { TlsPolicyName: TlsPolicyName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  LoadBalancerTlsCertificate: {
    '#': d.pkg(
      name='LoadBalancerTlsCertificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::LoadBalancerTlsCertificate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::LoadBalancerTlsCertificate Resource
        * LoadBalancerName The name of your load balancer.
        * CertificateName The SSL/TLS certificate name.
        * CertificateDomainName The domain name (e.g., example.com ) for your SSL/TLS certificate.
      |||,
      args=[
        d.arg('LoadBalancerName', 'd.T.string'),
        d.arg('CertificateName', 'd.T.string'),
        d.arg('CertificateDomainName', 'd.T.string'),
      ]
    ),
    new(
      LoadBalancerName,
      CertificateName,
      CertificateDomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LoadBalancerName) : 'LoadBalancerName must be a string',
        LoadBalancerName: LoadBalancerName,
        assert std.isString(CertificateName) : 'CertificateName must be a string',
        CertificateName: CertificateName,
        assert std.isString(CertificateDomainName) : 'CertificateDomainName must be a string',
        CertificateDomainName: CertificateDomainName,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::LoadBalancerTlsCertificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateAlternativeNames': d.fn('`withCertificateAlternativeNames` CertificateAlternativeNames ', [d.arg('CertificateAlternativeNames', d.T.array)]),
    withCertificateAlternativeNames(CertificateAlternativeNames): {
      assert std.isArray(CertificateAlternativeNames) : 'CertificateAlternativeNames must be a array',
      Properties+::: { CertificateAlternativeNames: CertificateAlternativeNames },
    },
    '#withLoadBalancerTlsCertificateArn': d.fn('`withLoadBalancerTlsCertificateArn` LoadBalancerTlsCertificateArn ', [d.arg('LoadBalancerTlsCertificateArn', d.T.string)]),
    withLoadBalancerTlsCertificateArn(LoadBalancerTlsCertificateArn): {
      assert std.isString(LoadBalancerTlsCertificateArn) : 'LoadBalancerTlsCertificateArn must be a string',
      Properties+::: { LoadBalancerTlsCertificateArn: LoadBalancerTlsCertificateArn },
    },
    '#withIsAttached': d.fn('`withIsAttached` IsAttached ', [d.arg('IsAttached', d.T.boolean)]),
    withIsAttached(IsAttached): {
      assert std.isBoolean(IsAttached) : 'IsAttached must be a boolean',
      Properties+::: { IsAttached: IsAttached },
    },
    '#withHttpsRedirectionEnabled': d.fn('`withHttpsRedirectionEnabled` HttpsRedirectionEnabled ', [d.arg('HttpsRedirectionEnabled', d.T.boolean)]),
    withHttpsRedirectionEnabled(HttpsRedirectionEnabled): {
      assert std.isBoolean(HttpsRedirectionEnabled) : 'HttpsRedirectionEnabled must be a boolean',
      Properties+::: { HttpsRedirectionEnabled: HttpsRedirectionEnabled },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
  },
  StaticIp: {
    '#': d.pkg(
      name='StaticIp',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lightsail.libsonnet',
      help='Resource Type definition for AWS::Lightsail::StaticIp',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lightsail::StaticIp Resource
        * StaticIpName The name of the static IP address.
      |||,
      args=[
        d.arg('StaticIpName', 'd.T.string'),
      ]
    ),
    new(
      StaticIpName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StaticIpName) : 'StaticIpName must be a string',
        StaticIpName: StaticIpName,
      },
      DependsOn:: [],
      Type: 'AWS::Lightsail::StaticIp',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAttachedTo': d.fn('`withAttachedTo` AttachedTo ', [d.arg('AttachedTo', d.T.string)]),
    withAttachedTo(AttachedTo): {
      assert std.isString(AttachedTo) : 'AttachedTo must be a string',
      Properties+::: { AttachedTo: AttachedTo },
    },
    '#withIsAttached': d.fn('`withIsAttached` IsAttached ', [d.arg('IsAttached', d.T.boolean)]),
    withIsAttached(IsAttached): {
      assert std.isBoolean(IsAttached) : 'IsAttached must be a boolean',
      Properties+::: { IsAttached: IsAttached },
    },
    '#withIpAddress': d.fn('`withIpAddress` IpAddress ', [d.arg('IpAddress', d.T.string)]),
    withIpAddress(IpAddress): {
      assert std.isString(IpAddress) : 'IpAddress must be a string',
      Properties+::: { IpAddress: IpAddress },
    },
    '#withStaticIpArn': d.fn('`withStaticIpArn` StaticIpArn ', [d.arg('StaticIpArn', d.T.string)]),
    withStaticIpArn(StaticIpArn): {
      assert std.isString(StaticIpArn) : 'StaticIpArn must be a string',
      Properties+::: { StaticIpArn: StaticIpArn },
    },
  },
}
