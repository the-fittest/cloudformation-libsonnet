{
  new(
    AutoScalingGroupName,
  ): {
    local base = self,
    Properties: {
      AutoScalingGroupName:
        if !std.isString(AutoScalingGroupName) then (error 'AutoScalingGroupName must be a string')
        else if std.isEmpty(AutoScalingGroupName) then (error 'AutoScalingGroupName must be not empty')
        else AutoScalingGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::WarmPool',
  },
  setMaxGroupPreparedCapacity(MaxGroupPreparedCapacity): {
    Properties+::: {
      MaxGroupPreparedCapacity:
        if !std.isNumber(MaxGroupPreparedCapacity) then (error 'MaxGroupPreparedCapacity must be an number')
        else MaxGroupPreparedCapacity,
    },
  },
  setMinSize(MinSize): {
    Properties+::: {
      MinSize:
        if !std.isNumber(MinSize) then (error 'MinSize must be an number')
        else MinSize,
    },
  },
  setPoolState(PoolState): {
    Properties+::: {
      PoolState:
        if !std.isString(PoolState) then (error 'PoolState must be a string')
        else if std.isEmpty(PoolState) then (error 'PoolState must be not empty')
        else PoolState,
    },
  },
  setInstanceReusePolicy(InstanceReusePolicy): {
    Properties+::: {
      InstanceReusePolicy:
        if !std.isObject(InstanceReusePolicy) then (error 'InstanceReusePolicy must be an object')
        else InstanceReusePolicy,
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
