{
  new(
    WorkspaceId,
    Role,
    S3Location,
  ): {
    local base = self,
    Properties: {
      WorkspaceId:
        if !std.isString(WorkspaceId) then (error 'WorkspaceId must be a string')
        else if std.isEmpty(WorkspaceId) then (error 'WorkspaceId must be not empty')
        else if std.length(WorkspaceId) < 1 then error ('WorkspaceId should have at least 1 characters')
        else if std.length(WorkspaceId) > 128 then error ('WorkspaceId should have not more than 128 characters')
        else WorkspaceId,
      Role:
        if !std.isString(Role) then (error 'Role must be a string')
        else if std.isEmpty(Role) then (error 'Role must be not empty')
        else if std.length(Role) < 20 then error ('Role should have at least 20 characters')
        else if std.length(Role) > 2048 then error ('Role should have not more than 2048 characters')
        else Role,
      S3Location:
        if !std.isString(S3Location) then (error 'S3Location must be a string')
        else if std.isEmpty(S3Location) then (error 'S3Location must be not empty')
        else S3Location,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTTwinMaker::Workspace',
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
    },
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
