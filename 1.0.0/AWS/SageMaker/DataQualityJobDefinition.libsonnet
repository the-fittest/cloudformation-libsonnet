{
  // AWS SageMaker DataQualityJobDefinition
  DataQualityJobDefinition: {
    new(
      DataQualityAppSpecification,
      DataQualityJobInput,
      DataQualityJobOutputConfig,
      JobResources,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DataQualityAppSpecification) : 'DataQualityAppSpecification must be an object',
        DataQualityAppSpecification: DataQualityAppSpecification,
        assert std.isObject(DataQualityJobInput) : 'DataQualityJobInput must be an object',
        DataQualityJobInput: DataQualityJobInput,
        assert std.isObject(DataQualityJobOutputConfig) : 'DataQualityJobOutputConfig must be an object',
        DataQualityJobOutputConfig: DataQualityJobOutputConfig,
        assert std.isObject(JobResources) : 'JobResources must be an object',
        JobResources: JobResources,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::DataQualityJobDefinition',
    },
    withJobDefinitionArn(JobDefinitionArn): {
      assert std.isString(JobDefinitionArn) : 'JobDefinitionArn must be a string',
      Properties+::: {
        JobDefinitionArn: JobDefinitionArn,
      },
    },
    withJobDefinitionName(JobDefinitionName): {
      assert std.isString(JobDefinitionName) : 'JobDefinitionName must be a string',
      Properties+::: {
        JobDefinitionName: JobDefinitionName,
      },
    },
    withDataQualityBaselineConfig(DataQualityBaselineConfig): {
      assert std.isObject(DataQualityBaselineConfig) : 'DataQualityBaselineConfig must be a object',
      Properties+::: {
        DataQualityBaselineConfig: DataQualityBaselineConfig,
      },
    },
    withNetworkConfig(NetworkConfig): {
      assert std.isObject(NetworkConfig) : 'NetworkConfig must be a object',
      Properties+::: {
        NetworkConfig: NetworkConfig,
      },
    },
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: {
        EndpointName: EndpointName,
      },
    },
    withStoppingCondition(StoppingCondition): {
      assert std.isObject(StoppingCondition) : 'StoppingCondition must be a object',
      Properties+::: {
        StoppingCondition: StoppingCondition,
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
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
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