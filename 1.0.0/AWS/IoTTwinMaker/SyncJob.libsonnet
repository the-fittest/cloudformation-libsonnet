{
  new(
    WorkspaceId,
    SyncSource,
    SyncRole,
  ): {
    local base = self,
    Properties: {
      WorkspaceId:
        if !std.isString(WorkspaceId) then (error 'WorkspaceId must be a string')
        else if std.isEmpty(WorkspaceId) then (error 'WorkspaceId must be not empty')
        else if std.length(WorkspaceId) < 1 then error ('WorkspaceId should have at least 1 characters')
        else if std.length(WorkspaceId) > 128 then error ('WorkspaceId should have not more than 128 characters')
        else WorkspaceId,
      SyncSource:
        if !std.isString(SyncSource) then (error 'SyncSource must be a string')
        else if std.isEmpty(SyncSource) then (error 'SyncSource must be not empty')
        else if std.length(SyncSource) < 1 then error ('SyncSource should have at least 1 characters')
        else if std.length(SyncSource) > 128 then error ('SyncSource should have not more than 128 characters')
        else SyncSource,
      SyncRole:
        if !std.isString(SyncRole) then (error 'SyncRole must be a string')
        else if std.isEmpty(SyncRole) then (error 'SyncRole must be not empty')
        else if std.length(SyncRole) < 20 then error ('SyncRole should have at least 20 characters')
        else if std.length(SyncRole) > 2048 then error ('SyncRole should have not more than 2048 characters')
        else SyncRole,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTTwinMaker::SyncJob',
  },
  setCreationDateTime(CreationDateTime): {
    Properties+::: {
      CreationDateTime:
        if !std.isString(CreationDateTime) then (error 'CreationDateTime must be a string')
        else if std.isEmpty(CreationDateTime) then (error 'CreationDateTime must be not empty')
        else CreationDateTime,
    },
  },
  setUpdateDateTime(UpdateDateTime): {
    Properties+::: {
      UpdateDateTime:
        if !std.isString(UpdateDateTime) then (error 'UpdateDateTime must be a string')
        else if std.isEmpty(UpdateDateTime) then (error 'UpdateDateTime must be not empty')
        else UpdateDateTime,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if std.length(State) < 1 then error ('State should have at least 1 characters')
        else if std.length(State) > 128 then error ('State should have not more than 128 characters')
        else State,
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
