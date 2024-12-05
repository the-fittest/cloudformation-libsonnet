{
  new(
    WorkspaceId,
    ComponentTypeId,
  ): {
    local base = self,
    Properties: {
      WorkspaceId:
        if !std.isString(WorkspaceId) then (error 'WorkspaceId must be a string')
        else if std.isEmpty(WorkspaceId) then (error 'WorkspaceId must be not empty')
        else if std.length(WorkspaceId) < 1 then error ('WorkspaceId should have at least 1 characters')
        else if std.length(WorkspaceId) > 128 then error ('WorkspaceId should have not more than 128 characters')
        else WorkspaceId,
      ComponentTypeId:
        if !std.isString(ComponentTypeId) then (error 'ComponentTypeId must be a string')
        else if std.isEmpty(ComponentTypeId) then (error 'ComponentTypeId must be not empty')
        else if std.length(ComponentTypeId) < 1 then error ('ComponentTypeId should have at least 1 characters')
        else if std.length(ComponentTypeId) > 256 then error ('ComponentTypeId should have not more than 256 characters')
        else ComponentTypeId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTTwinMaker::ComponentType',
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
  setExtendsFrom(ExtendsFrom): {
    Properties+::: {
      ExtendsFrom:
        if !std.isArray(ExtendsFrom) then (error 'ExtendsFrom must be an array')
        else if std.length(ExtendsFrom) < 1 then error ('ExtendsFrom cannot have less than 1 items')
        else if std.length(ExtendsFrom) > 256 then error ('ExtendsFrom cannot have more than 256 items')
        else ExtendsFrom,
    },
  },
  setExtendsFromMixin(ExtendsFrom): {
    Properties+::: {
      ExtendsFrom+: ExtendsFrom,
    },
  },
  setFunctions(Functions): {
    Properties+::: {
      Functions:
        if !std.isObject(Functions) then (error 'Functions must be an object')
        else Functions,
    },
  },
  setIsSingleton(IsSingleton): {
    Properties+::: {
      IsSingleton:
        if !std.isBoolean(IsSingleton) then (error 'IsSingleton must be a boolean') else IsSingleton,
    },
  },
  setPropertyDefinitions(PropertyDefinitions): {
    Properties+::: {
      PropertyDefinitions:
        if !std.isObject(PropertyDefinitions) then (error 'PropertyDefinitions must be an object')
        else PropertyDefinitions,
    },
  },
  setPropertyGroups(PropertyGroups): {
    Properties+::: {
      PropertyGroups:
        if !std.isObject(PropertyGroups) then (error 'PropertyGroups must be an object')
        else PropertyGroups,
    },
  },
  setCompositeComponentTypes(CompositeComponentTypes): {
    Properties+::: {
      CompositeComponentTypes:
        if !std.isObject(CompositeComponentTypes) then (error 'CompositeComponentTypes must be an object')
        else CompositeComponentTypes,
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
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isObject(Status) then (error 'Status must be an object')
        else Status,
    },
  },
  setIsAbstract(IsAbstract): {
    Properties+::: {
      IsAbstract:
        if !std.isBoolean(IsAbstract) then (error 'IsAbstract must be a boolean') else IsAbstract,
    },
  },
  setIsSchemaInitialized(IsSchemaInitialized): {
    Properties+::: {
      IsSchemaInitialized:
        if !std.isBoolean(IsSchemaInitialized) then (error 'IsSchemaInitialized must be a boolean') else IsSchemaInitialized,
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
