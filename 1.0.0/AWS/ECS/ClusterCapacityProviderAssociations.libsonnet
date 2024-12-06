{
  new(
    CapacityProviders,
    Cluster,
    DefaultCapacityProviderStrategy,
  ): {
    local base = self,
    Properties: {
      CapacityProviders:
        if !std.isArray(CapacityProviders) then (error 'CapacityProviders must be an array')
        else CapacityProviders,
      Cluster:
        if !std.isString(Cluster) then (error 'Cluster must be a string')
        else if std.isEmpty(Cluster) then (error 'Cluster must be not empty')
        else if std.length(Cluster) < 1 then error ('Cluster should have at least 1 characters')
        else if std.length(Cluster) > 2048 then error ('Cluster should have not more than 2048 characters')
        else Cluster,
      DefaultCapacityProviderStrategy:
        if !std.isArray(DefaultCapacityProviderStrategy) then (error 'DefaultCapacityProviderStrategy must be an array')
        else DefaultCapacityProviderStrategy,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ECS::ClusterCapacityProviderAssociations',
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
