{
  new(
    BundleId,
    DirectoryId,
    UserName,
  ): {
    local base = self,
    Properties: {
      BundleId:
        if !std.isString(BundleId) then (error 'BundleId must be a string')
        else if std.isEmpty(BundleId) then (error 'BundleId must be not empty')
        else BundleId,
      DirectoryId:
        if !std.isString(DirectoryId) then (error 'DirectoryId must be a string')
        else if std.isEmpty(DirectoryId) then (error 'DirectoryId must be not empty')
        else DirectoryId,
      UserName:
        if !std.isString(UserName) then (error 'UserName must be a string')
        else if std.isEmpty(UserName) then (error 'UserName must be not empty')
        else UserName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpaces::Workspace',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setRootVolumeEncryptionEnabled(RootVolumeEncryptionEnabled): {
    Properties+::: {
      RootVolumeEncryptionEnabled:
        if !std.isBoolean(RootVolumeEncryptionEnabled) then (error 'RootVolumeEncryptionEnabled must be a boolean') else RootVolumeEncryptionEnabled,
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
  setUserVolumeEncryptionEnabled(UserVolumeEncryptionEnabled): {
    Properties+::: {
      UserVolumeEncryptionEnabled:
        if !std.isBoolean(UserVolumeEncryptionEnabled) then (error 'UserVolumeEncryptionEnabled must be a boolean') else UserVolumeEncryptionEnabled,
    },
  },
  setVolumeEncryptionKey(VolumeEncryptionKey): {
    Properties+::: {
      VolumeEncryptionKey:
        if !std.isString(VolumeEncryptionKey) then (error 'VolumeEncryptionKey must be a string')
        else if std.isEmpty(VolumeEncryptionKey) then (error 'VolumeEncryptionKey must be not empty')
        else VolumeEncryptionKey,
    },
  },
  setWorkspaceProperties(WorkspaceProperties): {
    Properties+::: {
      WorkspaceProperties:
        if !std.isObject(WorkspaceProperties) then (error 'WorkspaceProperties must be an object')
        else WorkspaceProperties,
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
