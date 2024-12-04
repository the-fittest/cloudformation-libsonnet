{
  // AWS ECS TaskSet
  TaskSet: {
    new(
      Cluster,
      Service,
      TaskDefinition,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Cluster) : 'Cluster must be a string',
        Cluster: Cluster,
        assert std.isString(Service) : 'Service must be a string',
        Service: Service,
        assert std.isString(TaskDefinition) : 'TaskDefinition must be a string',
        TaskDefinition: TaskDefinition,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ECS::TaskSet',
    },
    withPlatformVersion(PlatformVersion): {
      assert std.isString(PlatformVersion) : 'PlatformVersion must be a string',
      Properties+::: {
        PlatformVersion: PlatformVersion,
      },
    },
    withExternalId(ExternalId): {
      assert std.isString(ExternalId) : 'ExternalId must be a string',
      Properties+::: {
        ExternalId: ExternalId,
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
    withScale(Scale): {
      assert std.isObject(Scale) : 'Scale must be a object',
      Properties+::: {
        Scale: Scale,
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
    withNetworkConfiguration(NetworkConfiguration): {
      assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
      Properties+::: {
        NetworkConfiguration: NetworkConfiguration,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
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
