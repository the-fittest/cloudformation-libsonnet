{
  new(
    ProductionVariants,
  ): {
    local base = self,
    Properties: {
      ProductionVariants:
        if !std.isArray(ProductionVariants) then (error 'ProductionVariants must be an array')
        else ProductionVariants,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::EndpointConfig',
  },
  setShadowProductionVariants(ShadowProductionVariants): {
    Properties+::: {
      ShadowProductionVariants:
        if !std.isArray(ShadowProductionVariants) then (error 'ShadowProductionVariants must be an array')
        else ShadowProductionVariants,
    },
  },
  setShadowProductionVariantsMixin(ShadowProductionVariants): {
    Properties+::: {
      ShadowProductionVariants+: ShadowProductionVariants,
    },
  },
  setDataCaptureConfig(DataCaptureConfig): {
    Properties+::: {
      DataCaptureConfig:
        if !std.isObject(DataCaptureConfig) then (error 'DataCaptureConfig must be an object')
        else if !std.objectHas(DataCaptureConfig, 'CaptureOptions') then (error ' have attribute CaptureOptions')
        else if !std.objectHas(DataCaptureConfig, 'DestinationS3Uri') then (error ' have attribute DestinationS3Uri')
        else if !std.objectHas(DataCaptureConfig, 'InitialSamplingPercentage') then (error ' have attribute InitialSamplingPercentage')
        else DataCaptureConfig,
    },
  },
  setExecutionRoleArn(ExecutionRoleArn): {
    Properties+::: {
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else ExecutionRoleArn,
    },
  },
  setEnableNetworkIsolation(EnableNetworkIsolation): {
    Properties+::: {
      EnableNetworkIsolation:
        if !std.isBoolean(EnableNetworkIsolation) then (error 'EnableNetworkIsolation must be a boolean') else EnableNetworkIsolation,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setAsyncInferenceConfig(AsyncInferenceConfig): {
    Properties+::: {
      AsyncInferenceConfig:
        if !std.isObject(AsyncInferenceConfig) then (error 'AsyncInferenceConfig must be an object')
        else if !std.objectHas(AsyncInferenceConfig, 'OutputConfig') then (error ' have attribute OutputConfig')
        else AsyncInferenceConfig,
    },
  },
  setVpcConfig(VpcConfig): {
    Properties+::: {
      VpcConfig:
        if !std.isObject(VpcConfig) then (error 'VpcConfig must be an object')
        else if !std.objectHas(VpcConfig, 'Subnets') then (error ' have attribute Subnets')
        else if !std.objectHas(VpcConfig, 'SecurityGroupIds') then (error ' have attribute SecurityGroupIds')
        else VpcConfig,
    },
  },
  setEndpointConfigName(EndpointConfigName): {
    Properties+::: {
      EndpointConfigName:
        if !std.isString(EndpointConfigName) then (error 'EndpointConfigName must be a string')
        else if std.isEmpty(EndpointConfigName) then (error 'EndpointConfigName must be not empty')
        else EndpointConfigName,
    },
  },
  setExplainerConfig(ExplainerConfig): {
    Properties+::: {
      ExplainerConfig:
        if !std.isObject(ExplainerConfig) then (error 'ExplainerConfig must be an object')
        else ExplainerConfig,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
