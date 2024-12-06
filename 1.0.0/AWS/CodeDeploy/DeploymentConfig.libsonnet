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
    Type: 'AWS::CodeDeploy::DeploymentConfig',
  },
  setComputePlatform(ComputePlatform): {
    Properties+::: {
      ComputePlatform:
        if !std.isString(ComputePlatform) then (error 'ComputePlatform must be a string')
        else if std.isEmpty(ComputePlatform) then (error 'ComputePlatform must be not empty')
        else ComputePlatform,
    },
  },
  setDeploymentConfigName(DeploymentConfigName): {
    Properties+::: {
      DeploymentConfigName:
        if !std.isString(DeploymentConfigName) then (error 'DeploymentConfigName must be a string')
        else if std.isEmpty(DeploymentConfigName) then (error 'DeploymentConfigName must be not empty')
        else DeploymentConfigName,
    },
  },
  setMinimumHealthyHosts(MinimumHealthyHosts): {
    Properties+::: {
      MinimumHealthyHosts:
        if !std.isObject(MinimumHealthyHosts) then (error 'MinimumHealthyHosts must be an object')
        else if !std.objectHas(MinimumHealthyHosts, 'Type') then (error ' have attribute Type')
        else if !std.objectHas(MinimumHealthyHosts, 'Value') then (error ' have attribute Value')
        else MinimumHealthyHosts,
    },
  },
  setZonalConfig(ZonalConfig): {
    Properties+::: {
      ZonalConfig:
        if !std.isObject(ZonalConfig) then (error 'ZonalConfig must be an object')
        else ZonalConfig,
    },
  },
  setTrafficRoutingConfig(TrafficRoutingConfig): {
    Properties+::: {
      TrafficRoutingConfig:
        if !std.isObject(TrafficRoutingConfig) then (error 'TrafficRoutingConfig must be an object')
        else if !std.objectHas(TrafficRoutingConfig, 'Type') then (error ' have attribute Type')
        else TrafficRoutingConfig,
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
