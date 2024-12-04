{
  new(
    User,
    SecurityGroupArns,
  ): {
    local base = self,
    Properties: {
      assert std.isString(User) : 'User must be a string',
      User: User,
      SecurityGroupArns: (if std.isArray(SecurityGroupArns) then SecurityGroupArns else [SecurityGroupArns]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::LocationFSxWindows',
  },
  withDomain(Domain): {
    assert std.isString(Domain) : 'Domain must be a string',
    Properties+::: {
      Domain: Domain,
    },
  },
  withFsxFilesystemArn(FsxFilesystemArn): {
    assert std.isString(FsxFilesystemArn) : 'FsxFilesystemArn must be a string',
    Properties+::: {
      FsxFilesystemArn: FsxFilesystemArn,
    },
  },
  withPassword(Password): {
    assert std.isString(Password) : 'Password must be a string',
    Properties+::: {
      Password: Password,
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
}
