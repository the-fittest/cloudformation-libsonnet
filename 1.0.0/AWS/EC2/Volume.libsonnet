{
  new(
    AvailabilityZone,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      AvailabilityZone: AvailabilityZone,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::Volume',
  },
  withMultiAttachEnabled(MultiAttachEnabled): {
    assert std.isBoolean(MultiAttachEnabled) : 'MultiAttachEnabled must be a boolean',
    Properties+::: {
      MultiAttachEnabled: MultiAttachEnabled,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withEncrypted(Encrypted): {
    assert std.isBoolean(Encrypted) : 'Encrypted must be a boolean',
    Properties+::: {
      Encrypted: Encrypted,
    },
  },
  withSize(Size): {
    assert std.isNumber(Size) : 'Size must be a number',
    Properties+::: {
      Size: Size,
    },
  },
  withAutoEnableIO(AutoEnableIO): {
    assert std.isBoolean(AutoEnableIO) : 'AutoEnableIO must be a boolean',
    Properties+::: {
      AutoEnableIO: AutoEnableIO,
    },
  },
  withOutpostArn(OutpostArn): {
    assert std.isString(OutpostArn) : 'OutpostArn must be a string',
    Properties+::: {
      OutpostArn: OutpostArn,
    },
  },
  withThroughput(Throughput): {
    assert std.isNumber(Throughput) : 'Throughput must be a number',
    Properties+::: {
      Throughput: Throughput,
    },
  },
  withIops(Iops): {
    assert std.isNumber(Iops) : 'Iops must be a number',
    Properties+::: {
      Iops: Iops,
    },
  },
  withSnapshotId(SnapshotId): {
    assert std.isString(SnapshotId) : 'SnapshotId must be a string',
    Properties+::: {
      SnapshotId: SnapshotId,
    },
  },
  withVolumeType(VolumeType): {
    assert std.isString(VolumeType) : 'VolumeType must be a string',
    Properties+::: {
      VolumeType: VolumeType,
    },
  },
  withVolumeId(VolumeId): {
    assert std.isString(VolumeId) : 'VolumeId must be a string',
    Properties+::: {
      VolumeId: VolumeId,
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
