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
    Type: 'AWS::SageMaker::Model',
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
  setPrimaryContainer(PrimaryContainer): {
    Properties+::: {
      PrimaryContainer:
        if !std.isObject(PrimaryContainer) then (error 'PrimaryContainer must be an object')
        else PrimaryContainer,
    },
  },
  setModelName(ModelName): {
    Properties+::: {
      ModelName:
        if !std.isString(ModelName) then (error 'ModelName must be a string')
        else if std.isEmpty(ModelName) then (error 'ModelName must be not empty')
        else ModelName,
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
  setContainers(Containers): {
    Properties+::: {
      Containers:
        if !std.isArray(Containers) then (error 'Containers must be an array')
        else Containers,
    },
  },
  setContainersMixin(Containers): {
    Properties+::: {
      Containers+: Containers,
    },
  },
  setInferenceExecutionConfig(InferenceExecutionConfig): {
    Properties+::: {
      InferenceExecutionConfig:
        if !std.isObject(InferenceExecutionConfig) then (error 'InferenceExecutionConfig must be an object')
        else if !std.objectHas(InferenceExecutionConfig, 'Mode') then (error ' have attribute Mode')
        else InferenceExecutionConfig,
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
