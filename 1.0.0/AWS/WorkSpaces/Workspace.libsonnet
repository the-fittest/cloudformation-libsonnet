{
  // AWS WorkSpaces Workspace
  Workspace: {
    new(
      BundleId,
      DirectoryId,
      UserName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BundleId) : 'BundleId must be a string',
        BundleId: BundleId,
        assert std.isString(DirectoryId) : 'DirectoryId must be a string',
        DirectoryId: DirectoryId,
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::WorkSpaces::Workspace',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withRootVolumeEncryptionEnabled(RootVolumeEncryptionEnabled): {
      assert std.isBoolean(RootVolumeEncryptionEnabled) : 'RootVolumeEncryptionEnabled must be a boolean',
      Properties+::: {
        RootVolumeEncryptionEnabled: RootVolumeEncryptionEnabled,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withUserVolumeEncryptionEnabled(UserVolumeEncryptionEnabled): {
      assert std.isBoolean(UserVolumeEncryptionEnabled) : 'UserVolumeEncryptionEnabled must be a boolean',
      Properties+::: {
        UserVolumeEncryptionEnabled: UserVolumeEncryptionEnabled,
      },
    },
    withVolumeEncryptionKey(VolumeEncryptionKey): {
      assert std.isString(VolumeEncryptionKey) : 'VolumeEncryptionKey must be a string',
      Properties+::: {
        VolumeEncryptionKey: VolumeEncryptionKey,
      },
    },
    withWorkspaceProperties(WorkspaceProperties): {
      assert std.isObject(WorkspaceProperties) : 'WorkspaceProperties must be a object',
      Properties+::: {
        WorkspaceProperties: WorkspaceProperties,
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
