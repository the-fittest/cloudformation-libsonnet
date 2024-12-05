{
  new(
    Type,
  ): {
    local base = self,
    Properties: {
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
    Type: 'AWS::Batch::JobDefinition',
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isObject(Parameters) then (error 'Parameters must be an object')
        else Parameters,
    },
  },
  setTimeout(Timeout): {
    Properties+::: {
      Timeout:
        if !std.isObject(Timeout) then (error 'Timeout must be an object')
        else Timeout,
    },
  },
  setJobDefinitionName(JobDefinitionName): {
    Properties+::: {
      JobDefinitionName:
        if !std.isString(JobDefinitionName) then (error 'JobDefinitionName must be a string')
        else if std.isEmpty(JobDefinitionName) then (error 'JobDefinitionName must be not empty')
        else JobDefinitionName,
    },
  },
  setPropagateTags(PropagateTags): {
    Properties+::: {
      PropagateTags:
        if !std.isBoolean(PropagateTags) then (error 'PropagateTags must be a boolean') else PropagateTags,
    },
  },
  setPlatformCapabilities(PlatformCapabilities): {
    Properties+::: {
      PlatformCapabilities:
        if !std.isArray(PlatformCapabilities) then (error 'PlatformCapabilities must be an array')
        else PlatformCapabilities,
    },
  },
  setPlatformCapabilitiesMixin(PlatformCapabilities): {
    Properties+::: {
      PlatformCapabilities+: PlatformCapabilities,
    },
  },
  setEksProperties(EksProperties): {
    Properties+::: {
      EksProperties:
        if !std.isObject(EksProperties) then (error 'EksProperties must be an object')
        else EksProperties,
    },
  },
  setNodeProperties(NodeProperties): {
    Properties+::: {
      NodeProperties:
        if !std.isObject(NodeProperties) then (error 'NodeProperties must be an object')
        else if !std.objectHas(NodeProperties, 'MainNode') then (error ' have attribute MainNode')
        else if !std.objectHas(NodeProperties, 'NodeRangeProperties') then (error ' have attribute NodeRangeProperties')
        else if !std.objectHas(NodeProperties, 'NumNodes') then (error ' have attribute NumNodes')
        else NodeProperties,
    },
  },
  setSchedulingPriority(SchedulingPriority): {
    Properties+::: {
      SchedulingPriority:
        if !std.isNumber(SchedulingPriority) then (error 'SchedulingPriority must be an number')
        else SchedulingPriority,
    },
  },
  setContainerProperties(ContainerProperties): {
    Properties+::: {
      ContainerProperties:
        if !std.isObject(ContainerProperties) then (error 'ContainerProperties must be an object')
        else if !std.objectHas(ContainerProperties, 'Image') then (error ' have attribute Image')
        else ContainerProperties,
    },
  },
  setEcsProperties(EcsProperties): {
    Properties+::: {
      EcsProperties:
        if !std.isObject(EcsProperties) then (error 'EcsProperties must be an object')
        else if !std.objectHas(EcsProperties, 'TaskProperties') then (error ' have attribute TaskProperties')
        else EcsProperties,
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
  setRetryStrategy(RetryStrategy): {
    Properties+::: {
      RetryStrategy:
        if !std.isObject(RetryStrategy) then (error 'RetryStrategy must be an object')
        else RetryStrategy,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
