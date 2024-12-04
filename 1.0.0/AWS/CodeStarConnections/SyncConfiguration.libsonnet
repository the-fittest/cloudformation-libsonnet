{
  new(
    Branch,
    ConfigFile,
    RepositoryLinkId,
    ResourceName,
    SyncType,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Branch) : 'Branch must be a string',
      Branch: Branch,
      assert std.isString(ConfigFile) : 'ConfigFile must be a string',
      ConfigFile: ConfigFile,
      assert std.isString(RepositoryLinkId) : 'RepositoryLinkId must be a string',
      RepositoryLinkId: RepositoryLinkId,
      assert std.isString(ResourceName) : 'ResourceName must be a string',
      ResourceName: ResourceName,
      assert std.isString(SyncType) : 'SyncType must be a string',
      SyncType: SyncType,
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeStarConnections::SyncConfiguration',
  },
  withOwnerId(OwnerId): {
    assert std.isString(OwnerId) : 'OwnerId must be a string',
    Properties+::: {
      OwnerId: OwnerId,
    },
  },
  withRepositoryName(RepositoryName): {
    assert std.isString(RepositoryName) : 'RepositoryName must be a string',
    Properties+::: {
      RepositoryName: RepositoryName,
    },
  },
  withProviderType(ProviderType): {
    assert std.isString(ProviderType) : 'ProviderType must be a string',
    assert ProviderType == 'GitHub' || ProviderType == 'Bitbucket' || ProviderType == 'GitHubEnterprise' || ProviderType == 'GitLab' || ProviderType == 'GitLabSelfManaged' : "ProviderType should be 'GitHub' or 'Bitbucket' or 'GitHubEnterprise' or 'GitLab' or 'GitLabSelfManaged'",
    Properties+::: {
      ProviderType: ProviderType,
    },
  },
  withPublishDeploymentStatus(PublishDeploymentStatus): {
    assert std.isString(PublishDeploymentStatus) : 'PublishDeploymentStatus must be a string',
    assert PublishDeploymentStatus == 'ENABLED' || PublishDeploymentStatus == 'DISABLED' : "PublishDeploymentStatus should be 'ENABLED' or 'DISABLED'",
    Properties+::: {
      PublishDeploymentStatus: PublishDeploymentStatus,
    },
  },
  withTriggerResourceUpdateOn(TriggerResourceUpdateOn): {
    assert std.isString(TriggerResourceUpdateOn) : 'TriggerResourceUpdateOn must be a string',
    assert TriggerResourceUpdateOn == 'ANY_CHANGE' || TriggerResourceUpdateOn == 'FILE_CHANGE' : "TriggerResourceUpdateOn should be 'ANY_CHANGE' or 'FILE_CHANGE'",
    Properties+::: {
      TriggerResourceUpdateOn: TriggerResourceUpdateOn,
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
