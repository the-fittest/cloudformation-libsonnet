{
  new(
    ModelBiasAppSpecification,
    ModelBiasJobInput,
    ModelBiasJobOutputConfig,
    JobResources,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      ModelBiasAppSpecification:
        if !std.isObject(ModelBiasAppSpecification) then (error 'ModelBiasAppSpecification must be an object')
        else if !std.objectHas(ModelBiasAppSpecification, 'ImageUri') then (error ' have attribute ImageUri')
        else if !std.objectHas(ModelBiasAppSpecification, 'ConfigUri') then (error ' have attribute ConfigUri')
        else ModelBiasAppSpecification,
      ModelBiasJobInput:
        if !std.isObject(ModelBiasJobInput) then (error 'ModelBiasJobInput must be an object')
        else if !std.objectHas(ModelBiasJobInput, 'GroundTruthS3Input') then (error ' have attribute GroundTruthS3Input')
        else ModelBiasJobInput,
      ModelBiasJobOutputConfig:
        if !std.isObject(ModelBiasJobOutputConfig) then (error 'ModelBiasJobOutputConfig must be an object')
        else if !std.objectHas(ModelBiasJobOutputConfig, 'MonitoringOutputs') then (error ' have attribute MonitoringOutputs')
        else ModelBiasJobOutputConfig,
      JobResources:
        if !std.isObject(JobResources) then (error 'JobResources must be an object')
        else if !std.objectHas(JobResources, 'ClusterConfig') then (error ' have attribute ClusterConfig')
        else JobResources,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 20 then error ('RoleArn should have at least 20 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::ModelBiasJobDefinition',
  },
  setJobDefinitionArn(JobDefinitionArn): {
    Properties+::: {
      JobDefinitionArn:
        if !std.isString(JobDefinitionArn) then (error 'JobDefinitionArn must be a string')
        else if std.isEmpty(JobDefinitionArn) then (error 'JobDefinitionArn must be not empty')
        else if std.length(JobDefinitionArn) < 1 then error ('JobDefinitionArn should have at least 1 characters')
        else if std.length(JobDefinitionArn) > 256 then error ('JobDefinitionArn should have not more than 256 characters')
        else JobDefinitionArn,
    },
  },
  setJobDefinitionName(JobDefinitionName): {
    Properties+::: {
      JobDefinitionName:
        if !std.isString(JobDefinitionName) then (error 'JobDefinitionName must be a string')
        else if std.isEmpty(JobDefinitionName) then (error 'JobDefinitionName must be not empty')
        else if std.length(JobDefinitionName) > 63 then error ('JobDefinitionName should have not more than 63 characters')
        else JobDefinitionName,
    },
  },
  setModelBiasBaselineConfig(ModelBiasBaselineConfig): {
    Properties+::: {
      ModelBiasBaselineConfig:
        if !std.isObject(ModelBiasBaselineConfig) then (error 'ModelBiasBaselineConfig must be an object')
        else ModelBiasBaselineConfig,
    },
  },
  setNetworkConfig(NetworkConfig): {
    Properties+::: {
      NetworkConfig:
        if !std.isObject(NetworkConfig) then (error 'NetworkConfig must be an object')
        else NetworkConfig,
    },
  },
  setEndpointName(EndpointName): {
    Properties+::: {
      EndpointName:
        if !std.isString(EndpointName) then (error 'EndpointName must be a string')
        else if std.isEmpty(EndpointName) then (error 'EndpointName must be not empty')
        else if std.length(EndpointName) > 63 then error ('EndpointName should have not more than 63 characters')
        else EndpointName,
    },
  },
  setStoppingCondition(StoppingCondition): {
    Properties+::: {
      StoppingCondition:
        if !std.isObject(StoppingCondition) then (error 'StoppingCondition must be an object')
        else if !std.objectHas(StoppingCondition, 'MaxRuntimeInSeconds') then (error ' have attribute MaxRuntimeInSeconds')
        else StoppingCondition,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
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
