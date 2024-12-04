{
  // AWS Wisdom MessageTemplate
  MessageTemplate: {
    new(
      KnowledgeBaseArn,
      ChannelSubtype,
      Name,
      Content,
    ): {
      local base = self,
      Properties: {
        assert std.isString(KnowledgeBaseArn) : 'KnowledgeBaseArn must be a string',
        KnowledgeBaseArn: KnowledgeBaseArn,
        assert std.isString(ChannelSubtype) : 'ChannelSubtype must be a string',
        ChannelSubtype: ChannelSubtype,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Content) : 'Content must be an object',
        Content: Content,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Wisdom::MessageTemplate',
    },
    withMessageTemplateId(MessageTemplateId): {
      assert std.isString(MessageTemplateId) : 'MessageTemplateId must be a string',
      Properties+::: {
        MessageTemplateId: MessageTemplateId,
      },
    },
    withMessageTemplateArn(MessageTemplateArn): {
      assert std.isString(MessageTemplateArn) : 'MessageTemplateArn must be a string',
      Properties+::: {
        MessageTemplateArn: MessageTemplateArn,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withLanguage(Language): {
      assert std.isString(Language) : 'Language must be a string',
      Properties+::: {
        Language: Language,
      },
    },
    withGroupingConfiguration(GroupingConfiguration): {
      assert std.isObject(GroupingConfiguration) : 'GroupingConfiguration must be a object',
      Properties+::: {
        GroupingConfiguration: GroupingConfiguration,
      },
    },
    withDefaultAttributes(DefaultAttributes): {
      assert std.isObject(DefaultAttributes) : 'DefaultAttributes must be a object',
      Properties+::: {
        DefaultAttributes: DefaultAttributes,
      },
    },
    withMessageTemplateContentSha256(MessageTemplateContentSha256): {
      assert std.isString(MessageTemplateContentSha256) : 'MessageTemplateContentSha256 must be a string',
      Properties+::: {
        MessageTemplateContentSha256: MessageTemplateContentSha256,
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
