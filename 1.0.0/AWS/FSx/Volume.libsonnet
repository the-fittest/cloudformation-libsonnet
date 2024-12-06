{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::FSx::Volume',
  },
  setOpenZFSConfiguration(OpenZFSConfiguration): {
    Properties+::: {
      OpenZFSConfiguration:
        if !std.isObject(OpenZFSConfiguration) then (error 'OpenZFSConfiguration must be an object')
        else if !std.objectHas(OpenZFSConfiguration, 'ParentVolumeId') then (error ' have attribute ParentVolumeId')
        else OpenZFSConfiguration,
    },
  },
  setResourceARN(ResourceARN): {
    Properties+::: {
      ResourceARN:
        if !std.isString(ResourceARN) then (error 'ResourceARN must be a string')
        else if std.isEmpty(ResourceARN) then (error 'ResourceARN must be not empty')
        else ResourceARN,
    },
  },
  setVolumeId(VolumeId): {
    Properties+::: {
      VolumeId:
        if !std.isString(VolumeId) then (error 'VolumeId must be a string')
        else if std.isEmpty(VolumeId) then (error 'VolumeId must be not empty')
        else VolumeId,
    },
  },
  setVolumeType(VolumeType): {
    Properties+::: {
      VolumeType:
        if !std.isString(VolumeType) then (error 'VolumeType must be a string')
        else if std.isEmpty(VolumeType) then (error 'VolumeType must be not empty')
        else VolumeType,
    },
  },
  setBackupId(BackupId): {
    Properties+::: {
      BackupId:
        if !std.isString(BackupId) then (error 'BackupId must be a string')
        else if std.isEmpty(BackupId) then (error 'BackupId must be not empty')
        else BackupId,
    },
  },
  setOntapConfiguration(OntapConfiguration): {
    Properties+::: {
      OntapConfiguration:
        if !std.isObject(OntapConfiguration) then (error 'OntapConfiguration must be an object')
        else if !std.objectHas(OntapConfiguration, 'StorageVirtualMachineId') then (error ' have attribute StorageVirtualMachineId')
        else OntapConfiguration,
    },
  },
  setUUID(UUID): {
    Properties+::: {
      UUID:
        if !std.isString(UUID) then (error 'UUID must be a string')
        else if std.isEmpty(UUID) then (error 'UUID must be not empty')
        else UUID,
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
