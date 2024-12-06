{
  new(
    DiskName,
    SizeInGb,
  ): {
    local base = self,
    Properties: {
      DiskName:
        if !std.isString(DiskName) then (error 'DiskName must be a string')
        else if std.isEmpty(DiskName) then (error 'DiskName must be not empty')
        else if std.length(DiskName) < 1 then error ('DiskName should have at least 1 characters')
        else if std.length(DiskName) > 254 then error ('DiskName should have not more than 254 characters')
        else DiskName,
      SizeInGb:
        if !std.isNumber(SizeInGb) then (error 'SizeInGb must be an number')
        else SizeInGb,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Disk',
  },
  setDiskArn(DiskArn): {
    Properties+::: {
      DiskArn:
        if !std.isString(DiskArn) then (error 'DiskArn must be a string')
        else if std.isEmpty(DiskArn) then (error 'DiskArn must be not empty')
        else DiskArn,
    },
  },
  setSupportCode(SupportCode): {
    Properties+::: {
      SupportCode:
        if !std.isString(SupportCode) then (error 'SupportCode must be a string')
        else if std.isEmpty(SupportCode) then (error 'SupportCode must be not empty')
        else SupportCode,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else if std.length(AvailabilityZone) < 1 then error ('AvailabilityZone should have at least 1 characters')
        else if std.length(AvailabilityZone) > 255 then error ('AvailabilityZone should have not more than 255 characters')
        else AvailabilityZone,
    },
  },
  setLocation(Location): {
    Properties+::: {
      Location:
        if !std.isObject(Location) then (error 'Location must be an object')
        else Location,
    },
  },
  setResourceType(ResourceType): {
    Properties+::: {
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else ResourceType,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setAddOns(AddOns): {
    Properties+::: {
      AddOns:
        if !std.isArray(AddOns) then (error 'AddOns must be an array')
        else AddOns,
    },
  },
  pushAddOns(AddOns): {
    Properties+::: {
      AddOns+: AddOns,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
    },
  },
  setAttachmentState(AttachmentState): {
    Properties+::: {
      AttachmentState:
        if !std.isString(AttachmentState) then (error 'AttachmentState must be a string')
        else if std.isEmpty(AttachmentState) then (error 'AttachmentState must be not empty')
        else AttachmentState,
    },
  },
  setIops(Iops): {
    Properties+::: {
      Iops:
        if !std.isNumber(Iops) then (error 'Iops must be an number')
        else Iops,
    },
  },
  setIsAttached(IsAttached): {
    Properties+::: {
      IsAttached:
        if !std.isBoolean(IsAttached) then (error 'IsAttached must be a boolean') else IsAttached,
    },
  },
  setPath(Path): {
    Properties+::: {
      Path:
        if !std.isString(Path) then (error 'Path must be a string')
        else if std.isEmpty(Path) then (error 'Path must be not empty')
        else Path,
    },
  },
  setAttachedTo(AttachedTo): {
    Properties+::: {
      AttachedTo:
        if !std.isString(AttachedTo) then (error 'AttachedTo must be a string')
        else if std.isEmpty(AttachedTo) then (error 'AttachedTo must be not empty')
        else AttachedTo,
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
