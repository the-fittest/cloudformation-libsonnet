{
  // AWS Wisdom AIGuardrailVersion
  AIGuardrailVersion: {
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
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Wisdom::AIGuardrailVersion',
    },
    withAIGuardrailArn(AIGuardrailArn): {
      assert std.isString(AIGuardrailArn) : 'AIGuardrailArn must be a string',
      Properties+::: {
        AIGuardrailArn: AIGuardrailArn,
      },
    },
    withAssistantArn(AssistantArn): {
      assert std.isString(AssistantArn) : 'AssistantArn must be a string',
      Properties+::: {
        AssistantArn: AssistantArn,
      },
    },
    withAIGuardrailVersionId(AIGuardrailVersionId): {
      assert std.isString(AIGuardrailVersionId) : 'AIGuardrailVersionId must be a string',
      Properties+::: {
        AIGuardrailVersionId: AIGuardrailVersionId,
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
  },
}
