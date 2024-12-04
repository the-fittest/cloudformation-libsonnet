{
  // AWS Transfer User
  User: {
    new(
      Role,
      ServerId,
      UserName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
        assert std.isString(ServerId) : 'ServerId must be a string',
        ServerId: ServerId,
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Transfer::User',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withHomeDirectory(HomeDirectory): {
      assert std.isString(HomeDirectory) : 'HomeDirectory must be a string',
      Properties+::: {
        HomeDirectory: HomeDirectory,
      },
    },
    withHomeDirectoryMappings(HomeDirectoryMappings): {
      Properties+::: {
        HomeDirectoryMappings: (if std.isArray(HomeDirectoryMappings) then HomeDirectoryMappings else [HomeDirectoryMappings]),
      },
    },
    withHomeDirectoryMappingsMixin(HomeDirectoryMappings): {
      Properties+::: {
        HomeDirectoryMappings+: (if std.isArray(HomeDirectoryMappings) then HomeDirectoryMappings else [HomeDirectoryMappings]),
      },
    },
    withHomeDirectoryType(HomeDirectoryType): {
      assert std.isString(HomeDirectoryType) : 'HomeDirectoryType must be a string',
      Properties+::: {
        HomeDirectoryType: HomeDirectoryType,
      },
    },
    withPolicy(Policy): {
      assert std.isString(Policy) : 'Policy must be a string',
      Properties+::: {
        Policy: Policy,
      },
    },
    withPosixProfile(PosixProfile): {
      assert std.isObject(PosixProfile) : 'PosixProfile must be a object',
      Properties+::: {
        PosixProfile: PosixProfile,
      },
    },
    withSshPublicKeys(SshPublicKeys): {
      Properties+::: {
        SshPublicKeys: (if std.isArray(SshPublicKeys) then SshPublicKeys else [SshPublicKeys]),
      },
    },
    withSshPublicKeysMixin(SshPublicKeys): {
      Properties+::: {
        SshPublicKeys+: (if std.isArray(SshPublicKeys) then SshPublicKeys else [SshPublicKeys]),
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
