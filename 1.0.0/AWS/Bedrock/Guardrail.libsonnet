{
  new(
    Name,
    BlockedInputMessaging,
    BlockedOutputsMessaging,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(BlockedInputMessaging) : 'BlockedInputMessaging must be a string',
      BlockedInputMessaging: BlockedInputMessaging,
      assert std.isString(BlockedOutputsMessaging) : 'BlockedOutputsMessaging must be a string',
      BlockedOutputsMessaging: BlockedOutputsMessaging,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::Guardrail',
  },
  withContentPolicyConfig(ContentPolicyConfig): {
    assert std.isObject(ContentPolicyConfig) : 'ContentPolicyConfig must be a object',
    Properties+::: {
      ContentPolicyConfig: ContentPolicyConfig,
    },
  },
  withContextualGroundingPolicyConfig(ContextualGroundingPolicyConfig): {
    assert std.isObject(ContextualGroundingPolicyConfig) : 'ContextualGroundingPolicyConfig must be a object',
    Properties+::: {
      ContextualGroundingPolicyConfig: ContextualGroundingPolicyConfig,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withFailureRecommendations(FailureRecommendations): {
    Properties+::: {
      FailureRecommendations: (if std.isArray(FailureRecommendations) then FailureRecommendations else [FailureRecommendations]),
    },
  },
  withFailureRecommendationsMixin(FailureRecommendations): {
    Properties+::: {
      FailureRecommendations+: (if std.isArray(FailureRecommendations) then FailureRecommendations else [FailureRecommendations]),
    },
  },
  withGuardrailArn(GuardrailArn): {
    assert std.isString(GuardrailArn) : 'GuardrailArn must be a string',
    Properties+::: {
      GuardrailArn: GuardrailArn,
    },
  },
  withGuardrailId(GuardrailId): {
    assert std.isString(GuardrailId) : 'GuardrailId must be a string',
    Properties+::: {
      GuardrailId: GuardrailId,
    },
  },
  withKmsKeyArn(KmsKeyArn): {
    assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
    Properties+::: {
      KmsKeyArn: KmsKeyArn,
    },
  },
  withSensitiveInformationPolicyConfig(SensitiveInformationPolicyConfig): {
    assert std.isObject(SensitiveInformationPolicyConfig) : 'SensitiveInformationPolicyConfig must be a object',
    Properties+::: {
      SensitiveInformationPolicyConfig: SensitiveInformationPolicyConfig,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'CREATING' || Status == 'UPDATING' || Status == 'VERSIONING' || Status == 'READY' || Status == 'FAILED' || Status == 'DELETING' : "Status should be 'CREATING' or 'UPDATING' or 'VERSIONING' or 'READY' or 'FAILED' or 'DELETING'",
    Properties+::: {
      Status: Status,
    },
  },
  withStatusReasons(StatusReasons): {
    Properties+::: {
      StatusReasons: (if std.isArray(StatusReasons) then StatusReasons else [StatusReasons]),
    },
  },
  withStatusReasonsMixin(StatusReasons): {
    Properties+::: {
      StatusReasons+: (if std.isArray(StatusReasons) then StatusReasons else [StatusReasons]),
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTopicPolicyConfig(TopicPolicyConfig): {
    assert std.isObject(TopicPolicyConfig) : 'TopicPolicyConfig must be a object',
    Properties+::: {
      TopicPolicyConfig: TopicPolicyConfig,
    },
  },
  withUpdatedAt(UpdatedAt): {
    assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
    Properties+::: {
      UpdatedAt: UpdatedAt,
    },
  },
  withVersion(Version): {
    assert std.isString(Version) : 'Version must be a string',
    Properties+::: {
      Version: Version,
    },
  },
  withWordPolicyConfig(WordPolicyConfig): {
    assert std.isObject(WordPolicyConfig) : 'WordPolicyConfig must be a object',
    Properties+::: {
      WordPolicyConfig: WordPolicyConfig,
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
