{
  new(
    WorkspaceId,
    SceneId,
    ContentLocation,
  ): {
    local base = self,
    Properties: {
      WorkspaceId:
        if !std.isString(WorkspaceId) then (error 'WorkspaceId must be a string')
        else if std.isEmpty(WorkspaceId) then (error 'WorkspaceId must be not empty')
        else if std.length(WorkspaceId) < 1 then error ('WorkspaceId should have at least 1 characters')
        else if std.length(WorkspaceId) > 128 then error ('WorkspaceId should have not more than 128 characters')
        else WorkspaceId,
      SceneId:
        if !std.isString(SceneId) then (error 'SceneId must be a string')
        else if std.isEmpty(SceneId) then (error 'SceneId must be not empty')
        else if std.length(SceneId) < 1 then error ('SceneId should have at least 1 characters')
        else if std.length(SceneId) > 128 then error ('SceneId should have not more than 128 characters')
        else SceneId,
      ContentLocation:
        if !std.isString(ContentLocation) then (error 'ContentLocation must be a string')
        else if std.isEmpty(ContentLocation) then (error 'ContentLocation must be not empty')
        else if std.length(ContentLocation) > 256 then error ('ContentLocation should have not more than 256 characters')
        else ContentLocation,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTTwinMaker::Scene',
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
  setCapabilities(Capabilities): {
    Properties+::: {
      Capabilities:
        if !std.isArray(Capabilities) then (error 'Capabilities must be an array')
        else if std.length(Capabilities) > 50 then error ('Capabilities cannot have more than 50 items')
        else Capabilities,
    },
  },
  setCapabilitiesMixin(Capabilities): {
    Properties+::: {
      Capabilities+: Capabilities,
    },
  },
  setSceneMetadata(SceneMetadata): {
    Properties+::: {
      SceneMetadata:
        if !std.isObject(SceneMetadata) then (error 'SceneMetadata must be an object')
        else SceneMetadata,
    },
  },
  setGeneratedSceneMetadata(GeneratedSceneMetadata): {
    Properties+::: {
      GeneratedSceneMetadata:
        if !std.isObject(GeneratedSceneMetadata) then (error 'GeneratedSceneMetadata must be an object')
        else GeneratedSceneMetadata,
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
