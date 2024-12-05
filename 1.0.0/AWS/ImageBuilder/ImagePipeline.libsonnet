{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ImageBuilder::ImagePipeline',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setImageTestsConfiguration(ImageTestsConfiguration): {
    Properties+::: {
      ImageTestsConfiguration:
        if !std.isObject(ImageTestsConfiguration) then (error 'ImageTestsConfiguration must be an object')
        else ImageTestsConfiguration,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'DISABLED' && Status != 'ENABLED' then (error "Status should be 'DISABLED' or 'ENABLED'")
        else Status,
    },
  },
  setSchedule(Schedule): {
    Properties+::: {
      Schedule:
        if !std.isObject(Schedule) then (error 'Schedule must be an object')
        else Schedule,
    },
  },
  setImageRecipeArn(ImageRecipeArn): {
    Properties+::: {
      ImageRecipeArn:
        if !std.isString(ImageRecipeArn) then (error 'ImageRecipeArn must be a string')
        else if std.isEmpty(ImageRecipeArn) then (error 'ImageRecipeArn must be not empty')
        else ImageRecipeArn,
    },
  },
  setContainerRecipeArn(ContainerRecipeArn): {
    Properties+::: {
      ContainerRecipeArn:
        if !std.isString(ContainerRecipeArn) then (error 'ContainerRecipeArn must be a string')
        else if std.isEmpty(ContainerRecipeArn) then (error 'ContainerRecipeArn must be not empty')
        else ContainerRecipeArn,
    },
  },
  setDistributionConfigurationArn(DistributionConfigurationArn): {
    Properties+::: {
      DistributionConfigurationArn:
        if !std.isString(DistributionConfigurationArn) then (error 'DistributionConfigurationArn must be a string')
        else if std.isEmpty(DistributionConfigurationArn) then (error 'DistributionConfigurationArn must be not empty')
        else DistributionConfigurationArn,
    },
  },
  setInfrastructureConfigurationArn(InfrastructureConfigurationArn): {
    Properties+::: {
      InfrastructureConfigurationArn:
        if !std.isString(InfrastructureConfigurationArn) then (error 'InfrastructureConfigurationArn must be a string')
        else if std.isEmpty(InfrastructureConfigurationArn) then (error 'InfrastructureConfigurationArn must be not empty')
        else InfrastructureConfigurationArn,
    },
  },
  setWorkflows(Workflows): {
    Properties+::: {
      Workflows:
        if !std.isArray(Workflows) then (error 'Workflows must be an array')
        else Workflows,
    },
  },
  setWorkflowsMixin(Workflows): {
    Properties+::: {
      Workflows+: Workflows,
    },
  },
  setEnhancedImageMetadataEnabled(EnhancedImageMetadataEnabled): {
    Properties+::: {
      EnhancedImageMetadataEnabled:
        if !std.isBoolean(EnhancedImageMetadataEnabled) then (error 'EnhancedImageMetadataEnabled must be a boolean') else EnhancedImageMetadataEnabled,
    },
  },
  setImageScanningConfiguration(ImageScanningConfiguration): {
    Properties+::: {
      ImageScanningConfiguration:
        if !std.isObject(ImageScanningConfiguration) then (error 'ImageScanningConfiguration must be an object')
        else ImageScanningConfiguration,
    },
  },
  setExecutionRole(ExecutionRole): {
    Properties+::: {
      ExecutionRole:
        if !std.isString(ExecutionRole) then (error 'ExecutionRole must be a string')
        else if std.isEmpty(ExecutionRole) then (error 'ExecutionRole must be not empty')
        else ExecutionRole,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
