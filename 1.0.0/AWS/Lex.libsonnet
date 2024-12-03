local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Bot: {
    '#': d.pkg(
      name='Bot',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lex.libsonnet',
      help='Amazon Lex conversational bot performing automated tasks such as ordering a pizza, booking a hotel, and so on.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lex::Bot Resource
        * Name 
        * RoleArn 
        * DataPrivacy Data privacy setting of the Bot.
        * IdleSessionTTLInSeconds IdleSessionTTLInSeconds of the resource
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('DataPrivacy', 'd.T.object'),
        d.arg('IdleSessionTTLInSeconds', 'd.T.integer'),
      ]
    ),
    new(
      Name,
      RoleArn,
      DataPrivacy,
      IdleSessionTTLInSeconds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(DataPrivacy) : 'DataPrivacy must be a object',
        DataPrivacy: DataPrivacy,
        assert std.isNumber(IdleSessionTTLInSeconds) : 'IdleSessionTTLInSeconds must be a integer',
        IdleSessionTTLInSeconds: IdleSessionTTLInSeconds,
      },
      DependsOn:: [],
      Type: 'AWS::Lex::Bot',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withBotLocales': d.fn('`withBotLocales` BotLocales ', [d.arg('BotLocales', d.T.array)]),
    withBotLocales(BotLocales): {
      assert std.isArray(BotLocales) : 'BotLocales must be a array',
      Properties+::: { BotLocales: BotLocales },
    },
    '#withBotFileS3Location': d.fn('`withBotFileS3Location` BotFileS3Location ', [d.arg('BotFileS3Location', d.T.object)]),
    withBotFileS3Location(BotFileS3Location): {
      assert std.isObject(BotFileS3Location) : 'BotFileS3Location must be a object',
      Properties+::: { BotFileS3Location: BotFileS3Location },
    },
    '#withBotTags': d.fn('`withBotTags` BotTags ', [d.arg('BotTags', d.T.array)]),
    withBotTags(BotTags): {
      assert std.isArray(BotTags) : 'BotTags must be a array',
      Properties+::: { BotTags: BotTags },
    },
    '#withTestBotAliasTags': d.fn('`withTestBotAliasTags` TestBotAliasTags ', [d.arg('TestBotAliasTags', d.T.array)]),
    withTestBotAliasTags(TestBotAliasTags): {
      assert std.isArray(TestBotAliasTags) : 'TestBotAliasTags must be a array',
      Properties+::: { TestBotAliasTags: TestBotAliasTags },
    },
    '#withAutoBuildBotLocales': d.fn('`withAutoBuildBotLocales` AutoBuildBotLocales ', [d.arg('AutoBuildBotLocales', d.T.boolean)]),
    withAutoBuildBotLocales(AutoBuildBotLocales): {
      assert std.isBoolean(AutoBuildBotLocales) : 'AutoBuildBotLocales must be a boolean',
      Properties+::: { AutoBuildBotLocales: AutoBuildBotLocales },
    },
    '#withTestBotAliasSettings': d.fn('`withTestBotAliasSettings` TestBotAliasSettings ', [d.arg('TestBotAliasSettings', d.T.object)]),
    withTestBotAliasSettings(TestBotAliasSettings): {
      assert std.isObject(TestBotAliasSettings) : 'TestBotAliasSettings must be a object',
      Properties+::: { TestBotAliasSettings: TestBotAliasSettings },
    },
  },
  BotAlias: {
    '#': d.pkg(
      name='BotAlias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lex.libsonnet',
      help='A Bot Alias enables you to change the version of a bot without updating applications that use the bot',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lex::BotAlias Resource
        * BotId 
        * BotAliasName 
      |||,
      args=[
        d.arg('BotId', 'd.T.string'),
        d.arg('BotAliasName', 'd.T.string'),
      ]
    ),
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
      Type: 'AWS::Lex::BotAlias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBotAliasId': d.fn('`withBotAliasId` BotAliasId ', [d.arg('BotAliasId', d.T.string)]),
    withBotAliasId(BotAliasId): {
      assert std.isString(BotAliasId) : 'BotAliasId must be a string',
      Properties+::: { BotAliasId: BotAliasId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withBotAliasStatus': d.fn('`withBotAliasStatus` BotAliasStatus ', [d.arg('BotAliasStatus', d.T.string)]),
    withBotAliasStatus(BotAliasStatus): {
      assert std.isString(BotAliasStatus) : 'BotAliasStatus must be a string',
      Properties+::: { BotAliasStatus: BotAliasStatus },
    },
    '#withBotAliasLocaleSettings': d.fn('`withBotAliasLocaleSettings` BotAliasLocaleSettings ', [d.arg('BotAliasLocaleSettings', d.T.array)]),
    withBotAliasLocaleSettings(BotAliasLocaleSettings): {
      assert std.isArray(BotAliasLocaleSettings) : 'BotAliasLocaleSettings must be a array',
      Properties+::: { BotAliasLocaleSettings: BotAliasLocaleSettings },
    },
    '#withBotVersion': d.fn('`withBotVersion` BotVersion ', [d.arg('BotVersion', d.T.string)]),
    withBotVersion(BotVersion): {
      assert std.isString(BotVersion) : 'BotVersion must be a string',
      Properties+::: { BotVersion: BotVersion },
    },
    '#withConversationLogSettings': d.fn('`withConversationLogSettings` ConversationLogSettings ', [d.arg('ConversationLogSettings', d.T.object)]),
    withConversationLogSettings(ConversationLogSettings): {
      assert std.isObject(ConversationLogSettings) : 'ConversationLogSettings must be a object',
      Properties+::: { ConversationLogSettings: ConversationLogSettings },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSentimentAnalysisSettings': d.fn('`withSentimentAnalysisSettings` SentimentAnalysisSettings ', [d.arg('SentimentAnalysisSettings', d.T.object)]),
    withSentimentAnalysisSettings(SentimentAnalysisSettings): {
      assert std.isObject(SentimentAnalysisSettings) : 'SentimentAnalysisSettings must be a object',
      Properties+::: { SentimentAnalysisSettings: SentimentAnalysisSettings },
    },
    '#withBotAliasTags': d.fn('`withBotAliasTags` BotAliasTags ', [d.arg('BotAliasTags', d.T.array)]),
    withBotAliasTags(BotAliasTags): {
      assert std.isArray(BotAliasTags) : 'BotAliasTags must be a array',
      Properties+::: { BotAliasTags: BotAliasTags },
    },
  },
  BotVersion: {
    '#': d.pkg(
      name='BotVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lex.libsonnet',
      help='A version is a numbered snapshot of your work that you can publish for use in different parts of your workflow, such as development, beta deployment, and production.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lex::BotVersion Resource
        * BotId 
        * BotVersionLocaleSpecification 
      |||,
      args=[
        d.arg('BotId', 'd.T.string'),
        d.arg('BotVersionLocaleSpecification', 'd.T.array'),
      ]
    ),
    new(
      BotId,
      BotVersionLocaleSpecification,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BotId) : 'BotId must be a string',
        BotId: BotId,
        assert std.isArray(BotVersionLocaleSpecification) : 'BotVersionLocaleSpecification must be a array',
        BotVersionLocaleSpecification: BotVersionLocaleSpecification,
      },
      DependsOn:: [],
      Type: 'AWS::Lex::BotVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBotVersion': d.fn('`withBotVersion` BotVersion ', [d.arg('BotVersion', d.T.string)]),
    withBotVersion(BotVersion): {
      assert std.isString(BotVersion) : 'BotVersion must be a string',
      Properties+::: { BotVersion: BotVersion },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lex.libsonnet',
      help='A resource policy with specified policy statements that attaches to a Lex bot or bot alias.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lex::ResourcePolicy Resource
        * ResourceArn 
        * Policy 
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('Policy', 'd.T.object'),
      ]
    ),
    new(
      ResourceArn,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        assert std.isObject(Policy) : 'Policy must be a object',
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::Lex::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRevisionId': d.fn('`withRevisionId` RevisionId ', [d.arg('RevisionId', d.T.string)]),
    withRevisionId(RevisionId): {
      assert std.isString(RevisionId) : 'RevisionId must be a string',
      Properties+::: { RevisionId: RevisionId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
}
