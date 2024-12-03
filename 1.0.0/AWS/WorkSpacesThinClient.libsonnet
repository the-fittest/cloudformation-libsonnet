local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Environment: {
    '#': d.pkg(
      name='Environment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesThinClient.libsonnet',
      help='Resource type definition for AWS::WorkSpacesThinClient::Environment.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesThinClient::Environment Resource
        * DesktopArn The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Web, or AppStream 2.0.
      |||,
      args=[
        d.arg('DesktopArn', 'd.T.string'),
      ]
    ),
    new(
      DesktopArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DesktopArn) : 'DesktopArn must be a string',
        DesktopArn: DesktopArn,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpacesThinClient::Environment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDesktopEndpoint': d.fn('`withDesktopEndpoint` DesktopEndpoint ', [d.arg('DesktopEndpoint', d.T.string)]),
    withDesktopEndpoint(DesktopEndpoint): {
      assert std.isString(DesktopEndpoint) : 'DesktopEndpoint must be a string',
      Properties+::: { DesktopEndpoint: DesktopEndpoint },
    },
    '#withDesktopType': d.fn('`withDesktopType` DesktopType ', [d.arg('DesktopType', d.T.string)]),
    withDesktopType(DesktopType): {
      assert std.isString(DesktopType) : 'DesktopType must be a string',
      assert DesktopType == 'workspaces' || DesktopType == 'appstream' || DesktopType == 'workspaces-web' : "DesktopType must be either 'workspaces' or 'appstream' or 'workspaces-web'",
      Properties+::: { DesktopType: DesktopType },
    },
    '#withActivationCode': d.fn('`withActivationCode` ActivationCode ', [d.arg('ActivationCode', d.T.string)]),
    withActivationCode(ActivationCode): {
      assert std.isString(ActivationCode) : 'ActivationCode must be a string',
      Properties+::: { ActivationCode: ActivationCode },
    },
    '#withRegisteredDevicesCount': d.fn('`withRegisteredDevicesCount` RegisteredDevicesCount ', [d.arg('RegisteredDevicesCount', d.T.integer)]),
    withRegisteredDevicesCount(RegisteredDevicesCount): {
      assert std.isNumber(RegisteredDevicesCount) : 'RegisteredDevicesCount must be a integer',
      Properties+::: { RegisteredDevicesCount: RegisteredDevicesCount },
    },
    '#withSoftwareSetUpdateSchedule': d.fn('`withSoftwareSetUpdateSchedule` SoftwareSetUpdateSchedule ', [d.arg('SoftwareSetUpdateSchedule', d.T.string)]),
    withSoftwareSetUpdateSchedule(SoftwareSetUpdateSchedule): {
      assert std.isString(SoftwareSetUpdateSchedule) : 'SoftwareSetUpdateSchedule must be a string',
      assert SoftwareSetUpdateSchedule == 'USE_MAINTENANCE_WINDOW' || SoftwareSetUpdateSchedule == 'APPLY_IMMEDIATELY' : "SoftwareSetUpdateSchedule must be either 'USE_MAINTENANCE_WINDOW' or 'APPLY_IMMEDIATELY'",
      Properties+::: { SoftwareSetUpdateSchedule: SoftwareSetUpdateSchedule },
    },
    '#withMaintenanceWindow': d.fn('`withMaintenanceWindow` MaintenanceWindow ', [d.arg('MaintenanceWindow', d.T.object)]),
    withMaintenanceWindow(MaintenanceWindow): {
      assert std.isObject(MaintenanceWindow) : 'MaintenanceWindow must be a object',
      Properties+::: { MaintenanceWindow: MaintenanceWindow },
    },
    '#withSoftwareSetUpdateMode': d.fn('`withSoftwareSetUpdateMode` SoftwareSetUpdateMode ', [d.arg('SoftwareSetUpdateMode', d.T.string)]),
    withSoftwareSetUpdateMode(SoftwareSetUpdateMode): {
      assert std.isString(SoftwareSetUpdateMode) : 'SoftwareSetUpdateMode must be a string',
      assert SoftwareSetUpdateMode == 'USE_LATEST' || SoftwareSetUpdateMode == 'USE_DESIRED' : "SoftwareSetUpdateMode must be either 'USE_LATEST' or 'USE_DESIRED'",
      Properties+::: { SoftwareSetUpdateMode: SoftwareSetUpdateMode },
    },
    '#withDesiredSoftwareSetId': d.fn('`withDesiredSoftwareSetId` DesiredSoftwareSetId ', [d.arg('DesiredSoftwareSetId', d.T.string)]),
    withDesiredSoftwareSetId(DesiredSoftwareSetId): {
      assert std.isString(DesiredSoftwareSetId) : 'DesiredSoftwareSetId must be a string',
      Properties+::: { DesiredSoftwareSetId: DesiredSoftwareSetId },
    },
    '#withPendingSoftwareSetId': d.fn('`withPendingSoftwareSetId` PendingSoftwareSetId ', [d.arg('PendingSoftwareSetId', d.T.string)]),
    withPendingSoftwareSetId(PendingSoftwareSetId): {
      assert std.isString(PendingSoftwareSetId) : 'PendingSoftwareSetId must be a string',
      Properties+::: { PendingSoftwareSetId: PendingSoftwareSetId },
    },
    '#withPendingSoftwareSetVersion': d.fn('`withPendingSoftwareSetVersion` PendingSoftwareSetVersion ', [d.arg('PendingSoftwareSetVersion', d.T.string)]),
    withPendingSoftwareSetVersion(PendingSoftwareSetVersion): {
      assert std.isString(PendingSoftwareSetVersion) : 'PendingSoftwareSetVersion must be a string',
      Properties+::: { PendingSoftwareSetVersion: PendingSoftwareSetVersion },
    },
    '#withSoftwareSetComplianceStatus': d.fn('`withSoftwareSetComplianceStatus` SoftwareSetComplianceStatus ', [d.arg('SoftwareSetComplianceStatus', d.T.string)]),
    withSoftwareSetComplianceStatus(SoftwareSetComplianceStatus): {
      assert std.isString(SoftwareSetComplianceStatus) : 'SoftwareSetComplianceStatus must be a string',
      assert SoftwareSetComplianceStatus == 'COMPLIANT' || SoftwareSetComplianceStatus == 'NOT_COMPLIANT' || SoftwareSetComplianceStatus == 'NO_REGISTERED_DEVICES' : "SoftwareSetComplianceStatus must be either 'COMPLIANT' or 'NOT_COMPLIANT' or 'NO_REGISTERED_DEVICES'",
      Properties+::: { SoftwareSetComplianceStatus: SoftwareSetComplianceStatus },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDeviceCreationTags': d.fn('`withDeviceCreationTags` DeviceCreationTags ', [d.arg('DeviceCreationTags', d.T.array)]),
    withDeviceCreationTags(DeviceCreationTags): {
      assert std.isArray(DeviceCreationTags) : 'DeviceCreationTags must be a array',
      Properties+::: { DeviceCreationTags: DeviceCreationTags },
    },
  },
}
