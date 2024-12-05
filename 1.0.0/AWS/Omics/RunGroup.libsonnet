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
    Type: 'AWS::Omics::RunGroup',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 128 then error ('Arn should have not more than 128 characters')
        else Arn,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 18 then error ('Id should have not more than 18 characters')
        else Id,
    },
  },
  setMaxCpus(MaxCpus): {
    Properties+::: {
      MaxCpus:
        if !std.isNumber(MaxCpus) then (error 'MaxCpus must be an number')
        else if MaxCpus < 1 then error ('MaxCpus should be at least 1')
        else if MaxCpus > 100000 then error ('MaxCpus should be not more than 100000')
        else MaxCpus,
    },
  },
  setMaxGpus(MaxGpus): {
    Properties+::: {
      MaxGpus:
        if !std.isNumber(MaxGpus) then (error 'MaxGpus must be an number')
        else if MaxGpus < 1 then error ('MaxGpus should be at least 1')
        else if MaxGpus > 100000 then error ('MaxGpus should be not more than 100000')
        else MaxGpus,
    },
  },
  setMaxDuration(MaxDuration): {
    Properties+::: {
      MaxDuration:
        if !std.isNumber(MaxDuration) then (error 'MaxDuration must be an number')
        else if MaxDuration < 1 then error ('MaxDuration should be at least 1')
        else if MaxDuration > 100000 then error ('MaxDuration should be not more than 100000')
        else MaxDuration,
    },
  },
  setMaxRuns(MaxRuns): {
    Properties+::: {
      MaxRuns:
        if !std.isNumber(MaxRuns) then (error 'MaxRuns must be an number')
        else if MaxRuns < 1 then error ('MaxRuns should be at least 1')
        else if MaxRuns > 100000 then error ('MaxRuns should be not more than 100000')
        else MaxRuns,
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
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
