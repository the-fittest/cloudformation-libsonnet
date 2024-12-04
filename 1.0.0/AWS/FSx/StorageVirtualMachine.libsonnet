{
  // AWS FSx StorageVirtualMachine
  StorageVirtualMachine: {
    new(
      FileSystemId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FileSystemId) : 'FileSystemId must be a string',
        FileSystemId: FileSystemId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::FSx::StorageVirtualMachine',
    },
    withResourceARN(ResourceARN): {
      assert std.isString(ResourceARN) : 'ResourceARN must be a string',
      Properties+::: {
        ResourceARN: ResourceARN,
      },
    },
    withSvmAdminPassword(SvmAdminPassword): {
      assert std.isString(SvmAdminPassword) : 'SvmAdminPassword must be a string',
      Properties+::: {
        SvmAdminPassword: SvmAdminPassword,
      },
    },
    withStorageVirtualMachineId(StorageVirtualMachineId): {
      assert std.isString(StorageVirtualMachineId) : 'StorageVirtualMachineId must be a string',
      Properties+::: {
        StorageVirtualMachineId: StorageVirtualMachineId,
      },
    },
    withActiveDirectoryConfiguration(ActiveDirectoryConfiguration): {
      assert std.isObject(ActiveDirectoryConfiguration) : 'ActiveDirectoryConfiguration must be a object',
      Properties+::: {
        ActiveDirectoryConfiguration: ActiveDirectoryConfiguration,
      },
    },
    withRootVolumeSecurityStyle(RootVolumeSecurityStyle): {
      assert std.isString(RootVolumeSecurityStyle) : 'RootVolumeSecurityStyle must be a string',
      Properties+::: {
        RootVolumeSecurityStyle: RootVolumeSecurityStyle,
      },
    },
    withUUID(UUID): {
      assert std.isString(UUID) : 'UUID must be a string',
      Properties+::: {
        UUID: UUID,
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
