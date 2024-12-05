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
    Type: 'AWS::AmplifyUIBuilder::Component',
  },
  setAppId(AppId): {
    Properties+::: {
      AppId:
        if !std.isString(AppId) then (error 'AppId must be a string')
        else if std.isEmpty(AppId) then (error 'AppId must be not empty')
        else AppId,
    },
  },
  setBindingProperties(BindingProperties): {
    Properties+::: {
      BindingProperties:
        if !std.isObject(BindingProperties) then (error 'BindingProperties must be an object')
        else BindingProperties,
    },
  },
  setChildren(Children): {
    Properties+::: {
      Children:
        if !std.isArray(Children) then (error 'Children must be an array')
        else Children,
    },
  },
  setChildrenMixin(Children): {
    Properties+::: {
      Children+: Children,
    },
  },
  setCollectionProperties(CollectionProperties): {
    Properties+::: {
      CollectionProperties:
        if !std.isObject(CollectionProperties) then (error 'CollectionProperties must be an object')
        else CollectionProperties,
    },
  },
  setComponentType(ComponentType): {
    Properties+::: {
      ComponentType:
        if !std.isString(ComponentType) then (error 'ComponentType must be a string')
        else if std.isEmpty(ComponentType) then (error 'ComponentType must be not empty')
        else if std.length(ComponentType) < 1 then error ('ComponentType should have at least 1 characters')
        else if std.length(ComponentType) > 255 then error ('ComponentType should have not more than 255 characters')
        else ComponentType,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setEnvironmentName(EnvironmentName): {
    Properties+::: {
      EnvironmentName:
        if !std.isString(EnvironmentName) then (error 'EnvironmentName must be a string')
        else if std.isEmpty(EnvironmentName) then (error 'EnvironmentName must be not empty')
        else EnvironmentName,
    },
  },
  setEvents(Events): {
    Properties+::: {
      Events:
        if !std.isObject(Events) then (error 'Events must be an object')
        else Events,
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
  setModifiedAt(ModifiedAt): {
    Properties+::: {
      ModifiedAt:
        if !std.isString(ModifiedAt) then (error 'ModifiedAt must be a string')
        else if std.isEmpty(ModifiedAt) then (error 'ModifiedAt must be not empty')
        else ModifiedAt,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
  },
  setOverrides(Overrides): {
    Properties+::: {
      Overrides:
        if !std.isObject(Overrides) then (error 'Overrides must be an object')
        else Overrides,
    },
  },
  setProperties(Properties): {
    Properties+::: {
      Properties:
        if !std.isObject(Properties) then (error 'Properties must be an object')
        else Properties,
    },
  },
  setSchemaVersion(SchemaVersion): {
    Properties+::: {
      SchemaVersion:
        if !std.isString(SchemaVersion) then (error 'SchemaVersion must be a string')
        else if std.isEmpty(SchemaVersion) then (error 'SchemaVersion must be not empty')
        else SchemaVersion,
    },
  },
  setSourceId(SourceId): {
    Properties+::: {
      SourceId:
        if !std.isString(SourceId) then (error 'SourceId must be a string')
        else if std.isEmpty(SourceId) then (error 'SourceId must be not empty')
        else SourceId,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setVariants(Variants): {
    Properties+::: {
      Variants:
        if !std.isArray(Variants) then (error 'Variants must be an array')
        else Variants,
    },
  },
  setVariantsMixin(Variants): {
    Properties+::: {
      Variants+: Variants,
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
