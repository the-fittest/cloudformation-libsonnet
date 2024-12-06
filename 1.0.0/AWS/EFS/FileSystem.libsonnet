{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EFS::FileSystem',
  },
  setFileSystemId(FileSystemId): {
    Properties+::: {
      FileSystemId:
        if !std.isString(FileSystemId) then (error 'FileSystemId must be a string')
        else if std.isEmpty(FileSystemId) then (error 'FileSystemId must be not empty')
        else FileSystemId,
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
  setEncrypted(Encrypted): {
    Properties+::: {
      Encrypted:
        if !std.isBoolean(Encrypted) then (error 'Encrypted must be a boolean') else Encrypted,
    },
  },
  setFileSystemTags(FileSystemTags): {
    Properties+::: {
      FileSystemTags:
        if !std.isArray(FileSystemTags) then (error 'FileSystemTags must be an array')
        else FileSystemTags,
    },
  },
  pushFileSystemTags(FileSystemTags): {
    Properties+::: {
      FileSystemTags+: FileSystemTags,
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
  setLifecyclePolicies(LifecyclePolicies): {
    Properties+::: {
      LifecyclePolicies:
        if !std.isArray(LifecyclePolicies) then (error 'LifecyclePolicies must be an array')
        else LifecyclePolicies,
    },
  },
  pushLifecyclePolicies(LifecyclePolicies): {
    Properties+::: {
      LifecyclePolicies+: LifecyclePolicies,
    },
  },
  setFileSystemProtection(FileSystemProtection): {
    Properties+::: {
      FileSystemProtection:
        if !std.isObject(FileSystemProtection) then (error 'FileSystemProtection must be an object')
        else FileSystemProtection,
    },
  },
  setPerformanceMode(PerformanceMode): {
    Properties+::: {
      PerformanceMode:
        if !std.isString(PerformanceMode) then (error 'PerformanceMode must be a string')
        else if std.isEmpty(PerformanceMode) then (error 'PerformanceMode must be not empty')
        else PerformanceMode,
    },
  },
  setProvisionedThroughputInMibps(ProvisionedThroughputInMibps): {
    Properties+::: {
      ProvisionedThroughputInMibps:
        if !std.isNumber(ProvisionedThroughputInMibps) then (error 'ProvisionedThroughputInMibps must be an number')
        else ProvisionedThroughputInMibps,
    },
  },
  setThroughputMode(ThroughputMode): {
    Properties+::: {
      ThroughputMode:
        if !std.isString(ThroughputMode) then (error 'ThroughputMode must be a string')
        else if std.isEmpty(ThroughputMode) then (error 'ThroughputMode must be not empty')
        else ThroughputMode,
    },
  },
  setFileSystemPolicy(FileSystemPolicy): {
    Properties+::: {
      FileSystemPolicy:
        if !std.isObject(FileSystemPolicy) then (error 'FileSystemPolicy must be an object')
        else FileSystemPolicy,
    },
  },
  setBypassPolicyLockoutSafetyCheck(BypassPolicyLockoutSafetyCheck): {
    Properties+::: {
      BypassPolicyLockoutSafetyCheck:
        if !std.isBoolean(BypassPolicyLockoutSafetyCheck) then (error 'BypassPolicyLockoutSafetyCheck must be a boolean') else BypassPolicyLockoutSafetyCheck,
    },
  },
  setBackupPolicy(BackupPolicy): {
    Properties+::: {
      BackupPolicy:
        if !std.isObject(BackupPolicy) then (error 'BackupPolicy must be an object')
        else if !std.objectHas(BackupPolicy, 'Status') then (error ' have attribute Status')
        else BackupPolicy,
    },
  },
  setAvailabilityZoneName(AvailabilityZoneName): {
    Properties+::: {
      AvailabilityZoneName:
        if !std.isString(AvailabilityZoneName) then (error 'AvailabilityZoneName must be a string')
        else if std.isEmpty(AvailabilityZoneName) then (error 'AvailabilityZoneName must be not empty')
        else AvailabilityZoneName,
    },
  },
  setReplicationConfiguration(ReplicationConfiguration): {
    Properties+::: {
      ReplicationConfiguration:
        if !std.isObject(ReplicationConfiguration) then (error 'ReplicationConfiguration must be an object')
        else ReplicationConfiguration,
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
