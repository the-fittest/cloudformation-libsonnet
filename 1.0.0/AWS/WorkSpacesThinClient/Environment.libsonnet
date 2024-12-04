{
  new(
    DesktopArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DesktopArn) : 'DesktopArn must be a string',
      DesktopArn: DesktopArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesThinClient::Environment',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withDesktopEndpoint(DesktopEndpoint): {
    assert std.isString(DesktopEndpoint) : 'DesktopEndpoint must be a string',
    Properties+::: {
      DesktopEndpoint: DesktopEndpoint,
    },
  },
  withDesktopType(DesktopType): {
    assert std.isString(DesktopType) : 'DesktopType must be a string',
    Properties+::: {
      DesktopType: DesktopType,
    },
  },
  withActivationCode(ActivationCode): {
    assert std.isString(ActivationCode) : 'ActivationCode must be a string',
    Properties+::: {
      ActivationCode: ActivationCode,
    },
  },
  withRegisteredDevicesCount(RegisteredDevicesCount): {
    assert std.isNumber(RegisteredDevicesCount) : 'RegisteredDevicesCount must be a number',
    Properties+::: {
      RegisteredDevicesCount: RegisteredDevicesCount,
    },
  },
  withSoftwareSetUpdateSchedule(SoftwareSetUpdateSchedule): {
    assert std.isString(SoftwareSetUpdateSchedule) : 'SoftwareSetUpdateSchedule must be a string',
    Properties+::: {
      SoftwareSetUpdateSchedule: SoftwareSetUpdateSchedule,
    },
  },
  withMaintenanceWindow(MaintenanceWindow): {
    assert std.isObject(MaintenanceWindow) : 'MaintenanceWindow must be a object',
    Properties+::: {
      MaintenanceWindow: MaintenanceWindow,
    },
  },
  withSoftwareSetUpdateMode(SoftwareSetUpdateMode): {
    assert std.isString(SoftwareSetUpdateMode) : 'SoftwareSetUpdateMode must be a string',
    Properties+::: {
      SoftwareSetUpdateMode: SoftwareSetUpdateMode,
    },
  },
  withDesiredSoftwareSetId(DesiredSoftwareSetId): {
    assert std.isString(DesiredSoftwareSetId) : 'DesiredSoftwareSetId must be a string',
    Properties+::: {
      DesiredSoftwareSetId: DesiredSoftwareSetId,
    },
  },
  withPendingSoftwareSetId(PendingSoftwareSetId): {
    assert std.isString(PendingSoftwareSetId) : 'PendingSoftwareSetId must be a string',
    Properties+::: {
      PendingSoftwareSetId: PendingSoftwareSetId,
    },
  },
  withPendingSoftwareSetVersion(PendingSoftwareSetVersion): {
    assert std.isString(PendingSoftwareSetVersion) : 'PendingSoftwareSetVersion must be a string',
    Properties+::: {
      PendingSoftwareSetVersion: PendingSoftwareSetVersion,
    },
  },
  withSoftwareSetComplianceStatus(SoftwareSetComplianceStatus): {
    assert std.isString(SoftwareSetComplianceStatus) : 'SoftwareSetComplianceStatus must be a string',
    Properties+::: {
      SoftwareSetComplianceStatus: SoftwareSetComplianceStatus,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withUpdatedAt(UpdatedAt): {
    assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
    Properties+::: {
      UpdatedAt: UpdatedAt,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withKmsKeyArn(KmsKeyArn): {
    assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
    Properties+::: {
      KmsKeyArn: KmsKeyArn,
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
  withDeviceCreationTags(DeviceCreationTags): {
    Properties+::: {
      DeviceCreationTags: (if std.isArray(DeviceCreationTags) then DeviceCreationTags else [DeviceCreationTags]),
    },
  },
  withDeviceCreationTagsMixin(DeviceCreationTags): {
    Properties+::: {
      DeviceCreationTags+: (if std.isArray(DeviceCreationTags) then DeviceCreationTags else [DeviceCreationTags]),
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
