{
  // AWS Bedrock AgentAlias
  AgentAlias: {
    new(
      AgentAliasName,
      AgentId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AgentAliasName) : 'AgentAliasName must be a string',
        AgentAliasName: AgentAliasName,
        assert std.isString(AgentId) : 'AgentId must be a string',
        AgentId: AgentId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Bedrock::AgentAlias',
    },
    withAgentAliasArn(AgentAliasArn): {
      assert std.isString(AgentAliasArn) : 'AgentAliasArn must be a string',
      Properties+::: {
        AgentAliasArn: AgentAliasArn,
      },
    },
    withAgentAliasHistoryEvents(AgentAliasHistoryEvents): {
      Properties+::: {
        AgentAliasHistoryEvents: (if std.isArray(AgentAliasHistoryEvents) then AgentAliasHistoryEvents else [AgentAliasHistoryEvents]),
      },
    },
    withAgentAliasHistoryEventsMixin(AgentAliasHistoryEvents): {
      Properties+::: {
        AgentAliasHistoryEvents+: (if std.isArray(AgentAliasHistoryEvents) then AgentAliasHistoryEvents else [AgentAliasHistoryEvents]),
      },
    },
    withAgentAliasId(AgentAliasId): {
      assert std.isString(AgentAliasId) : 'AgentAliasId must be a string',
      Properties+::: {
        AgentAliasId: AgentAliasId,
      },
    },
    withAgentAliasStatus(AgentAliasStatus): {
      assert std.isString(AgentAliasStatus) : 'AgentAliasStatus must be a string',
      Properties+::: {
        AgentAliasStatus: AgentAliasStatus,
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
    withRoutingConfiguration(RoutingConfiguration): {
      Properties+::: {
        RoutingConfiguration: (if std.isArray(RoutingConfiguration) then RoutingConfiguration else [RoutingConfiguration]),
      },
    },
    withRoutingConfigurationMixin(RoutingConfiguration): {
      Properties+::: {
        RoutingConfiguration+: (if std.isArray(RoutingConfiguration) then RoutingConfiguration else [RoutingConfiguration]),
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
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
