{
  new(
    DiskName,
    SizeInGb,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DiskName) : 'DiskName must be a string',
      DiskName: DiskName,
      assert std.isNumber(SizeInGb) : 'SizeInGb must be a number',
      SizeInGb: SizeInGb,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Disk',
  },
  withDiskArn(DiskArn): {
    assert std.isString(DiskArn) : 'DiskArn must be a string',
    Properties+::: {
      DiskArn: DiskArn,
    },
  },
  withSupportCode(SupportCode): {
    assert std.isString(SupportCode) : 'SupportCode must be a string',
    Properties+::: {
      SupportCode: SupportCode,
    },
  },
  withAvailabilityZone(AvailabilityZone): {
    assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
    Properties+::: {
      AvailabilityZone: AvailabilityZone,
    },
  },
  withLocation(Location): {
    assert std.isObject(Location) : 'Location must be a object',
    Properties+::: {
      Location: Location,
    },
  },
  withResourceType(ResourceType): {
    assert std.isString(ResourceType) : 'ResourceType must be a string',
    Properties+::: {
      ResourceType: ResourceType,
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
  withAddOns(AddOns): {
    Properties+::: {
      AddOns: (if std.isArray(AddOns) then AddOns else [AddOns]),
    },
  },
  withAddOnsMixin(AddOns): {
    Properties+::: {
      AddOns+: (if std.isArray(AddOns) then AddOns else [AddOns]),
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    Properties+::: {
      State: State,
    },
  },
  withAttachmentState(AttachmentState): {
    assert std.isString(AttachmentState) : 'AttachmentState must be a string',
    Properties+::: {
      AttachmentState: AttachmentState,
    },
  },
  withIops(Iops): {
    assert std.isNumber(Iops) : 'Iops must be a number',
    Properties+::: {
      Iops: Iops,
    },
  },
  withIsAttached(IsAttached): {
    assert std.isBoolean(IsAttached) : 'IsAttached must be a boolean',
    Properties+::: {
      IsAttached: IsAttached,
    },
  },
  withPath(Path): {
    assert std.isString(Path) : 'Path must be a string',
    Properties+::: {
      Path: Path,
    },
  },
  withAttachedTo(AttachedTo): {
    assert std.isString(AttachedTo) : 'AttachedTo must be a string',
    Properties+::: {
      AttachedTo: AttachedTo,
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
