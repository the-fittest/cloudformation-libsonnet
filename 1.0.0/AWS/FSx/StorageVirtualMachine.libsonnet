{
  new(
    FileSystemId,
    Name,
  ): {
    local base = self,
    Properties: {
      FileSystemId:
        if !std.isString(FileSystemId) then (error 'FileSystemId must be a string')
        else if std.isEmpty(FileSystemId) then (error 'FileSystemId must be not empty')
        else FileSystemId,
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
    Type: 'AWS::FSx::StorageVirtualMachine',
  },
  setResourceARN(ResourceARN): {
    Properties+::: {
      ResourceARN:
        if !std.isString(ResourceARN) then (error 'ResourceARN must be a string')
        else if std.isEmpty(ResourceARN) then (error 'ResourceARN must be not empty')
        else ResourceARN,
    },
  },
  setSvmAdminPassword(SvmAdminPassword): {
    Properties+::: {
      SvmAdminPassword:
        if !std.isString(SvmAdminPassword) then (error 'SvmAdminPassword must be a string')
        else if std.isEmpty(SvmAdminPassword) then (error 'SvmAdminPassword must be not empty')
        else SvmAdminPassword,
    },
  },
  setStorageVirtualMachineId(StorageVirtualMachineId): {
    Properties+::: {
      StorageVirtualMachineId:
        if !std.isString(StorageVirtualMachineId) then (error 'StorageVirtualMachineId must be a string')
        else if std.isEmpty(StorageVirtualMachineId) then (error 'StorageVirtualMachineId must be not empty')
        else StorageVirtualMachineId,
    },
  },
  setActiveDirectoryConfiguration(ActiveDirectoryConfiguration): {
    Properties+::: {
      ActiveDirectoryConfiguration:
        if !std.isObject(ActiveDirectoryConfiguration) then (error 'ActiveDirectoryConfiguration must be an object')
        else ActiveDirectoryConfiguration,
    },
  },
  setRootVolumeSecurityStyle(RootVolumeSecurityStyle): {
    Properties+::: {
      RootVolumeSecurityStyle:
        if !std.isString(RootVolumeSecurityStyle) then (error 'RootVolumeSecurityStyle must be a string')
        else if std.isEmpty(RootVolumeSecurityStyle) then (error 'RootVolumeSecurityStyle must be not empty')
        else RootVolumeSecurityStyle,
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
