{
  new(
    BotId,
    BotVersionLocaleSpecification,
  ): {
    local base = self,
    Properties: {
      BotId:
        if !std.isString(BotId) then (error 'BotId must be a string')
        else if std.isEmpty(BotId) then (error 'BotId must be not empty')
        else if std.length(BotId) < 10 then error ('BotId should have at least 10 characters')
        else if std.length(BotId) > 10 then error ('BotId should have not more than 10 characters')
        else BotId,
      BotVersionLocaleSpecification:
        if !std.isArray(BotVersionLocaleSpecification) then (error 'BotVersionLocaleSpecification must be an array')
        else if std.length(BotVersionLocaleSpecification) < 1 then error ('BotVersionLocaleSpecification cannot have less than 1 items')
        else BotVersionLocaleSpecification,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lex::BotVersion',
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 200 then error ('Description should have not more than 200 characters')
        else Description,
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
