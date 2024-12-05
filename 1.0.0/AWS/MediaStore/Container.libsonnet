{
  new(
    ContainerName,
  ): {
    local base = self,
    Properties: {
      ContainerName:
        if !std.isString(ContainerName) then (error 'ContainerName must be a string')
        else if std.isEmpty(ContainerName) then (error 'ContainerName must be not empty')
        else ContainerName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaStore::Container',
  },
  setPolicy(Policy): {
    Properties+::: {
      Policy:
        if !std.isString(Policy) then (error 'Policy must be a string')
        else if std.isEmpty(Policy) then (error 'Policy must be not empty')
        else Policy,
    },
  },
  setMetricPolicy(MetricPolicy): {
    Properties+::: {
      MetricPolicy:
        if !std.isObject(MetricPolicy) then (error 'MetricPolicy must be an object')
        else if !std.objectHas(MetricPolicy, 'ContainerLevelMetrics') then (error ' have attribute ContainerLevelMetrics')
        else MetricPolicy,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else Endpoint,
    },
  },
  setCorsPolicy(CorsPolicy): {
    Properties+::: {
      CorsPolicy:
        if !std.isArray(CorsPolicy) then (error 'CorsPolicy must be an array')
        else CorsPolicy,
    },
  },
  setCorsPolicyMixin(CorsPolicy): {
    Properties+::: {
      CorsPolicy+: CorsPolicy,
    },
  },
  setLifecyclePolicy(LifecyclePolicy): {
    Properties+::: {
      LifecyclePolicy:
        if !std.isString(LifecyclePolicy) then (error 'LifecyclePolicy must be a string')
        else if std.isEmpty(LifecyclePolicy) then (error 'LifecyclePolicy must be not empty')
        else LifecyclePolicy,
    },
  },
  setAccessLoggingEnabled(AccessLoggingEnabled): {
    Properties+::: {
      AccessLoggingEnabled:
        if !std.isBoolean(AccessLoggingEnabled) then (error 'AccessLoggingEnabled must be a boolean') else AccessLoggingEnabled,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
