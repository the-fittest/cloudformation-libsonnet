{
  new(
    AssistantId,
    Configuration,
    Type,
  ): {
    local base = self,
    Properties: {
      AssistantId:
        if !std.isString(AssistantId) then (error 'AssistantId must be a string')
        else if std.isEmpty(AssistantId) then (error 'AssistantId must be not empty')
        else AssistantId,
      Configuration: Configuration,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'MANUAL_SEARCH' && Type != 'ANSWER_RECOMMENDATION' && Type != 'SELF_SERVICE' then (error "Type should be 'MANUAL_SEARCH' or 'ANSWER_RECOMMENDATION' or 'SELF_SERVICE'")
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::AIAgent',
  },
  setAIAgentId(AIAgentId): {
    Properties+::: {
      AIAgentId:
        if !std.isString(AIAgentId) then (error 'AIAgentId must be a string')
        else if std.isEmpty(AIAgentId) then (error 'AIAgentId must be not empty')
        else AIAgentId,
    },
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
