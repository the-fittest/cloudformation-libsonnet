{
  new(
    FileSystemId,
  ): {
    local base = self,
    Properties: {
      FileSystemId:
        if !std.isString(FileSystemId) then (error 'FileSystemId must be a string')
        else if std.isEmpty(FileSystemId) then (error 'FileSystemId must be not empty')
        else FileSystemId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EFS::AccessPoint',
  },
  setAccessPointId(AccessPointId): {
    Properties+::: {
      AccessPointId:
        if !std.isString(AccessPointId) then (error 'AccessPointId must be a string')
        else if std.isEmpty(AccessPointId) then (error 'AccessPointId must be not empty')
        else AccessPointId,
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
  setClientToken(ClientToken): {
    Properties+::: {
      ClientToken:
        if !std.isString(ClientToken) then (error 'ClientToken must be a string')
        else if std.isEmpty(ClientToken) then (error 'ClientToken must be not empty')
        else ClientToken,
    },
  },
  setAccessPointTags(AccessPointTags): {
    Properties+::: {
      AccessPointTags:
        if !std.isArray(AccessPointTags) then (error 'AccessPointTags must be an array')
        else AccessPointTags,
    },
  },
  setAccessPointTagsMixin(AccessPointTags): {
    Properties+::: {
      AccessPointTags+: AccessPointTags,
    },
  },
  setPosixUser(PosixUser): {
    Properties+::: {
      PosixUser:
        if !std.isObject(PosixUser) then (error 'PosixUser must be an object')
        else if !std.objectHas(PosixUser, 'Uid') then (error ' have attribute Uid')
        else if !std.objectHas(PosixUser, 'Gid') then (error ' have attribute Gid')
        else PosixUser,
    },
  },
  setRootDirectory(RootDirectory): {
    Properties+::: {
      RootDirectory:
        if !std.isObject(RootDirectory) then (error 'RootDirectory must be an object')
        else RootDirectory,
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
