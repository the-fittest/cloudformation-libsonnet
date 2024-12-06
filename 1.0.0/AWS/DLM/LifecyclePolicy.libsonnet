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
    Type: 'AWS::DLM::LifecyclePolicy',
  },
  setCreateInterval(CreateInterval): {
    Properties+::: {
      CreateInterval:
        if !std.isNumber(CreateInterval) then (error 'CreateInterval must be an number')
        else CreateInterval,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setExtendDeletion(ExtendDeletion): {
    Properties+::: {
      ExtendDeletion:
        if !std.isBoolean(ExtendDeletion) then (error 'ExtendDeletion must be a boolean') else ExtendDeletion,
    },
  },
  setExclusions(Exclusions): {
    Properties+::: {
      Exclusions:
        if !std.isObject(Exclusions) then (error 'Exclusions must be an object')
        else Exclusions,
    },
  },
  setRetainInterval(RetainInterval): {
    Properties+::: {
      RetainInterval:
        if !std.isNumber(RetainInterval) then (error 'RetainInterval must be an number')
        else RetainInterval,
    },
  },
  setExecutionRoleArn(ExecutionRoleArn): {
    Properties+::: {
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else ExecutionRoleArn,
    },
  },
  setDefaultPolicy(DefaultPolicy): {
    Properties+::: {
      DefaultPolicy:
        if !std.isString(DefaultPolicy) then (error 'DefaultPolicy must be a string')
        else if std.isEmpty(DefaultPolicy) then (error 'DefaultPolicy must be not empty')
        else DefaultPolicy,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
    },
  },
  setCrossRegionCopyTargets(CrossRegionCopyTargets): {
    Properties+::: {
      CrossRegionCopyTargets:
        if !std.isObject(CrossRegionCopyTargets) then (error 'CrossRegionCopyTargets must be an object')
        else CrossRegionCopyTargets,
    },
  },
  setPolicyDetails(PolicyDetails): {
    Properties+::: {
      PolicyDetails:
        if !std.isObject(PolicyDetails) then (error 'PolicyDetails must be an object')
        else PolicyDetails,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setCopyTags(CopyTags): {
    Properties+::: {
      CopyTags:
        if !std.isBoolean(CopyTags) then (error 'CopyTags must be a boolean') else CopyTags,
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
