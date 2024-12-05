{
  new(
    ReleaseLabel,
    Type,
  ): {
    local base = self,
    Properties: {
      ReleaseLabel:
        if !std.isString(ReleaseLabel) then (error 'ReleaseLabel must be a string')
        else if std.isEmpty(ReleaseLabel) then (error 'ReleaseLabel must be not empty')
        else if std.length(ReleaseLabel) < 1 then error ('ReleaseLabel should have at least 1 characters')
        else if std.length(ReleaseLabel) > 64 then error ('ReleaseLabel should have not more than 64 characters')
        else ReleaseLabel,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMRServerless::Application',
  },
  setArchitecture(Architecture): {
    Properties+::: {
      Architecture:
        if !std.isString(Architecture) then (error 'Architecture must be a string')
        else if std.isEmpty(Architecture) then (error 'Architecture must be not empty')
        else if Architecture != 'ARM64' && Architecture != 'X86_64' then (error "Architecture should be 'ARM64' or 'X86_64'")
        else Architecture,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
  },
  setInitialCapacity(InitialCapacity): {
    Properties+::: {
      InitialCapacity:
        if !std.isArray(InitialCapacity) then (error 'InitialCapacity must be an array')
        else InitialCapacity,
    },
  },
  setInitialCapacityMixin(InitialCapacity): {
    Properties+::: {
      InitialCapacity+: InitialCapacity,
    },
  },
  setMaximumCapacity(MaximumCapacity): {
    Properties+::: {
      MaximumCapacity:
        if !std.isObject(MaximumCapacity) then (error 'MaximumCapacity must be an object')
        else if !std.objectHas(MaximumCapacity, 'Cpu') then (error ' have attribute Cpu')
        else if !std.objectHas(MaximumCapacity, 'Memory') then (error ' have attribute Memory')
        else MaximumCapacity,
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
  setAutoStartConfiguration(AutoStartConfiguration): {
    Properties+::: {
      AutoStartConfiguration:
        if !std.isObject(AutoStartConfiguration) then (error 'AutoStartConfiguration must be an object')
        else AutoStartConfiguration,
    },
  },
  setAutoStopConfiguration(AutoStopConfiguration): {
    Properties+::: {
      AutoStopConfiguration:
        if !std.isObject(AutoStopConfiguration) then (error 'AutoStopConfiguration must be an object')
        else AutoStopConfiguration,
    },
  },
  setImageConfiguration(ImageConfiguration): {
    Properties+::: {
      ImageConfiguration:
        if !std.isObject(ImageConfiguration) then (error 'ImageConfiguration must be an object')
        else ImageConfiguration,
    },
  },
  setMonitoringConfiguration(MonitoringConfiguration): {
    Properties+::: {
      MonitoringConfiguration:
        if !std.isObject(MonitoringConfiguration) then (error 'MonitoringConfiguration must be an object')
        else MonitoringConfiguration,
    },
  },
  setRuntimeConfiguration(RuntimeConfiguration): {
    Properties+::: {
      RuntimeConfiguration:
        if !std.isArray(RuntimeConfiguration) then (error 'RuntimeConfiguration must be an array')
        else RuntimeConfiguration,
    },
  },
  setRuntimeConfigurationMixin(RuntimeConfiguration): {
    Properties+::: {
      RuntimeConfiguration+: RuntimeConfiguration,
    },
  },
  setInteractiveConfiguration(InteractiveConfiguration): {
    Properties+::: {
      InteractiveConfiguration:
        if !std.isObject(InteractiveConfiguration) then (error 'InteractiveConfiguration must be an object')
        else InteractiveConfiguration,
    },
  },
  setNetworkConfiguration(NetworkConfiguration): {
    Properties+::: {
      NetworkConfiguration:
        if !std.isObject(NetworkConfiguration) then (error 'NetworkConfiguration must be an object')
        else NetworkConfiguration,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setApplicationId(ApplicationId): {
    Properties+::: {
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else if std.length(ApplicationId) < 1 then error ('ApplicationId should have at least 1 characters')
        else if std.length(ApplicationId) > 64 then error ('ApplicationId should have not more than 64 characters')
        else ApplicationId,
    },
  },
  setWorkerTypeSpecifications(WorkerTypeSpecifications): {
    Properties+::: {
      WorkerTypeSpecifications:
        if !std.isObject(WorkerTypeSpecifications) then (error 'WorkerTypeSpecifications must be an object')
        else WorkerTypeSpecifications,
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
