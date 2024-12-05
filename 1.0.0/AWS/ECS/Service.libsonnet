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
    Type: 'AWS::ECS::Service',
  },
  setPlatformVersion(PlatformVersion): {
    Properties+::: {
      PlatformVersion:
        if !std.isString(PlatformVersion) then (error 'PlatformVersion must be a string')
        else if std.isEmpty(PlatformVersion) then (error 'PlatformVersion must be not empty')
        else PlatformVersion,
    },
  },
  setPropagateTags(PropagateTags): {
    Properties+::: {
      PropagateTags:
        if !std.isString(PropagateTags) then (error 'PropagateTags must be a string')
        else if std.isEmpty(PropagateTags) then (error 'PropagateTags must be not empty')
        else if PropagateTags != 'SERVICE' && PropagateTags != 'TASK_DEFINITION' then (error "PropagateTags should be 'SERVICE' or 'TASK_DEFINITION'")
        else PropagateTags,
    },
  },
  setServiceArn(ServiceArn): {
    Properties+::: {
      ServiceArn:
        if !std.isString(ServiceArn) then (error 'ServiceArn must be a string')
        else if std.isEmpty(ServiceArn) then (error 'ServiceArn must be not empty')
        else ServiceArn,
    },
  },
  setPlacementStrategies(PlacementStrategies): {
    Properties+::: {
      PlacementStrategies:
        if !std.isArray(PlacementStrategies) then (error 'PlacementStrategies must be an array')
        else PlacementStrategies,
    },
  },
  setPlacementStrategiesMixin(PlacementStrategies): {
    Properties+::: {
      PlacementStrategies+: PlacementStrategies,
    },
  },
  setServiceRegistries(ServiceRegistries): {
    Properties+::: {
      ServiceRegistries:
        if !std.isArray(ServiceRegistries) then (error 'ServiceRegistries must be an array')
        else ServiceRegistries,
    },
  },
  setServiceRegistriesMixin(ServiceRegistries): {
    Properties+::: {
      ServiceRegistries+: ServiceRegistries,
    },
  },
  setVolumeConfigurations(VolumeConfigurations): {
    Properties+::: {
      VolumeConfigurations:
        if !std.isArray(VolumeConfigurations) then (error 'VolumeConfigurations must be an array')
        else VolumeConfigurations,
    },
  },
  setVolumeConfigurationsMixin(VolumeConfigurations): {
    Properties+::: {
      VolumeConfigurations+: VolumeConfigurations,
    },
  },
  setCapacityProviderStrategy(CapacityProviderStrategy): {
    Properties+::: {
      CapacityProviderStrategy:
        if !std.isArray(CapacityProviderStrategy) then (error 'CapacityProviderStrategy must be an array')
        else CapacityProviderStrategy,
    },
  },
  setCapacityProviderStrategyMixin(CapacityProviderStrategy): {
    Properties+::: {
      CapacityProviderStrategy+: CapacityProviderStrategy,
    },
  },
  setLaunchType(LaunchType): {
    Properties+::: {
      LaunchType:
        if !std.isString(LaunchType) then (error 'LaunchType must be a string')
        else if std.isEmpty(LaunchType) then (error 'LaunchType must be not empty')
        else if LaunchType != 'EC2' && LaunchType != 'FARGATE' && LaunchType != 'EXTERNAL' then (error "LaunchType should be 'EC2' or 'FARGATE' or 'EXTERNAL'")
        else LaunchType,
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
  setAvailabilityZoneRebalancing(AvailabilityZoneRebalancing): {
    Properties+::: {
      AvailabilityZoneRebalancing:
        if !std.isString(AvailabilityZoneRebalancing) then (error 'AvailabilityZoneRebalancing must be a string')
        else if std.isEmpty(AvailabilityZoneRebalancing) then (error 'AvailabilityZoneRebalancing must be not empty')
        else if AvailabilityZoneRebalancing != 'ENABLED' && AvailabilityZoneRebalancing != 'DISABLED' then (error "AvailabilityZoneRebalancing should be 'ENABLED' or 'DISABLED'")
        else AvailabilityZoneRebalancing,
    },
  },
  setSchedulingStrategy(SchedulingStrategy): {
    Properties+::: {
      SchedulingStrategy:
        if !std.isString(SchedulingStrategy) then (error 'SchedulingStrategy must be a string')
        else if std.isEmpty(SchedulingStrategy) then (error 'SchedulingStrategy must be not empty')
        else if SchedulingStrategy != 'DAEMON' && SchedulingStrategy != 'REPLICA' then (error "SchedulingStrategy should be 'DAEMON' or 'REPLICA'")
        else SchedulingStrategy,
    },
  },
  setNetworkConfiguration(NetworkConfiguration): {
    Properties+::: {
      NetworkConfiguration:
        if !std.isObject(NetworkConfiguration) then (error 'NetworkConfiguration must be an object')
        else NetworkConfiguration,
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
  setHealthCheckGracePeriodSeconds(HealthCheckGracePeriodSeconds): {
    Properties+::: {
      HealthCheckGracePeriodSeconds:
        if !std.isNumber(HealthCheckGracePeriodSeconds) then (error 'HealthCheckGracePeriodSeconds must be an number')
        else HealthCheckGracePeriodSeconds,
    },
  },
  setEnableECSManagedTags(EnableECSManagedTags): {
    Properties+::: {
      EnableECSManagedTags:
        if !std.isBoolean(EnableECSManagedTags) then (error 'EnableECSManagedTags must be a boolean') else EnableECSManagedTags,
    },
  },
  setEnableExecuteCommand(EnableExecuteCommand): {
    Properties+::: {
      EnableExecuteCommand:
        if !std.isBoolean(EnableExecuteCommand) then (error 'EnableExecuteCommand must be a boolean') else EnableExecuteCommand,
    },
  },
  setPlacementConstraints(PlacementConstraints): {
    Properties+::: {
      PlacementConstraints:
        if !std.isArray(PlacementConstraints) then (error 'PlacementConstraints must be an array')
        else PlacementConstraints,
    },
  },
  setPlacementConstraintsMixin(PlacementConstraints): {
    Properties+::: {
      PlacementConstraints+: PlacementConstraints,
    },
  },
  setCluster(Cluster): {
    Properties+::: {
      Cluster:
        if !std.isString(Cluster) then (error 'Cluster must be a string')
        else if std.isEmpty(Cluster) then (error 'Cluster must be not empty')
        else Cluster,
    },
  },
  setLoadBalancers(LoadBalancers): {
    Properties+::: {
      LoadBalancers:
        if !std.isArray(LoadBalancers) then (error 'LoadBalancers must be an array')
        else LoadBalancers,
    },
  },
  setLoadBalancersMixin(LoadBalancers): {
    Properties+::: {
      LoadBalancers+: LoadBalancers,
    },
  },
  setServiceConnectConfiguration(ServiceConnectConfiguration): {
    Properties+::: {
      ServiceConnectConfiguration:
        if !std.isObject(ServiceConnectConfiguration) then (error 'ServiceConnectConfiguration must be an object')
        else if !std.objectHas(ServiceConnectConfiguration, 'Enabled') then (error ' have attribute Enabled')
        else ServiceConnectConfiguration,
    },
  },
  setDesiredCount(DesiredCount): {
    Properties+::: {
      DesiredCount:
        if !std.isNumber(DesiredCount) then (error 'DesiredCount must be an number')
        else DesiredCount,
    },
  },
  setVpcLatticeConfigurations(VpcLatticeConfigurations): {
    Properties+::: {
      VpcLatticeConfigurations:
        if !std.isArray(VpcLatticeConfigurations) then (error 'VpcLatticeConfigurations must be an array')
        else VpcLatticeConfigurations,
    },
  },
  setVpcLatticeConfigurationsMixin(VpcLatticeConfigurations): {
    Properties+::: {
      VpcLatticeConfigurations+: VpcLatticeConfigurations,
    },
  },
  setDeploymentController(DeploymentController): {
    Properties+::: {
      DeploymentController:
        if !std.isObject(DeploymentController) then (error 'DeploymentController must be an object')
        else DeploymentController,
    },
  },
  setRole(Role): {
    Properties+::: {
      Role:
        if !std.isString(Role) then (error 'Role must be a string')
        else if std.isEmpty(Role) then (error 'Role must be not empty')
        else Role,
    },
  },
  setTaskDefinition(TaskDefinition): {
    Properties+::: {
      TaskDefinition:
        if !std.isString(TaskDefinition) then (error 'TaskDefinition must be a string')
        else if std.isEmpty(TaskDefinition) then (error 'TaskDefinition must be not empty')
        else TaskDefinition,
    },
  },
  setServiceName(ServiceName): {
    Properties+::: {
      ServiceName:
        if !std.isString(ServiceName) then (error 'ServiceName must be a string')
        else if std.isEmpty(ServiceName) then (error 'ServiceName must be not empty')
        else ServiceName,
    },
  },
  setDeploymentConfiguration(DeploymentConfiguration): {
    Properties+::: {
      DeploymentConfiguration:
        if !std.isObject(DeploymentConfiguration) then (error 'DeploymentConfiguration must be an object')
        else DeploymentConfiguration,
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
