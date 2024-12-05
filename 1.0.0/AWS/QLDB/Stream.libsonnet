{
  new(
    LedgerName,
    StreamName,
    RoleArn,
    KinesisConfiguration,
    InclusiveStartTime,
  ): {
    local base = self,
    Properties: {
      LedgerName:
        if !std.isString(LedgerName) then (error 'LedgerName must be a string')
        else if std.isEmpty(LedgerName) then (error 'LedgerName must be not empty')
        else LedgerName,
      StreamName:
        if !std.isString(StreamName) then (error 'StreamName must be a string')
        else if std.isEmpty(StreamName) then (error 'StreamName must be not empty')
        else StreamName,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
      KinesisConfiguration:
        if !std.isObject(KinesisConfiguration) then (error 'KinesisConfiguration must be an object')
        else KinesisConfiguration,
      InclusiveStartTime:
        if !std.isString(InclusiveStartTime) then (error 'InclusiveStartTime must be a string')
        else if std.isEmpty(InclusiveStartTime) then (error 'InclusiveStartTime must be not empty')
        else InclusiveStartTime,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::QLDB::Stream',
  },
  setExclusiveEndTime(ExclusiveEndTime): {
    Properties+::: {
      ExclusiveEndTime:
        if !std.isString(ExclusiveEndTime) then (error 'ExclusiveEndTime must be a string')
        else if std.isEmpty(ExclusiveEndTime) then (error 'ExclusiveEndTime must be not empty')
        else ExclusiveEndTime,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
