{
  new(
    RepositoryName,
    ConnectionArn,
    OwnerId,
  ): {
    local base = self,
    Properties: {
      RepositoryName:
        if !std.isString(RepositoryName) then (error 'RepositoryName must be a string')
        else if std.isEmpty(RepositoryName) then (error 'RepositoryName must be not empty')
        else RepositoryName,
      ConnectionArn:
        if !std.isString(ConnectionArn) then (error 'ConnectionArn must be a string')
        else if std.isEmpty(ConnectionArn) then (error 'ConnectionArn must be not empty')
        else ConnectionArn,
      OwnerId:
        if !std.isString(OwnerId) then (error 'OwnerId must be a string')
        else if std.isEmpty(OwnerId) then (error 'OwnerId must be not empty')
        else OwnerId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeStarConnections::RepositoryLink',
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
  setEncryptionKeyArn(EncryptionKeyArn): {
    Properties+::: {
      EncryptionKeyArn:
        if !std.isString(EncryptionKeyArn) then (error 'EncryptionKeyArn must be a string')
        else if std.isEmpty(EncryptionKeyArn) then (error 'EncryptionKeyArn must be not empty')
        else EncryptionKeyArn,
    },
  },
  setRepositoryLinkId(RepositoryLinkId): {
    Properties+::: {
      RepositoryLinkId:
        if !std.isString(RepositoryLinkId) then (error 'RepositoryLinkId must be a string')
        else if std.isEmpty(RepositoryLinkId) then (error 'RepositoryLinkId must be not empty')
        else RepositoryLinkId,
    },
  },
  setRepositoryLinkArn(RepositoryLinkArn): {
    Properties+::: {
      RepositoryLinkArn:
        if !std.isString(RepositoryLinkArn) then (error 'RepositoryLinkArn must be a string')
        else if std.isEmpty(RepositoryLinkArn) then (error 'RepositoryLinkArn must be not empty')
        else RepositoryLinkArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
