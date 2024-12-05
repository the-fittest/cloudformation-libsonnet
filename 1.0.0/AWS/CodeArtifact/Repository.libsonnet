{
  new(
    RepositoryName,
    DomainName,
  ): {
    local base = self,
    Properties: {
      RepositoryName:
        if !std.isString(RepositoryName) then (error 'RepositoryName must be a string')
        else if std.isEmpty(RepositoryName) then (error 'RepositoryName must be not empty')
        else if std.length(RepositoryName) < 2 then error ('RepositoryName should have at least 2 characters')
        else if std.length(RepositoryName) > 100 then error ('RepositoryName should have not more than 100 characters')
        else RepositoryName,
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 2 then error ('DomainName should have at least 2 characters')
        else if std.length(DomainName) > 50 then error ('DomainName should have not more than 50 characters')
        else DomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeArtifact::Repository',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 2 then error ('Name should have at least 2 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
    },
  },
  setDomainOwner(DomainOwner): {
    Properties+::: {
      DomainOwner:
        if !std.isString(DomainOwner) then (error 'DomainOwner must be a string')
        else if std.isEmpty(DomainOwner) then (error 'DomainOwner must be not empty')
        else DomainOwner,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setExternalConnections(ExternalConnections): {
    Properties+::: {
      ExternalConnections:
        if !std.isArray(ExternalConnections) then (error 'ExternalConnections must be an array')
        else ExternalConnections,
    },
  },
  setExternalConnectionsMixin(ExternalConnections): {
    Properties+::: {
      ExternalConnections+: ExternalConnections,
    },
  },
  setUpstreams(Upstreams): {
    Properties+::: {
      Upstreams:
        if !std.isArray(Upstreams) then (error 'Upstreams must be an array')
        else Upstreams,
    },
  },
  setUpstreamsMixin(Upstreams): {
    Properties+::: {
      Upstreams+: Upstreams,
    },
  },
  setPermissionsPolicyDocument(PermissionsPolicyDocument): {
    Properties+::: {
      PermissionsPolicyDocument:
        if !std.isObject(PermissionsPolicyDocument) then (error 'PermissionsPolicyDocument must be an object')
        else PermissionsPolicyDocument,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
