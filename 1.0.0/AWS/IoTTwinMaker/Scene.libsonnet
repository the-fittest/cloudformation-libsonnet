{
  // AWS IoTTwinMaker Scene
  Scene: {
    new(
      WorkspaceId,
      SceneId,
      ContentLocation,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
        WorkspaceId: WorkspaceId,
        assert std.isString(SceneId) : 'SceneId must be a string',
        SceneId: SceneId,
        assert std.isString(ContentLocation) : 'ContentLocation must be a string',
        ContentLocation: ContentLocation,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoTTwinMaker::Scene',
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
    withCapabilities(Capabilities): {
      Properties+::: {
        Capabilities: (if std.isArray(Capabilities) then Capabilities else [Capabilities]),
      },
    },
    withCapabilitiesMixin(Capabilities): {
      Properties+::: {
        Capabilities+: (if std.isArray(Capabilities) then Capabilities else [Capabilities]),
      },
    },
    withSceneMetadata(SceneMetadata): {
      assert std.isObject(SceneMetadata) : 'SceneMetadata must be a object',
      Properties+::: {
        SceneMetadata: SceneMetadata,
      },
    },
    withGeneratedSceneMetadata(GeneratedSceneMetadata): {
      assert std.isObject(GeneratedSceneMetadata) : 'GeneratedSceneMetadata must be a object',
      Properties+::: {
        GeneratedSceneMetadata: GeneratedSceneMetadata,
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
