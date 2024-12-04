{
  // AWS Batch JobDefinition
  JobDefinition: {
    new(
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Batch::JobDefinition',
    },
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: {
        Parameters: Parameters,
      },
    },
    withTimeout(Timeout): {
      assert std.isObject(Timeout) : 'Timeout must be a object',
      Properties+::: {
        Timeout: Timeout,
      },
    },
    withJobDefinitionName(JobDefinitionName): {
      assert std.isString(JobDefinitionName) : 'JobDefinitionName must be a string',
      Properties+::: {
        JobDefinitionName: JobDefinitionName,
      },
    },
    withPropagateTags(PropagateTags): {
      assert std.isBoolean(PropagateTags) : 'PropagateTags must be a boolean',
      Properties+::: {
        PropagateTags: PropagateTags,
      },
    },
    withPlatformCapabilities(PlatformCapabilities): {
      Properties+::: {
        PlatformCapabilities: (if std.isArray(PlatformCapabilities) then PlatformCapabilities else [PlatformCapabilities]),
      },
    },
    withPlatformCapabilitiesMixin(PlatformCapabilities): {
      Properties+::: {
        PlatformCapabilities+: (if std.isArray(PlatformCapabilities) then PlatformCapabilities else [PlatformCapabilities]),
      },
    },
    withEksProperties(EksProperties): {
      assert std.isObject(EksProperties) : 'EksProperties must be a object',
      Properties+::: {
        EksProperties: EksProperties,
      },
    },
    withNodeProperties(NodeProperties): {
      assert std.isObject(NodeProperties) : 'NodeProperties must be a object',
      Properties+::: {
        NodeProperties: NodeProperties,
      },
    },
    withSchedulingPriority(SchedulingPriority): {
      assert std.isNumber(SchedulingPriority) : 'SchedulingPriority must be a number',
      Properties+::: {
        SchedulingPriority: SchedulingPriority,
      },
    },
    withContainerProperties(ContainerProperties): {
      assert std.isObject(ContainerProperties) : 'ContainerProperties must be a object',
      Properties+::: {
        ContainerProperties: ContainerProperties,
      },
    },
    withEcsProperties(EcsProperties): {
      assert std.isObject(EcsProperties) : 'EcsProperties must be a object',
      Properties+::: {
        EcsProperties: EcsProperties,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withRetryStrategy(RetryStrategy): {
      assert std.isObject(RetryStrategy) : 'RetryStrategy must be a object',
      Properties+::: {
        RetryStrategy: RetryStrategy,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
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
