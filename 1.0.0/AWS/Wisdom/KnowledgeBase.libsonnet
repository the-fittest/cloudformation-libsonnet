{
  // AWS Wisdom KnowledgeBase
  KnowledgeBase: {
    new(
      KnowledgeBaseType,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(KnowledgeBaseType) : 'KnowledgeBaseType must be a string',
        KnowledgeBaseType: KnowledgeBaseType,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Wisdom::KnowledgeBase',
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withKnowledgeBaseArn(KnowledgeBaseArn): {
      assert std.isString(KnowledgeBaseArn) : 'KnowledgeBaseArn must be a string',
      Properties+::: {
        KnowledgeBaseArn: KnowledgeBaseArn,
      },
    },
    withKnowledgeBaseId(KnowledgeBaseId): {
      assert std.isString(KnowledgeBaseId) : 'KnowledgeBaseId must be a string',
      Properties+::: {
        KnowledgeBaseId: KnowledgeBaseId,
      },
    },
    withRenderingConfiguration(RenderingConfiguration): {
      assert std.isObject(RenderingConfiguration) : 'RenderingConfiguration must be a object',
      Properties+::: {
        RenderingConfiguration: RenderingConfiguration,
      },
    },
    withServerSideEncryptionConfiguration(ServerSideEncryptionConfiguration): {
      assert std.isObject(ServerSideEncryptionConfiguration) : 'ServerSideEncryptionConfiguration must be a object',
      Properties+::: {
        ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration,
      },
    },
    withSourceConfiguration(SourceConfiguration): {
      Properties+::: {
        SourceConfiguration: SourceConfiguration,
      },
    },
    withVectorIngestionConfiguration(VectorIngestionConfiguration): {
      assert std.isObject(VectorIngestionConfiguration) : 'VectorIngestionConfiguration must be a object',
      Properties+::: {
        VectorIngestionConfiguration: VectorIngestionConfiguration,
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
  },
}
