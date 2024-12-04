{
  new(
    Name,
    Code,
    ArtifactS3Location,
    ExecutionRoleArn,
    Schedule,
    RuntimeVersion,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isObject(Code) : 'Code must be an object',
      Code: Code,
      assert std.isString(ArtifactS3Location) : 'ArtifactS3Location must be a string',
      ArtifactS3Location: ArtifactS3Location,
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      ExecutionRoleArn: ExecutionRoleArn,
      assert std.isObject(Schedule) : 'Schedule must be an object',
      Schedule: Schedule,
      assert std.isString(RuntimeVersion) : 'RuntimeVersion must be a string',
      RuntimeVersion: RuntimeVersion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Synthetics::Canary',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    Properties+::: {
      State: State,
    },
  },
  withArtifactConfig(ArtifactConfig): {
    assert std.isObject(ArtifactConfig) : 'ArtifactConfig must be a object',
    Properties+::: {
      ArtifactConfig: ArtifactConfig,
    },
  },
  withSuccessRetentionPeriod(SuccessRetentionPeriod): {
    assert std.isNumber(SuccessRetentionPeriod) : 'SuccessRetentionPeriod must be a number',
    Properties+::: {
      SuccessRetentionPeriod: SuccessRetentionPeriod,
    },
  },
  withFailureRetentionPeriod(FailureRetentionPeriod): {
    assert std.isNumber(FailureRetentionPeriod) : 'FailureRetentionPeriod must be a number',
    Properties+::: {
      FailureRetentionPeriod: FailureRetentionPeriod,
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
  withVPCConfig(VPCConfig): {
    assert std.isObject(VPCConfig) : 'VPCConfig must be a object',
    Properties+::: {
      VPCConfig: VPCConfig,
    },
  },
  withRunConfig(RunConfig): {
    assert std.isObject(RunConfig) : 'RunConfig must be a object',
    Properties+::: {
      RunConfig: RunConfig,
    },
  },
  withStartCanaryAfterCreation(StartCanaryAfterCreation): {
    assert std.isBoolean(StartCanaryAfterCreation) : 'StartCanaryAfterCreation must be a boolean',
    Properties+::: {
      StartCanaryAfterCreation: StartCanaryAfterCreation,
    },
  },
  withVisualReference(VisualReference): {
    assert std.isObject(VisualReference) : 'VisualReference must be a object',
    Properties+::: {
      VisualReference: VisualReference,
    },
  },
  withDeleteLambdaResourcesOnCanaryDeletion(DeleteLambdaResourcesOnCanaryDeletion): {
    assert std.isBoolean(DeleteLambdaResourcesOnCanaryDeletion) : 'DeleteLambdaResourcesOnCanaryDeletion must be a boolean',
    Properties+::: {
      DeleteLambdaResourcesOnCanaryDeletion: DeleteLambdaResourcesOnCanaryDeletion,
    },
  },
  withResourcesToReplicateTags(ResourcesToReplicateTags): {
    Properties+::: {
      ResourcesToReplicateTags: (if std.isArray(ResourcesToReplicateTags) then ResourcesToReplicateTags else [ResourcesToReplicateTags]),
    },
  },
  withResourcesToReplicateTagsMixin(ResourcesToReplicateTags): {
    Properties+::: {
      ResourcesToReplicateTags+: (if std.isArray(ResourcesToReplicateTags) then ResourcesToReplicateTags else [ResourcesToReplicateTags]),
    },
  },
  withProvisionedResourceCleanup(ProvisionedResourceCleanup): {
    assert std.isString(ProvisionedResourceCleanup) : 'ProvisionedResourceCleanup must be a string',
    assert ProvisionedResourceCleanup == 'AUTOMATIC' || ProvisionedResourceCleanup == 'OFF' : "ProvisionedResourceCleanup should be 'AUTOMATIC' or 'OFF'",
    Properties+::: {
      ProvisionedResourceCleanup: ProvisionedResourceCleanup,
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
