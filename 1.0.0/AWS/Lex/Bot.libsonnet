{
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
      assert std.isObject(DataPrivacy) : 'DataPrivacy must be an object',
      DataPrivacy: DataPrivacy,
      assert std.isNumber(IdleSessionTTLInSeconds) : 'IdleSessionTTLInSeconds must be a number',
      IdleSessionTTLInSeconds: IdleSessionTTLInSeconds,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lex::Bot',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withBotLocales(BotLocales): {
    Properties+::: {
      BotLocales: (if std.isArray(BotLocales) then BotLocales else [BotLocales]),
    },
  },
  withBotLocalesMixin(BotLocales): {
    Properties+::: {
      BotLocales+: (if std.isArray(BotLocales) then BotLocales else [BotLocales]),
    },
  },
  withBotFileS3Location(BotFileS3Location): {
    assert std.isObject(BotFileS3Location) : 'BotFileS3Location must be a object',
    Properties+::: {
      BotFileS3Location: BotFileS3Location,
    },
  },
  withBotTags(BotTags): {
    Properties+::: {
      BotTags: (if std.isArray(BotTags) then BotTags else [BotTags]),
    },
  },
  withBotTagsMixin(BotTags): {
    Properties+::: {
      BotTags+: (if std.isArray(BotTags) then BotTags else [BotTags]),
    },
  },
  withTestBotAliasTags(TestBotAliasTags): {
    Properties+::: {
      TestBotAliasTags: (if std.isArray(TestBotAliasTags) then TestBotAliasTags else [TestBotAliasTags]),
    },
  },
  withTestBotAliasTagsMixin(TestBotAliasTags): {
    Properties+::: {
      TestBotAliasTags+: (if std.isArray(TestBotAliasTags) then TestBotAliasTags else [TestBotAliasTags]),
    },
  },
  withAutoBuildBotLocales(AutoBuildBotLocales): {
    assert std.isBoolean(AutoBuildBotLocales) : 'AutoBuildBotLocales must be a boolean',
    Properties+::: {
      AutoBuildBotLocales: AutoBuildBotLocales,
    },
  },
  withTestBotAliasSettings(TestBotAliasSettings): {
    assert std.isObject(TestBotAliasSettings) : 'TestBotAliasSettings must be a object',
    Properties+::: {
      TestBotAliasSettings: TestBotAliasSettings,
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
