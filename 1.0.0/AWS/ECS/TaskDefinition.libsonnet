{
  // AWS ECS TaskDefinition
  TaskDefinition: {
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
      Type: 'AWS::ECS::TaskDefinition',
    },
    withTaskRoleArn(TaskRoleArn): {
      assert std.isString(TaskRoleArn) : 'TaskRoleArn must be a string',
      Properties+::: {
        TaskRoleArn: TaskRoleArn,
      },
    },
    withIpcMode(IpcMode): {
      assert std.isString(IpcMode) : 'IpcMode must be a string',
      Properties+::: {
        IpcMode: IpcMode,
      },
    },
    withInferenceAccelerators(InferenceAccelerators): {
      Properties+::: {
        InferenceAccelerators: (if std.isArray(InferenceAccelerators) then InferenceAccelerators else [InferenceAccelerators]),
      },
    },
    withInferenceAcceleratorsMixin(InferenceAccelerators): {
      Properties+::: {
        InferenceAccelerators+: (if std.isArray(InferenceAccelerators) then InferenceAccelerators else [InferenceAccelerators]),
      },
    },
    withMemory(Memory): {
      assert std.isString(Memory) : 'Memory must be a string',
      Properties+::: {
        Memory: Memory,
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
    withCpu(Cpu): {
      assert std.isString(Cpu) : 'Cpu must be a string',
      Properties+::: {
        Cpu: Cpu,
      },
    },
    withRequiresCompatibilities(RequiresCompatibilities): {
      Properties+::: {
        RequiresCompatibilities: (if std.isArray(RequiresCompatibilities) then RequiresCompatibilities else [RequiresCompatibilities]),
      },
    },
    withRequiresCompatibilitiesMixin(RequiresCompatibilities): {
      Properties+::: {
        RequiresCompatibilities+: (if std.isArray(RequiresCompatibilities) then RequiresCompatibilities else [RequiresCompatibilities]),
      },
    },
    withNetworkMode(NetworkMode): {
      assert std.isString(NetworkMode) : 'NetworkMode must be a string',
      Properties+::: {
        NetworkMode: NetworkMode,
      },
    },
    withPidMode(PidMode): {
      assert std.isString(PidMode) : 'PidMode must be a string',
      Properties+::: {
        PidMode: PidMode,
      },
    },
    withEnableFaultInjection(EnableFaultInjection): {
      assert std.isBoolean(EnableFaultInjection) : 'EnableFaultInjection must be a boolean',
      Properties+::: {
        EnableFaultInjection: EnableFaultInjection,
      },
    },
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: {
        ExecutionRoleArn: ExecutionRoleArn,
      },
    },
    withRuntimePlatform(RuntimePlatform): {
      assert std.isObject(RuntimePlatform) : 'RuntimePlatform must be a object',
      Properties+::: {
        RuntimePlatform: RuntimePlatform,
      },
    },
    withProxyConfiguration(ProxyConfiguration): {
      assert std.isObject(ProxyConfiguration) : 'ProxyConfiguration must be a object',
      Properties+::: {
        ProxyConfiguration: ProxyConfiguration,
      },
    },
    withVolumes(Volumes): {
      Properties+::: {
        Volumes: (if std.isArray(Volumes) then Volumes else [Volumes]),
      },
    },
    withVolumesMixin(Volumes): {
      Properties+::: {
        Volumes+: (if std.isArray(Volumes) then Volumes else [Volumes]),
      },
    },
    withContainerDefinitions(ContainerDefinitions): {
      Properties+::: {
        ContainerDefinitions: (if std.isArray(ContainerDefinitions) then ContainerDefinitions else [ContainerDefinitions]),
      },
    },
    withContainerDefinitionsMixin(ContainerDefinitions): {
      Properties+::: {
        ContainerDefinitions+: (if std.isArray(ContainerDefinitions) then ContainerDefinitions else [ContainerDefinitions]),
      },
    },
    withFamily(Family): {
      assert std.isString(Family) : 'Family must be a string',
      Properties+::: {
        Family: Family,
      },
    },
    withEphemeralStorage(EphemeralStorage): {
      assert std.isObject(EphemeralStorage) : 'EphemeralStorage must be a object',
      Properties+::: {
        EphemeralStorage: EphemeralStorage,
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
    withTaskDefinitionArn(TaskDefinitionArn): {
      assert std.isString(TaskDefinitionArn) : 'TaskDefinitionArn must be a string',
      Properties+::: {
        TaskDefinitionArn: TaskDefinitionArn,
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
