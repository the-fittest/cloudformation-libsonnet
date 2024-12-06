{
  new(
    AssistantId,
    AIPromptId,
  ): {
    local base = self,
    Properties: {
      AssistantId:
        if !std.isString(AssistantId) then (error 'AssistantId must be a string')
        else if std.isEmpty(AssistantId) then (error 'AssistantId must be not empty')
        else AssistantId,
      AIPromptId:
        if !std.isString(AIPromptId) then (error 'AIPromptId must be a string')
        else if std.isEmpty(AIPromptId) then (error 'AIPromptId must be not empty')
        else AIPromptId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::AIPromptVersion',
  },
  setAIPromptArn(AIPromptArn): {
    Properties+::: {
      AIPromptArn:
        if !std.isString(AIPromptArn) then (error 'AIPromptArn must be a string')
        else if std.isEmpty(AIPromptArn) then (error 'AIPromptArn must be not empty')
        else AIPromptArn,
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
  setAIPromptVersionId(AIPromptVersionId): {
    Properties+::: {
      AIPromptVersionId:
        if !std.isString(AIPromptVersionId) then (error 'AIPromptVersionId must be a string')
        else if std.isEmpty(AIPromptVersionId) then (error 'AIPromptVersionId must be not empty')
        else AIPromptVersionId,
    },
  },
  setVersionNumber(VersionNumber): {
    Properties+::: {
      VersionNumber:
        if !std.isNumber(VersionNumber) then (error 'VersionNumber must be an number')
        else VersionNumber,
    },
  },
  setModifiedTimeSeconds(ModifiedTimeSeconds): {
    Properties+::: {
      ModifiedTimeSeconds:
        if !std.isNumber(ModifiedTimeSeconds) then (error 'ModifiedTimeSeconds must be an number')
        else ModifiedTimeSeconds,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
