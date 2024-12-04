{
  // AWS SSM Document
  Document: {
    new(
      Content,
    ): {
      local base = self,
      Properties: {
        Content: Content,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SSM::Document',
    },
    withAttachments(Attachments): {
      Properties+::: {
        Attachments: (if std.isArray(Attachments) then Attachments else [Attachments]),
      },
    },
    withAttachmentsMixin(Attachments): {
      Properties+::: {
        Attachments+: (if std.isArray(Attachments) then Attachments else [Attachments]),
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withVersionName(VersionName): {
      assert std.isString(VersionName) : 'VersionName must be a string',
      Properties+::: {
        VersionName: VersionName,
      },
    },
    withDocumentType(DocumentType): {
      assert std.isString(DocumentType) : 'DocumentType must be a string',
      Properties+::: {
        DocumentType: DocumentType,
      },
    },
    withDocumentFormat(DocumentFormat): {
      assert std.isString(DocumentFormat) : 'DocumentFormat must be a string',
      Properties+::: {
        DocumentFormat: DocumentFormat,
      },
    },
    withTargetType(TargetType): {
      assert std.isString(TargetType) : 'TargetType must be a string',
      Properties+::: {
        TargetType: TargetType,
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
    withRequires(Requires): {
      Properties+::: {
        Requires: (if std.isArray(Requires) then Requires else [Requires]),
      },
    },
    withRequiresMixin(Requires): {
      Properties+::: {
        Requires+: (if std.isArray(Requires) then Requires else [Requires]),
      },
    },
    withUpdateMethod(UpdateMethod): {
      assert std.isString(UpdateMethod) : 'UpdateMethod must be a string',
      Properties+::: {
        UpdateMethod: UpdateMethod,
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
  },
}
