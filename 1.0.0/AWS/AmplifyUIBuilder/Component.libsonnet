{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AmplifyUIBuilder::Component',
  },
  withAppId(AppId): {
    assert std.isString(AppId) : 'AppId must be a string',
    Properties+::: {
      AppId: AppId,
    },
  },
  withBindingProperties(BindingProperties): {
    assert std.isObject(BindingProperties) : 'BindingProperties must be a object',
    Properties+::: {
      BindingProperties: BindingProperties,
    },
  },
  withChildren(Children): {
    Properties+::: {
      Children: (if std.isArray(Children) then Children else [Children]),
    },
  },
  withChildrenMixin(Children): {
    Properties+::: {
      Children+: (if std.isArray(Children) then Children else [Children]),
    },
  },
  withCollectionProperties(CollectionProperties): {
    assert std.isObject(CollectionProperties) : 'CollectionProperties must be a object',
    Properties+::: {
      CollectionProperties: CollectionProperties,
    },
  },
  withComponentType(ComponentType): {
    assert std.isString(ComponentType) : 'ComponentType must be a string',
    Properties+::: {
      ComponentType: ComponentType,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withEnvironmentName(EnvironmentName): {
    assert std.isString(EnvironmentName) : 'EnvironmentName must be a string',
    Properties+::: {
      EnvironmentName: EnvironmentName,
    },
  },
  withEvents(Events): {
    assert std.isObject(Events) : 'Events must be a object',
    Properties+::: {
      Events: Events,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withModifiedAt(ModifiedAt): {
    assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
    Properties+::: {
      ModifiedAt: ModifiedAt,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withOverrides(Overrides): {
    assert std.isObject(Overrides) : 'Overrides must be a object',
    Properties+::: {
      Overrides: Overrides,
    },
  },
  withProperties(Properties): {
    assert std.isObject(Properties) : 'Properties must be a object',
    Properties+::: {
      Properties: Properties,
    },
  },
  withSchemaVersion(SchemaVersion): {
    assert std.isString(SchemaVersion) : 'SchemaVersion must be a string',
    Properties+::: {
      SchemaVersion: SchemaVersion,
    },
  },
  withSourceId(SourceId): {
    assert std.isString(SourceId) : 'SourceId must be a string',
    Properties+::: {
      SourceId: SourceId,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withVariants(Variants): {
    Properties+::: {
      Variants: (if std.isArray(Variants) then Variants else [Variants]),
    },
  },
  withVariantsMixin(Variants): {
    Properties+::: {
      Variants+: (if std.isArray(Variants) then Variants else [Variants]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
