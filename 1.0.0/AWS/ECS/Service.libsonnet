{
  // AWS ECS Service
  Service: {
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
      Type: 'AWS::ECS::Service',
    },
    withPlatformVersion(PlatformVersion): {
      assert std.isString(PlatformVersion) : 'PlatformVersion must be a string',
      Properties+::: {
        PlatformVersion: PlatformVersion,
      },
    },
    withPropagateTags(PropagateTags): {
      assert std.isString(PropagateTags) : 'PropagateTags must be a string',
      Properties+::: {
        PropagateTags: PropagateTags,
      },
    },
    withServiceArn(ServiceArn): {
      assert std.isString(ServiceArn) : 'ServiceArn must be a string',
      Properties+::: {
        ServiceArn: ServiceArn,
      },
    },
    withPlacementStrategies(PlacementStrategies): {
      Properties+::: {
        PlacementStrategies: (if std.isArray(PlacementStrategies) then PlacementStrategies else [PlacementStrategies]),
      },
    },
    withPlacementStrategiesMixin(PlacementStrategies): {
      Properties+::: {
        PlacementStrategies+: (if std.isArray(PlacementStrategies) then PlacementStrategies else [PlacementStrategies]),
      },
    },
    withServiceRegistries(ServiceRegistries): {
      Properties+::: {
        ServiceRegistries: (if std.isArray(ServiceRegistries) then ServiceRegistries else [ServiceRegistries]),
      },
    },
    withServiceRegistriesMixin(ServiceRegistries): {
      Properties+::: {
        ServiceRegistries+: (if std.isArray(ServiceRegistries) then ServiceRegistries else [ServiceRegistries]),
      },
    },
    withVolumeConfigurations(VolumeConfigurations): {
      Properties+::: {
        VolumeConfigurations: (if std.isArray(VolumeConfigurations) then VolumeConfigurations else [VolumeConfigurations]),
      },
    },
    withVolumeConfigurationsMixin(VolumeConfigurations): {
      Properties+::: {
        VolumeConfigurations+: (if std.isArray(VolumeConfigurations) then VolumeConfigurations else [VolumeConfigurations]),
      },
    },
    withCapacityProviderStrategy(CapacityProviderStrategy): {
      Properties+::: {
        CapacityProviderStrategy: (if std.isArray(CapacityProviderStrategy) then CapacityProviderStrategy else [CapacityProviderStrategy]),
      },
    },
    withCapacityProviderStrategyMixin(CapacityProviderStrategy): {
      Properties+::: {
        CapacityProviderStrategy+: (if std.isArray(CapacityProviderStrategy) then CapacityProviderStrategy else [CapacityProviderStrategy]),
      },
    },
    withLaunchType(LaunchType): {
      assert std.isString(LaunchType) : 'LaunchType must be a string',
      Properties+::: {
        LaunchType: LaunchType,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withAvailabilityZoneRebalancing(AvailabilityZoneRebalancing): {
      assert std.isString(AvailabilityZoneRebalancing) : 'AvailabilityZoneRebalancing must be a string',
      Properties+::: {
        AvailabilityZoneRebalancing: AvailabilityZoneRebalancing,
      },
    },
    withSchedulingStrategy(SchedulingStrategy): {
      assert std.isString(SchedulingStrategy) : 'SchedulingStrategy must be a string',
      Properties+::: {
        SchedulingStrategy: SchedulingStrategy,
      },
    },
    withNetworkConfiguration(NetworkConfiguration): {
      assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
      Properties+::: {
        NetworkConfiguration: NetworkConfiguration,
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
    withHealthCheckGracePeriodSeconds(HealthCheckGracePeriodSeconds): {
      assert std.isNumber(HealthCheckGracePeriodSeconds) : 'HealthCheckGracePeriodSeconds must be a number',
      Properties+::: {
        HealthCheckGracePeriodSeconds: HealthCheckGracePeriodSeconds,
      },
    },
    withEnableECSManagedTags(EnableECSManagedTags): {
      assert std.isBoolean(EnableECSManagedTags) : 'EnableECSManagedTags must be a boolean',
      Properties+::: {
        EnableECSManagedTags: EnableECSManagedTags,
      },
    },
    withEnableExecuteCommand(EnableExecuteCommand): {
      assert std.isBoolean(EnableExecuteCommand) : 'EnableExecuteCommand must be a boolean',
      Properties+::: {
        EnableExecuteCommand: EnableExecuteCommand,
      },
    },
    withPlacementConstraints(PlacementConstraints): {
      Properties+::: {
        PlacementConstraints: (if std.isArray(PlacementConstraints) then PlacementConstraints else [PlacementConstraints]),
      },
    },
    withPlacementConstraintsMixin(PlacementConstraints): {
      Properties+::: {
        PlacementConstraints+: (if std.isArray(PlacementConstraints) then PlacementConstraints else [PlacementConstraints]),
      },
    },
    withCluster(Cluster): {
      assert std.isString(Cluster) : 'Cluster must be a string',
      Properties+::: {
        Cluster: Cluster,
      },
    },
    withLoadBalancers(LoadBalancers): {
      Properties+::: {
        LoadBalancers: (if std.isArray(LoadBalancers) then LoadBalancers else [LoadBalancers]),
      },
    },
    withLoadBalancersMixin(LoadBalancers): {
      Properties+::: {
        LoadBalancers+: (if std.isArray(LoadBalancers) then LoadBalancers else [LoadBalancers]),
      },
    },
    withServiceConnectConfiguration(ServiceConnectConfiguration): {
      assert std.isObject(ServiceConnectConfiguration) : 'ServiceConnectConfiguration must be a object',
      Properties+::: {
        ServiceConnectConfiguration: ServiceConnectConfiguration,
      },
    },
    withDesiredCount(DesiredCount): {
      assert std.isNumber(DesiredCount) : 'DesiredCount must be a number',
      Properties+::: {
        DesiredCount: DesiredCount,
      },
    },
    withVpcLatticeConfigurations(VpcLatticeConfigurations): {
      Properties+::: {
        VpcLatticeConfigurations: (if std.isArray(VpcLatticeConfigurations) then VpcLatticeConfigurations else [VpcLatticeConfigurations]),
      },
    },
    withVpcLatticeConfigurationsMixin(VpcLatticeConfigurations): {
      Properties+::: {
        VpcLatticeConfigurations+: (if std.isArray(VpcLatticeConfigurations) then VpcLatticeConfigurations else [VpcLatticeConfigurations]),
      },
    },
    withDeploymentController(DeploymentController): {
      assert std.isObject(DeploymentController) : 'DeploymentController must be a object',
      Properties+::: {
        DeploymentController: DeploymentController,
      },
    },
    withRole(Role): {
      assert std.isString(Role) : 'Role must be a string',
      Properties+::: {
        Role: Role,
      },
    },
    withTaskDefinition(TaskDefinition): {
      assert std.isString(TaskDefinition) : 'TaskDefinition must be a string',
      Properties+::: {
        TaskDefinition: TaskDefinition,
      },
    },
    withServiceName(ServiceName): {
      assert std.isString(ServiceName) : 'ServiceName must be a string',
      Properties+::: {
        ServiceName: ServiceName,
      },
    },
    withDeploymentConfiguration(DeploymentConfiguration): {
      assert std.isObject(DeploymentConfiguration) : 'DeploymentConfiguration must be a object',
      Properties+::: {
        DeploymentConfiguration: DeploymentConfiguration,
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
