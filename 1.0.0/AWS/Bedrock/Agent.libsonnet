{
  // AWS Bedrock Agent
  Agent: {
    new(
      AgentName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AgentName) : 'AgentName must be a string',
        AgentName: AgentName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Bedrock::Agent',
    },
    withActionGroups(ActionGroups): {
      Properties+::: {
        ActionGroups: (if std.isArray(ActionGroups) then ActionGroups else [ActionGroups]),
      },
    },
    withActionGroupsMixin(ActionGroups): {
      Properties+::: {
        ActionGroups+: (if std.isArray(ActionGroups) then ActionGroups else [ActionGroups]),
      },
    },
    withAgentArn(AgentArn): {
      assert std.isString(AgentArn) : 'AgentArn must be a string',
      Properties+::: {
        AgentArn: AgentArn,
      },
    },
    withAgentId(AgentId): {
      assert std.isString(AgentId) : 'AgentId must be a string',
      Properties+::: {
        AgentId: AgentId,
      },
    },
    withAgentResourceRoleArn(AgentResourceRoleArn): {
      assert std.isString(AgentResourceRoleArn) : 'AgentResourceRoleArn must be a string',
      Properties+::: {
        AgentResourceRoleArn: AgentResourceRoleArn,
      },
    },
    withAgentStatus(AgentStatus): {
      assert std.isString(AgentStatus) : 'AgentStatus must be a string',
      Properties+::: {
        AgentStatus: AgentStatus,
      },
    },
    withAgentVersion(AgentVersion): {
      assert std.isString(AgentVersion) : 'AgentVersion must be a string',
      Properties+::: {
        AgentVersion: AgentVersion,
      },
    },
    withAutoPrepare(AutoPrepare): {
      assert std.isBoolean(AutoPrepare) : 'AutoPrepare must be a boolean',
      Properties+::: {
        AutoPrepare: AutoPrepare,
      },
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
      assert std.isString(CustomerEncryptionKeyArn) : 'CustomerEncryptionKeyArn must be a string',
      Properties+::: {
        CustomerEncryptionKeyArn: CustomerEncryptionKeyArn,
      },
    },
    withSkipResourceInUseCheckOnDelete(SkipResourceInUseCheckOnDelete): {
      assert std.isBoolean(SkipResourceInUseCheckOnDelete) : 'SkipResourceInUseCheckOnDelete must be a boolean',
      Properties+::: {
        SkipResourceInUseCheckOnDelete: SkipResourceInUseCheckOnDelete,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withFailureReasons(FailureReasons): {
      Properties+::: {
        FailureReasons: (if std.isArray(FailureReasons) then FailureReasons else [FailureReasons]),
      },
    },
    withFailureReasonsMixin(FailureReasons): {
      Properties+::: {
        FailureReasons+: (if std.isArray(FailureReasons) then FailureReasons else [FailureReasons]),
      },
    },
    withFoundationModel(FoundationModel): {
      assert std.isString(FoundationModel) : 'FoundationModel must be a string',
      Properties+::: {
        FoundationModel: FoundationModel,
      },
    },
    withGuardrailConfiguration(GuardrailConfiguration): {
      assert std.isObject(GuardrailConfiguration) : 'GuardrailConfiguration must be a object',
      Properties+::: {
        GuardrailConfiguration: GuardrailConfiguration,
      },
    },
    withIdleSessionTTLInSeconds(IdleSessionTTLInSeconds): {
      assert std.isNumber(IdleSessionTTLInSeconds) : 'IdleSessionTTLInSeconds must be a number',
      Properties+::: {
        IdleSessionTTLInSeconds: IdleSessionTTLInSeconds,
      },
    },
    withInstruction(Instruction): {
      assert std.isString(Instruction) : 'Instruction must be a string',
      Properties+::: {
        Instruction: Instruction,
      },
    },
    withKnowledgeBases(KnowledgeBases): {
      Properties+::: {
        KnowledgeBases: (if std.isArray(KnowledgeBases) then KnowledgeBases else [KnowledgeBases]),
      },
    },
    withKnowledgeBasesMixin(KnowledgeBases): {
      Properties+::: {
        KnowledgeBases+: (if std.isArray(KnowledgeBases) then KnowledgeBases else [KnowledgeBases]),
      },
    },
    withPreparedAt(PreparedAt): {
      assert std.isString(PreparedAt) : 'PreparedAt must be a string',
      Properties+::: {
        PreparedAt: PreparedAt,
      },
    },
    withPromptOverrideConfiguration(PromptOverrideConfiguration): {
      assert std.isObject(PromptOverrideConfiguration) : 'PromptOverrideConfiguration must be a object',
      Properties+::: {
        PromptOverrideConfiguration: PromptOverrideConfiguration,
      },
    },
    withRecommendedActions(RecommendedActions): {
      Properties+::: {
        RecommendedActions: (if std.isArray(RecommendedActions) then RecommendedActions else [RecommendedActions]),
      },
    },
    withRecommendedActionsMixin(RecommendedActions): {
      Properties+::: {
        RecommendedActions+: (if std.isArray(RecommendedActions) then RecommendedActions else [RecommendedActions]),
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
      },
    },
    withTestAliasTags(TestAliasTags): {
      assert std.isObject(TestAliasTags) : 'TestAliasTags must be a object',
      Properties+::: {
        TestAliasTags: TestAliasTags,
      },
    },
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: {
        UpdatedAt: UpdatedAt,
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
