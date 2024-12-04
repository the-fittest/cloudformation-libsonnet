{
  // AWS EFS AccessPoint
  AccessPoint: {
    new(
      FileSystemId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FileSystemId) : 'FileSystemId must be a string',
        FileSystemId: FileSystemId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EFS::AccessPoint',
    },
    withAccessPointId(AccessPointId): {
      assert std.isString(AccessPointId) : 'AccessPointId must be a string',
      Properties+::: {
        AccessPointId: AccessPointId,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: {
        ClientToken: ClientToken,
      },
    },
    withAccessPointTags(AccessPointTags): {
      Properties+::: {
        AccessPointTags: (if std.isArray(AccessPointTags) then AccessPointTags else [AccessPointTags]),
      },
    },
    withAccessPointTagsMixin(AccessPointTags): {
      Properties+::: {
        AccessPointTags+: (if std.isArray(AccessPointTags) then AccessPointTags else [AccessPointTags]),
      },
    },
    withPosixUser(PosixUser): {
      assert std.isObject(PosixUser) : 'PosixUser must be a object',
      Properties+::: {
        PosixUser: PosixUser,
      },
    },
    withRootDirectory(RootDirectory): {
      assert std.isObject(RootDirectory) : 'RootDirectory must be a object',
      Properties+::: {
        RootDirectory: RootDirectory,
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
