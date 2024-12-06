{
  new(
    AvailabilityZone,
  ): {
    local base = self,
    Properties: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else AvailabilityZone,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::Volume',
  },
  setMultiAttachEnabled(MultiAttachEnabled): {
    Properties+::: {
      MultiAttachEnabled:
        if !std.isBoolean(MultiAttachEnabled) then (error 'MultiAttachEnabled must be a boolean') else MultiAttachEnabled,
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
  setEncrypted(Encrypted): {
    Properties+::: {
      Encrypted:
        if !std.isBoolean(Encrypted) then (error 'Encrypted must be a boolean') else Encrypted,
    },
  },
  setSize(Size): {
    Properties+::: {
      Size:
        if !std.isNumber(Size) then (error 'Size must be an number')
        else Size,
    },
  },
  setAutoEnableIO(AutoEnableIO): {
    Properties+::: {
      AutoEnableIO:
        if !std.isBoolean(AutoEnableIO) then (error 'AutoEnableIO must be a boolean') else AutoEnableIO,
    },
  },
  setOutpostArn(OutpostArn): {
    Properties+::: {
      OutpostArn:
        if !std.isString(OutpostArn) then (error 'OutpostArn must be a string')
        else if std.isEmpty(OutpostArn) then (error 'OutpostArn must be not empty')
        else OutpostArn,
    },
  },
  setThroughput(Throughput): {
    Properties+::: {
      Throughput:
        if !std.isNumber(Throughput) then (error 'Throughput must be an number')
        else Throughput,
    },
  },
  setIops(Iops): {
    Properties+::: {
      Iops:
        if !std.isNumber(Iops) then (error 'Iops must be an number')
        else Iops,
    },
  },
  setSnapshotId(SnapshotId): {
    Properties+::: {
      SnapshotId:
        if !std.isString(SnapshotId) then (error 'SnapshotId must be a string')
        else if std.isEmpty(SnapshotId) then (error 'SnapshotId must be not empty')
        else SnapshotId,
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
  setVolumeId(VolumeId): {
    Properties+::: {
      VolumeId:
        if !std.isString(VolumeId) then (error 'VolumeId must be a string')
        else if std.isEmpty(VolumeId) then (error 'VolumeId must be not empty')
        else VolumeId,
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
