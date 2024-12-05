{
  new(
    Type,
    ApiId,
    ApiCachingBehavior,
    Ttl,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
      ApiCachingBehavior:
        if !std.isString(ApiCachingBehavior) then (error 'ApiCachingBehavior must be a string')
        else if std.isEmpty(ApiCachingBehavior) then (error 'ApiCachingBehavior must be not empty')
        else ApiCachingBehavior,
      Ttl:
        if !std.isNumber(Ttl) then (error 'Ttl must be an number')
        else Ttl,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::ApiCache',
  },
  setTransitEncryptionEnabled(TransitEncryptionEnabled): {
    Properties+::: {
      TransitEncryptionEnabled:
        if !std.isBoolean(TransitEncryptionEnabled) then (error 'TransitEncryptionEnabled must be a boolean') else TransitEncryptionEnabled,
    },
  },
  setHealthMetricsConfig(HealthMetricsConfig): {
    Properties+::: {
      HealthMetricsConfig:
        if !std.isString(HealthMetricsConfig) then (error 'HealthMetricsConfig must be a string')
        else if std.isEmpty(HealthMetricsConfig) then (error 'HealthMetricsConfig must be not empty')
        else HealthMetricsConfig,
    },
  },
  setAtRestEncryptionEnabled(AtRestEncryptionEnabled): {
    Properties+::: {
      AtRestEncryptionEnabled:
        if !std.isBoolean(AtRestEncryptionEnabled) then (error 'AtRestEncryptionEnabled must be a boolean') else AtRestEncryptionEnabled,
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
