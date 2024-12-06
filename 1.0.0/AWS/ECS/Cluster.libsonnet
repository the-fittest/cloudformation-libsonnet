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
    Type: 'AWS::ECS::Cluster',
  },
  setClusterSettings(ClusterSettings): {
    Properties+::: {
      ClusterSettings:
        if !std.isArray(ClusterSettings) then (error 'ClusterSettings must be an array')
        else ClusterSettings,
    },
  },
  pushClusterSettings(ClusterSettings): {
    Properties+::: {
      ClusterSettings+: ClusterSettings,
    },
  },
  setDefaultCapacityProviderStrategy(DefaultCapacityProviderStrategy): {
    Properties+::: {
      DefaultCapacityProviderStrategy:
        if !std.isArray(DefaultCapacityProviderStrategy) then (error 'DefaultCapacityProviderStrategy must be an array')
        else DefaultCapacityProviderStrategy,
    },
  },
  pushDefaultCapacityProviderStrategy(DefaultCapacityProviderStrategy): {
    Properties+::: {
      DefaultCapacityProviderStrategy+: DefaultCapacityProviderStrategy,
    },
  },
  setConfiguration(Configuration): {
    Properties+::: {
      Configuration:
        if !std.isObject(Configuration) then (error 'Configuration must be an object')
        else Configuration,
    },
  },
  setServiceConnectDefaults(ServiceConnectDefaults): {
    Properties+::: {
      ServiceConnectDefaults:
        if !std.isObject(ServiceConnectDefaults) then (error 'ServiceConnectDefaults must be an object')
        else ServiceConnectDefaults,
    },
  },
  setCapacityProviders(CapacityProviders): {
    Properties+::: {
      CapacityProviders:
        if !std.isArray(CapacityProviders) then (error 'CapacityProviders must be an array')
        else CapacityProviders,
    },
  },
  pushCapacityProviders(CapacityProviders): {
    Properties+::: {
      CapacityProviders+: CapacityProviders,
    },
  },
  setClusterName(ClusterName): {
    Properties+::: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else ClusterName,
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
