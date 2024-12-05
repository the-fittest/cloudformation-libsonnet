{
  new(
    ApiFormat,
    ModelId,
    TemplateConfiguration,
    TemplateType,
    Type,
  ): {
    local base = self,
    Properties: {
      ApiFormat:
        if !std.isString(ApiFormat) then (error 'ApiFormat must be a string')
        else if std.isEmpty(ApiFormat) then (error 'ApiFormat must be not empty')
        else if ApiFormat != 'ANTHROPIC_CLAUDE_MESSAGES' && ApiFormat != 'ANTHROPIC_CLAUDE_TEXT_COMPLETIONS' then (error "ApiFormat should be 'ANTHROPIC_CLAUDE_MESSAGES' or 'ANTHROPIC_CLAUDE_TEXT_COMPLETIONS'")
        else ApiFormat,
      ModelId:
        if !std.isString(ModelId) then (error 'ModelId must be a string')
        else if std.isEmpty(ModelId) then (error 'ModelId must be not empty')
        else if std.length(ModelId) < 1 then error ('ModelId should have at least 1 characters')
        else if std.length(ModelId) > 2048 then error ('ModelId should have not more than 2048 characters')
        else ModelId,
      TemplateConfiguration:
        if !std.isObject(TemplateConfiguration) then (error 'TemplateConfiguration must be an object')
        else TemplateConfiguration,
      TemplateType:
        if !std.isString(TemplateType) then (error 'TemplateType must be a string')
        else if std.isEmpty(TemplateType) then (error 'TemplateType must be not empty')
        else if TemplateType != 'TEXT' then (error "TemplateType should be 'TEXT'")
        else TemplateType,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'ANSWER_GENERATION' && Type != 'INTENT_LABELING_GENERATION' && Type != 'QUERY_REFORMULATION' && Type != 'SELF_SERVICE_PRE_PROCESSING' && Type != 'SELF_SERVICE_ANSWER_GENERATION' then (error "Type should be 'ANSWER_GENERATION' or 'INTENT_LABELING_GENERATION' or 'QUERY_REFORMULATION' or 'SELF_SERVICE_PRE_PROCESSING' or 'SELF_SERVICE_ANSWER_GENERATION'")
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::AIPrompt',
  },
  setAIPromptId(AIPromptId): {
    Properties+::: {
      AIPromptId:
        if !std.isString(AIPromptId) then (error 'AIPromptId must be a string')
        else if std.isEmpty(AIPromptId) then (error 'AIPromptId must be not empty')
        else AIPromptId,
    },
  },
  setAIPromptArn(AIPromptArn): {
    Properties+::: {
      AIPromptArn:
        if !std.isString(AIPromptArn) then (error 'AIPromptArn must be a string')
        else if std.isEmpty(AIPromptArn) then (error 'AIPromptArn must be not empty')
        else AIPromptArn,
    },
  },
  setAssistantId(AssistantId): {
    Properties+::: {
      AssistantId:
        if !std.isString(AssistantId) then (error 'AssistantId must be a string')
        else if std.isEmpty(AssistantId) then (error 'AssistantId must be not empty')
        else AssistantId,
    },
  },
  setAssistantArn(AssistantArn): {
    Properties+::: {
      AssistantArn:
        if !std.isString(AssistantArn) then (error 'AssistantArn must be a string')
        else if std.isEmpty(AssistantArn) then (error 'AssistantArn must be not empty')
        else AssistantArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
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
