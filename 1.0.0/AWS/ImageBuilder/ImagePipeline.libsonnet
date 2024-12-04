{
  // AWS ImageBuilder ImagePipeline
  ImagePipeline: {
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
      Type: 'AWS::ImageBuilder::ImagePipeline',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withImageTestsConfiguration(ImageTestsConfiguration): {
      assert std.isObject(ImageTestsConfiguration) : 'ImageTestsConfiguration must be a object',
      Properties+::: {
        ImageTestsConfiguration: ImageTestsConfiguration,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: {
        Schedule: Schedule,
      },
    },
    withImageRecipeArn(ImageRecipeArn): {
      assert std.isString(ImageRecipeArn) : 'ImageRecipeArn must be a string',
      Properties+::: {
        ImageRecipeArn: ImageRecipeArn,
      },
    },
    withContainerRecipeArn(ContainerRecipeArn): {
      assert std.isString(ContainerRecipeArn) : 'ContainerRecipeArn must be a string',
      Properties+::: {
        ContainerRecipeArn: ContainerRecipeArn,
      },
    },
    withDistributionConfigurationArn(DistributionConfigurationArn): {
      assert std.isString(DistributionConfigurationArn) : 'DistributionConfigurationArn must be a string',
      Properties+::: {
        DistributionConfigurationArn: DistributionConfigurationArn,
      },
    },
    withInfrastructureConfigurationArn(InfrastructureConfigurationArn): {
      assert std.isString(InfrastructureConfigurationArn) : 'InfrastructureConfigurationArn must be a string',
      Properties+::: {
        InfrastructureConfigurationArn: InfrastructureConfigurationArn,
      },
    },
    withWorkflows(Workflows): {
      Properties+::: {
        Workflows: (if std.isArray(Workflows) then Workflows else [Workflows]),
      },
    },
    withWorkflowsMixin(Workflows): {
      Properties+::: {
        Workflows+: (if std.isArray(Workflows) then Workflows else [Workflows]),
      },
    },
    withEnhancedImageMetadataEnabled(EnhancedImageMetadataEnabled): {
      assert std.isBoolean(EnhancedImageMetadataEnabled) : 'EnhancedImageMetadataEnabled must be a boolean',
      Properties+::: {
        EnhancedImageMetadataEnabled: EnhancedImageMetadataEnabled,
      },
    },
    withImageScanningConfiguration(ImageScanningConfiguration): {
      assert std.isObject(ImageScanningConfiguration) : 'ImageScanningConfiguration must be a object',
      Properties+::: {
        ImageScanningConfiguration: ImageScanningConfiguration,
      },
    },
    withExecutionRole(ExecutionRole): {
      assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
      Properties+::: {
        ExecutionRole: ExecutionRole,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
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
