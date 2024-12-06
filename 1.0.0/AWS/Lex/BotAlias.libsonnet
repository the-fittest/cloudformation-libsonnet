{
  new(
    BotId,
    BotAliasName,
  ): {
    local base = self,
    Properties: {
      BotId:
        if !std.isString(BotId) then (error 'BotId must be a string')
        else if std.isEmpty(BotId) then (error 'BotId must be not empty')
        else if std.length(BotId) < 10 then error ('BotId should have at least 10 characters')
        else if std.length(BotId) > 10 then error ('BotId should have not more than 10 characters')
        else BotId,
      BotAliasName:
        if !std.isString(BotAliasName) then (error 'BotAliasName must be a string')
        else if std.isEmpty(BotAliasName) then (error 'BotAliasName must be not empty')
        else if std.length(BotAliasName) < 1 then error ('BotAliasName should have at least 1 characters')
        else if std.length(BotAliasName) > 100 then error ('BotAliasName should have not more than 100 characters')
        else BotAliasName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lex::BotAlias',
  },
  setBotAliasId(BotAliasId): {
    Properties+::: {
      BotAliasId:
        if !std.isString(BotAliasId) then (error 'BotAliasId must be a string')
        else if std.isEmpty(BotAliasId) then (error 'BotAliasId must be not empty')
        else if std.length(BotAliasId) < 10 then error ('BotAliasId should have at least 10 characters')
        else if std.length(BotAliasId) > 10 then error ('BotAliasId should have not more than 10 characters')
        else BotAliasId,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 1000 then error ('Arn should have not more than 1000 characters')
        else Arn,
    },
  },
  setBotAliasStatus(BotAliasStatus): {
    Properties+::: {
      BotAliasStatus:
        if !std.isString(BotAliasStatus) then (error 'BotAliasStatus must be a string')
        else if std.isEmpty(BotAliasStatus) then (error 'BotAliasStatus must be not empty')
        else if BotAliasStatus != 'Creating' && BotAliasStatus != 'Available' && BotAliasStatus != 'Deleting' && BotAliasStatus != 'Failed' then (error "BotAliasStatus should be 'Creating' or 'Available' or 'Deleting' or 'Failed'")
        else BotAliasStatus,
    },
  },
  setBotAliasLocaleSettings(BotAliasLocaleSettings): {
    Properties+::: {
      BotAliasLocaleSettings:
        if !std.isArray(BotAliasLocaleSettings) then (error 'BotAliasLocaleSettings must be an array')
        else if std.length(BotAliasLocaleSettings) > 50 then error ('BotAliasLocaleSettings cannot have more than 50 items')
        else BotAliasLocaleSettings,
    },
  },
  pushBotAliasLocaleSettings(BotAliasLocaleSettings): {
    Properties+::: {
      BotAliasLocaleSettings+: BotAliasLocaleSettings,
    },
  },
  setBotVersion(BotVersion): {
    Properties+::: {
      BotVersion:
        if !std.isString(BotVersion) then (error 'BotVersion must be a string')
        else if std.isEmpty(BotVersion) then (error 'BotVersion must be not empty')
        else if std.length(BotVersion) < 1 then error ('BotVersion should have at least 1 characters')
        else if std.length(BotVersion) > 5 then error ('BotVersion should have not more than 5 characters')
        else BotVersion,
    },
  },
  setConversationLogSettings(ConversationLogSettings): {
    Properties+::: {
      ConversationLogSettings:
        if !std.isObject(ConversationLogSettings) then (error 'ConversationLogSettings must be an object')
        else ConversationLogSettings,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 200 then error ('Description should have not more than 200 characters')
        else Description,
    },
  },
  setSentimentAnalysisSettings(SentimentAnalysisSettings): {
    Properties+::: {
      SentimentAnalysisSettings:
        if !std.isObject(SentimentAnalysisSettings) then (error 'SentimentAnalysisSettings must be an object')
        else if !std.objectHas(SentimentAnalysisSettings, 'DetectSentiment') then (error ' have attribute DetectSentiment')
        else SentimentAnalysisSettings,
    },
  },
  setBotAliasTags(BotAliasTags): {
    Properties+::: {
      BotAliasTags:
        if !std.isArray(BotAliasTags) then (error 'BotAliasTags must be an array')
        else if std.length(BotAliasTags) > 200 then error ('BotAliasTags cannot have more than 200 items')
        else BotAliasTags,
    },
  },
  pushBotAliasTags(BotAliasTags): {
    Properties+::: {
      BotAliasTags+: BotAliasTags,
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
