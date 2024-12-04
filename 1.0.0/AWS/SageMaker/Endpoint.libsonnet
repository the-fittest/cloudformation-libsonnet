{
  // AWS SageMaker Endpoint
  Endpoint: {
    new(
      EndpointConfigName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EndpointConfigName) : 'EndpointConfigName must be a string',
        EndpointConfigName: EndpointConfigName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::Endpoint',
    },
    withDeploymentConfig(DeploymentConfig): {
      assert std.isObject(DeploymentConfig) : 'DeploymentConfig must be a object',
      Properties+::: {
        DeploymentConfig: DeploymentConfig,
      },
    },
    withEndpointArn(EndpointArn): {
      assert std.isString(EndpointArn) : 'EndpointArn must be a string',
      Properties+::: {
        EndpointArn: EndpointArn,
      },
    },
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: {
        EndpointName: EndpointName,
      },
    },
    withExcludeRetainedVariantProperties(ExcludeRetainedVariantProperties): {
      Properties+::: {
        ExcludeRetainedVariantProperties: (if std.isArray(ExcludeRetainedVariantProperties) then ExcludeRetainedVariantProperties else [ExcludeRetainedVariantProperties]),
      },
    },
    withExcludeRetainedVariantPropertiesMixin(ExcludeRetainedVariantProperties): {
      Properties+::: {
        ExcludeRetainedVariantProperties+: (if std.isArray(ExcludeRetainedVariantProperties) then ExcludeRetainedVariantProperties else [ExcludeRetainedVariantProperties]),
      },
    },
    withRetainAllVariantProperties(RetainAllVariantProperties): {
      assert std.isBoolean(RetainAllVariantProperties) : 'RetainAllVariantProperties must be a boolean',
      Properties+::: {
        RetainAllVariantProperties: RetainAllVariantProperties,
      },
    },
    withRetainDeploymentConfig(RetainDeploymentConfig): {
      assert std.isBoolean(RetainDeploymentConfig) : 'RetainDeploymentConfig must be a boolean',
      Properties+::: {
        RetainDeploymentConfig: RetainDeploymentConfig,
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
