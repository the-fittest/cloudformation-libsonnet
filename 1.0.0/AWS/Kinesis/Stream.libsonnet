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
    Type: 'AWS::Kinesis::Stream',
  },
  setStreamModeDetails(StreamModeDetails): {
    Properties+::: {
      StreamModeDetails:
        if !std.isObject(StreamModeDetails) then (error 'StreamModeDetails must be an object')
        else if !std.objectHas(StreamModeDetails, 'StreamMode') then (error ' have attribute StreamMode')
        else StreamModeDetails,
    },
  },
  setStreamEncryption(StreamEncryption): {
    Properties+::: {
      StreamEncryption:
        if !std.isObject(StreamEncryption) then (error 'StreamEncryption must be an object')
        else if !std.objectHas(StreamEncryption, 'EncryptionType') then (error ' have attribute EncryptionType')
        else if !std.objectHas(StreamEncryption, 'KeyId') then (error ' have attribute KeyId')
        else StreamEncryption,
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
  setRetentionPeriodHours(RetentionPeriodHours): {
    Properties+::: {
      RetentionPeriodHours:
        if !std.isNumber(RetentionPeriodHours) then (error 'RetentionPeriodHours must be an number')
        else if RetentionPeriodHours < 24 then error ('RetentionPeriodHours should be at least 24')
        else RetentionPeriodHours,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setShardCount(ShardCount): {
    Properties+::: {
      ShardCount:
        if !std.isNumber(ShardCount) then (error 'ShardCount must be an number')
        else if ShardCount < 1 then error ('ShardCount should be at least 1')
        else ShardCount,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
