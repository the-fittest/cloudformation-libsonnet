{
  // AWS Wisdom AIGuardrail
  AIGuardrail: {
    new(
      AssistantId,
      BlockedInputMessaging,
      BlockedOutputsMessaging,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssistantId) : 'AssistantId must be a string',
        AssistantId: AssistantId,
        assert std.isString(BlockedInputMessaging) : 'BlockedInputMessaging must be a string',
        BlockedInputMessaging: BlockedInputMessaging,
        assert std.isString(BlockedOutputsMessaging) : 'BlockedOutputsMessaging must be a string',
        BlockedOutputsMessaging: BlockedOutputsMessaging,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Wisdom::AIGuardrail',
    },
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: {
        AssistantArn: AssistantArn,
      },
    },
    withAIGuardrailArn(AIGuardrailArn): {
      assert std.isString(AIGuardrailArn) : 'AIGuardrailArn must be a string',
      Properties+::: {
        AIGuardrailArn: AIGuardrailArn,
      },
    },
    withAIGuardrailId(AIGuardrailId): {
      assert std.isString(AIGuardrailId) : 'AIGuardrailId must be a string',
      Properties+::: {
        AIGuardrailId: AIGuardrailId,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withTopicPolicyConfig(TopicPolicyConfig): {
      assert std.isObject(TopicPolicyConfig) : 'TopicPolicyConfig must be a object',
      Properties+::: {
        TopicPolicyConfig: TopicPolicyConfig,
      },
    },
    withContentPolicyConfig(ContentPolicyConfig): {
      assert std.isObject(ContentPolicyConfig) : 'ContentPolicyConfig must be a object',
      Properties+::: {
        ContentPolicyConfig: ContentPolicyConfig,
      },
    },
    withWordPolicyConfig(WordPolicyConfig): {
      assert std.isObject(WordPolicyConfig) : 'WordPolicyConfig must be a object',
      Properties+::: {
        WordPolicyConfig: WordPolicyConfig,
      },
    },
    withSensitiveInformationPolicyConfig(SensitiveInformationPolicyConfig): {
      assert std.isObject(SensitiveInformationPolicyConfig) : 'SensitiveInformationPolicyConfig must be a object',
      Properties+::: {
        SensitiveInformationPolicyConfig: SensitiveInformationPolicyConfig,
      },
    },
    withContextualGroundingPolicyConfig(ContextualGroundingPolicyConfig): {
      assert std.isObject(ContextualGroundingPolicyConfig) : 'ContextualGroundingPolicyConfig must be a object',
      Properties+::: {
        ContextualGroundingPolicyConfig: ContextualGroundingPolicyConfig,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
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
