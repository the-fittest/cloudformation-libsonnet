{
  new(
    Cluster,
    Service,
    TaskDefinition,
  ): {
    local base = self,
    Properties: {
      Cluster:
        if !std.isString(Cluster) then (error 'Cluster must be a string')
        else if std.isEmpty(Cluster) then (error 'Cluster must be not empty')
        else Cluster,
      Service:
        if !std.isString(Service) then (error 'Service must be a string')
        else if std.isEmpty(Service) then (error 'Service must be not empty')
        else Service,
      TaskDefinition:
        if !std.isString(TaskDefinition) then (error 'TaskDefinition must be a string')
        else if std.isEmpty(TaskDefinition) then (error 'TaskDefinition must be not empty')
        else TaskDefinition,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ECS::TaskSet',
  },
  setPlatformVersion(PlatformVersion): {
    Properties+::: {
      PlatformVersion:
        if !std.isString(PlatformVersion) then (error 'PlatformVersion must be a string')
        else if std.isEmpty(PlatformVersion) then (error 'PlatformVersion must be not empty')
        else PlatformVersion,
    },
  },
  setExternalId(ExternalId): {
    Properties+::: {
      ExternalId:
        if !std.isString(ExternalId) then (error 'ExternalId must be a string')
        else if std.isEmpty(ExternalId) then (error 'ExternalId must be not empty')
        else ExternalId,
    },
  },
  setLoadBalancers(LoadBalancers): {
    Properties+::: {
      LoadBalancers:
        if !std.isArray(LoadBalancers) then (error 'LoadBalancers must be an array')
        else LoadBalancers,
    },
  },
  pushLoadBalancers(LoadBalancers): {
    Properties+::: {
      LoadBalancers+: LoadBalancers,
    },
  },
  setScale(Scale): {
    Properties+::: {
      Scale:
        if !std.isObject(Scale) then (error 'Scale must be an object')
        else Scale,
    },
  },
  setServiceRegistries(ServiceRegistries): {
    Properties+::: {
      ServiceRegistries:
        if !std.isArray(ServiceRegistries) then (error 'ServiceRegistries must be an array')
        else ServiceRegistries,
    },
  },
  pushServiceRegistries(ServiceRegistries): {
    Properties+::: {
      ServiceRegistries+: ServiceRegistries,
    },
  },
  setCapacityProviderStrategy(CapacityProviderStrategy): {
    Properties+::: {
      CapacityProviderStrategy:
        if !std.isArray(CapacityProviderStrategy) then (error 'CapacityProviderStrategy must be an array')
        else CapacityProviderStrategy,
    },
  },
  pushCapacityProviderStrategy(CapacityProviderStrategy): {
    Properties+::: {
      CapacityProviderStrategy+: CapacityProviderStrategy,
    },
  },
  setLaunchType(LaunchType): {
    Properties+::: {
      LaunchType:
        if !std.isString(LaunchType) then (error 'LaunchType must be a string')
        else if std.isEmpty(LaunchType) then (error 'LaunchType must be not empty')
        else if LaunchType != 'EC2' && LaunchType != 'FARGATE' then (error "LaunchType should be 'EC2' or 'FARGATE'")
        else LaunchType,
    },
  },
  setNetworkConfiguration(NetworkConfiguration): {
    Properties+::: {
      NetworkConfiguration:
        if !std.isObject(NetworkConfiguration) then (error 'NetworkConfiguration must be an object')
        else NetworkConfiguration,
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
