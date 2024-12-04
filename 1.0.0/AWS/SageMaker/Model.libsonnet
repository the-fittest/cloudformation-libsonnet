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
    Type: 'AWS::SageMaker::Model',
  },
  withExecutionRoleArn(ExecutionRoleArn): {
    assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
    Properties+::: {
      ExecutionRoleArn: ExecutionRoleArn,
    },
  },
  withEnableNetworkIsolation(EnableNetworkIsolation): {
    assert std.isBoolean(EnableNetworkIsolation) : 'EnableNetworkIsolation must be a boolean',
    Properties+::: {
      EnableNetworkIsolation: EnableNetworkIsolation,
    },
  },
  withPrimaryContainer(PrimaryContainer): {
    assert std.isObject(PrimaryContainer) : 'PrimaryContainer must be a object',
    Properties+::: {
      PrimaryContainer: PrimaryContainer,
    },
  },
  withModelName(ModelName): {
    assert std.isString(ModelName) : 'ModelName must be a string',
    Properties+::: {
      ModelName: ModelName,
    },
  },
  withVpcConfig(VpcConfig): {
    assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
    Properties+::: {
      VpcConfig: VpcConfig,
    },
  },
  withContainers(Containers): {
    Properties+::: {
      Containers: (if std.isArray(Containers) then Containers else [Containers]),
    },
  },
  withContainersMixin(Containers): {
    Properties+::: {
      Containers+: (if std.isArray(Containers) then Containers else [Containers]),
    },
  },
  withInferenceExecutionConfig(InferenceExecutionConfig): {
    assert std.isObject(InferenceExecutionConfig) : 'InferenceExecutionConfig must be a object',
    Properties+::: {
      InferenceExecutionConfig: InferenceExecutionConfig,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
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
