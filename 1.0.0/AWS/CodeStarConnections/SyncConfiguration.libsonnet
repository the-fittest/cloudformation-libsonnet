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
      Branch:
        if !std.isString(Branch) then (error 'Branch must be a string')
        else if std.isEmpty(Branch) then (error 'Branch must be not empty')
        else Branch,
      ConfigFile:
        if !std.isString(ConfigFile) then (error 'ConfigFile must be a string')
        else if std.isEmpty(ConfigFile) then (error 'ConfigFile must be not empty')
        else ConfigFile,
      RepositoryLinkId:
        if !std.isString(RepositoryLinkId) then (error 'RepositoryLinkId must be a string')
        else if std.isEmpty(RepositoryLinkId) then (error 'RepositoryLinkId must be not empty')
        else RepositoryLinkId,
      ResourceName:
        if !std.isString(ResourceName) then (error 'ResourceName must be a string')
        else if std.isEmpty(ResourceName) then (error 'ResourceName must be not empty')
        else ResourceName,
      SyncType:
        if !std.isString(SyncType) then (error 'SyncType must be a string')
        else if std.isEmpty(SyncType) then (error 'SyncType must be not empty')
        else SyncType,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeStarConnections::SyncConfiguration',
  },
  setOwnerId(OwnerId): {
    Properties+::: {
      OwnerId:
        if !std.isString(OwnerId) then (error 'OwnerId must be a string')
        else if std.isEmpty(OwnerId) then (error 'OwnerId must be not empty')
        else OwnerId,
    },
  },
  setRepositoryName(RepositoryName): {
    Properties+::: {
      RepositoryName:
        if !std.isString(RepositoryName) then (error 'RepositoryName must be a string')
        else if std.isEmpty(RepositoryName) then (error 'RepositoryName must be not empty')
        else RepositoryName,
    },
  },
  setProviderType(ProviderType): {
    Properties+::: {
      ProviderType:
        if !std.isString(ProviderType) then (error 'ProviderType must be a string')
        else if std.isEmpty(ProviderType) then (error 'ProviderType must be not empty')
        else if ProviderType != 'GitHub' && ProviderType != 'Bitbucket' && ProviderType != 'GitHubEnterprise' && ProviderType != 'GitLab' && ProviderType != 'GitLabSelfManaged' then (error "ProviderType should be 'GitHub' or 'Bitbucket' or 'GitHubEnterprise' or 'GitLab' or 'GitLabSelfManaged'")
        else ProviderType,
    },
  },
  setPublishDeploymentStatus(PublishDeploymentStatus): {
    Properties+::: {
      PublishDeploymentStatus:
        if !std.isString(PublishDeploymentStatus) then (error 'PublishDeploymentStatus must be a string')
        else if std.isEmpty(PublishDeploymentStatus) then (error 'PublishDeploymentStatus must be not empty')
        else if PublishDeploymentStatus != 'ENABLED' && PublishDeploymentStatus != 'DISABLED' then (error "PublishDeploymentStatus should be 'ENABLED' or 'DISABLED'")
        else PublishDeploymentStatus,
    },
  },
  setTriggerResourceUpdateOn(TriggerResourceUpdateOn): {
    Properties+::: {
      TriggerResourceUpdateOn:
        if !std.isString(TriggerResourceUpdateOn) then (error 'TriggerResourceUpdateOn must be a string')
        else if std.isEmpty(TriggerResourceUpdateOn) then (error 'TriggerResourceUpdateOn must be not empty')
        else if TriggerResourceUpdateOn != 'ANY_CHANGE' && TriggerResourceUpdateOn != 'FILE_CHANGE' then (error "TriggerResourceUpdateOn should be 'ANY_CHANGE' or 'FILE_CHANGE'")
        else TriggerResourceUpdateOn,
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
