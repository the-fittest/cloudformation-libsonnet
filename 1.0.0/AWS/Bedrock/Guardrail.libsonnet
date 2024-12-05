{
  new(
    Name,
    BlockedInputMessaging,
    BlockedOutputsMessaging,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 50 then error ('Name should have not more than 50 characters')
        else Name,
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
    Type: 'AWS::Bedrock::Guardrail',
  },
  setContentPolicyConfig(ContentPolicyConfig): {
    Properties+::: {
      ContentPolicyConfig:
        if !std.isObject(ContentPolicyConfig) then (error 'ContentPolicyConfig must be an object')
        else if !std.objectHas(ContentPolicyConfig, 'FiltersConfig') then (error ' have attribute FiltersConfig')
        else ContentPolicyConfig,
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
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
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
  setFailureRecommendations(FailureRecommendations): {
    Properties+::: {
      FailureRecommendations:
        if !std.isArray(FailureRecommendations) then (error 'FailureRecommendations must be an array')
        else if std.length(FailureRecommendations) > 100 then error ('FailureRecommendations cannot have more than 100 items')
        else FailureRecommendations,
    },
  },
  setFailureRecommendationsMixin(FailureRecommendations): {
    Properties+::: {
      FailureRecommendations+: FailureRecommendations,
    },
  },
  setGuardrailArn(GuardrailArn): {
    Properties+::: {
      GuardrailArn:
        if !std.isString(GuardrailArn) then (error 'GuardrailArn must be a string')
        else if std.isEmpty(GuardrailArn) then (error 'GuardrailArn must be not empty')
        else if std.length(GuardrailArn) > 2048 then error ('GuardrailArn should have not more than 2048 characters')
        else GuardrailArn,
    },
  },
  setGuardrailId(GuardrailId): {
    Properties+::: {
      GuardrailId:
        if !std.isString(GuardrailId) then (error 'GuardrailId must be a string')
        else if std.isEmpty(GuardrailId) then (error 'GuardrailId must be not empty')
        else if std.length(GuardrailId) > 64 then error ('GuardrailId should have not more than 64 characters')
        else GuardrailId,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 1 then error ('KmsKeyArn should have at least 1 characters')
        else if std.length(KmsKeyArn) > 2048 then error ('KmsKeyArn should have not more than 2048 characters')
        else KmsKeyArn,
    },
  },
  setSensitiveInformationPolicyConfig(SensitiveInformationPolicyConfig): {
    Properties+::: {
      SensitiveInformationPolicyConfig:
        if !std.isObject(SensitiveInformationPolicyConfig) then (error 'SensitiveInformationPolicyConfig must be an object')
        else SensitiveInformationPolicyConfig,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'UPDATING' && Status != 'VERSIONING' && Status != 'READY' && Status != 'FAILED' && Status != 'DELETING' then (error "Status should be 'CREATING' or 'UPDATING' or 'VERSIONING' or 'READY' or 'FAILED' or 'DELETING'")
        else Status,
    },
  },
  setStatusReasons(StatusReasons): {
    Properties+::: {
      StatusReasons:
        if !std.isArray(StatusReasons) then (error 'StatusReasons must be an array')
        else if std.length(StatusReasons) > 100 then error ('StatusReasons cannot have more than 100 items')
        else StatusReasons,
    },
  },
  setStatusReasonsMixin(StatusReasons): {
    Properties+::: {
      StatusReasons+: StatusReasons,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setWordPolicyConfig(WordPolicyConfig): {
    Properties+::: {
      WordPolicyConfig:
        if !std.isObject(WordPolicyConfig) then (error 'WordPolicyConfig must be an object')
        else WordPolicyConfig,
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
