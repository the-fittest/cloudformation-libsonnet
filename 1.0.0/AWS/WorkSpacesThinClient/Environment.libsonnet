{
  new(
    DesktopArn,
  ): {
    local base = self,
    Properties: {
      DesktopArn:
        if !std.isString(DesktopArn) then (error 'DesktopArn must be a string')
        else if std.isEmpty(DesktopArn) then (error 'DesktopArn must be not empty')
        else if std.length(DesktopArn) < 20 then error ('DesktopArn should have at least 20 characters')
        else if std.length(DesktopArn) > 2048 then error ('DesktopArn should have not more than 2048 characters')
        else DesktopArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesThinClient::Environment',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
  },
  setDesktopEndpoint(DesktopEndpoint): {
    Properties+::: {
      DesktopEndpoint:
        if !std.isString(DesktopEndpoint) then (error 'DesktopEndpoint must be a string')
        else if std.isEmpty(DesktopEndpoint) then (error 'DesktopEndpoint must be not empty')
        else if std.length(DesktopEndpoint) < 1 then error ('DesktopEndpoint should have at least 1 characters')
        else if std.length(DesktopEndpoint) > 1024 then error ('DesktopEndpoint should have not more than 1024 characters')
        else DesktopEndpoint,
    },
  },
  setDesktopType(DesktopType): {
    Properties+::: {
      DesktopType:
        if !std.isString(DesktopType) then (error 'DesktopType must be a string')
        else if std.isEmpty(DesktopType) then (error 'DesktopType must be not empty')
        else if DesktopType != 'workspaces' && DesktopType != 'appstream' && DesktopType != 'workspaces-web' then (error "DesktopType should be 'workspaces' or 'appstream' or 'workspaces-web'")
        else DesktopType,
    },
  },
  setActivationCode(ActivationCode): {
    Properties+::: {
      ActivationCode:
        if !std.isString(ActivationCode) then (error 'ActivationCode must be a string')
        else if std.isEmpty(ActivationCode) then (error 'ActivationCode must be not empty')
        else ActivationCode,
    },
  },
  setRegisteredDevicesCount(RegisteredDevicesCount): {
    Properties+::: {
      RegisteredDevicesCount:
        if !std.isNumber(RegisteredDevicesCount) then (error 'RegisteredDevicesCount must be an number')
        else RegisteredDevicesCount,
    },
  },
  setSoftwareSetUpdateSchedule(SoftwareSetUpdateSchedule): {
    Properties+::: {
      SoftwareSetUpdateSchedule:
        if !std.isString(SoftwareSetUpdateSchedule) then (error 'SoftwareSetUpdateSchedule must be a string')
        else if std.isEmpty(SoftwareSetUpdateSchedule) then (error 'SoftwareSetUpdateSchedule must be not empty')
        else if SoftwareSetUpdateSchedule != 'USE_MAINTENANCE_WINDOW' && SoftwareSetUpdateSchedule != 'APPLY_IMMEDIATELY' then (error "SoftwareSetUpdateSchedule should be 'USE_MAINTENANCE_WINDOW' or 'APPLY_IMMEDIATELY'")
        else SoftwareSetUpdateSchedule,
    },
  },
  setMaintenanceWindow(MaintenanceWindow): {
    Properties+::: {
      MaintenanceWindow:
        if !std.isObject(MaintenanceWindow) then (error 'MaintenanceWindow must be an object')
        else if !std.objectHas(MaintenanceWindow, 'Type') then (error ' have attribute Type')
        else MaintenanceWindow,
    },
  },
  setSoftwareSetUpdateMode(SoftwareSetUpdateMode): {
    Properties+::: {
      SoftwareSetUpdateMode:
        if !std.isString(SoftwareSetUpdateMode) then (error 'SoftwareSetUpdateMode must be a string')
        else if std.isEmpty(SoftwareSetUpdateMode) then (error 'SoftwareSetUpdateMode must be not empty')
        else if SoftwareSetUpdateMode != 'USE_LATEST' && SoftwareSetUpdateMode != 'USE_DESIRED' then (error "SoftwareSetUpdateMode should be 'USE_LATEST' or 'USE_DESIRED'")
        else SoftwareSetUpdateMode,
    },
  },
  setDesiredSoftwareSetId(DesiredSoftwareSetId): {
    Properties+::: {
      DesiredSoftwareSetId:
        if !std.isString(DesiredSoftwareSetId) then (error 'DesiredSoftwareSetId must be a string')
        else if std.isEmpty(DesiredSoftwareSetId) then (error 'DesiredSoftwareSetId must be not empty')
        else DesiredSoftwareSetId,
    },
  },
  setPendingSoftwareSetId(PendingSoftwareSetId): {
    Properties+::: {
      PendingSoftwareSetId:
        if !std.isString(PendingSoftwareSetId) then (error 'PendingSoftwareSetId must be a string')
        else if std.isEmpty(PendingSoftwareSetId) then (error 'PendingSoftwareSetId must be not empty')
        else PendingSoftwareSetId,
    },
  },
  setPendingSoftwareSetVersion(PendingSoftwareSetVersion): {
    Properties+::: {
      PendingSoftwareSetVersion:
        if !std.isString(PendingSoftwareSetVersion) then (error 'PendingSoftwareSetVersion must be a string')
        else if std.isEmpty(PendingSoftwareSetVersion) then (error 'PendingSoftwareSetVersion must be not empty')
        else PendingSoftwareSetVersion,
    },
  },
  setSoftwareSetComplianceStatus(SoftwareSetComplianceStatus): {
    Properties+::: {
      SoftwareSetComplianceStatus:
        if !std.isString(SoftwareSetComplianceStatus) then (error 'SoftwareSetComplianceStatus must be a string')
        else if std.isEmpty(SoftwareSetComplianceStatus) then (error 'SoftwareSetComplianceStatus must be not empty')
        else if SoftwareSetComplianceStatus != 'COMPLIANT' && SoftwareSetComplianceStatus != 'NOT_COMPLIANT' && SoftwareSetComplianceStatus != 'NO_REGISTERED_DEVICES' then (error "SoftwareSetComplianceStatus should be 'COMPLIANT' or 'NOT_COMPLIANT' or 'NO_REGISTERED_DEVICES'")
        else SoftwareSetComplianceStatus,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 20 then error ('KmsKeyArn should have at least 20 characters')
        else if std.length(KmsKeyArn) > 2048 then error ('KmsKeyArn should have not more than 2048 characters')
        else KmsKeyArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDeviceCreationTags(DeviceCreationTags): {
    Properties+::: {
      DeviceCreationTags:
        if !std.isArray(DeviceCreationTags) then (error 'DeviceCreationTags must be an array')
        else if std.length(DeviceCreationTags) > 50 then error ('DeviceCreationTags cannot have more than 50 items')
        else DeviceCreationTags,
    },
  },
  setDeviceCreationTagsMixin(DeviceCreationTags): {
    Properties+::: {
      DeviceCreationTags+: DeviceCreationTags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
