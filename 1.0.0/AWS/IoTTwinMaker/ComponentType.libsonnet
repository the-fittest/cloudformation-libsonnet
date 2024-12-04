{
  new(
    WorkspaceId,
    ComponentTypeId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
      WorkspaceId: WorkspaceId,
      assert std.isString(ComponentTypeId) : 'ComponentTypeId must be a string',
      ComponentTypeId: ComponentTypeId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTTwinMaker::ComponentType',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withExtendsFrom(ExtendsFrom): {
    Properties+::: {
      ExtendsFrom: (if std.isArray(ExtendsFrom) then ExtendsFrom else [ExtendsFrom]),
    },
  },
  withExtendsFromMixin(ExtendsFrom): {
    Properties+::: {
      ExtendsFrom+: (if std.isArray(ExtendsFrom) then ExtendsFrom else [ExtendsFrom]),
    },
  },
  withFunctions(Functions): {
    assert std.isObject(Functions) : 'Functions must be a object',
    Properties+::: {
      Functions: Functions,
    },
  },
  withIsSingleton(IsSingleton): {
    assert std.isBoolean(IsSingleton) : 'IsSingleton must be a boolean',
    Properties+::: {
      IsSingleton: IsSingleton,
    },
  },
  withPropertyDefinitions(PropertyDefinitions): {
    assert std.isObject(PropertyDefinitions) : 'PropertyDefinitions must be a object',
    Properties+::: {
      PropertyDefinitions: PropertyDefinitions,
    },
  },
  withPropertyGroups(PropertyGroups): {
    assert std.isObject(PropertyGroups) : 'PropertyGroups must be a object',
    Properties+::: {
      PropertyGroups: PropertyGroups,
    },
  },
  withCompositeComponentTypes(CompositeComponentTypes): {
    assert std.isObject(CompositeComponentTypes) : 'CompositeComponentTypes must be a object',
    Properties+::: {
      CompositeComponentTypes: CompositeComponentTypes,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCreationDateTime(CreationDateTime): {
    assert std.isString(CreationDateTime) : 'CreationDateTime must be a string',
    Properties+::: {
      CreationDateTime: CreationDateTime,
    },
  },
  withUpdateDateTime(UpdateDateTime): {
    assert std.isString(UpdateDateTime) : 'UpdateDateTime must be a string',
    Properties+::: {
      UpdateDateTime: UpdateDateTime,
    },
  },
  withStatus(Status): {
    assert std.isObject(Status) : 'Status must be a object',
    Properties+::: {
      Status: Status,
    },
  },
  withIsAbstract(IsAbstract): {
    assert std.isBoolean(IsAbstract) : 'IsAbstract must be a boolean',
    Properties+::: {
      IsAbstract: IsAbstract,
    },
  },
  withIsSchemaInitialized(IsSchemaInitialized): {
    assert std.isBoolean(IsSchemaInitialized) : 'IsSchemaInitialized must be a boolean',
    Properties+::: {
      IsSchemaInitialized: IsSchemaInitialized,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
