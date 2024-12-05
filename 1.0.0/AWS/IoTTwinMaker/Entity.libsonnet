{
  new(
    WorkspaceId,
    EntityName,
  ): {
    local base = self,
    Properties: {
      WorkspaceId:
        if !std.isString(WorkspaceId) then (error 'WorkspaceId must be a string')
        else if std.isEmpty(WorkspaceId) then (error 'WorkspaceId must be not empty')
        else if std.length(WorkspaceId) < 1 then error ('WorkspaceId should have at least 1 characters')
        else if std.length(WorkspaceId) > 128 then error ('WorkspaceId should have not more than 128 characters')
        else WorkspaceId,
      EntityName:
        if !std.isString(EntityName) then (error 'EntityName must be a string')
        else if std.isEmpty(EntityName) then (error 'EntityName must be not empty')
        else if std.length(EntityName) < 1 then error ('EntityName should have at least 1 characters')
        else if std.length(EntityName) > 256 then error ('EntityName should have not more than 256 characters')
        else EntityName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTTwinMaker::Entity',
  },
  setEntityId(EntityId): {
    Properties+::: {
      EntityId:
        if !std.isString(EntityId) then (error 'EntityId must be a string')
        else if std.isEmpty(EntityId) then (error 'EntityId must be not empty')
        else if std.length(EntityId) < 1 then error ('EntityId should have at least 1 characters')
        else if std.length(EntityId) > 128 then error ('EntityId should have not more than 128 characters')
        else EntityId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isObject(Status) then (error 'Status must be an object')
        else Status,
    },
  },
  setHasChildEntities(HasChildEntities): {
    Properties+::: {
      HasChildEntities:
        if !std.isBoolean(HasChildEntities) then (error 'HasChildEntities must be a boolean') else HasChildEntities,
    },
  },
  setParentEntityId(ParentEntityId): {
    Properties+::: {
      ParentEntityId:
        if !std.isString(ParentEntityId) then (error 'ParentEntityId must be a string')
        else if std.isEmpty(ParentEntityId) then (error 'ParentEntityId must be not empty')
        else if std.length(ParentEntityId) < 1 then error ('ParentEntityId should have at least 1 characters')
        else if std.length(ParentEntityId) > 128 then error ('ParentEntityId should have not more than 128 characters')
        else ParentEntityId,
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
  setComponents(Components): {
    Properties+::: {
      Components:
        if !std.isObject(Components) then (error 'Components must be an object')
        else Components,
    },
  },
  setCompositeComponents(CompositeComponents): {
    Properties+::: {
      CompositeComponents:
        if !std.isObject(CompositeComponents) then (error 'CompositeComponents must be an object')
        else CompositeComponents,
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
