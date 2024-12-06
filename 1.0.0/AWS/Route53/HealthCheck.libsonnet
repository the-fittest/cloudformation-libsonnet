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
  pushHealthCheckTags(HealthCheckTags): {
    Properties+::: {
      HealthCheckTags+: HealthCheckTags,
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
