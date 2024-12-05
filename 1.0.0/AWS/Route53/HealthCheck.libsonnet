{
  new(
    HealthCheckConfig,
  ): {
    local base = self,
    Properties: {
      HealthCheckConfig:
        if !std.isObject(HealthCheckConfig) then (error 'HealthCheckConfig must be an object')
        else if !std.objectHas(HealthCheckConfig, 'Type') then (error ' have attribute Type')
        else HealthCheckConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53::HealthCheck',
  },
  setHealthCheckId(HealthCheckId): {
    Properties+::: {
      HealthCheckId:
        if !std.isString(HealthCheckId) then (error 'HealthCheckId must be a string')
        else if std.isEmpty(HealthCheckId) then (error 'HealthCheckId must be not empty')
        else HealthCheckId,
    },
  },
  setHealthCheckTags(HealthCheckTags): {
    Properties+::: {
      HealthCheckTags:
        if !std.isArray(HealthCheckTags) then (error 'HealthCheckTags must be an array')
        else HealthCheckTags,
    },
  },
  setHealthCheckTagsMixin(HealthCheckTags): {
    Properties+::: {
      HealthCheckTags+: HealthCheckTags,
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
