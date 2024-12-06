{
  new(
    AssistantId,
    AIAgentId,
  ): {
    local base = self,
    Properties: {
      AssistantId:
        if !std.isString(AssistantId) then (error 'AssistantId must be a string')
        else if std.isEmpty(AssistantId) then (error 'AssistantId must be not empty')
        else AssistantId,
      AIAgentId:
        if !std.isString(AIAgentId) then (error 'AIAgentId must be a string')
        else if std.isEmpty(AIAgentId) then (error 'AIAgentId must be not empty')
        else AIAgentId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::AIAgentVersion',
  },
  setAIAgentArn(AIAgentArn): {
    Properties+::: {
      AIAgentArn:
        if !std.isString(AIAgentArn) then (error 'AIAgentArn must be a string')
        else if std.isEmpty(AIAgentArn) then (error 'AIAgentArn must be not empty')
        else AIAgentArn,
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
  setAIAgentVersionId(AIAgentVersionId): {
    Properties+::: {
      AIAgentVersionId:
        if !std.isString(AIAgentVersionId) then (error 'AIAgentVersionId must be a string')
        else if std.isEmpty(AIAgentVersionId) then (error 'AIAgentVersionId must be not empty')
        else AIAgentVersionId,
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
