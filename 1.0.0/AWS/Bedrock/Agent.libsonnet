{
  new(
    AgentName,
  ): {
    local base = self,
    Properties: {
      AgentName:
        if !std.isString(AgentName) then (error 'AgentName must be a string')
        else if std.isEmpty(AgentName) then (error 'AgentName must be not empty')
        else AgentName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::Agent',
  },
  setActionGroups(ActionGroups): {
    Properties+::: {
      ActionGroups:
        if !std.isArray(ActionGroups) then (error 'ActionGroups must be an array')
        else ActionGroups,
    },
  },
  pushActionGroups(ActionGroups): {
    Properties+::: {
      ActionGroups+: ActionGroups,
    },
  },
  setAgentArn(AgentArn): {
    Properties+::: {
      AgentArn:
        if !std.isString(AgentArn) then (error 'AgentArn must be a string')
        else if std.isEmpty(AgentArn) then (error 'AgentArn must be not empty')
        else if std.length(AgentArn) > 2048 then error ('AgentArn should have not more than 2048 characters')
        else AgentArn,
    },
  },
  setAgentId(AgentId): {
    Properties+::: {
      AgentId:
        if !std.isString(AgentId) then (error 'AgentId must be a string')
        else if std.isEmpty(AgentId) then (error 'AgentId must be not empty')
        else AgentId,
    },
  },
  setAgentResourceRoleArn(AgentResourceRoleArn): {
    Properties+::: {
      AgentResourceRoleArn:
        if !std.isString(AgentResourceRoleArn) then (error 'AgentResourceRoleArn must be a string')
        else if std.isEmpty(AgentResourceRoleArn) then (error 'AgentResourceRoleArn must be not empty')
        else if std.length(AgentResourceRoleArn) > 2048 then error ('AgentResourceRoleArn should have not more than 2048 characters')
        else AgentResourceRoleArn,
    },
  },
  setAgentStatus(AgentStatus): {
    Properties+::: {
      AgentStatus:
        if !std.isString(AgentStatus) then (error 'AgentStatus must be a string')
        else if std.isEmpty(AgentStatus) then (error 'AgentStatus must be not empty')
        else if AgentStatus != 'CREATING' && AgentStatus != 'PREPARING' && AgentStatus != 'PREPARED' && AgentStatus != 'NOT_PREPARED' && AgentStatus != 'DELETING' && AgentStatus != 'FAILED' && AgentStatus != 'VERSIONING' && AgentStatus != 'UPDATING' then (error "AgentStatus should be 'CREATING' or 'PREPARING' or 'PREPARED' or 'NOT_PREPARED' or 'DELETING' or 'FAILED' or 'VERSIONING' or 'UPDATING'")
        else AgentStatus,
    },
  },
  setAgentVersion(AgentVersion): {
    Properties+::: {
      AgentVersion:
        if !std.isString(AgentVersion) then (error 'AgentVersion must be a string')
        else if std.isEmpty(AgentVersion) then (error 'AgentVersion must be not empty')
        else if std.length(AgentVersion) < 5 then error ('AgentVersion should have at least 5 characters')
        else if std.length(AgentVersion) > 5 then error ('AgentVersion should have not more than 5 characters')
        else AgentVersion,
    },
  },
  setAutoPrepare(AutoPrepare): {
    Properties+::: {
      AutoPrepare:
        if !std.isBoolean(AutoPrepare) then (error 'AutoPrepare must be a boolean') else AutoPrepare,
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
  setCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
    Properties+::: {
      CustomerEncryptionKeyArn:
        if !std.isString(CustomerEncryptionKeyArn) then (error 'CustomerEncryptionKeyArn must be a string')
        else if std.isEmpty(CustomerEncryptionKeyArn) then (error 'CustomerEncryptionKeyArn must be not empty')
        else if std.length(CustomerEncryptionKeyArn) < 1 then error ('CustomerEncryptionKeyArn should have at least 1 characters')
        else if std.length(CustomerEncryptionKeyArn) > 2048 then error ('CustomerEncryptionKeyArn should have not more than 2048 characters')
        else CustomerEncryptionKeyArn,
    },
  },
  setSkipResourceInUseCheckOnDelete(SkipResourceInUseCheckOnDelete): {
    Properties+::: {
      SkipResourceInUseCheckOnDelete:
        if !std.isBoolean(SkipResourceInUseCheckOnDelete) then (error 'SkipResourceInUseCheckOnDelete must be a boolean') else SkipResourceInUseCheckOnDelete,
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
  setFailureReasons(FailureReasons): {
    Properties+::: {
      FailureReasons:
        if !std.isArray(FailureReasons) then (error 'FailureReasons must be an array')
        else if std.length(FailureReasons) > 2048 then error ('FailureReasons cannot have more than 2048 items')
        else FailureReasons,
    },
  },
  pushFailureReasons(FailureReasons): {
    Properties+::: {
      FailureReasons+: FailureReasons,
    },
  },
  setFoundationModel(FoundationModel): {
    Properties+::: {
      FoundationModel:
        if !std.isString(FoundationModel) then (error 'FoundationModel must be a string')
        else if std.isEmpty(FoundationModel) then (error 'FoundationModel must be not empty')
        else if std.length(FoundationModel) < 1 then error ('FoundationModel should have at least 1 characters')
        else if std.length(FoundationModel) > 2048 then error ('FoundationModel should have not more than 2048 characters')
        else FoundationModel,
    },
  },
  setGuardrailConfiguration(GuardrailConfiguration): {
    Properties+::: {
      GuardrailConfiguration:
        if !std.isObject(GuardrailConfiguration) then (error 'GuardrailConfiguration must be an object')
        else GuardrailConfiguration,
    },
  },
  setIdleSessionTTLInSeconds(IdleSessionTTLInSeconds): {
    Properties+::: {
      IdleSessionTTLInSeconds:
        if !std.isNumber(IdleSessionTTLInSeconds) then (error 'IdleSessionTTLInSeconds must be an number')
        else if IdleSessionTTLInSeconds < 60 then error ('IdleSessionTTLInSeconds should be at least 60')
        else if IdleSessionTTLInSeconds > 3600 then error ('IdleSessionTTLInSeconds should be not more than 3600')
        else IdleSessionTTLInSeconds,
    },
  },
  setInstruction(Instruction): {
    Properties+::: {
      Instruction:
        if !std.isString(Instruction) then (error 'Instruction must be a string')
        else if std.isEmpty(Instruction) then (error 'Instruction must be not empty')
        else if std.length(Instruction) < 40 then error ('Instruction should have at least 40 characters')
        else Instruction,
    },
  },
  setKnowledgeBases(KnowledgeBases): {
    Properties+::: {
      KnowledgeBases:
        if !std.isArray(KnowledgeBases) then (error 'KnowledgeBases must be an array')
        else KnowledgeBases,
    },
  },
  pushKnowledgeBases(KnowledgeBases): {
    Properties+::: {
      KnowledgeBases+: KnowledgeBases,
    },
  },
  setPreparedAt(PreparedAt): {
    Properties+::: {
      PreparedAt:
        if !std.isString(PreparedAt) then (error 'PreparedAt must be a string')
        else if std.isEmpty(PreparedAt) then (error 'PreparedAt must be not empty')
        else PreparedAt,
    },
  },
  setPromptOverrideConfiguration(PromptOverrideConfiguration): {
    Properties+::: {
      PromptOverrideConfiguration:
        if !std.isObject(PromptOverrideConfiguration) then (error 'PromptOverrideConfiguration must be an object')
        else if !std.objectHas(PromptOverrideConfiguration, 'PromptConfigurations') then (error ' have attribute PromptConfigurations')
        else PromptOverrideConfiguration,
    },
  },
  setRecommendedActions(RecommendedActions): {
    Properties+::: {
      RecommendedActions:
        if !std.isArray(RecommendedActions) then (error 'RecommendedActions must be an array')
        else if std.length(RecommendedActions) > 2048 then error ('RecommendedActions cannot have more than 2048 items')
        else RecommendedActions,
    },
  },
  pushRecommendedActions(RecommendedActions): {
    Properties+::: {
      RecommendedActions+: RecommendedActions,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setTestAliasTags(TestAliasTags): {
    Properties+::: {
      TestAliasTags:
        if !std.isObject(TestAliasTags) then (error 'TestAliasTags must be an object')
        else TestAliasTags,
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
