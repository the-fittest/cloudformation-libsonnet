{
  // AWS Wisdom AIPrompt
  AIPrompt: {
    new(
      ApiFormat,
      ModelId,
      TemplateConfiguration,
      TemplateType,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiFormat) : 'ApiFormat must be a string',
        ApiFormat: ApiFormat,
        assert std.isString(ModelId) : 'ModelId must be a string',
        ModelId: ModelId,
        assert std.isObject(TemplateConfiguration) : 'TemplateConfiguration must be an object',
        TemplateConfiguration: TemplateConfiguration,
        assert std.isString(TemplateType) : 'TemplateType must be a string',
        TemplateType: TemplateType,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Wisdom::AIPrompt',
    },
    withAIPromptId(AIPromptId): {
      assert std.isString(AIPromptId) : 'AIPromptId must be a string',
      Properties+::: {
        AIPromptId: AIPromptId,
      },
    },
    withAIPromptArn(AIPromptArn): {
      assert std.isString(AIPromptArn) : 'AIPromptArn must be a string',
      Properties+::: {
        AIPromptArn: AIPromptArn,
      },
    },
    withAssistantId(AssistantId): {
      assert std.isString(AssistantId) : 'AssistantId must be a string',
      Properties+::: {
        AssistantId: AssistantId,
      },
    },
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: {
        AssistantArn: AssistantArn,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
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