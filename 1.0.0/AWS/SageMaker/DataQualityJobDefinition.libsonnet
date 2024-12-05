{
  new(
    DataQualityAppSpecification,
    DataQualityJobInput,
    DataQualityJobOutputConfig,
    JobResources,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      DataQualityAppSpecification:
        if !std.isObject(DataQualityAppSpecification) then (error 'DataQualityAppSpecification must be an object')
        else if !std.objectHas(DataQualityAppSpecification, 'ImageUri') then (error ' have attribute ImageUri')
        else DataQualityAppSpecification,
      DataQualityJobInput:
        if !std.isObject(DataQualityJobInput) then (error 'DataQualityJobInput must be an object')
        else DataQualityJobInput,
      DataQualityJobOutputConfig:
        if !std.isObject(DataQualityJobOutputConfig) then (error 'DataQualityJobOutputConfig must be an object')
        else if !std.objectHas(DataQualityJobOutputConfig, 'MonitoringOutputs') then (error ' have attribute MonitoringOutputs')
        else DataQualityJobOutputConfig,
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
    Type: 'AWS::SageMaker::DataQualityJobDefinition',
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
  setDataQualityBaselineConfig(DataQualityBaselineConfig): {
    Properties+::: {
      DataQualityBaselineConfig:
        if !std.isObject(DataQualityBaselineConfig) then (error 'DataQualityBaselineConfig must be an object')
        else DataQualityBaselineConfig,
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
