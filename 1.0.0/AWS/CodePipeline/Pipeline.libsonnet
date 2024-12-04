{
  new(
    Stages,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      Stages: (if std.isArray(Stages) then Stages else [Stages]),
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodePipeline::Pipeline',
  },
  withArtifactStores(ArtifactStores): {
    Properties+::: {
      ArtifactStores: (if std.isArray(ArtifactStores) then ArtifactStores else [ArtifactStores]),
    },
  },
  withArtifactStoresMixin(ArtifactStores): {
    Properties+::: {
      ArtifactStores+: (if std.isArray(ArtifactStores) then ArtifactStores else [ArtifactStores]),
    },
  },
  withDisableInboundStageTransitions(DisableInboundStageTransitions): {
    Properties+::: {
      DisableInboundStageTransitions: (if std.isArray(DisableInboundStageTransitions) then DisableInboundStageTransitions else [DisableInboundStageTransitions]),
    },
  },
  withDisableInboundStageTransitionsMixin(DisableInboundStageTransitions): {
    Properties+::: {
      DisableInboundStageTransitions+: (if std.isArray(DisableInboundStageTransitions) then DisableInboundStageTransitions else [DisableInboundStageTransitions]),
    },
  },
  withExecutionMode(ExecutionMode): {
    assert std.isString(ExecutionMode) : 'ExecutionMode must be a string',
    Properties+::: {
      ExecutionMode: ExecutionMode,
    },
  },
  withRestartExecutionOnUpdate(RestartExecutionOnUpdate): {
    assert std.isBoolean(RestartExecutionOnUpdate) : 'RestartExecutionOnUpdate must be a boolean',
    Properties+::: {
      RestartExecutionOnUpdate: RestartExecutionOnUpdate,
    },
  },
  withTriggers(Triggers): {
    Properties+::: {
      Triggers: (if std.isArray(Triggers) then Triggers else [Triggers]),
    },
  },
  withTriggersMixin(Triggers): {
    Properties+::: {
      Triggers+: (if std.isArray(Triggers) then Triggers else [Triggers]),
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withVariables(Variables): {
    Properties+::: {
      Variables: (if std.isArray(Variables) then Variables else [Variables]),
    },
  },
  withVariablesMixin(Variables): {
    Properties+::: {
      Variables+: (if std.isArray(Variables) then Variables else [Variables]),
    },
  },
  withVersion(Version): {
    assert std.isString(Version) : 'Version must be a string',
    Properties+::: {
      Version: Version,
    },
  },
  withArtifactStore(ArtifactStore): {
    assert std.isObject(ArtifactStore) : 'ArtifactStore must be a object',
    Properties+::: {
      ArtifactStore: ArtifactStore,
    },
  },
  withPipelineType(PipelineType): {
    assert std.isString(PipelineType) : 'PipelineType must be a string',
    Properties+::: {
      PipelineType: PipelineType,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
