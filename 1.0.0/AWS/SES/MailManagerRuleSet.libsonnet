{
  new(
    Rules,
  ): {
    local base = self,
    Properties: {
      Rules:
        if !std.isArray(Rules) then (error 'Rules must be an array')
        else if std.length(Rules) > 40 then error ('Rules cannot have more than 40 items')
        else Rules,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::MailManagerRuleSet',
  },
  setRuleSetArn(RuleSetArn): {
    Properties+::: {
      RuleSetArn:
        if !std.isString(RuleSetArn) then (error 'RuleSetArn must be a string')
        else if std.isEmpty(RuleSetArn) then (error 'RuleSetArn must be not empty')
        else RuleSetArn,
    },
  },
  setRuleSetId(RuleSetId): {
    Properties+::: {
      RuleSetId:
        if !std.isString(RuleSetId) then (error 'RuleSetId must be a string')
        else if std.isEmpty(RuleSetId) then (error 'RuleSetId must be not empty')
        else if std.length(RuleSetId) < 1 then error ('RuleSetId should have at least 1 characters')
        else if std.length(RuleSetId) > 100 then error ('RuleSetId should have not more than 100 characters')
        else RuleSetId,
    },
  },
  setRuleSetName(RuleSetName): {
    Properties+::: {
      RuleSetName:
        if !std.isString(RuleSetName) then (error 'RuleSetName must be a string')
        else if std.isEmpty(RuleSetName) then (error 'RuleSetName must be not empty')
        else if std.length(RuleSetName) < 1 then error ('RuleSetName should have at least 1 characters')
        else if std.length(RuleSetName) > 100 then error ('RuleSetName should have not more than 100 characters')
        else RuleSetName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
