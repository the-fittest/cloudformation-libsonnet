{
  new(
    LoRaWAN,
  ): {
    local base = self,
    Properties: {
      LoRaWAN:
        if !std.isObject(LoRaWAN) then (error 'LoRaWAN must be an object')
        else if !std.objectHas(LoRaWAN, 'RfRegion') then (error ' have attribute RfRegion')
        else if !std.objectHas(LoRaWAN, 'DlClass') then (error ' have attribute DlClass')
        else LoRaWAN,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTWireless::MulticastGroup',
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
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
