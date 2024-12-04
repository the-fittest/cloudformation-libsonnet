{
  // AWS SageMaker EndpointConfig
  EndpointConfig: {
    new(
      ProductionVariants,
    ): {
      local base = self,
      Properties: {
        ProductionVariants: (if std.isArray(ProductionVariants) then ProductionVariants else [ProductionVariants]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::EndpointConfig',
    },
    withShadowProductionVariants(ShadowProductionVariants): {
      Properties+::: {
        ShadowProductionVariants: (if std.isArray(ShadowProductionVariants) then ShadowProductionVariants else [ShadowProductionVariants]),
      },
    },
    withShadowProductionVariantsMixin(ShadowProductionVariants): {
      Properties+::: {
        ShadowProductionVariants+: (if std.isArray(ShadowProductionVariants) then ShadowProductionVariants else [ShadowProductionVariants]),
      },
    },
    withDataCaptureConfig(DataCaptureConfig): {
      assert std.isObject(DataCaptureConfig) : 'DataCaptureConfig must be a object',
      Properties+::: {
        DataCaptureConfig: DataCaptureConfig,
      },
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
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withAsyncInferenceConfig(AsyncInferenceConfig): {
      assert std.isObject(AsyncInferenceConfig) : 'AsyncInferenceConfig must be a object',
      Properties+::: {
        AsyncInferenceConfig: AsyncInferenceConfig,
      },
    },
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: {
        VpcConfig: VpcConfig,
      },
    },
    withEndpointConfigName(EndpointConfigName): {
      assert std.isString(EndpointConfigName) : 'EndpointConfigName must be a string',
      Properties+::: {
        EndpointConfigName: EndpointConfigName,
      },
    },
    withExplainerConfig(ExplainerConfig): {
      assert std.isObject(ExplainerConfig) : 'ExplainerConfig must be a object',
      Properties+::: {
        ExplainerConfig: ExplainerConfig,
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
  },
}
