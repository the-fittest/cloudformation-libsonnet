local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AIAgent: {
    '#': d.pkg(
      name='AIAgent',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::AIAgent Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::AIAgent Resource
        * AssistantId 
        * Configuration 
        * Type 
      |||,
      args=[
        d.arg('AssistantId', 'd.T.string'),
        d.arg('Configuration', ''),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      AssistantId,
      Configuration,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssistantId) : 'AssistantId must be a string',
        AssistantId: AssistantId,
        // Type: undefined
        Configuration: Configuration,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::AIAgent',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAIAgentId': d.fn('`withAIAgentId` AIAgentId ', [d.arg('AIAgentId', d.T.string)]),
    withAIAgentId(AIAgentId): {
      assert std.isString(AIAgentId) : 'AIAgentId must be a string',
      Properties+::: { AIAgentId: AIAgentId },
    },
    '#withAIAgentArn': d.fn('`withAIAgentArn` AIAgentArn ', [d.arg('AIAgentArn', d.T.string)]),
    withAIAgentArn(AIAgentArn): {
      assert std.isString(AIAgentArn) : 'AIAgentArn must be a string',
      Properties+::: { AIAgentArn: AIAgentArn },
    },
    '#withAssistantArn': d.fn('`withAssistantArn` AssistantArn ', [d.arg('AssistantArn', d.T.string)]),
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: { AssistantArn: AssistantArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  AIAgentVersion: {
    '#': d.pkg(
      name='AIAgentVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::AIAgentVersion Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::AIAgentVersion Resource
        * AssistantId 
        * AIAgentId 
      |||,
      args=[
        d.arg('AssistantId', 'd.T.string'),
        d.arg('AIAgentId', 'd.T.string'),
      ]
    ),
    new(
      AssistantId,
      AIAgentId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssistantId) : 'AssistantId must be a string',
        AssistantId: AssistantId,
        assert std.isString(AIAgentId) : 'AIAgentId must be a string',
        AIAgentId: AIAgentId,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::AIAgentVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAIAgentArn': d.fn('`withAIAgentArn` AIAgentArn ', [d.arg('AIAgentArn', d.T.string)]),
    withAIAgentArn(AIAgentArn): {
      assert std.isString(AIAgentArn) : 'AIAgentArn must be a string',
      Properties+::: { AIAgentArn: AIAgentArn },
    },
    '#withAssistantArn': d.fn('`withAssistantArn` AssistantArn ', [d.arg('AssistantArn', d.T.string)]),
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: { AssistantArn: AssistantArn },
    },
    '#withAIAgentVersionId': d.fn('`withAIAgentVersionId` AIAgentVersionId ', [d.arg('AIAgentVersionId', d.T.string)]),
    withAIAgentVersionId(AIAgentVersionId): {
      assert std.isString(AIAgentVersionId) : 'AIAgentVersionId must be a string',
      Properties+::: { AIAgentVersionId: AIAgentVersionId },
    },
    '#withVersionNumber': d.fn('`withVersionNumber` VersionNumber ', [d.arg('VersionNumber', d.T.integer)]),
    withVersionNumber(VersionNumber): {
      // Type: number
      Properties+::: { VersionNumber: VersionNumber },
    },
    '#withModifiedTimeSeconds': d.fn('`withModifiedTimeSeconds` ModifiedTimeSeconds ', [d.arg('ModifiedTimeSeconds', d.T.integer)]),
    withModifiedTimeSeconds(ModifiedTimeSeconds): {
      // Type: number
      Properties+::: { ModifiedTimeSeconds: ModifiedTimeSeconds },
    },
  },
  AIGuardrail: {
    '#': d.pkg(
      name='AIGuardrail',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::AIGuardrail Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::AIGuardrail Resource
        * AssistantId 
        * BlockedInputMessaging Messaging for when violations are detected in text
        * BlockedOutputsMessaging Messaging for when violations are detected in text
      |||,
      args=[
        d.arg('AssistantId', 'd.T.string'),
        d.arg('BlockedInputMessaging', 'd.T.string'),
        d.arg('BlockedOutputsMessaging', 'd.T.string'),
      ]
    ),
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
      Type: 'AWS::Wisdom::AIGuardrail',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssistantArn': d.fn('`withAssistantArn` AssistantArn ', [d.arg('AssistantArn', d.T.string)]),
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: { AssistantArn: AssistantArn },
    },
    '#withAIGuardrailArn': d.fn('`withAIGuardrailArn` AIGuardrailArn ', [d.arg('AIGuardrailArn', d.T.string)]),
    withAIGuardrailArn(AIGuardrailArn): {
      assert std.isString(AIGuardrailArn) : 'AIGuardrailArn must be a string',
      Properties+::: { AIGuardrailArn: AIGuardrailArn },
    },
    '#withAIGuardrailId': d.fn('`withAIGuardrailId` AIGuardrailId ', [d.arg('AIGuardrailId', d.T.string)]),
    withAIGuardrailId(AIGuardrailId): {
      assert std.isString(AIGuardrailId) : 'AIGuardrailId must be a string',
      Properties+::: { AIGuardrailId: AIGuardrailId },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTopicPolicyConfig': d.fn('`withTopicPolicyConfig` TopicPolicyConfig ', [d.arg('TopicPolicyConfig', d.T.object)]),
    withTopicPolicyConfig(TopicPolicyConfig): {
      assert std.isObject(TopicPolicyConfig) : 'TopicPolicyConfig must be a object',
      Properties+::: { TopicPolicyConfig: TopicPolicyConfig },
    },
    '#withContentPolicyConfig': d.fn('`withContentPolicyConfig` ContentPolicyConfig ', [d.arg('ContentPolicyConfig', d.T.object)]),
    withContentPolicyConfig(ContentPolicyConfig): {
      assert std.isObject(ContentPolicyConfig) : 'ContentPolicyConfig must be a object',
      Properties+::: { ContentPolicyConfig: ContentPolicyConfig },
    },
    '#withWordPolicyConfig': d.fn('`withWordPolicyConfig` WordPolicyConfig ', [d.arg('WordPolicyConfig', d.T.object)]),
    withWordPolicyConfig(WordPolicyConfig): {
      assert std.isObject(WordPolicyConfig) : 'WordPolicyConfig must be a object',
      Properties+::: { WordPolicyConfig: WordPolicyConfig },
    },
    '#withSensitiveInformationPolicyConfig': d.fn('`withSensitiveInformationPolicyConfig` SensitiveInformationPolicyConfig ', [d.arg('SensitiveInformationPolicyConfig', d.T.object)]),
    withSensitiveInformationPolicyConfig(SensitiveInformationPolicyConfig): {
      assert std.isObject(SensitiveInformationPolicyConfig) : 'SensitiveInformationPolicyConfig must be a object',
      Properties+::: { SensitiveInformationPolicyConfig: SensitiveInformationPolicyConfig },
    },
    '#withContextualGroundingPolicyConfig': d.fn('`withContextualGroundingPolicyConfig` ContextualGroundingPolicyConfig ', [d.arg('ContextualGroundingPolicyConfig', d.T.object)]),
    withContextualGroundingPolicyConfig(ContextualGroundingPolicyConfig): {
      assert std.isObject(ContextualGroundingPolicyConfig) : 'ContextualGroundingPolicyConfig must be a object',
      Properties+::: { ContextualGroundingPolicyConfig: ContextualGroundingPolicyConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  AIGuardrailVersion: {
    '#': d.pkg(
      name='AIGuardrailVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::AIGuardrailVersion Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::AIGuardrailVersion Resource
        * AssistantId 
        * AIGuardrailId 
      |||,
      args=[
        d.arg('AssistantId', 'd.T.string'),
        d.arg('AIGuardrailId', 'd.T.string'),
      ]
    ),
    new(
      AssistantId,
      AIGuardrailId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssistantId) : 'AssistantId must be a string',
        AssistantId: AssistantId,
        assert std.isString(AIGuardrailId) : 'AIGuardrailId must be a string',
        AIGuardrailId: AIGuardrailId,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::AIGuardrailVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAIGuardrailArn': d.fn('`withAIGuardrailArn` AIGuardrailArn ', [d.arg('AIGuardrailArn', d.T.string)]),
    withAIGuardrailArn(AIGuardrailArn): {
      assert std.isString(AIGuardrailArn) : 'AIGuardrailArn must be a string',
      Properties+::: { AIGuardrailArn: AIGuardrailArn },
    },
    '#withAssistantArn': d.fn('`withAssistantArn` AssistantArn ', [d.arg('AssistantArn', d.T.string)]),
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: { AssistantArn: AssistantArn },
    },
    '#withAIGuardrailVersionId': d.fn('`withAIGuardrailVersionId` AIGuardrailVersionId ', [d.arg('AIGuardrailVersionId', d.T.string)]),
    withAIGuardrailVersionId(AIGuardrailVersionId): {
      assert std.isString(AIGuardrailVersionId) : 'AIGuardrailVersionId must be a string',
      Properties+::: { AIGuardrailVersionId: AIGuardrailVersionId },
    },
    '#withVersionNumber': d.fn('`withVersionNumber` VersionNumber ', [d.arg('VersionNumber', d.T.integer)]),
    withVersionNumber(VersionNumber): {
      // Type: number
      Properties+::: { VersionNumber: VersionNumber },
    },
    '#withModifiedTimeSeconds': d.fn('`withModifiedTimeSeconds` ModifiedTimeSeconds ', [d.arg('ModifiedTimeSeconds', d.T.integer)]),
    withModifiedTimeSeconds(ModifiedTimeSeconds): {
      // Type: number
      Properties+::: { ModifiedTimeSeconds: ModifiedTimeSeconds },
    },
  },
  AIPrompt: {
    '#': d.pkg(
      name='AIPrompt',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::AIPrompt Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::AIPrompt Resource
        * ApiFormat 
        * ModelId 
        * TemplateConfiguration 
        * TemplateType 
        * Type 
      |||,
      args=[
        d.arg('ApiFormat', 'd.T.string'),
        d.arg('ModelId', 'd.T.string'),
        d.arg('TemplateConfiguration', 'd.T.object'),
        d.arg('TemplateType', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
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
        assert std.isObject(TemplateConfiguration) : 'TemplateConfiguration must be a object',
        TemplateConfiguration: TemplateConfiguration,
        assert std.isString(TemplateType) : 'TemplateType must be a string',
        TemplateType: TemplateType,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::AIPrompt',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAIPromptId': d.fn('`withAIPromptId` AIPromptId ', [d.arg('AIPromptId', d.T.string)]),
    withAIPromptId(AIPromptId): {
      assert std.isString(AIPromptId) : 'AIPromptId must be a string',
      Properties+::: { AIPromptId: AIPromptId },
    },
    '#withAIPromptArn': d.fn('`withAIPromptArn` AIPromptArn ', [d.arg('AIPromptArn', d.T.string)]),
    withAIPromptArn(AIPromptArn): {
      assert std.isString(AIPromptArn) : 'AIPromptArn must be a string',
      Properties+::: { AIPromptArn: AIPromptArn },
    },
    '#withAssistantId': d.fn('`withAssistantId` AssistantId ', [d.arg('AssistantId', d.T.string)]),
    withAssistantId(AssistantId): {
      assert std.isString(AssistantId) : 'AssistantId must be a string',
      Properties+::: { AssistantId: AssistantId },
    },
    '#withAssistantArn': d.fn('`withAssistantArn` AssistantArn ', [d.arg('AssistantArn', d.T.string)]),
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: { AssistantArn: AssistantArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  AIPromptVersion: {
    '#': d.pkg(
      name='AIPromptVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::AIPromptVersion Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::AIPromptVersion Resource
        * AssistantId 
        * AIPromptId 
      |||,
      args=[
        d.arg('AssistantId', 'd.T.string'),
        d.arg('AIPromptId', 'd.T.string'),
      ]
    ),
    new(
      AssistantId,
      AIPromptId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssistantId) : 'AssistantId must be a string',
        AssistantId: AssistantId,
        assert std.isString(AIPromptId) : 'AIPromptId must be a string',
        AIPromptId: AIPromptId,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::AIPromptVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAIPromptArn': d.fn('`withAIPromptArn` AIPromptArn ', [d.arg('AIPromptArn', d.T.string)]),
    withAIPromptArn(AIPromptArn): {
      assert std.isString(AIPromptArn) : 'AIPromptArn must be a string',
      Properties+::: { AIPromptArn: AIPromptArn },
    },
    '#withAssistantArn': d.fn('`withAssistantArn` AssistantArn ', [d.arg('AssistantArn', d.T.string)]),
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: { AssistantArn: AssistantArn },
    },
    '#withAIPromptVersionId': d.fn('`withAIPromptVersionId` AIPromptVersionId ', [d.arg('AIPromptVersionId', d.T.string)]),
    withAIPromptVersionId(AIPromptVersionId): {
      assert std.isString(AIPromptVersionId) : 'AIPromptVersionId must be a string',
      Properties+::: { AIPromptVersionId: AIPromptVersionId },
    },
    '#withVersionNumber': d.fn('`withVersionNumber` VersionNumber ', [d.arg('VersionNumber', d.T.integer)]),
    withVersionNumber(VersionNumber): {
      // Type: number
      Properties+::: { VersionNumber: VersionNumber },
    },
    '#withModifiedTimeSeconds': d.fn('`withModifiedTimeSeconds` ModifiedTimeSeconds ', [d.arg('ModifiedTimeSeconds', d.T.integer)]),
    withModifiedTimeSeconds(ModifiedTimeSeconds): {
      // Type: number
      Properties+::: { ModifiedTimeSeconds: ModifiedTimeSeconds },
    },
  },
  Assistant: {
    '#': d.pkg(
      name='Assistant',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::Assistant Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::Assistant Resource
        * Name 
        * Type 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::Assistant',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAssistantArn': d.fn('`withAssistantArn` AssistantArn ', [d.arg('AssistantArn', d.T.string)]),
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: { AssistantArn: AssistantArn },
    },
    '#withAssistantId': d.fn('`withAssistantId` AssistantId ', [d.arg('AssistantId', d.T.string)]),
    withAssistantId(AssistantId): {
      assert std.isString(AssistantId) : 'AssistantId must be a string',
      Properties+::: { AssistantId: AssistantId },
    },
    '#withServerSideEncryptionConfiguration': d.fn('`withServerSideEncryptionConfiguration` ServerSideEncryptionConfiguration ', [d.arg('ServerSideEncryptionConfiguration', d.T.object)]),
    withServerSideEncryptionConfiguration(ServerSideEncryptionConfiguration): {
      assert std.isObject(ServerSideEncryptionConfiguration) : 'ServerSideEncryptionConfiguration must be a object',
      Properties+::: { ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  AssistantAssociation: {
    '#': d.pkg(
      name='AssistantAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::AssistantAssociation Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::AssistantAssociation Resource
        * Association 
        * AssociationType 
        * AssistantId 
      |||,
      args=[
        d.arg('Association', 'd.T.object'),
        d.arg('AssociationType', 'd.T.string'),
        d.arg('AssistantId', 'd.T.string'),
      ]
    ),
    new(
      Association,
      AssociationType,
      AssistantId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Association) : 'Association must be a object',
        Association: Association,
        assert std.isString(AssociationType) : 'AssociationType must be a string',
        AssociationType: AssociationType,
        assert std.isString(AssistantId) : 'AssistantId must be a string',
        AssistantId: AssistantId,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::AssistantAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssistantAssociationArn': d.fn('`withAssistantAssociationArn` AssistantAssociationArn ', [d.arg('AssistantAssociationArn', d.T.string)]),
    withAssistantAssociationArn(AssistantAssociationArn): {
      assert std.isString(AssistantAssociationArn) : 'AssistantAssociationArn must be a string',
      Properties+::: { AssistantAssociationArn: AssistantAssociationArn },
    },
    '#withAssistantArn': d.fn('`withAssistantArn` AssistantArn ', [d.arg('AssistantArn', d.T.string)]),
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: { AssistantArn: AssistantArn },
    },
    '#withAssistantAssociationId': d.fn('`withAssistantAssociationId` AssistantAssociationId ', [d.arg('AssistantAssociationId', d.T.string)]),
    withAssistantAssociationId(AssistantAssociationId): {
      assert std.isString(AssistantAssociationId) : 'AssistantAssociationId must be a string',
      Properties+::: { AssistantAssociationId: AssistantAssociationId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  KnowledgeBase: {
    '#': d.pkg(
      name='KnowledgeBase',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::KnowledgeBase Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::KnowledgeBase Resource
        * KnowledgeBaseType 
        * Name 
      |||,
      args=[
        d.arg('KnowledgeBaseType', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
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
      Type: 'AWS::Wisdom::KnowledgeBase',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKnowledgeBaseArn': d.fn('`withKnowledgeBaseArn` KnowledgeBaseArn ', [d.arg('KnowledgeBaseArn', d.T.string)]),
    withKnowledgeBaseArn(KnowledgeBaseArn): {
      assert std.isString(KnowledgeBaseArn) : 'KnowledgeBaseArn must be a string',
      Properties+::: { KnowledgeBaseArn: KnowledgeBaseArn },
    },
    '#withKnowledgeBaseId': d.fn('`withKnowledgeBaseId` KnowledgeBaseId ', [d.arg('KnowledgeBaseId', d.T.string)]),
    withKnowledgeBaseId(KnowledgeBaseId): {
      assert std.isString(KnowledgeBaseId) : 'KnowledgeBaseId must be a string',
      Properties+::: { KnowledgeBaseId: KnowledgeBaseId },
    },
    '#withRenderingConfiguration': d.fn('`withRenderingConfiguration` RenderingConfiguration ', [d.arg('RenderingConfiguration', d.T.object)]),
    withRenderingConfiguration(RenderingConfiguration): {
      assert std.isObject(RenderingConfiguration) : 'RenderingConfiguration must be a object',
      Properties+::: { RenderingConfiguration: RenderingConfiguration },
    },
    '#withServerSideEncryptionConfiguration': d.fn('`withServerSideEncryptionConfiguration` ServerSideEncryptionConfiguration ', [d.arg('ServerSideEncryptionConfiguration', d.T.object)]),
    withServerSideEncryptionConfiguration(ServerSideEncryptionConfiguration): {
      assert std.isObject(ServerSideEncryptionConfiguration) : 'ServerSideEncryptionConfiguration must be a object',
      Properties+::: { ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration },
    },
    '#withSourceConfiguration': d.fn('`withSourceConfiguration` SourceConfiguration ', [d.arg('SourceConfiguration')]),
    withSourceConfiguration(SourceConfiguration): {
      // Type: undefined
      Properties+::: { SourceConfiguration: SourceConfiguration },
    },
    '#withVectorIngestionConfiguration': d.fn('`withVectorIngestionConfiguration` VectorIngestionConfiguration ', [d.arg('VectorIngestionConfiguration', d.T.object)]),
    withVectorIngestionConfiguration(VectorIngestionConfiguration): {
      assert std.isObject(VectorIngestionConfiguration) : 'VectorIngestionConfiguration must be a object',
      Properties+::: { VectorIngestionConfiguration: VectorIngestionConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MessageTemplate: {
    '#': d.pkg(
      name='MessageTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='Definition of AWS::Wisdom::MessageTemplate Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::MessageTemplate Resource
        * KnowledgeBaseArn The Amazon Resource Name (ARN) of the knowledge base to which the message template belongs.
        * ChannelSubtype 
        * Name The name of the message template.
        * Content 
      |||,
      args=[
        d.arg('KnowledgeBaseArn', 'd.T.string'),
        d.arg('ChannelSubtype', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Content', 'd.T.object'),
      ]
    ),
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
        assert std.isObject(Content) : 'Content must be a object',
        Content: Content,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::MessageTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMessageTemplateId': d.fn('`withMessageTemplateId` MessageTemplateId ', [d.arg('MessageTemplateId', d.T.string)]),
    withMessageTemplateId(MessageTemplateId): {
      assert std.isString(MessageTemplateId) : 'MessageTemplateId must be a string',
      Properties+::: { MessageTemplateId: MessageTemplateId },
    },
    '#withMessageTemplateArn': d.fn('`withMessageTemplateArn` MessageTemplateArn ', [d.arg('MessageTemplateArn', d.T.string)]),
    withMessageTemplateArn(MessageTemplateArn): {
      assert std.isString(MessageTemplateArn) : 'MessageTemplateArn must be a string',
      Properties+::: { MessageTemplateArn: MessageTemplateArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLanguage': d.fn('`withLanguage` Language ', [d.arg('Language', d.T.string)]),
    withLanguage(Language): {
      assert std.isString(Language) : 'Language must be a string',
      Properties+::: { Language: Language },
    },
    '#withGroupingConfiguration': d.fn('`withGroupingConfiguration` GroupingConfiguration ', [d.arg('GroupingConfiguration', d.T.object)]),
    withGroupingConfiguration(GroupingConfiguration): {
      assert std.isObject(GroupingConfiguration) : 'GroupingConfiguration must be a object',
      Properties+::: { GroupingConfiguration: GroupingConfiguration },
    },
    '#withDefaultAttributes': d.fn('`withDefaultAttributes` DefaultAttributes ', [d.arg('DefaultAttributes', d.T.object)]),
    withDefaultAttributes(DefaultAttributes): {
      assert std.isObject(DefaultAttributes) : 'DefaultAttributes must be a object',
      Properties+::: { DefaultAttributes: DefaultAttributes },
    },
    '#withMessageTemplateContentSha256': d.fn('`withMessageTemplateContentSha256` MessageTemplateContentSha256 ', [d.arg('MessageTemplateContentSha256', d.T.string)]),
    withMessageTemplateContentSha256(MessageTemplateContentSha256): {
      assert std.isString(MessageTemplateContentSha256) : 'MessageTemplateContentSha256 must be a string',
      Properties+::: { MessageTemplateContentSha256: MessageTemplateContentSha256 },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MessageTemplateVersion: {
    '#': d.pkg(
      name='MessageTemplateVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Wisdom.libsonnet',
      help='A version for the specified customer-managed message template within the specified knowledge base.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Wisdom::MessageTemplateVersion Resource
        * MessageTemplateArn The unqualified Amazon Resource Name (ARN) of the message template.
      |||,
      args=[
        d.arg('MessageTemplateArn', 'd.T.string'),
      ]
    ),
    new(
      MessageTemplateArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MessageTemplateArn) : 'MessageTemplateArn must be a string',
        MessageTemplateArn: MessageTemplateArn,
      },
      DependsOn:: [],
      Type: 'AWS::Wisdom::MessageTemplateVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMessageTemplateVersionArn': d.fn('`withMessageTemplateVersionArn` MessageTemplateVersionArn ', [d.arg('MessageTemplateVersionArn', d.T.string)]),
    withMessageTemplateVersionArn(MessageTemplateVersionArn): {
      assert std.isString(MessageTemplateVersionArn) : 'MessageTemplateVersionArn must be a string',
      Properties+::: { MessageTemplateVersionArn: MessageTemplateVersionArn },
    },
    '#withMessageTemplateContentSha256': d.fn('`withMessageTemplateContentSha256` MessageTemplateContentSha256 ', [d.arg('MessageTemplateContentSha256', d.T.string)]),
    withMessageTemplateContentSha256(MessageTemplateContentSha256): {
      assert std.isString(MessageTemplateContentSha256) : 'MessageTemplateContentSha256 must be a string',
      Properties+::: { MessageTemplateContentSha256: MessageTemplateContentSha256 },
    },
    '#withMessageTemplateVersionNumber': d.fn('`withMessageTemplateVersionNumber` MessageTemplateVersionNumber ', [d.arg('MessageTemplateVersionNumber', d.T.integer)]),
    withMessageTemplateVersionNumber(MessageTemplateVersionNumber): {
      // Type: number
      Properties+::: { MessageTemplateVersionNumber: MessageTemplateVersionNumber },
    },
  },
}
