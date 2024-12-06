{
  new(
    DeploymentDurationInMinutes,
    GrowthFactor,
    Name,
    ReplicateTo,
  ): {
    local base = self,
    Properties: {
      DeploymentDurationInMinutes:
        if !std.isNumber(DeploymentDurationInMinutes) then (error 'DeploymentDurationInMinutes must be an number')
        else DeploymentDurationInMinutes,
      GrowthFactor:
        if !std.isNumber(GrowthFactor) then (error 'GrowthFactor must be an number')
        else GrowthFactor,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      ReplicateTo:
        if !std.isString(ReplicateTo) then (error 'ReplicateTo must be a string')
        else if std.isEmpty(ReplicateTo) then (error 'ReplicateTo must be not empty')
        else if ReplicateTo != 'NONE' && ReplicateTo != 'SSM_DOCUMENT' then (error "ReplicateTo should be 'NONE' or 'SSM_DOCUMENT'")
        else ReplicateTo,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppConfig::DeploymentStrategy',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setFinalBakeTimeInMinutes(FinalBakeTimeInMinutes): {
    Properties+::: {
      FinalBakeTimeInMinutes:
        if !std.isNumber(FinalBakeTimeInMinutes) then (error 'FinalBakeTimeInMinutes must be an number')
        else FinalBakeTimeInMinutes,
    },
  },
  setGrowthType(GrowthType): {
    Properties+::: {
      GrowthType:
        if !std.isString(GrowthType) then (error 'GrowthType must be a string')
        else if std.isEmpty(GrowthType) then (error 'GrowthType must be not empty')
        else if GrowthType != 'EXPONENTIAL' && GrowthType != 'LINEAR' then (error "GrowthType should be 'EXPONENTIAL' or 'LINEAR'")
        else GrowthType,
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
