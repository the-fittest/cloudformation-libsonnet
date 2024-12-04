{
  // AWS SSMIncidents ResponsePlan
  ResponsePlan: {
    new(
      Name,
      IncidentTemplate,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(IncidentTemplate) : 'IncidentTemplate must be an object',
        IncidentTemplate: IncidentTemplate,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SSMIncidents::ResponsePlan',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: {
        DisplayName: DisplayName,
      },
    },
    withChatChannel(ChatChannel): {
      assert std.isObject(ChatChannel) : 'ChatChannel must be a object',
      Properties+::: {
        ChatChannel: ChatChannel,
      },
    },
    withEngagements(Engagements): {
      Properties+::: {
        Engagements: (if std.isArray(Engagements) then Engagements else [Engagements]),
      },
    },
    withEngagementsMixin(Engagements): {
      Properties+::: {
        Engagements+: (if std.isArray(Engagements) then Engagements else [Engagements]),
      },
    },
    withActions(Actions): {
      Properties+::: {
        Actions: (if std.isArray(Actions) then Actions else [Actions]),
      },
    },
    withActionsMixin(Actions): {
      Properties+::: {
        Actions+: (if std.isArray(Actions) then Actions else [Actions]),
      },
    },
    withIntegrations(Integrations): {
      Properties+::: {
        Integrations: (if std.isArray(Integrations) then Integrations else [Integrations]),
      },
    },
    withIntegrationsMixin(Integrations): {
      Properties+::: {
        Integrations+: (if std.isArray(Integrations) then Integrations else [Integrations]),
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
