{
  new(
    Stages,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      Stages:
        if !std.isArray(Stages) then (error 'Stages must be an array')
        else Stages,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodePipeline::Pipeline',
  },
  setArtifactStores(ArtifactStores): {
    Properties+::: {
      ArtifactStores:
        if !std.isArray(ArtifactStores) then (error 'ArtifactStores must be an array')
        else ArtifactStores,
    },
  },
  setArtifactStoresMixin(ArtifactStores): {
    Properties+::: {
      ArtifactStores+: ArtifactStores,
    },
  },
  setDisableInboundStageTransitions(DisableInboundStageTransitions): {
    Properties+::: {
      DisableInboundStageTransitions:
        if !std.isArray(DisableInboundStageTransitions) then (error 'DisableInboundStageTransitions must be an array')
        else DisableInboundStageTransitions,
    },
  },
  setDisableInboundStageTransitionsMixin(DisableInboundStageTransitions): {
    Properties+::: {
      DisableInboundStageTransitions+: DisableInboundStageTransitions,
    },
  },
  setExecutionMode(ExecutionMode): {
    Properties+::: {
      ExecutionMode:
        if !std.isString(ExecutionMode) then (error 'ExecutionMode must be a string')
        else if std.isEmpty(ExecutionMode) then (error 'ExecutionMode must be not empty')
        else if ExecutionMode != 'QUEUED' && ExecutionMode != 'SUPERSEDED' && ExecutionMode != 'PARALLEL' then (error "ExecutionMode should be 'QUEUED' or 'SUPERSEDED' or 'PARALLEL'")
        else ExecutionMode,
    },
  },
  setRestartExecutionOnUpdate(RestartExecutionOnUpdate): {
    Properties+::: {
      RestartExecutionOnUpdate:
        if !std.isBoolean(RestartExecutionOnUpdate) then (error 'RestartExecutionOnUpdate must be a boolean') else RestartExecutionOnUpdate,
    },
  },
  setTriggers(Triggers): {
    Properties+::: {
      Triggers:
        if !std.isArray(Triggers) then (error 'Triggers must be an array')
        else Triggers,
    },
  },
  setTriggersMixin(Triggers): {
    Properties+::: {
      Triggers+: Triggers,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setVariables(Variables): {
    Properties+::: {
      Variables:
        if !std.isArray(Variables) then (error 'Variables must be an array')
        else Variables,
    },
  },
  setVariablesMixin(Variables): {
    Properties+::: {
      Variables+: Variables,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setArtifactStore(ArtifactStore): {
    Properties+::: {
      ArtifactStore:
        if !std.isObject(ArtifactStore) then (error 'ArtifactStore must be an object')
        else if !std.objectHas(ArtifactStore, 'Type') then (error ' have attribute Type')
        else if !std.objectHas(ArtifactStore, 'Location') then (error ' have attribute Location')
        else ArtifactStore,
    },
  },
  setPipelineType(PipelineType): {
    Properties+::: {
      PipelineType:
        if !std.isString(PipelineType) then (error 'PipelineType must be a string')
        else if std.isEmpty(PipelineType) then (error 'PipelineType must be not empty')
        else if PipelineType != 'V1' && PipelineType != 'V2' then (error "PipelineType should be 'V1' or 'V2'")
        else PipelineType,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
