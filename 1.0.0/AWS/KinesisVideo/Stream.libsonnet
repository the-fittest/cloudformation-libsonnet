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
    Type: 'AWS::KinesisVideo::Stream',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 256 then error ('Name should have not more than 256 characters')
        else Name,
    },
  },
  setDataRetentionInHours(DataRetentionInHours): {
    Properties+::: {
      DataRetentionInHours:
        if !std.isNumber(DataRetentionInHours) then (error 'DataRetentionInHours must be an number')
        else if DataRetentionInHours > 87600 then error ('DataRetentionInHours should be not more than 87600')
        else DataRetentionInHours,
    },
  },
  setDeviceName(DeviceName): {
    Properties+::: {
      DeviceName:
        if !std.isString(DeviceName) then (error 'DeviceName must be a string')
        else if std.isEmpty(DeviceName) then (error 'DeviceName must be not empty')
        else if std.length(DeviceName) < 1 then error ('DeviceName should have at least 1 characters')
        else if std.length(DeviceName) > 128 then error ('DeviceName should have not more than 128 characters')
        else DeviceName,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else if std.length(KmsKeyId) < 1 then error ('KmsKeyId should have at least 1 characters')
        else if std.length(KmsKeyId) > 2048 then error ('KmsKeyId should have not more than 2048 characters')
        else KmsKeyId,
    },
  },
  setMediaType(MediaType): {
    Properties+::: {
      MediaType:
        if !std.isString(MediaType) then (error 'MediaType must be a string')
        else if std.isEmpty(MediaType) then (error 'MediaType must be not empty')
        else if std.length(MediaType) < 1 then error ('MediaType should have at least 1 characters')
        else if std.length(MediaType) > 128 then error ('MediaType should have not more than 128 characters')
        else MediaType,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
