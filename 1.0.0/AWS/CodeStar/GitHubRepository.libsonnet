{
  new(
    RepositoryName,
    RepositoryOwner,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RepositoryName) : 'RepositoryName must be a string',
      RepositoryName: RepositoryName,
      assert std.isString(RepositoryOwner) : 'RepositoryOwner must be a string',
      RepositoryOwner: RepositoryOwner,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeStar::GitHubRepository',
  },
  withEnableIssues(EnableIssues): {
    assert std.isBoolean(EnableIssues) : 'EnableIssues must be a boolean',
    Properties+::: {
      EnableIssues: EnableIssues,
    },
  },
  withConnectionArn(ConnectionArn): {
    assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
    Properties+::: {
      ConnectionArn: ConnectionArn,
    },
  },
  withRepositoryAccessToken(RepositoryAccessToken): {
    assert std.isString(RepositoryAccessToken) : 'RepositoryAccessToken must be a string',
    Properties+::: {
      RepositoryAccessToken: RepositoryAccessToken,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withIsPrivate(IsPrivate): {
    assert std.isBoolean(IsPrivate) : 'IsPrivate must be a boolean',
    Properties+::: {
      IsPrivate: IsPrivate,
    },
  },
  withCode(Code): {
    assert std.isObject(Code) : 'Code must be a object',
    Properties+::: {
      Code: Code,
    },
  },
  withRepositoryDescription(RepositoryDescription): {
    assert std.isString(RepositoryDescription) : 'RepositoryDescription must be a string',
    Properties+::: {
      RepositoryDescription: RepositoryDescription,
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
