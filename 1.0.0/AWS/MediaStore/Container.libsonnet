{
  new(
    ContainerName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ContainerName) : 'ContainerName must be a string',
      ContainerName: ContainerName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaStore::Container',
  },
  withPolicy(Policy): {
    assert std.isString(Policy) : 'Policy must be a string',
    Properties+::: {
      Policy: Policy,
    },
  },
  withMetricPolicy(MetricPolicy): {
    assert std.isObject(MetricPolicy) : 'MetricPolicy must be a object',
    Properties+::: {
      MetricPolicy: MetricPolicy,
    },
  },
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
    },
  },
  withCorsPolicy(CorsPolicy): {
    Properties+::: {
      CorsPolicy: (if std.isArray(CorsPolicy) then CorsPolicy else [CorsPolicy]),
    },
  },
  withCorsPolicyMixin(CorsPolicy): {
    Properties+::: {
      CorsPolicy+: (if std.isArray(CorsPolicy) then CorsPolicy else [CorsPolicy]),
    },
  },
  withLifecyclePolicy(LifecyclePolicy): {
    assert std.isString(LifecyclePolicy) : 'LifecyclePolicy must be a string',
    Properties+::: {
      LifecyclePolicy: LifecyclePolicy,
    },
  },
  withAccessLoggingEnabled(AccessLoggingEnabled): {
    assert std.isBoolean(AccessLoggingEnabled) : 'AccessLoggingEnabled must be a boolean',
    Properties+::: {
      AccessLoggingEnabled: AccessLoggingEnabled,
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
}
