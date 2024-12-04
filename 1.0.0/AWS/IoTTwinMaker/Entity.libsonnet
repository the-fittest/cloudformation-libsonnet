{
  // AWS IoTTwinMaker Entity
  Entity: {
    new(
      WorkspaceId,
      EntityName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
        WorkspaceId: WorkspaceId,
        assert std.isString(EntityName) : 'EntityName must be a string',
        EntityName: EntityName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoTTwinMaker::Entity',
    },
    withEntityId(EntityId): {
      assert std.isString(EntityId) : 'EntityId must be a string',
      Properties+::: {
        EntityId: EntityId,
      },
    },
    withStatus(Status): {
      assert std.isObject(Status) : 'Status must be a object',
      Properties+::: {
        Status: Status,
      },
    },
    withHasChildEntities(HasChildEntities): {
      assert std.isBoolean(HasChildEntities) : 'HasChildEntities must be a boolean',
      Properties+::: {
        HasChildEntities: HasChildEntities,
      },
    },
    withParentEntityId(ParentEntityId): {
      assert std.isString(ParentEntityId) : 'ParentEntityId must be a string',
      Properties+::: {
        ParentEntityId: ParentEntityId,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
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
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
      },
    },
    withComponents(Components): {
      assert std.isObject(Components) : 'Components must be a object',
      Properties+::: {
        Components: Components,
      },
    },
    withCompositeComponents(CompositeComponents): {
      assert std.isObject(CompositeComponents) : 'CompositeComponents must be a object',
      Properties+::: {
        CompositeComponents: CompositeComponents,
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
  },
}
