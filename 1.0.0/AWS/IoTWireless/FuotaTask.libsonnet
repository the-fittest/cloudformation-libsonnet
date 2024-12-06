{
  new(
    LoRaWAN,
    FirmwareUpdateImage,
    FirmwareUpdateRole,
  ): {
    local base = self,
    Properties: {
      LoRaWAN:
        if !std.isObject(LoRaWAN) then (error 'LoRaWAN must be an object')
        else if !std.objectHas(LoRaWAN, 'RfRegion') then (error ' have attribute RfRegion')
        else LoRaWAN,
      FirmwareUpdateImage:
        if !std.isString(FirmwareUpdateImage) then (error 'FirmwareUpdateImage must be a string')
        else if std.isEmpty(FirmwareUpdateImage) then (error 'FirmwareUpdateImage must be not empty')
        else if std.length(FirmwareUpdateImage) < 1 then error ('FirmwareUpdateImage should have at least 1 characters')
        else if std.length(FirmwareUpdateImage) > 2048 then error ('FirmwareUpdateImage should have not more than 2048 characters')
        else FirmwareUpdateImage,
      FirmwareUpdateRole:
        if !std.isString(FirmwareUpdateRole) then (error 'FirmwareUpdateRole must be a string')
        else if std.isEmpty(FirmwareUpdateRole) then (error 'FirmwareUpdateRole must be not empty')
        else if std.length(FirmwareUpdateRole) < 1 then error ('FirmwareUpdateRole should have at least 1 characters')
        else if std.length(FirmwareUpdateRole) > 256 then error ('FirmwareUpdateRole should have not more than 256 characters')
        else FirmwareUpdateRole,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTWireless::FuotaTask',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 256 then error ('Name should have not more than 256 characters')
        else Name,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) > 256 then error ('Id should have not more than 256 characters')
        else Id,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setFuotaTaskStatus(FuotaTaskStatus): {
    Properties+::: {
      FuotaTaskStatus:
        if !std.isString(FuotaTaskStatus) then (error 'FuotaTaskStatus must be a string')
        else if std.isEmpty(FuotaTaskStatus) then (error 'FuotaTaskStatus must be not empty')
        else FuotaTaskStatus,
    },
  },
  setAssociateWirelessDevice(AssociateWirelessDevice): {
    Properties+::: {
      AssociateWirelessDevice:
        if !std.isString(AssociateWirelessDevice) then (error 'AssociateWirelessDevice must be a string')
        else if std.isEmpty(AssociateWirelessDevice) then (error 'AssociateWirelessDevice must be not empty')
        else if std.length(AssociateWirelessDevice) > 256 then error ('AssociateWirelessDevice should have not more than 256 characters')
        else AssociateWirelessDevice,
    },
  },
  setDisassociateWirelessDevice(DisassociateWirelessDevice): {
    Properties+::: {
      DisassociateWirelessDevice:
        if !std.isString(DisassociateWirelessDevice) then (error 'DisassociateWirelessDevice must be a string')
        else if std.isEmpty(DisassociateWirelessDevice) then (error 'DisassociateWirelessDevice must be not empty')
        else if std.length(DisassociateWirelessDevice) > 256 then error ('DisassociateWirelessDevice should have not more than 256 characters')
        else DisassociateWirelessDevice,
    },
  },
  setAssociateMulticastGroup(AssociateMulticastGroup): {
    Properties+::: {
      AssociateMulticastGroup:
        if !std.isString(AssociateMulticastGroup) then (error 'AssociateMulticastGroup must be a string')
        else if std.isEmpty(AssociateMulticastGroup) then (error 'AssociateMulticastGroup must be not empty')
        else if std.length(AssociateMulticastGroup) > 256 then error ('AssociateMulticastGroup should have not more than 256 characters')
        else AssociateMulticastGroup,
    },
  },
  setDisassociateMulticastGroup(DisassociateMulticastGroup): {
    Properties+::: {
      DisassociateMulticastGroup:
        if !std.isString(DisassociateMulticastGroup) then (error 'DisassociateMulticastGroup must be a string')
        else if std.isEmpty(DisassociateMulticastGroup) then (error 'DisassociateMulticastGroup must be not empty')
        else if std.length(DisassociateMulticastGroup) > 256 then error ('DisassociateMulticastGroup should have not more than 256 characters')
        else DisassociateMulticastGroup,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
