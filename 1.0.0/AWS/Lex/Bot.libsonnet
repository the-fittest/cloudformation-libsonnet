{
  new(
    Name,
    RoleArn,
    DataPrivacy,
    IdleSessionTTLInSeconds,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 32 then error ('RoleArn should have at least 32 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
      DataPrivacy:
        if !std.isObject(DataPrivacy) then (error 'DataPrivacy must be an object')
        else if !std.objectHas(DataPrivacy, 'ChildDirected') then (error ' have attribute ChildDirected')
        else DataPrivacy,
      IdleSessionTTLInSeconds:
        if !std.isNumber(IdleSessionTTLInSeconds) then (error 'IdleSessionTTLInSeconds must be an number')
        else if IdleSessionTTLInSeconds < 60 then error ('IdleSessionTTLInSeconds should be at least 60')
        else if IdleSessionTTLInSeconds > 86400 then error ('IdleSessionTTLInSeconds should be not more than 86400')
        else IdleSessionTTLInSeconds,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lex::Bot',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 10 then error ('Id should have at least 10 characters')
        else if std.length(Id) > 10 then error ('Id should have not more than 10 characters')
        else Id,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1011 then error ('Arn should have not more than 1011 characters')
        else Arn,
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
  setBotLocales(BotLocales): {
    Properties+::: {
      BotLocales:
        if !std.isArray(BotLocales) then (error 'BotLocales must be an array')
        else BotLocales,
    },
  },
  pushBotLocales(BotLocales): {
    Properties+::: {
      BotLocales+: BotLocales,
    },
  },
  setBotFileS3Location(BotFileS3Location): {
    Properties+::: {
      BotFileS3Location:
        if !std.isObject(BotFileS3Location) then (error 'BotFileS3Location must be an object')
        else if !std.objectHas(BotFileS3Location, 'S3Bucket') then (error ' have attribute S3Bucket')
        else if !std.objectHas(BotFileS3Location, 'S3ObjectKey') then (error ' have attribute S3ObjectKey')
        else BotFileS3Location,
    },
  },
  setBotTags(BotTags): {
    Properties+::: {
      BotTags:
        if !std.isArray(BotTags) then (error 'BotTags must be an array')
        else if std.length(BotTags) > 200 then error ('BotTags cannot have more than 200 items')
        else BotTags,
    },
  },
  pushBotTags(BotTags): {
    Properties+::: {
      BotTags+: BotTags,
    },
  },
  setTestBotAliasTags(TestBotAliasTags): {
    Properties+::: {
      TestBotAliasTags:
        if !std.isArray(TestBotAliasTags) then (error 'TestBotAliasTags must be an array')
        else if std.length(TestBotAliasTags) > 200 then error ('TestBotAliasTags cannot have more than 200 items')
        else TestBotAliasTags,
    },
  },
  pushTestBotAliasTags(TestBotAliasTags): {
    Properties+::: {
      TestBotAliasTags+: TestBotAliasTags,
    },
  },
  setAutoBuildBotLocales(AutoBuildBotLocales): {
    Properties+::: {
      AutoBuildBotLocales:
        if !std.isBoolean(AutoBuildBotLocales) then (error 'AutoBuildBotLocales must be a boolean') else AutoBuildBotLocales,
    },
  },
  setTestBotAliasSettings(TestBotAliasSettings): {
    Properties+::: {
      TestBotAliasSettings:
        if !std.isObject(TestBotAliasSettings) then (error 'TestBotAliasSettings must be an object')
        else TestBotAliasSettings,
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
