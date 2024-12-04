{
  new(
    FileSystemType,
    SubnetIds,
  ): {
    local base = self,
    Properties: {
      assert std.isString(FileSystemType) : 'FileSystemType must be a string',
      FileSystemType: FileSystemType,
      SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::FSx::FileSystem',
  },
  withStorageType(StorageType): {
    assert std.isString(StorageType) : 'StorageType must be a string',
    Properties+::: {
      StorageType: StorageType,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withStorageCapacity(StorageCapacity): {
    assert std.isNumber(StorageCapacity) : 'StorageCapacity must be a number',
    Properties+::: {
      StorageCapacity: StorageCapacity,
    },
  },
  withRootVolumeId(RootVolumeId): {
    assert std.isString(RootVolumeId) : 'RootVolumeId must be a string',
    Properties+::: {
      RootVolumeId: RootVolumeId,
    },
  },
  withLustreConfiguration(LustreConfiguration): {
    assert std.isObject(LustreConfiguration) : 'LustreConfiguration must be a object',
    Properties+::: {
      LustreConfiguration: LustreConfiguration,
    },
  },
  withBackupId(BackupId): {
    assert std.isString(BackupId) : 'BackupId must be a string',
    Properties+::: {
      BackupId: BackupId,
    },
  },
  withOntapConfiguration(OntapConfiguration): {
    assert std.isObject(OntapConfiguration) : 'OntapConfiguration must be a object',
    Properties+::: {
      OntapConfiguration: OntapConfiguration,
    },
  },
  withDNSName(DNSName): {
    assert std.isString(DNSName) : 'DNSName must be a string',
    Properties+::: {
      DNSName: DNSName,
    },
  },
  withSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withWindowsConfiguration(WindowsConfiguration): {
    assert std.isObject(WindowsConfiguration) : 'WindowsConfiguration must be a object',
    Properties+::: {
      WindowsConfiguration: WindowsConfiguration,
    },
  },
  withFileSystemTypeVersion(FileSystemTypeVersion): {
    assert std.isString(FileSystemTypeVersion) : 'FileSystemTypeVersion must be a string',
    Properties+::: {
      FileSystemTypeVersion: FileSystemTypeVersion,
    },
  },
  withOpenZFSConfiguration(OpenZFSConfiguration): {
    assert std.isObject(OpenZFSConfiguration) : 'OpenZFSConfiguration must be a object',
    Properties+::: {
      OpenZFSConfiguration: OpenZFSConfiguration,
    },
  },
  withResourceARN(ResourceARN): {
    assert std.isString(ResourceARN) : 'ResourceARN must be a string',
    Properties+::: {
      ResourceARN: ResourceARN,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withLustreMountName(LustreMountName): {
    assert std.isString(LustreMountName) : 'LustreMountName must be a string',
    Properties+::: {
      LustreMountName: LustreMountName,
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
