{
  new(
    FileSystemType,
    SubnetIds,
  ): {
    local base = self,
    Properties: {
      FileSystemType:
        if !std.isString(FileSystemType) then (error 'FileSystemType must be a string')
        else if std.isEmpty(FileSystemType) then (error 'FileSystemType must be not empty')
        else FileSystemType,
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else SubnetIds,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::FSx::FileSystem',
  },
  setStorageType(StorageType): {
    Properties+::: {
      StorageType:
        if !std.isString(StorageType) then (error 'StorageType must be a string')
        else if std.isEmpty(StorageType) then (error 'StorageType must be not empty')
        else StorageType,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setStorageCapacity(StorageCapacity): {
    Properties+::: {
      StorageCapacity:
        if !std.isNumber(StorageCapacity) then (error 'StorageCapacity must be an number')
        else StorageCapacity,
    },
  },
  setRootVolumeId(RootVolumeId): {
    Properties+::: {
      RootVolumeId:
        if !std.isString(RootVolumeId) then (error 'RootVolumeId must be a string')
        else if std.isEmpty(RootVolumeId) then (error 'RootVolumeId must be not empty')
        else RootVolumeId,
    },
  },
  setLustreConfiguration(LustreConfiguration): {
    Properties+::: {
      LustreConfiguration:
        if !std.isObject(LustreConfiguration) then (error 'LustreConfiguration must be an object')
        else LustreConfiguration,
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
        else if !std.objectHas(OntapConfiguration, 'DeploymentType') then (error ' have attribute DeploymentType')
        else OntapConfiguration,
    },
  },
  setDNSName(DNSName): {
    Properties+::: {
      DNSName:
        if !std.isString(DNSName) then (error 'DNSName must be a string')
        else if std.isEmpty(DNSName) then (error 'DNSName must be not empty')
        else DNSName,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  pushSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setWindowsConfiguration(WindowsConfiguration): {
    Properties+::: {
      WindowsConfiguration:
        if !std.isObject(WindowsConfiguration) then (error 'WindowsConfiguration must be an object')
        else if !std.objectHas(WindowsConfiguration, 'ThroughputCapacity') then (error ' have attribute ThroughputCapacity')
        else WindowsConfiguration,
    },
  },
  setFileSystemTypeVersion(FileSystemTypeVersion): {
    Properties+::: {
      FileSystemTypeVersion:
        if !std.isString(FileSystemTypeVersion) then (error 'FileSystemTypeVersion must be a string')
        else if std.isEmpty(FileSystemTypeVersion) then (error 'FileSystemTypeVersion must be not empty')
        else FileSystemTypeVersion,
    },
  },
  setOpenZFSConfiguration(OpenZFSConfiguration): {
    Properties+::: {
      OpenZFSConfiguration:
        if !std.isObject(OpenZFSConfiguration) then (error 'OpenZFSConfiguration must be an object')
        else if !std.objectHas(OpenZFSConfiguration, 'DeploymentType') then (error ' have attribute DeploymentType')
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
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setLustreMountName(LustreMountName): {
    Properties+::: {
      LustreMountName:
        if !std.isString(LustreMountName) then (error 'LustreMountName must be a string')
        else if std.isEmpty(LustreMountName) then (error 'LustreMountName must be not empty')
        else LustreMountName,
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
