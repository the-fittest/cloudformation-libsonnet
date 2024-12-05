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
    Type: 'AWS::AppMesh::Mesh',
  },
  setUid(Uid): {
    Properties+::: {
      Uid:
        if !std.isString(Uid) then (error 'Uid must be a string')
        else if std.isEmpty(Uid) then (error 'Uid must be not empty')
        else Uid,
    },
  },
  setMeshName(MeshName): {
    Properties+::: {
      MeshName:
        if !std.isString(MeshName) then (error 'MeshName must be a string')
        else if std.isEmpty(MeshName) then (error 'MeshName must be not empty')
        else MeshName,
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
  setSpec(Spec): {
    Properties+::: {
      Spec:
        if !std.isObject(Spec) then (error 'Spec must be an object')
        else Spec,
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
