{
  new(
    BotId,
    BotAliasName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(BotId) : 'BotId must be a string',
      BotId: BotId,
      assert std.isString(BotAliasName) : 'BotAliasName must be a string',
      BotAliasName: BotAliasName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lex::BotAlias',
  },
  withBotAliasId(BotAliasId): {
    assert std.isString(BotAliasId) : 'BotAliasId must be a string',
    Properties+::: {
      BotAliasId: BotAliasId,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withBotAliasStatus(BotAliasStatus): {
    assert std.isString(BotAliasStatus) : 'BotAliasStatus must be a string',
    Properties+::: {
      BotAliasStatus: BotAliasStatus,
    },
  },
  withBotAliasLocaleSettings(BotAliasLocaleSettings): {
    Properties+::: {
      BotAliasLocaleSettings: (if std.isArray(BotAliasLocaleSettings) then BotAliasLocaleSettings else [BotAliasLocaleSettings]),
    },
  },
  withBotAliasLocaleSettingsMixin(BotAliasLocaleSettings): {
    Properties+::: {
      BotAliasLocaleSettings+: (if std.isArray(BotAliasLocaleSettings) then BotAliasLocaleSettings else [BotAliasLocaleSettings]),
    },
  },
  withBotVersion(BotVersion): {
    assert std.isString(BotVersion) : 'BotVersion must be a string',
    Properties+::: {
      BotVersion: BotVersion,
    },
  },
  withConversationLogSettings(ConversationLogSettings): {
    assert std.isObject(ConversationLogSettings) : 'ConversationLogSettings must be a object',
    Properties+::: {
      ConversationLogSettings: ConversationLogSettings,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withSentimentAnalysisSettings(SentimentAnalysisSettings): {
    assert std.isObject(SentimentAnalysisSettings) : 'SentimentAnalysisSettings must be a object',
    Properties+::: {
      SentimentAnalysisSettings: SentimentAnalysisSettings,
    },
  },
  withBotAliasTags(BotAliasTags): {
    Properties+::: {
      BotAliasTags: (if std.isArray(BotAliasTags) then BotAliasTags else [BotAliasTags]),
    },
  },
  withBotAliasTagsMixin(BotAliasTags): {
    Properties+::: {
      BotAliasTags+: (if std.isArray(BotAliasTags) then BotAliasTags else [BotAliasTags]),
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
