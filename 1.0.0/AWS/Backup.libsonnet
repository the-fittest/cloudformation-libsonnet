local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  BackupPlan: {
    '#': d.pkg(
      name='BackupPlan',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Backup.libsonnet',
      help='Resource Type definition for AWS::Backup::BackupPlan',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Backup::BackupPlan Resource
        * BackupPlan 
      |||,
      args=[
        d.arg('BackupPlan', 'd.T.object'),
      ]
    ),
    new(
      BackupPlan,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(BackupPlan) : 'BackupPlan must be a object',
        BackupPlan: BackupPlan,
      },
      DependsOn:: [],
      Type: 'AWS::Backup::BackupPlan',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBackupPlanTags': d.fn('`withBackupPlanTags` BackupPlanTags ', [d.arg('BackupPlanTags', d.T.object)]),
    withBackupPlanTags(BackupPlanTags): {
      assert std.isObject(BackupPlanTags) : 'BackupPlanTags must be a object',
      Properties+::: { BackupPlanTags: BackupPlanTags },
    },
    '#withBackupPlanArn': d.fn('`withBackupPlanArn` BackupPlanArn ', [d.arg('BackupPlanArn', d.T.string)]),
    withBackupPlanArn(BackupPlanArn): {
      assert std.isString(BackupPlanArn) : 'BackupPlanArn must be a string',
      Properties+::: { BackupPlanArn: BackupPlanArn },
    },
    '#withBackupPlanId': d.fn('`withBackupPlanId` BackupPlanId ', [d.arg('BackupPlanId', d.T.string)]),
    withBackupPlanId(BackupPlanId): {
      assert std.isString(BackupPlanId) : 'BackupPlanId must be a string',
      Properties+::: { BackupPlanId: BackupPlanId },
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
  },
  BackupSelection: {
    '#': d.pkg(
      name='BackupSelection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Backup.libsonnet',
      help='Resource Type definition for AWS::Backup::BackupSelection',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Backup::BackupSelection Resource
        * BackupSelection 
        * BackupPlanId 
      |||,
      args=[
        d.arg('BackupSelection', 'd.T.object'),
        d.arg('BackupPlanId', 'd.T.string'),
      ]
    ),
    new(
      BackupSelection,
      BackupPlanId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(BackupSelection) : 'BackupSelection must be a object',
        BackupSelection: BackupSelection,
        assert std.isString(BackupPlanId) : 'BackupPlanId must be a string',
        BackupPlanId: BackupPlanId,
      },
      DependsOn:: [],
      Type: 'AWS::Backup::BackupSelection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSelectionId': d.fn('`withSelectionId` SelectionId ', [d.arg('SelectionId', d.T.string)]),
    withSelectionId(SelectionId): {
      assert std.isString(SelectionId) : 'SelectionId must be a string',
      Properties+::: { SelectionId: SelectionId },
    },
  },
  BackupVault: {
    '#': d.pkg(
      name='BackupVault',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Backup.libsonnet',
      help='Resource Type definition for AWS::Backup::BackupVault',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Backup::BackupVault Resource
        * BackupVaultName 
      |||,
      args=[
        d.arg('BackupVaultName', 'd.T.string'),
      ]
    ),
    new(
      BackupVaultName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BackupVaultName) : 'BackupVaultName must be a string',
        BackupVaultName: BackupVaultName,
      },
      DependsOn:: [],
      Type: 'AWS::Backup::BackupVault',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessPolicy': d.fn('`withAccessPolicy` AccessPolicy ', [d.arg('AccessPolicy')]),
    withAccessPolicy(AccessPolicy): {
      // Type: object,string
      Properties+::: { AccessPolicy: AccessPolicy },
    },
    '#withBackupVaultTags': d.fn('`withBackupVaultTags` BackupVaultTags ', [d.arg('BackupVaultTags', d.T.object)]),
    withBackupVaultTags(BackupVaultTags): {
      assert std.isObject(BackupVaultTags) : 'BackupVaultTags must be a object',
      Properties+::: { BackupVaultTags: BackupVaultTags },
    },
    '#withEncryptionKeyArn': d.fn('`withEncryptionKeyArn` EncryptionKeyArn ', [d.arg('EncryptionKeyArn', d.T.string)]),
    withEncryptionKeyArn(EncryptionKeyArn): {
      assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
      Properties+::: { EncryptionKeyArn: EncryptionKeyArn },
    },
    '#withNotifications': d.fn('`withNotifications` Notifications ', [d.arg('Notifications', d.T.object)]),
    withNotifications(Notifications): {
      assert std.isObject(Notifications) : 'Notifications must be a object',
      Properties+::: { Notifications: Notifications },
    },
    '#withLockConfiguration': d.fn('`withLockConfiguration` LockConfiguration ', [d.arg('LockConfiguration', d.T.object)]),
    withLockConfiguration(LockConfiguration): {
      assert std.isObject(LockConfiguration) : 'LockConfiguration must be a object',
      Properties+::: { LockConfiguration: LockConfiguration },
    },
    '#withBackupVaultArn': d.fn('`withBackupVaultArn` BackupVaultArn ', [d.arg('BackupVaultArn', d.T.string)]),
    withBackupVaultArn(BackupVaultArn): {
      assert std.isString(BackupVaultArn) : 'BackupVaultArn must be a string',
      Properties+::: { BackupVaultArn: BackupVaultArn },
    },
  },
  Framework: {
    '#': d.pkg(
      name='Framework',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Backup.libsonnet',
      help='Contains detailed information about a framework. Frameworks contain controls, which evaluate and report on your backup events and resources. Frameworks generate daily compliance results.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Backup::Framework Resource
        * FrameworkControls Contains detailed information about all of the controls of a framework. Each framework must contain at least one control.
      |||,
      args=[
        d.arg('FrameworkControls', 'd.T.array'),
      ]
    ),
    new(
      FrameworkControls,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(FrameworkControls) : 'FrameworkControls must be a array',
        FrameworkControls: FrameworkControls,
      },
      DependsOn:: [],
      Type: 'AWS::Backup::Framework',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFrameworkName': d.fn('`withFrameworkName` FrameworkName ', [d.arg('FrameworkName', d.T.string)]),
    withFrameworkName(FrameworkName): {
      assert std.isString(FrameworkName) : 'FrameworkName must be a string',
      Properties+::: { FrameworkName: FrameworkName },
    },
    '#withFrameworkDescription': d.fn('`withFrameworkDescription` FrameworkDescription ', [d.arg('FrameworkDescription', d.T.string)]),
    withFrameworkDescription(FrameworkDescription): {
      assert std.isString(FrameworkDescription) : 'FrameworkDescription must be a string',
      Properties+::: { FrameworkDescription: FrameworkDescription },
    },
    '#withFrameworkArn': d.fn('`withFrameworkArn` FrameworkArn ', [d.arg('FrameworkArn', d.T.string)]),
    withFrameworkArn(FrameworkArn): {
      assert std.isString(FrameworkArn) : 'FrameworkArn must be a string',
      Properties+::: { FrameworkArn: FrameworkArn },
    },
    '#withDeploymentStatus': d.fn('`withDeploymentStatus` DeploymentStatus ', [d.arg('DeploymentStatus', d.T.string)]),
    withDeploymentStatus(DeploymentStatus): {
      assert std.isString(DeploymentStatus) : 'DeploymentStatus must be a string',
      Properties+::: { DeploymentStatus: DeploymentStatus },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withFrameworkStatus': d.fn('`withFrameworkStatus` FrameworkStatus ', [d.arg('FrameworkStatus', d.T.string)]),
    withFrameworkStatus(FrameworkStatus): {
      assert std.isString(FrameworkStatus) : 'FrameworkStatus must be a string',
      Properties+::: { FrameworkStatus: FrameworkStatus },
    },
    '#withFrameworkTags': d.fn('`withFrameworkTags` FrameworkTags ', [d.arg('FrameworkTags', d.T.array)]),
    withFrameworkTags(FrameworkTags): {
      assert std.isArray(FrameworkTags) : 'FrameworkTags must be a array',
      Properties+::: { FrameworkTags: FrameworkTags },
    },
  },
  LogicallyAirGappedBackupVault: {
    '#': d.pkg(
      name='LogicallyAirGappedBackupVault',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Backup.libsonnet',
      help='Resource Type definition for AWS::Backup::LogicallyAirGappedBackupVault',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Backup::LogicallyAirGappedBackupVault Resource
        * BackupVaultName 
        * MinRetentionDays 
        * MaxRetentionDays 
      |||,
      args=[
        d.arg('BackupVaultName', 'd.T.string'),
        d.arg('MinRetentionDays', 'd.T.integer'),
        d.arg('MaxRetentionDays', 'd.T.integer'),
      ]
    ),
    new(
      BackupVaultName,
      MinRetentionDays,
      MaxRetentionDays,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BackupVaultName) : 'BackupVaultName must be a string',
        BackupVaultName: BackupVaultName,
        assert std.isNumber(MinRetentionDays) : 'MinRetentionDays must be a integer',
        MinRetentionDays: MinRetentionDays,
        assert std.isNumber(MaxRetentionDays) : 'MaxRetentionDays must be a integer',
        MaxRetentionDays: MaxRetentionDays,
      },
      DependsOn:: [],
      Type: 'AWS::Backup::LogicallyAirGappedBackupVault',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessPolicy': d.fn('`withAccessPolicy` AccessPolicy ', [d.arg('AccessPolicy')]),
    withAccessPolicy(AccessPolicy): {
      // Type: object,string
      Properties+::: { AccessPolicy: AccessPolicy },
    },
    '#withBackupVaultTags': d.fn('`withBackupVaultTags` BackupVaultTags ', [d.arg('BackupVaultTags', d.T.object)]),
    withBackupVaultTags(BackupVaultTags): {
      assert std.isObject(BackupVaultTags) : 'BackupVaultTags must be a object',
      Properties+::: { BackupVaultTags: BackupVaultTags },
    },
    '#withNotifications': d.fn('`withNotifications` Notifications ', [d.arg('Notifications', d.T.object)]),
    withNotifications(Notifications): {
      assert std.isObject(Notifications) : 'Notifications must be a object',
      Properties+::: { Notifications: Notifications },
    },
    '#withEncryptionKeyArn': d.fn('`withEncryptionKeyArn` EncryptionKeyArn ', [d.arg('EncryptionKeyArn', d.T.string)]),
    withEncryptionKeyArn(EncryptionKeyArn): {
      assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
      Properties+::: { EncryptionKeyArn: EncryptionKeyArn },
    },
    '#withBackupVaultArn': d.fn('`withBackupVaultArn` BackupVaultArn ', [d.arg('BackupVaultArn', d.T.string)]),
    withBackupVaultArn(BackupVaultArn): {
      assert std.isString(BackupVaultArn) : 'BackupVaultArn must be a string',
      Properties+::: { BackupVaultArn: BackupVaultArn },
    },
    '#withVaultState': d.fn('`withVaultState` VaultState ', [d.arg('VaultState', d.T.string)]),
    withVaultState(VaultState): {
      assert std.isString(VaultState) : 'VaultState must be a string',
      Properties+::: { VaultState: VaultState },
    },
    '#withVaultType': d.fn('`withVaultType` VaultType ', [d.arg('VaultType', d.T.string)]),
    withVaultType(VaultType): {
      assert std.isString(VaultType) : 'VaultType must be a string',
      Properties+::: { VaultType: VaultType },
    },
  },
  ReportPlan: {
    '#': d.pkg(
      name='ReportPlan',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Backup.libsonnet',
      help='Contains detailed information about a report plan in AWS Backup Audit Manager.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Backup::ReportPlan Resource
        * ReportDeliveryChannel A structure that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports.
        * ReportSetting Identifies the report template for the report. Reports are built using a report template.
      |||,
      args=[
        d.arg('ReportDeliveryChannel', 'd.T.object'),
        d.arg('ReportSetting', 'd.T.object'),
      ]
    ),
    new(
      ReportDeliveryChannel,
      ReportSetting,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ReportDeliveryChannel) : 'ReportDeliveryChannel must be a object',
        ReportDeliveryChannel: ReportDeliveryChannel,
        assert std.isObject(ReportSetting) : 'ReportSetting must be a object',
        ReportSetting: ReportSetting,
      },
      DependsOn:: [],
      Type: 'AWS::Backup::ReportPlan',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withReportPlanName': d.fn('`withReportPlanName` ReportPlanName ', [d.arg('ReportPlanName', d.T.string)]),
    withReportPlanName(ReportPlanName): {
      assert std.isString(ReportPlanName) : 'ReportPlanName must be a string',
      Properties+::: { ReportPlanName: ReportPlanName },
    },
    '#withReportPlanArn': d.fn('`withReportPlanArn` ReportPlanArn ', [d.arg('ReportPlanArn', d.T.string)]),
    withReportPlanArn(ReportPlanArn): {
      assert std.isString(ReportPlanArn) : 'ReportPlanArn must be a string',
      Properties+::: { ReportPlanArn: ReportPlanArn },
    },
    '#withReportPlanDescription': d.fn('`withReportPlanDescription` ReportPlanDescription ', [d.arg('ReportPlanDescription', d.T.string)]),
    withReportPlanDescription(ReportPlanDescription): {
      assert std.isString(ReportPlanDescription) : 'ReportPlanDescription must be a string',
      Properties+::: { ReportPlanDescription: ReportPlanDescription },
    },
    '#withReportPlanTags': d.fn('`withReportPlanTags` ReportPlanTags ', [d.arg('ReportPlanTags', d.T.array)]),
    withReportPlanTags(ReportPlanTags): {
      assert std.isArray(ReportPlanTags) : 'ReportPlanTags must be a array',
      Properties+::: { ReportPlanTags: ReportPlanTags },
    },
  },
  RestoreTestingPlan: {
    '#': d.pkg(
      name='RestoreTestingPlan',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Backup.libsonnet',
      help='Definition of AWS::Backup::RestoreTestingPlan Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Backup::RestoreTestingPlan Resource
        * RecoveryPointSelection 
        * ScheduleExpression 
        * RestoreTestingPlanName 
      |||,
      args=[
        d.arg('RecoveryPointSelection', 'd.T.object'),
        d.arg('ScheduleExpression', 'd.T.string'),
        d.arg('RestoreTestingPlanName', 'd.T.string'),
      ]
    ),
    new(
      RecoveryPointSelection,
      ScheduleExpression,
      RestoreTestingPlanName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(RecoveryPointSelection) : 'RecoveryPointSelection must be a object',
        RecoveryPointSelection: RecoveryPointSelection,
        assert std.isString(ScheduleExpression) : 'ScheduleExpression must be a string',
        ScheduleExpression: ScheduleExpression,
        assert std.isString(RestoreTestingPlanName) : 'RestoreTestingPlanName must be a string',
        RestoreTestingPlanName: RestoreTestingPlanName,
      },
      DependsOn:: [],
      Type: 'AWS::Backup::RestoreTestingPlan',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRestoreTestingPlanArn': d.fn('`withRestoreTestingPlanArn` RestoreTestingPlanArn ', [d.arg('RestoreTestingPlanArn', d.T.string)]),
    withRestoreTestingPlanArn(RestoreTestingPlanArn): {
      assert std.isString(RestoreTestingPlanArn) : 'RestoreTestingPlanArn must be a string',
      Properties+::: { RestoreTestingPlanArn: RestoreTestingPlanArn },
    },
    '#withScheduleExpressionTimezone': d.fn('`withScheduleExpressionTimezone` ScheduleExpressionTimezone ', [d.arg('ScheduleExpressionTimezone', d.T.string)]),
    withScheduleExpressionTimezone(ScheduleExpressionTimezone): {
      assert std.isString(ScheduleExpressionTimezone) : 'ScheduleExpressionTimezone must be a string',
      Properties+::: { ScheduleExpressionTimezone: ScheduleExpressionTimezone },
    },
    '#withScheduleStatus': d.fn('`withScheduleStatus` ScheduleStatus ', [d.arg('ScheduleStatus', d.T.string)]),
    withScheduleStatus(ScheduleStatus): {
      assert std.isString(ScheduleStatus) : 'ScheduleStatus must be a string',
      Properties+::: { ScheduleStatus: ScheduleStatus },
    },
    '#withStartWindowHours': d.fn('`withStartWindowHours` StartWindowHours ', [d.arg('StartWindowHours', d.T.integer)]),
    withStartWindowHours(StartWindowHours): {
      assert std.isNumber(StartWindowHours) : 'StartWindowHours must be a integer',
      Properties+::: { StartWindowHours: StartWindowHours },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  RestoreTestingSelection: {
    '#': d.pkg(
      name='RestoreTestingSelection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Backup.libsonnet',
      help='Resource Type definition for AWS::Backup::RestoreTestingSelection',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Backup::RestoreTestingSelection Resource
        * IamRoleArn 
        * ProtectedResourceType 
        * RestoreTestingPlanName 
        * RestoreTestingSelectionName 
      |||,
      args=[
        d.arg('IamRoleArn', 'd.T.string'),
        d.arg('ProtectedResourceType', 'd.T.string'),
        d.arg('RestoreTestingPlanName', 'd.T.string'),
        d.arg('RestoreTestingSelectionName', 'd.T.string'),
      ]
    ),
    new(
      IamRoleArn,
      ProtectedResourceType,
      RestoreTestingPlanName,
      RestoreTestingSelectionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
        IamRoleArn: IamRoleArn,
        assert std.isString(ProtectedResourceType) : 'ProtectedResourceType must be a string',
        ProtectedResourceType: ProtectedResourceType,
        assert std.isString(RestoreTestingPlanName) : 'RestoreTestingPlanName must be a string',
        RestoreTestingPlanName: RestoreTestingPlanName,
        assert std.isString(RestoreTestingSelectionName) : 'RestoreTestingSelectionName must be a string',
        RestoreTestingSelectionName: RestoreTestingSelectionName,
      },
      DependsOn:: [],
      Type: 'AWS::Backup::RestoreTestingSelection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProtectedResourceArns': d.fn('`withProtectedResourceArns` ProtectedResourceArns ', [d.arg('ProtectedResourceArns', d.T.array)]),
    withProtectedResourceArns(ProtectedResourceArns): {
      assert std.isArray(ProtectedResourceArns) : 'ProtectedResourceArns must be a array',
      Properties+::: { ProtectedResourceArns: ProtectedResourceArns },
    },
    '#withProtectedResourceConditions': d.fn('`withProtectedResourceConditions` ProtectedResourceConditions ', [d.arg('ProtectedResourceConditions', d.T.object)]),
    withProtectedResourceConditions(ProtectedResourceConditions): {
      assert std.isObject(ProtectedResourceConditions) : 'ProtectedResourceConditions must be a object',
      Properties+::: { ProtectedResourceConditions: ProtectedResourceConditions },
    },
    '#withRestoreMetadataOverrides': d.fn('`withRestoreMetadataOverrides` RestoreMetadataOverrides ', [d.arg('RestoreMetadataOverrides', d.T.object)]),
    withRestoreMetadataOverrides(RestoreMetadataOverrides): {
      assert std.isObject(RestoreMetadataOverrides) : 'RestoreMetadataOverrides must be a object',
      Properties+::: { RestoreMetadataOverrides: RestoreMetadataOverrides },
    },
    '#withValidationWindowHours': d.fn('`withValidationWindowHours` ValidationWindowHours ', [d.arg('ValidationWindowHours', d.T.integer)]),
    withValidationWindowHours(ValidationWindowHours): {
      assert std.isNumber(ValidationWindowHours) : 'ValidationWindowHours must be a integer',
      Properties+::: { ValidationWindowHours: ValidationWindowHours },
    },
  },
}
