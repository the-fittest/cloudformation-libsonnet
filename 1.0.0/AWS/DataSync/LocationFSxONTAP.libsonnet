{
  // AWS DataSync LocationFSxONTAP
  LocationFSxONTAP: {
    new(
      SecurityGroupArns,
      StorageVirtualMachineArn,
    ): {
      local base = self,
      Properties: {
        SecurityGroupArns: (if std.isArray(SecurityGroupArns) then SecurityGroupArns else [SecurityGroupArns]),
        assert std.isString(StorageVirtualMachineArn) : 'StorageVirtualMachineArn must be a string',
        StorageVirtualMachineArn: StorageVirtualMachineArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DataSync::LocationFSxONTAP',
    },
    withFsxFilesystemArn(FsxFilesystemArn): {
      assert std.isString(FsxFilesystemArn) : 'FsxFilesystemArn must be a string',
      Properties+::: {
        FsxFilesystemArn: FsxFilesystemArn,
      },
    },
    withProtocol(Protocol): {
      assert std.isObject(Protocol) : 'Protocol must be a object',
      Properties+::: {
        Protocol: Protocol,
      },
    },
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: {
        Subdirectory: Subdirectory,
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
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: {
        LocationArn: LocationArn,
      },
    },
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: {
        LocationUri: LocationUri,
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