{
  new(
    ResourceId,
    ServiceNamespace,
    ScalableDimension,
    MinCapacity,
    MaxCapacity,
  ): {
    local base = self,
    Properties: {
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else ResourceId,
      ServiceNamespace:
        if !std.isString(ServiceNamespace) then (error 'ServiceNamespace must be a string')
        else if std.isEmpty(ServiceNamespace) then (error 'ServiceNamespace must be not empty')
        else ServiceNamespace,
      ScalableDimension:
        if !std.isString(ScalableDimension) then (error 'ScalableDimension must be a string')
        else if std.isEmpty(ScalableDimension) then (error 'ScalableDimension must be not empty')
        else ScalableDimension,
      MinCapacity:
        if !std.isNumber(MinCapacity) then (error 'MinCapacity must be an number')
        else MinCapacity,
      MaxCapacity:
        if !std.isNumber(MaxCapacity) then (error 'MaxCapacity must be an number')
        else MaxCapacity,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApplicationAutoScaling::ScalableTarget',
  },
  setScheduledActions(ScheduledActions): {
    Properties+::: {
      ScheduledActions:
        if !std.isArray(ScheduledActions) then (error 'ScheduledActions must be an array')
        else ScheduledActions,
    },
  },
  pushScheduledActions(ScheduledActions): {
    Properties+::: {
      ScheduledActions+: ScheduledActions,
    },
  },
  setSuspendedState(SuspendedState): {
    Properties+::: {
      SuspendedState:
        if !std.isObject(SuspendedState) then (error 'SuspendedState must be an object')
        else SuspendedState,
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
  setRoleARN(RoleARN): {
    Properties+::: {
      RoleARN:
        if !std.isString(RoleARN) then (error 'RoleARN must be a string')
        else if std.isEmpty(RoleARN) then (error 'RoleARN must be not empty')
        else RoleARN,
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
