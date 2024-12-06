{
  new(
    Name,
    Project,
    Treatments,
    MetricGoals,
    OnlineAbConfig,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
      Project:
        if !std.isString(Project) then (error 'Project must be a string')
        else if std.isEmpty(Project) then (error 'Project must be not empty')
        else if std.length(Project) > 2048 then error ('Project should have not more than 2048 characters')
        else Project,
      Treatments:
        if !std.isArray(Treatments) then (error 'Treatments must be an array')
        else if std.length(Treatments) < 2 then error ('Treatments cannot have less than 2 items')
        else if std.length(Treatments) > 5 then error ('Treatments cannot have more than 5 items')
        else Treatments,
      MetricGoals:
        if !std.isArray(MetricGoals) then (error 'MetricGoals must be an array')
        else if std.length(MetricGoals) < 1 then error ('MetricGoals cannot have less than 1 items')
        else if std.length(MetricGoals) > 3 then error ('MetricGoals cannot have more than 3 items')
        else MetricGoals,
      OnlineAbConfig:
        if !std.isObject(OnlineAbConfig) then (error 'OnlineAbConfig must be an object')
        else OnlineAbConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Evidently::Experiment',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 160 then error ('Description should have not more than 160 characters')
        else Description,
    },
  },
  setRunningStatus(RunningStatus): {
    Properties+::: {
      RunningStatus:
        if !std.isObject(RunningStatus) then (error 'RunningStatus must be an object')
        else RunningStatus,
    },
  },
  setRandomizationSalt(RandomizationSalt): {
    Properties+::: {
      RandomizationSalt:
        if !std.isString(RandomizationSalt) then (error 'RandomizationSalt must be a string')
        else if std.isEmpty(RandomizationSalt) then (error 'RandomizationSalt must be not empty')
        else if std.length(RandomizationSalt) > 127 then error ('RandomizationSalt should have not more than 127 characters')
        else RandomizationSalt,
    },
  },
  setSamplingRate(SamplingRate): {
    Properties+::: {
      SamplingRate:
        if !std.isNumber(SamplingRate) then (error 'SamplingRate must be an number')
        else if SamplingRate > 100000 then error ('SamplingRate should be not more than 100000')
        else SamplingRate,
    },
  },
  setSegment(Segment): {
    Properties+::: {
      Segment:
        if !std.isString(Segment) then (error 'Segment must be a string')
        else if std.isEmpty(Segment) then (error 'Segment must be not empty')
        else if std.length(Segment) > 2048 then error ('Segment should have not more than 2048 characters')
        else Segment,
    },
  },
  setRemoveSegment(RemoveSegment): {
    Properties+::: {
      RemoveSegment:
        if !std.isBoolean(RemoveSegment) then (error 'RemoveSegment must be a boolean') else RemoveSegment,
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
