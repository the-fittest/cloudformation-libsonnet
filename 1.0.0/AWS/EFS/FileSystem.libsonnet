{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EFS::FileSystem',
  },
  withFileSystemId(FileSystemId): {
    assert std.isString(FileSystemId) : 'FileSystemId must be a string',
    Properties+::: {
      FileSystemId: FileSystemId,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withEncrypted(Encrypted): {
    assert std.isBoolean(Encrypted) : 'Encrypted must be a boolean',
    Properties+::: {
      Encrypted: Encrypted,
    },
  },
  withFileSystemTags(FileSystemTags): {
    Properties+::: {
      FileSystemTags: (if std.isArray(FileSystemTags) then FileSystemTags else [FileSystemTags]),
    },
  },
  withFileSystemTagsMixin(FileSystemTags): {
    Properties+::: {
      FileSystemTags+: (if std.isArray(FileSystemTags) then FileSystemTags else [FileSystemTags]),
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withLifecyclePolicies(LifecyclePolicies): {
    Properties+::: {
      LifecyclePolicies: (if std.isArray(LifecyclePolicies) then LifecyclePolicies else [LifecyclePolicies]),
    },
  },
  withLifecyclePoliciesMixin(LifecyclePolicies): {
    Properties+::: {
      LifecyclePolicies+: (if std.isArray(LifecyclePolicies) then LifecyclePolicies else [LifecyclePolicies]),
    },
  },
  withFileSystemProtection(FileSystemProtection): {
    assert std.isObject(FileSystemProtection) : 'FileSystemProtection must be a object',
    Properties+::: {
      FileSystemProtection: FileSystemProtection,
    },
  },
  withPerformanceMode(PerformanceMode): {
    assert std.isString(PerformanceMode) : 'PerformanceMode must be a string',
    Properties+::: {
      PerformanceMode: PerformanceMode,
    },
  },
  withProvisionedThroughputInMibps(ProvisionedThroughputInMibps): {
    assert std.isNumber(ProvisionedThroughputInMibps) : 'ProvisionedThroughputInMibps must be a number',
    Properties+::: {
      ProvisionedThroughputInMibps: ProvisionedThroughputInMibps,
    },
  },
  withThroughputMode(ThroughputMode): {
    assert std.isString(ThroughputMode) : 'ThroughputMode must be a string',
    Properties+::: {
      ThroughputMode: ThroughputMode,
    },
  },
  withFileSystemPolicy(FileSystemPolicy): {
    assert std.isObject(FileSystemPolicy) : 'FileSystemPolicy must be a object',
    Properties+::: {
      FileSystemPolicy: FileSystemPolicy,
    },
  },
  withBypassPolicyLockoutSafetyCheck(BypassPolicyLockoutSafetyCheck): {
    assert std.isBoolean(BypassPolicyLockoutSafetyCheck) : 'BypassPolicyLockoutSafetyCheck must be a boolean',
    Properties+::: {
      BypassPolicyLockoutSafetyCheck: BypassPolicyLockoutSafetyCheck,
    },
  },
  withBackupPolicy(BackupPolicy): {
    assert std.isObject(BackupPolicy) : 'BackupPolicy must be a object',
    Properties+::: {
      BackupPolicy: BackupPolicy,
    },
  },
  withAvailabilityZoneName(AvailabilityZoneName): {
    assert std.isString(AvailabilityZoneName) : 'AvailabilityZoneName must be a string',
    Properties+::: {
      AvailabilityZoneName: AvailabilityZoneName,
    },
  },
  withReplicationConfiguration(ReplicationConfiguration): {
    assert std.isObject(ReplicationConfiguration) : 'ReplicationConfiguration must be a object',
    Properties+::: {
      ReplicationConfiguration: ReplicationConfiguration,
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
