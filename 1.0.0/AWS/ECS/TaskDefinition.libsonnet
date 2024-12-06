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
    Type: 'AWS::ECS::TaskDefinition',
  },
  setTaskRoleArn(TaskRoleArn): {
    Properties+::: {
      TaskRoleArn:
        if !std.isString(TaskRoleArn) then (error 'TaskRoleArn must be a string')
        else if std.isEmpty(TaskRoleArn) then (error 'TaskRoleArn must be not empty')
        else TaskRoleArn,
    },
  },
  setIpcMode(IpcMode): {
    Properties+::: {
      IpcMode:
        if !std.isString(IpcMode) then (error 'IpcMode must be a string')
        else if std.isEmpty(IpcMode) then (error 'IpcMode must be not empty')
        else IpcMode,
    },
  },
  setInferenceAccelerators(InferenceAccelerators): {
    Properties+::: {
      InferenceAccelerators:
        if !std.isArray(InferenceAccelerators) then (error 'InferenceAccelerators must be an array')
        else InferenceAccelerators,
    },
  },
  pushInferenceAccelerators(InferenceAccelerators): {
    Properties+::: {
      InferenceAccelerators+: InferenceAccelerators,
    },
  },
  setMemory(Memory): {
    Properties+::: {
      Memory:
        if !std.isString(Memory) then (error 'Memory must be a string')
        else if std.isEmpty(Memory) then (error 'Memory must be not empty')
        else Memory,
    },
  },
  setPlacementConstraints(PlacementConstraints): {
    Properties+::: {
      PlacementConstraints:
        if !std.isArray(PlacementConstraints) then (error 'PlacementConstraints must be an array')
        else PlacementConstraints,
    },
  },
  pushPlacementConstraints(PlacementConstraints): {
    Properties+::: {
      PlacementConstraints+: PlacementConstraints,
    },
  },
  setCpu(Cpu): {
    Properties+::: {
      Cpu:
        if !std.isString(Cpu) then (error 'Cpu must be a string')
        else if std.isEmpty(Cpu) then (error 'Cpu must be not empty')
        else Cpu,
    },
  },
  setRequiresCompatibilities(RequiresCompatibilities): {
    Properties+::: {
      RequiresCompatibilities:
        if !std.isArray(RequiresCompatibilities) then (error 'RequiresCompatibilities must be an array')
        else RequiresCompatibilities,
    },
  },
  pushRequiresCompatibilities(RequiresCompatibilities): {
    Properties+::: {
      RequiresCompatibilities+: RequiresCompatibilities,
    },
  },
  setNetworkMode(NetworkMode): {
    Properties+::: {
      NetworkMode:
        if !std.isString(NetworkMode) then (error 'NetworkMode must be a string')
        else if std.isEmpty(NetworkMode) then (error 'NetworkMode must be not empty')
        else NetworkMode,
    },
  },
  setPidMode(PidMode): {
    Properties+::: {
      PidMode:
        if !std.isString(PidMode) then (error 'PidMode must be a string')
        else if std.isEmpty(PidMode) then (error 'PidMode must be not empty')
        else PidMode,
    },
  },
  setEnableFaultInjection(EnableFaultInjection): {
    Properties+::: {
      EnableFaultInjection:
        if !std.isBoolean(EnableFaultInjection) then (error 'EnableFaultInjection must be a boolean') else EnableFaultInjection,
    },
  },
  setExecutionRoleArn(ExecutionRoleArn): {
    Properties+::: {
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else ExecutionRoleArn,
    },
  },
  setRuntimePlatform(RuntimePlatform): {
    Properties+::: {
      RuntimePlatform:
        if !std.isObject(RuntimePlatform) then (error 'RuntimePlatform must be an object')
        else RuntimePlatform,
    },
  },
  setProxyConfiguration(ProxyConfiguration): {
    Properties+::: {
      ProxyConfiguration:
        if !std.isObject(ProxyConfiguration) then (error 'ProxyConfiguration must be an object')
        else if !std.objectHas(ProxyConfiguration, 'ContainerName') then (error ' have attribute ContainerName')
        else ProxyConfiguration,
    },
  },
  setVolumes(Volumes): {
    Properties+::: {
      Volumes:
        if !std.isArray(Volumes) then (error 'Volumes must be an array')
        else Volumes,
    },
  },
  pushVolumes(Volumes): {
    Properties+::: {
      Volumes+: Volumes,
    },
  },
  setContainerDefinitions(ContainerDefinitions): {
    Properties+::: {
      ContainerDefinitions:
        if !std.isArray(ContainerDefinitions) then (error 'ContainerDefinitions must be an array')
        else ContainerDefinitions,
    },
  },
  pushContainerDefinitions(ContainerDefinitions): {
    Properties+::: {
      ContainerDefinitions+: ContainerDefinitions,
    },
  },
  setFamily(Family): {
    Properties+::: {
      Family:
        if !std.isString(Family) then (error 'Family must be a string')
        else if std.isEmpty(Family) then (error 'Family must be not empty')
        else Family,
    },
  },
  setEphemeralStorage(EphemeralStorage): {
    Properties+::: {
      EphemeralStorage:
        if !std.isObject(EphemeralStorage) then (error 'EphemeralStorage must be an object')
        else EphemeralStorage,
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
  setTaskDefinitionArn(TaskDefinitionArn): {
    Properties+::: {
      TaskDefinitionArn:
        if !std.isString(TaskDefinitionArn) then (error 'TaskDefinitionArn must be a string')
        else if std.isEmpty(TaskDefinitionArn) then (error 'TaskDefinitionArn must be not empty')
        else TaskDefinitionArn,
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
