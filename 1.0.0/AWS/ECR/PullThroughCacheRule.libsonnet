{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ECR::PullThroughCacheRule',
  },
  setEcrRepositoryPrefix(EcrRepositoryPrefix): {
    Properties+::: {
      EcrRepositoryPrefix:
        if !std.isString(EcrRepositoryPrefix) then (error 'EcrRepositoryPrefix must be a string')
        else if std.isEmpty(EcrRepositoryPrefix) then (error 'EcrRepositoryPrefix must be not empty')
        else if std.length(EcrRepositoryPrefix) < 2 then error ('EcrRepositoryPrefix should have at least 2 characters')
        else if std.length(EcrRepositoryPrefix) > 30 then error ('EcrRepositoryPrefix should have not more than 30 characters')
        else EcrRepositoryPrefix,
    },
  },
  setUpstreamRegistryUrl(UpstreamRegistryUrl): {
    Properties+::: {
      UpstreamRegistryUrl:
        if !std.isString(UpstreamRegistryUrl) then (error 'UpstreamRegistryUrl must be a string')
        else if std.isEmpty(UpstreamRegistryUrl) then (error 'UpstreamRegistryUrl must be not empty')
        else UpstreamRegistryUrl,
    },
  },
  setCredentialArn(CredentialArn): {
    Properties+::: {
      CredentialArn:
        if !std.isString(CredentialArn) then (error 'CredentialArn must be a string')
        else if std.isEmpty(CredentialArn) then (error 'CredentialArn must be not empty')
        else if std.length(CredentialArn) < 50 then error ('CredentialArn should have at least 50 characters')
        else if std.length(CredentialArn) > 612 then error ('CredentialArn should have not more than 612 characters')
        else CredentialArn,
    },
  },
  setUpstreamRegistry(UpstreamRegistry): {
    Properties+::: {
      UpstreamRegistry:
        if !std.isString(UpstreamRegistry) then (error 'UpstreamRegistry must be a string')
        else if std.isEmpty(UpstreamRegistry) then (error 'UpstreamRegistry must be not empty')
        else UpstreamRegistry,
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
