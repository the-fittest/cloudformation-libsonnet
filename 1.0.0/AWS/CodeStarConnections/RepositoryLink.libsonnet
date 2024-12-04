{
  new(
    RepositoryName,
    ConnectionArn,
    OwnerId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RepositoryName) : 'RepositoryName must be a string',
      RepositoryName: RepositoryName,
      assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
      ConnectionArn: ConnectionArn,
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      OwnerId: OwnerId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeStarConnections::RepositoryLink',
  },
  withProviderType(ProviderType): {
    assert std.isString(ProviderType) : 'ProviderType must be a string',
    assert ProviderType == 'GitHub' || ProviderType == 'Bitbucket' || ProviderType == 'GitHubEnterprise' || ProviderType == 'GitLab' || ProviderType == 'GitLabSelfManaged' : "ProviderType should be 'GitHub' or 'Bitbucket' or 'GitHubEnterprise' or 'GitLab' or 'GitLabSelfManaged'",
    Properties+::: {
      ProviderType: ProviderType,
    },
  },
  withEncryptionKeyArn(EncryptionKeyArn): {
    assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
    Properties+::: {
      EncryptionKeyArn: EncryptionKeyArn,
    },
  },
  withRepositoryLinkId(RepositoryLinkId): {
    assert std.isString(RepositoryLinkId) : 'RepositoryLinkId must be a string',
    Properties+::: {
      RepositoryLinkId: RepositoryLinkId,
    },
  },
  withRepositoryLinkArn(RepositoryLinkArn): {
    assert std.isString(RepositoryLinkArn) : 'RepositoryLinkArn must be a string',
    Properties+::: {
      RepositoryLinkArn: RepositoryLinkArn,
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
}
