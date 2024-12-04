{
  new(
    RepositoryName,
    DomainName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RepositoryName) : 'RepositoryName must be a string',
      RepositoryName: RepositoryName,
      assert std.isString(DomainName) : 'DomainName must be a string',
      DomainName: DomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeArtifact::Repository',
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withDomainOwner(DomainOwner): {
    assert std.isString(DomainOwner) : 'DomainOwner must be a string',
    Properties+::: {
      DomainOwner: DomainOwner,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withExternalConnections(ExternalConnections): {
    Properties+::: {
      ExternalConnections: (if std.isArray(ExternalConnections) then ExternalConnections else [ExternalConnections]),
    },
  },
  withExternalConnectionsMixin(ExternalConnections): {
    Properties+::: {
      ExternalConnections+: (if std.isArray(ExternalConnections) then ExternalConnections else [ExternalConnections]),
    },
  },
  withUpstreams(Upstreams): {
    Properties+::: {
      Upstreams: (if std.isArray(Upstreams) then Upstreams else [Upstreams]),
    },
  },
  withUpstreamsMixin(Upstreams): {
    Properties+::: {
      Upstreams+: (if std.isArray(Upstreams) then Upstreams else [Upstreams]),
    },
  },
  withPermissionsPolicyDocument(PermissionsPolicyDocument): {
    assert std.isObject(PermissionsPolicyDocument) : 'PermissionsPolicyDocument must be a object',
    Properties+::: {
      PermissionsPolicyDocument: PermissionsPolicyDocument,
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
