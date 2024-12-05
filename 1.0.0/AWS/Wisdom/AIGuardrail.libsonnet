{
  new(
    AssistantId,
    BlockedInputMessaging,
    BlockedOutputsMessaging,
  ): {
    local base = self,
    Properties: {
      AssistantId:
        if !std.isString(AssistantId) then (error 'AssistantId must be a string')
        else if std.isEmpty(AssistantId) then (error 'AssistantId must be not empty')
        else AssistantId,
      BlockedInputMessaging:
        if !std.isString(BlockedInputMessaging) then (error 'BlockedInputMessaging must be a string')
        else if std.isEmpty(BlockedInputMessaging) then (error 'BlockedInputMessaging must be not empty')
        else if std.length(BlockedInputMessaging) < 1 then error ('BlockedInputMessaging should have at least 1 characters')
        else if std.length(BlockedInputMessaging) > 500 then error ('BlockedInputMessaging should have not more than 500 characters')
        else BlockedInputMessaging,
      BlockedOutputsMessaging:
        if !std.isString(BlockedOutputsMessaging) then (error 'BlockedOutputsMessaging must be a string')
        else if std.isEmpty(BlockedOutputsMessaging) then (error 'BlockedOutputsMessaging must be not empty')
        else if std.length(BlockedOutputsMessaging) < 1 then error ('BlockedOutputsMessaging should have at least 1 characters')
        else if std.length(BlockedOutputsMessaging) > 500 then error ('BlockedOutputsMessaging should have not more than 500 characters')
        else BlockedOutputsMessaging,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::AIGuardrail',
  },
  setAssistantArn(AssistantArn): {
    Properties+::: {
      AssistantArn:
        if !std.isString(AssistantArn) then (error 'AssistantArn must be a string')
        else if std.isEmpty(AssistantArn) then (error 'AssistantArn must be not empty')
        else AssistantArn,
    },
  },
  setAIGuardrailArn(AIGuardrailArn): {
    Properties+::: {
      AIGuardrailArn:
        if !std.isString(AIGuardrailArn) then (error 'AIGuardrailArn must be a string')
        else if std.isEmpty(AIGuardrailArn) then (error 'AIGuardrailArn must be not empty')
        else AIGuardrailArn,
    },
  },
  setAIGuardrailId(AIGuardrailId): {
    Properties+::: {
      AIGuardrailId:
        if !std.isString(AIGuardrailId) then (error 'AIGuardrailId must be a string')
        else if std.isEmpty(AIGuardrailId) then (error 'AIGuardrailId must be not empty')
        else AIGuardrailId,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 200 then error ('Description should have not more than 200 characters')
        else Description,
    },
  },
  setTopicPolicyConfig(TopicPolicyConfig): {
    Properties+::: {
      TopicPolicyConfig:
        if !std.isObject(TopicPolicyConfig) then (error 'TopicPolicyConfig must be an object')
        else if !std.objectHas(TopicPolicyConfig, 'TopicsConfig') then (error ' have attribute TopicsConfig')
        else TopicPolicyConfig,
    },
  },
  setContentPolicyConfig(ContentPolicyConfig): {
    Properties+::: {
      ContentPolicyConfig:
        if !std.isObject(ContentPolicyConfig) then (error 'ContentPolicyConfig must be an object')
        else if !std.objectHas(ContentPolicyConfig, 'FiltersConfig') then (error ' have attribute FiltersConfig')
        else ContentPolicyConfig,
    },
  },
  setWordPolicyConfig(WordPolicyConfig): {
    Properties+::: {
      WordPolicyConfig:
        if !std.isObject(WordPolicyConfig) then (error 'WordPolicyConfig must be an object')
        else WordPolicyConfig,
    },
  },
  setSensitiveInformationPolicyConfig(SensitiveInformationPolicyConfig): {
    Properties+::: {
      SensitiveInformationPolicyConfig:
        if !std.isObject(SensitiveInformationPolicyConfig) then (error 'SensitiveInformationPolicyConfig must be an object')
        else SensitiveInformationPolicyConfig,
    },
  },
  setContextualGroundingPolicyConfig(ContextualGroundingPolicyConfig): {
    Properties+::: {
      ContextualGroundingPolicyConfig:
        if !std.isObject(ContextualGroundingPolicyConfig) then (error 'ContextualGroundingPolicyConfig must be an object')
        else if !std.objectHas(ContextualGroundingPolicyConfig, 'FiltersConfig') then (error ' have attribute FiltersConfig')
        else ContextualGroundingPolicyConfig,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
