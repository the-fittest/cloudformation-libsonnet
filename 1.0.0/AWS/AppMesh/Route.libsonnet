{
  new(
    MeshName,
    VirtualRouterName,
    Spec,
  ): {
    local base = self,
    Properties: {
      MeshName:
        if !std.isString(MeshName) then (error 'MeshName must be a string')
        else if std.isEmpty(MeshName) then (error 'MeshName must be not empty')
        else MeshName,
      VirtualRouterName:
        if !std.isString(VirtualRouterName) then (error 'VirtualRouterName must be a string')
        else if std.isEmpty(VirtualRouterName) then (error 'VirtualRouterName must be not empty')
        else VirtualRouterName,
      Spec:
        if !std.isObject(Spec) then (error 'Spec must be an object')
        else Spec,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppMesh::Route',
  },
  setUid(Uid): {
    Properties+::: {
      Uid:
        if !std.isString(Uid) then (error 'Uid must be a string')
        else if std.isEmpty(Uid) then (error 'Uid must be not empty')
        else Uid,
    },
  },
  setMeshOwner(MeshOwner): {
    Properties+::: {
      MeshOwner:
        if !std.isString(MeshOwner) then (error 'MeshOwner must be a string')
        else if std.isEmpty(MeshOwner) then (error 'MeshOwner must be not empty')
        else MeshOwner,
    },
  },
  setResourceOwner(ResourceOwner): {
    Properties+::: {
      ResourceOwner:
        if !std.isString(ResourceOwner) then (error 'ResourceOwner must be a string')
        else if std.isEmpty(ResourceOwner) then (error 'ResourceOwner must be not empty')
        else ResourceOwner,
    },
  },
  setRouteName(RouteName): {
    Properties+::: {
      RouteName:
        if !std.isString(RouteName) then (error 'RouteName must be a string')
        else if std.isEmpty(RouteName) then (error 'RouteName must be not empty')
        else RouteName,
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
