{
  new(
    RepositoryName,
    RepositoryOwner,
  ): {
    local base = self,
    Properties: {
      RepositoryName:
        if !std.isString(RepositoryName) then (error 'RepositoryName must be a string')
        else if std.isEmpty(RepositoryName) then (error 'RepositoryName must be not empty')
        else RepositoryName,
      RepositoryOwner:
        if !std.isString(RepositoryOwner) then (error 'RepositoryOwner must be a string')
        else if std.isEmpty(RepositoryOwner) then (error 'RepositoryOwner must be not empty')
        else RepositoryOwner,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeStar::GitHubRepository',
  },
  setEnableIssues(EnableIssues): {
    Properties+::: {
      EnableIssues:
        if !std.isBoolean(EnableIssues) then (error 'EnableIssues must be a boolean') else EnableIssues,
    },
  },
  setConnectionArn(ConnectionArn): {
    Properties+::: {
      ConnectionArn:
        if !std.isString(ConnectionArn) then (error 'ConnectionArn must be a string')
        else if std.isEmpty(ConnectionArn) then (error 'ConnectionArn must be not empty')
        else ConnectionArn,
    },
  },
  setRepositoryAccessToken(RepositoryAccessToken): {
    Properties+::: {
      RepositoryAccessToken:
        if !std.isString(RepositoryAccessToken) then (error 'RepositoryAccessToken must be a string')
        else if std.isEmpty(RepositoryAccessToken) then (error 'RepositoryAccessToken must be not empty')
        else RepositoryAccessToken,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setIsPrivate(IsPrivate): {
    Properties+::: {
      IsPrivate:
        if !std.isBoolean(IsPrivate) then (error 'IsPrivate must be a boolean') else IsPrivate,
    },
  },
  setCode(Code): {
    Properties+::: {
      Code:
        if !std.isObject(Code) then (error 'Code must be an object')
        else if !std.objectHas(Code, 'S3') then (error ' have attribute S3')
        else Code,
    },
  },
  setRepositoryDescription(RepositoryDescription): {
    Properties+::: {
      RepositoryDescription:
        if !std.isString(RepositoryDescription) then (error 'RepositoryDescription must be a string')
        else if std.isEmpty(RepositoryDescription) then (error 'RepositoryDescription must be not empty')
        else RepositoryDescription,
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
