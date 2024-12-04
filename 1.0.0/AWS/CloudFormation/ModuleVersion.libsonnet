{
  new(
    ModuleName,
    ModulePackage,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ModuleName) : 'ModuleName must be a string',
      ModuleName: ModuleName,
      assert std.isString(ModulePackage) : 'ModulePackage must be a string',
      ModulePackage: ModulePackage,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::ModuleVersion',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withDocumentationUrl(DocumentationUrl): {
    assert std.isString(DocumentationUrl) : 'DocumentationUrl must be a string',
    Properties+::: {
      DocumentationUrl: DocumentationUrl,
    },
  },
  withIsDefaultVersion(IsDefaultVersion): {
    assert std.isBoolean(IsDefaultVersion) : 'IsDefaultVersion must be a boolean',
    Properties+::: {
      IsDefaultVersion: IsDefaultVersion,
    },
  },
  withSchema(Schema): {
    assert std.isString(Schema) : 'Schema must be a string',
    Properties+::: {
      Schema: Schema,
    },
  },
  withTimeCreated(TimeCreated): {
    assert std.isString(TimeCreated) : 'TimeCreated must be a string',
    Properties+::: {
      TimeCreated: TimeCreated,
    },
  },
  withVersionId(VersionId): {
    assert std.isString(VersionId) : 'VersionId must be a string',
    Properties+::: {
      VersionId: VersionId,
    },
  },
  withVisibility(Visibility): {
    assert std.isString(Visibility) : 'Visibility must be a string',
    assert Visibility == 'PRIVATE' : "Visibility should be 'PRIVATE'",
    Properties+::: {
      Visibility: Visibility,
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
