{
  new(
    LoRaWAN,
    FirmwareUpdateImage,
    FirmwareUpdateRole,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(LoRaWAN) : 'LoRaWAN must be an object',
      LoRaWAN: LoRaWAN,
      assert std.isString(FirmwareUpdateImage) : 'FirmwareUpdateImage must be a string',
      FirmwareUpdateImage: FirmwareUpdateImage,
      assert std.isString(FirmwareUpdateRole) : 'FirmwareUpdateRole must be a string',
      FirmwareUpdateRole: FirmwareUpdateRole,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTWireless::FuotaTask',
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
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
  withFuotaTaskStatus(FuotaTaskStatus): {
    assert std.isString(FuotaTaskStatus) : 'FuotaTaskStatus must be a string',
    Properties+::: {
      FuotaTaskStatus: FuotaTaskStatus,
    },
  },
  withAssociateWirelessDevice(AssociateWirelessDevice): {
    assert std.isString(AssociateWirelessDevice) : 'AssociateWirelessDevice must be a string',
    Properties+::: {
      AssociateWirelessDevice: AssociateWirelessDevice,
    },
  },
  withDisassociateWirelessDevice(DisassociateWirelessDevice): {
    assert std.isString(DisassociateWirelessDevice) : 'DisassociateWirelessDevice must be a string',
    Properties+::: {
      DisassociateWirelessDevice: DisassociateWirelessDevice,
    },
  },
  withAssociateMulticastGroup(AssociateMulticastGroup): {
    assert std.isString(AssociateMulticastGroup) : 'AssociateMulticastGroup must be a string',
    Properties+::: {
      AssociateMulticastGroup: AssociateMulticastGroup,
    },
  },
  withDisassociateMulticastGroup(DisassociateMulticastGroup): {
    assert std.isString(DisassociateMulticastGroup) : 'DisassociateMulticastGroup must be a string',
    Properties+::: {
      DisassociateMulticastGroup: DisassociateMulticastGroup,
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
