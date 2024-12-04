{
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
    Type: 'AWS::CodeDeploy::DeploymentConfig',
  },
  withComputePlatform(ComputePlatform): {
    assert std.isString(ComputePlatform) : 'ComputePlatform must be a string',
    Properties+::: {
      ComputePlatform: ComputePlatform,
    },
  },
  withDeploymentConfigName(DeploymentConfigName): {
    assert std.isString(DeploymentConfigName) : 'DeploymentConfigName must be a string',
    Properties+::: {
      DeploymentConfigName: DeploymentConfigName,
    },
  },
  withMinimumHealthyHosts(MinimumHealthyHosts): {
    assert std.isObject(MinimumHealthyHosts) : 'MinimumHealthyHosts must be a object',
    Properties+::: {
      MinimumHealthyHosts: MinimumHealthyHosts,
    },
  },
  withZonalConfig(ZonalConfig): {
    assert std.isObject(ZonalConfig) : 'ZonalConfig must be a object',
    Properties+::: {
      ZonalConfig: ZonalConfig,
    },
  },
  withTrafficRoutingConfig(TrafficRoutingConfig): {
    assert std.isObject(TrafficRoutingConfig) : 'TrafficRoutingConfig must be a object',
    Properties+::: {
      TrafficRoutingConfig: TrafficRoutingConfig,
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
}
