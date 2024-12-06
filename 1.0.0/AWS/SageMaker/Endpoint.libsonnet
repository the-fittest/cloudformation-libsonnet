{
  new(
    EndpointConfigName,
  ): {
    local base = self,
    Properties: {
      EndpointConfigName:
        if !std.isString(EndpointConfigName) then (error 'EndpointConfigName must be a string')
        else if std.isEmpty(EndpointConfigName) then (error 'EndpointConfigName must be not empty')
        else EndpointConfigName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::Endpoint',
  },
  setDeploymentConfig(DeploymentConfig): {
    Properties+::: {
      DeploymentConfig:
        if !std.isObject(DeploymentConfig) then (error 'DeploymentConfig must be an object')
        else DeploymentConfig,
    },
  },
  setEndpointArn(EndpointArn): {
    Properties+::: {
      EndpointArn:
        if !std.isString(EndpointArn) then (error 'EndpointArn must be a string')
        else if std.isEmpty(EndpointArn) then (error 'EndpointArn must be not empty')
        else EndpointArn,
    },
  },
  setEndpointName(EndpointName): {
    Properties+::: {
      EndpointName:
        if !std.isString(EndpointName) then (error 'EndpointName must be a string')
        else if std.isEmpty(EndpointName) then (error 'EndpointName must be not empty')
        else EndpointName,
    },
  },
  setExcludeRetainedVariantProperties(ExcludeRetainedVariantProperties): {
    Properties+::: {
      ExcludeRetainedVariantProperties:
        if !std.isArray(ExcludeRetainedVariantProperties) then (error 'ExcludeRetainedVariantProperties must be an array')
        else ExcludeRetainedVariantProperties,
    },
  },
  pushExcludeRetainedVariantProperties(ExcludeRetainedVariantProperties): {
    Properties+::: {
      ExcludeRetainedVariantProperties+: ExcludeRetainedVariantProperties,
    },
  },
  setRetainAllVariantProperties(RetainAllVariantProperties): {
    Properties+::: {
      RetainAllVariantProperties:
        if !std.isBoolean(RetainAllVariantProperties) then (error 'RetainAllVariantProperties must be a boolean') else RetainAllVariantProperties,
    },
  },
  setRetainDeploymentConfig(RetainDeploymentConfig): {
    Properties+::: {
      RetainDeploymentConfig:
        if !std.isBoolean(RetainDeploymentConfig) then (error 'RetainDeploymentConfig must be a boolean') else RetainDeploymentConfig,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
