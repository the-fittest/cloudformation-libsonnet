{
  new(
    AgentAliasName,
    AgentId,
  ): {
    local base = self,
    Properties: {
      AgentAliasName:
        if !std.isString(AgentAliasName) then (error 'AgentAliasName must be a string')
        else if std.isEmpty(AgentAliasName) then (error 'AgentAliasName must be not empty')
        else AgentAliasName,
      AgentId:
        if !std.isString(AgentId) then (error 'AgentId must be a string')
        else if std.isEmpty(AgentId) then (error 'AgentId must be not empty')
        else AgentId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::AgentAlias',
  },
  setAgentAliasArn(AgentAliasArn): {
    Properties+::: {
      AgentAliasArn:
        if !std.isString(AgentAliasArn) then (error 'AgentAliasArn must be a string')
        else if std.isEmpty(AgentAliasArn) then (error 'AgentAliasArn must be not empty')
        else if std.length(AgentAliasArn) > 2048 then error ('AgentAliasArn should have not more than 2048 characters')
        else AgentAliasArn,
    },
  },
  setAgentAliasHistoryEvents(AgentAliasHistoryEvents): {
    Properties+::: {
      AgentAliasHistoryEvents:
        if !std.isArray(AgentAliasHistoryEvents) then (error 'AgentAliasHistoryEvents must be an array')
        else if std.length(AgentAliasHistoryEvents) > 10 then error ('AgentAliasHistoryEvents cannot have more than 10 items')
        else AgentAliasHistoryEvents,
    },
  },
  setAgentAliasHistoryEventsMixin(AgentAliasHistoryEvents): {
    Properties+::: {
      AgentAliasHistoryEvents+: AgentAliasHistoryEvents,
    },
  },
  setAgentAliasId(AgentAliasId): {
    Properties+::: {
      AgentAliasId:
        if !std.isString(AgentAliasId) then (error 'AgentAliasId must be a string')
        else if std.isEmpty(AgentAliasId) then (error 'AgentAliasId must be not empty')
        else if std.length(AgentAliasId) < 10 then error ('AgentAliasId should have at least 10 characters')
        else if std.length(AgentAliasId) > 10 then error ('AgentAliasId should have not more than 10 characters')
        else AgentAliasId,
    },
  },
  setAgentAliasStatus(AgentAliasStatus): {
    Properties+::: {
      AgentAliasStatus:
        if !std.isString(AgentAliasStatus) then (error 'AgentAliasStatus must be a string')
        else if std.isEmpty(AgentAliasStatus) then (error 'AgentAliasStatus must be not empty')
        else if AgentAliasStatus != 'CREATING' && AgentAliasStatus != 'PREPARED' && AgentAliasStatus != 'FAILED' && AgentAliasStatus != 'UPDATING' && AgentAliasStatus != 'DELETING' then (error "AgentAliasStatus should be 'CREATING' or 'PREPARED' or 'FAILED' or 'UPDATING' or 'DELETING'")
        else AgentAliasStatus,
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
  setRoutingConfiguration(RoutingConfiguration): {
    Properties+::: {
      RoutingConfiguration:
        if !std.isArray(RoutingConfiguration) then (error 'RoutingConfiguration must be an array')
        else if std.length(RoutingConfiguration) > 1 then error ('RoutingConfiguration cannot have more than 1 items')
        else RoutingConfiguration,
    },
  },
  setRoutingConfigurationMixin(RoutingConfiguration): {
    Properties+::: {
      RoutingConfiguration+: RoutingConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
