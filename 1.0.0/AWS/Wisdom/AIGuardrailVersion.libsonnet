{
  new(
    AssistantId,
    AIGuardrailId,
  ): {
    local base = self,
    Properties: {
      AssistantId:
        if !std.isString(AssistantId) then (error 'AssistantId must be a string')
        else if std.isEmpty(AssistantId) then (error 'AssistantId must be not empty')
        else AssistantId,
      AIGuardrailId:
        if !std.isString(AIGuardrailId) then (error 'AIGuardrailId must be a string')
        else if std.isEmpty(AIGuardrailId) then (error 'AIGuardrailId must be not empty')
        else AIGuardrailId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::AIGuardrailVersion',
  },
  setAIGuardrailArn(AIGuardrailArn): {
    Properties+::: {
      AIGuardrailArn:
        if !std.isString(AIGuardrailArn) then (error 'AIGuardrailArn must be a string')
        else if std.isEmpty(AIGuardrailArn) then (error 'AIGuardrailArn must be not empty')
        else AIGuardrailArn,
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
  setAIGuardrailVersionId(AIGuardrailVersionId): {
    Properties+::: {
      AIGuardrailVersionId:
        if !std.isString(AIGuardrailVersionId) then (error 'AIGuardrailVersionId must be a string')
        else if std.isEmpty(AIGuardrailVersionId) then (error 'AIGuardrailVersionId must be not empty')
        else AIGuardrailVersionId,
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
