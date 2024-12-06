{
  new(
    ScalingInstructions,
    ApplicationSource,
  ): {
    local base = self,
    Properties: {
      ScalingInstructions:
        if !std.isArray(ScalingInstructions) then (error 'ScalingInstructions must be an array')
        else ScalingInstructions,
      ApplicationSource:
        if !std.isObject(ApplicationSource) then (error 'ApplicationSource must be an object')
        else ApplicationSource,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScalingPlans::ScalingPlan',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setScalingPlanName(ScalingPlanName): {
    Properties+::: {
      ScalingPlanName:
        if !std.isString(ScalingPlanName) then (error 'ScalingPlanName must be a string')
        else if std.isEmpty(ScalingPlanName) then (error 'ScalingPlanName must be not empty')
        else ScalingPlanName,
    },
  },
  setScalingPlanVersion(ScalingPlanVersion): {
    Properties+::: {
      ScalingPlanVersion:
        if !std.isString(ScalingPlanVersion) then (error 'ScalingPlanVersion must be a string')
        else if std.isEmpty(ScalingPlanVersion) then (error 'ScalingPlanVersion must be not empty')
        else ScalingPlanVersion,
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
