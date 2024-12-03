local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Farm: {
    '#': d.pkg(
      name='Farm',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::Farm Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::Farm Resource
        * DisplayName 
      |||,
      args=[
        d.arg('DisplayName', 'd.T.string'),
      ]
    ),
    new(
      DisplayName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
      },
      DependsOn:: [],
      Type: 'AWS::Deadline::Farm',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFarmId': d.fn('`withFarmId` FarmId ', [d.arg('FarmId', d.T.string)]),
    withFarmId(FarmId): {
      assert std.isString(FarmId) : 'FarmId must be a string',
      Properties+::: { FarmId: FarmId },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Fleet: {
    '#': d.pkg(
      name='Fleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::Fleet Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::Fleet Resource
        * Configuration 
        * DisplayName 
        * FarmId 
        * MaxWorkerCount 
        * RoleArn 
      |||,
      args=[
        d.arg('Configuration', ''),
        d.arg('DisplayName', 'd.T.string'),
        d.arg('FarmId', 'd.T.string'),
        d.arg('MaxWorkerCount', 'd.T.integer'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      Configuration,
      DisplayName,
      FarmId,
      MaxWorkerCount,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        // Type: undefined
        Configuration: Configuration,
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(FarmId) : 'FarmId must be a string',
        FarmId: FarmId,
        assert std.isNumber(MaxWorkerCount) : 'MaxWorkerCount must be a integer',
        MaxWorkerCount: MaxWorkerCount,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::Deadline::Fleet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCapabilities': d.fn('`withCapabilities` Capabilities ', [d.arg('Capabilities', d.T.object)]),
    withCapabilities(Capabilities): {
      assert std.isObject(Capabilities) : 'Capabilities must be a object',
      Properties+::: { Capabilities: Capabilities },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFleetId': d.fn('`withFleetId` FleetId ', [d.arg('FleetId', d.T.string)]),
    withFleetId(FleetId): {
      assert std.isString(FleetId) : 'FleetId must be a string',
      Properties+::: { FleetId: FleetId },
    },
    '#withMinWorkerCount': d.fn('`withMinWorkerCount` MinWorkerCount ', [d.arg('MinWorkerCount', d.T.integer)]),
    withMinWorkerCount(MinWorkerCount): {
      assert std.isNumber(MinWorkerCount) : 'MinWorkerCount must be a integer',
      Properties+::: { MinWorkerCount: MinWorkerCount },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withWorkerCount': d.fn('`withWorkerCount` WorkerCount ', [d.arg('WorkerCount', d.T.integer)]),
    withWorkerCount(WorkerCount): {
      assert std.isNumber(WorkerCount) : 'WorkerCount must be a integer',
      Properties+::: { WorkerCount: WorkerCount },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  LicenseEndpoint: {
    '#': d.pkg(
      name='LicenseEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::LicenseEndpoint Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::LicenseEndpoint Resource
        * SecurityGroupIds 
        * SubnetIds 
        * VpcId 
      |||,
      args=[
        d.arg('SecurityGroupIds', 'd.T.array'),
        d.arg('SubnetIds', 'd.T.array'),
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      SecurityGroupIds,
      SubnetIds,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
        SecurityGroupIds: SecurityGroupIds,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::Deadline::LicenseEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDnsName': d.fn('`withDnsName` DnsName ', [d.arg('DnsName', d.T.string)]),
    withDnsName(DnsName): {
      assert std.isString(DnsName) : 'DnsName must be a string',
      Properties+::: { DnsName: DnsName },
    },
    '#withLicenseEndpointId': d.fn('`withLicenseEndpointId` LicenseEndpointId ', [d.arg('LicenseEndpointId', d.T.string)]),
    withLicenseEndpointId(LicenseEndpointId): {
      assert std.isString(LicenseEndpointId) : 'LicenseEndpointId must be a string',
      Properties+::: { LicenseEndpointId: LicenseEndpointId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MeteredProduct: {
    '#': d.pkg(
      name='MeteredProduct',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::MeteredProduct Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::MeteredProduct Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Deadline::MeteredProduct',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLicenseEndpointId': d.fn('`withLicenseEndpointId` LicenseEndpointId ', [d.arg('LicenseEndpointId', d.T.string)]),
    withLicenseEndpointId(LicenseEndpointId): {
      assert std.isString(LicenseEndpointId) : 'LicenseEndpointId must be a string',
      Properties+::: { LicenseEndpointId: LicenseEndpointId },
    },
    '#withProductId': d.fn('`withProductId` ProductId ', [d.arg('ProductId', d.T.string)]),
    withProductId(ProductId): {
      assert std.isString(ProductId) : 'ProductId must be a string',
      Properties+::: { ProductId: ProductId },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withFamily': d.fn('`withFamily` Family ', [d.arg('Family', d.T.string)]),
    withFamily(Family): {
      assert std.isString(Family) : 'Family must be a string',
      Properties+::: { Family: Family },
    },
    '#withVendor': d.fn('`withVendor` Vendor ', [d.arg('Vendor', d.T.string)]),
    withVendor(Vendor): {
      assert std.isString(Vendor) : 'Vendor must be a string',
      Properties+::: { Vendor: Vendor },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Monitor: {
    '#': d.pkg(
      name='Monitor',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::Monitor Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::Monitor Resource
        * DisplayName 
        * IdentityCenterInstanceArn 
        * RoleArn 
        * Subdomain 
      |||,
      args=[
        d.arg('DisplayName', 'd.T.string'),
        d.arg('IdentityCenterInstanceArn', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('Subdomain', 'd.T.string'),
      ]
    ),
    new(
      DisplayName,
      IdentityCenterInstanceArn,
      RoleArn,
      Subdomain,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(IdentityCenterInstanceArn) : 'IdentityCenterInstanceArn must be a string',
        IdentityCenterInstanceArn: IdentityCenterInstanceArn,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(Subdomain) : 'Subdomain must be a string',
        Subdomain: Subdomain,
      },
      DependsOn:: [],
      Type: 'AWS::Deadline::Monitor',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIdentityCenterApplicationArn': d.fn('`withIdentityCenterApplicationArn` IdentityCenterApplicationArn ', [d.arg('IdentityCenterApplicationArn', d.T.string)]),
    withIdentityCenterApplicationArn(IdentityCenterApplicationArn): {
      assert std.isString(IdentityCenterApplicationArn) : 'IdentityCenterApplicationArn must be a string',
      Properties+::: { IdentityCenterApplicationArn: IdentityCenterApplicationArn },
    },
    '#withMonitorId': d.fn('`withMonitorId` MonitorId ', [d.arg('MonitorId', d.T.string)]),
    withMonitorId(MonitorId): {
      assert std.isString(MonitorId) : 'MonitorId must be a string',
      Properties+::: { MonitorId: MonitorId },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Queue: {
    '#': d.pkg(
      name='Queue',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::Queue Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::Queue Resource
        * DisplayName 
        * FarmId 
      |||,
      args=[
        d.arg('DisplayName', 'd.T.string'),
        d.arg('FarmId', 'd.T.string'),
      ]
    ),
    new(
      DisplayName,
      FarmId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(FarmId) : 'FarmId must be a string',
        FarmId: FarmId,
      },
      DependsOn:: [],
      Type: 'AWS::Deadline::Queue',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAllowedStorageProfileIds': d.fn('`withAllowedStorageProfileIds` AllowedStorageProfileIds ', [d.arg('AllowedStorageProfileIds', d.T.array)]),
    withAllowedStorageProfileIds(AllowedStorageProfileIds): {
      assert std.isArray(AllowedStorageProfileIds) : 'AllowedStorageProfileIds must be a array',
      Properties+::: { AllowedStorageProfileIds: AllowedStorageProfileIds },
    },
    '#withDefaultBudgetAction': d.fn('`withDefaultBudgetAction` DefaultBudgetAction ', [d.arg('DefaultBudgetAction', d.T.string)]),
    withDefaultBudgetAction(DefaultBudgetAction): {
      assert std.isString(DefaultBudgetAction) : 'DefaultBudgetAction must be a string',
      Properties+::: { DefaultBudgetAction: DefaultBudgetAction },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withJobAttachmentSettings': d.fn('`withJobAttachmentSettings` JobAttachmentSettings ', [d.arg('JobAttachmentSettings', d.T.object)]),
    withJobAttachmentSettings(JobAttachmentSettings): {
      assert std.isObject(JobAttachmentSettings) : 'JobAttachmentSettings must be a object',
      Properties+::: { JobAttachmentSettings: JobAttachmentSettings },
    },
    '#withJobRunAsUser': d.fn('`withJobRunAsUser` JobRunAsUser ', [d.arg('JobRunAsUser', d.T.object)]),
    withJobRunAsUser(JobRunAsUser): {
      assert std.isObject(JobRunAsUser) : 'JobRunAsUser must be a object',
      Properties+::: { JobRunAsUser: JobRunAsUser },
    },
    '#withQueueId': d.fn('`withQueueId` QueueId ', [d.arg('QueueId', d.T.string)]),
    withQueueId(QueueId): {
      assert std.isString(QueueId) : 'QueueId must be a string',
      Properties+::: { QueueId: QueueId },
    },
    '#withRequiredFileSystemLocationNames': d.fn('`withRequiredFileSystemLocationNames` RequiredFileSystemLocationNames ', [d.arg('RequiredFileSystemLocationNames', d.T.array)]),
    withRequiredFileSystemLocationNames(RequiredFileSystemLocationNames): {
      assert std.isArray(RequiredFileSystemLocationNames) : 'RequiredFileSystemLocationNames must be a array',
      Properties+::: { RequiredFileSystemLocationNames: RequiredFileSystemLocationNames },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  QueueEnvironment: {
    '#': d.pkg(
      name='QueueEnvironment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::QueueEnvironment Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::QueueEnvironment Resource
        * FarmId 
        * QueueId 
        * Priority 
        * Template 
        * TemplateType 
      |||,
      args=[
        d.arg('FarmId', 'd.T.string'),
        d.arg('QueueId', 'd.T.string'),
        d.arg('Priority', 'd.T.integer'),
        d.arg('Template', 'd.T.string'),
        d.arg('TemplateType', 'd.T.string'),
      ]
    ),
    new(
      FarmId,
      QueueId,
      Priority,
      Template,
      TemplateType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FarmId) : 'FarmId must be a string',
        FarmId: FarmId,
        assert std.isString(QueueId) : 'QueueId must be a string',
        QueueId: QueueId,
        assert std.isNumber(Priority) : 'Priority must be a integer',
        Priority: Priority,
        assert std.isString(Template) : 'Template must be a string',
        Template: Template,
        assert std.isString(TemplateType) : 'TemplateType must be a string',
        TemplateType: TemplateType,
      },
      DependsOn:: [],
      Type: 'AWS::Deadline::QueueEnvironment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withQueueEnvironmentId': d.fn('`withQueueEnvironmentId` QueueEnvironmentId ', [d.arg('QueueEnvironmentId', d.T.string)]),
    withQueueEnvironmentId(QueueEnvironmentId): {
      assert std.isString(QueueEnvironmentId) : 'QueueEnvironmentId must be a string',
      Properties+::: { QueueEnvironmentId: QueueEnvironmentId },
    },
  },
  QueueFleetAssociation: {
    '#': d.pkg(
      name='QueueFleetAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::QueueFleetAssociation Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::QueueFleetAssociation Resource
        * FarmId 
        * FleetId 
        * QueueId 
      |||,
      args=[
        d.arg('FarmId', 'd.T.string'),
        d.arg('FleetId', 'd.T.string'),
        d.arg('QueueId', 'd.T.string'),
      ]
    ),
    new(
      FarmId,
      FleetId,
      QueueId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FarmId) : 'FarmId must be a string',
        FarmId: FarmId,
        assert std.isString(FleetId) : 'FleetId must be a string',
        FleetId: FleetId,
        assert std.isString(QueueId) : 'QueueId must be a string',
        QueueId: QueueId,
      },
      DependsOn:: [],
      Type: 'AWS::Deadline::QueueFleetAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  StorageProfile: {
    '#': d.pkg(
      name='StorageProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Deadline.libsonnet',
      help='Definition of AWS::Deadline::StorageProfile Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Deadline::StorageProfile Resource
        * DisplayName 
        * FarmId 
        * OsFamily 
      |||,
      args=[
        d.arg('DisplayName', 'd.T.string'),
        d.arg('FarmId', 'd.T.string'),
        d.arg('OsFamily', 'd.T.string'),
      ]
    ),
    new(
      DisplayName,
      FarmId,
      OsFamily,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(FarmId) : 'FarmId must be a string',
        FarmId: FarmId,
        assert std.isString(OsFamily) : 'OsFamily must be a string',
        OsFamily: OsFamily,
      },
      DependsOn:: [],
      Type: 'AWS::Deadline::StorageProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFileSystemLocations': d.fn('`withFileSystemLocations` FileSystemLocations ', [d.arg('FileSystemLocations', d.T.array)]),
    withFileSystemLocations(FileSystemLocations): {
      assert std.isArray(FileSystemLocations) : 'FileSystemLocations must be a array',
      Properties+::: { FileSystemLocations: FileSystemLocations },
    },
    '#withStorageProfileId': d.fn('`withStorageProfileId` StorageProfileId ', [d.arg('StorageProfileId', d.T.string)]),
    withStorageProfileId(StorageProfileId): {
      assert std.isString(StorageProfileId) : 'StorageProfileId must be a string',
      Properties+::: { StorageProfileId: StorageProfileId },
    },
  },
}
