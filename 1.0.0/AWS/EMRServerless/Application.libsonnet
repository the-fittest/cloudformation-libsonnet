{
  new(
    ReleaseLabel,
    Type,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ReleaseLabel) : 'ReleaseLabel must be a string',
      ReleaseLabel: ReleaseLabel,
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMRServerless::Application',
  },
  withArchitecture(Architecture): {
    assert std.isString(Architecture) : 'Architecture must be a string',
    assert Architecture == 'ARM64' || Architecture == 'X86_64' : "Architecture should be 'ARM64' or 'X86_64'",
    Properties+::: {
      Architecture: Architecture,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withInitialCapacity(InitialCapacity): {
    Properties+::: {
      InitialCapacity: (if std.isArray(InitialCapacity) then InitialCapacity else [InitialCapacity]),
    },
  },
  withInitialCapacityMixin(InitialCapacity): {
    Properties+::: {
      InitialCapacity+: (if std.isArray(InitialCapacity) then InitialCapacity else [InitialCapacity]),
    },
  },
  withMaximumCapacity(MaximumCapacity): {
    assert std.isObject(MaximumCapacity) : 'MaximumCapacity must be a object',
    Properties+::: {
      MaximumCapacity: MaximumCapacity,
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
  withAutoStartConfiguration(AutoStartConfiguration): {
    assert std.isObject(AutoStartConfiguration) : 'AutoStartConfiguration must be a object',
    Properties+::: {
      AutoStartConfiguration: AutoStartConfiguration,
    },
  },
  withAutoStopConfiguration(AutoStopConfiguration): {
    assert std.isObject(AutoStopConfiguration) : 'AutoStopConfiguration must be a object',
    Properties+::: {
      AutoStopConfiguration: AutoStopConfiguration,
    },
  },
  withImageConfiguration(ImageConfiguration): {
    assert std.isObject(ImageConfiguration) : 'ImageConfiguration must be a object',
    Properties+::: {
      ImageConfiguration: ImageConfiguration,
    },
  },
  withMonitoringConfiguration(MonitoringConfiguration): {
    assert std.isObject(MonitoringConfiguration) : 'MonitoringConfiguration must be a object',
    Properties+::: {
      MonitoringConfiguration: MonitoringConfiguration,
    },
  },
  withRuntimeConfiguration(RuntimeConfiguration): {
    Properties+::: {
      RuntimeConfiguration: (if std.isArray(RuntimeConfiguration) then RuntimeConfiguration else [RuntimeConfiguration]),
    },
  },
  withRuntimeConfigurationMixin(RuntimeConfiguration): {
    Properties+::: {
      RuntimeConfiguration+: (if std.isArray(RuntimeConfiguration) then RuntimeConfiguration else [RuntimeConfiguration]),
    },
  },
  withInteractiveConfiguration(InteractiveConfiguration): {
    assert std.isObject(InteractiveConfiguration) : 'InteractiveConfiguration must be a object',
    Properties+::: {
      InteractiveConfiguration: InteractiveConfiguration,
    },
  },
  withNetworkConfiguration(NetworkConfiguration): {
    assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
    Properties+::: {
      NetworkConfiguration: NetworkConfiguration,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withApplicationId(ApplicationId): {
    assert std.isString(ApplicationId) : 'ApplicationId must be a string',
    Properties+::: {
      ApplicationId: ApplicationId,
    },
  },
  withWorkerTypeSpecifications(WorkerTypeSpecifications): {
    assert std.isObject(WorkerTypeSpecifications) : 'WorkerTypeSpecifications must be a object',
    Properties+::: {
      WorkerTypeSpecifications: WorkerTypeSpecifications,
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
