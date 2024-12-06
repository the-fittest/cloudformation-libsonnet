{
  new(
    ResourceCollectionFilter,
  ): {
    local base = self,
    Properties: {
      ResourceCollectionFilter:
        if !std.isObject(ResourceCollectionFilter) then (error 'ResourceCollectionFilter must be an object')
        else ResourceCollectionFilter,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DevOpsGuru::ResourceCollection',
  },
  setResourceCollectionType(ResourceCollectionType): {
    Properties+::: {
      ResourceCollectionType:
        if !std.isString(ResourceCollectionType) then (error 'ResourceCollectionType must be a string')
        else if std.isEmpty(ResourceCollectionType) then (error 'ResourceCollectionType must be not empty')
        else if ResourceCollectionType != 'AWS_CLOUD_FORMATION' && ResourceCollectionType != 'AWS_TAGS' then (error "ResourceCollectionType should be 'AWS_CLOUD_FORMATION' or 'AWS_TAGS'")
        else ResourceCollectionType,
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
