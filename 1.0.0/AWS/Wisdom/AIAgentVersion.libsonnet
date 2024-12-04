{
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
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::AIAgentVersion',
  },
  withAIAgentArn(AIAgentArn): {
    assert std.isString(AIAgentArn) : 'AIAgentArn must be a string',
    Properties+::: {
      AIAgentArn: AIAgentArn,
    },
  },
  withAssistantArn(AssistantArn): {
    assert std.isString(AssistantArn) : 'AssistantArn must be a string',
    Properties+::: {
      AssistantArn: AssistantArn,
    },
  },
  withAIAgentVersionId(AIAgentVersionId): {
    assert std.isString(AIAgentVersionId) : 'AIAgentVersionId must be a string',
    Properties+::: {
      AIAgentVersionId: AIAgentVersionId,
    },
  },
  withVersionNumber(VersionNumber): {
    assert std.isNumber(VersionNumber) : 'VersionNumber must be a number',
    Properties+::: {
      VersionNumber: VersionNumber,
    },
  },
  withModifiedTimeSeconds(ModifiedTimeSeconds): {
    assert std.isNumber(ModifiedTimeSeconds) : 'ModifiedTimeSeconds must be a number',
    Properties+::: {
      ModifiedTimeSeconds: ModifiedTimeSeconds,
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
}
