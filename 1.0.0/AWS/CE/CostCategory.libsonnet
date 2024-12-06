{
  new(
    Name,
    RuleVersion,
    Rules,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 50 then error ('Name should have not more than 50 characters')
        else Name,
      RuleVersion:
        if !std.isString(RuleVersion) then (error 'RuleVersion must be a string')
        else if std.isEmpty(RuleVersion) then (error 'RuleVersion must be not empty')
        else if RuleVersion != 'CostCategoryExpression.v1' then (error "RuleVersion should be 'CostCategoryExpression.v1'")
        else RuleVersion,
      Rules:
        if !std.isString(Rules) then (error 'Rules must be a string')
        else if std.isEmpty(Rules) then (error 'Rules must be not empty')
        else Rules,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CE::CostCategory',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setEffectiveStart(EffectiveStart): {
    Properties+::: {
      EffectiveStart:
        if !std.isString(EffectiveStart) then (error 'EffectiveStart must be a string')
        else if std.isEmpty(EffectiveStart) then (error 'EffectiveStart must be not empty')
        else if std.length(EffectiveStart) < 20 then error ('EffectiveStart should have at least 20 characters')
        else if std.length(EffectiveStart) > 25 then error ('EffectiveStart should have not more than 25 characters')
        else EffectiveStart,
    },
  },
  setSplitChargeRules(SplitChargeRules): {
    Properties+::: {
      SplitChargeRules:
        if !std.isString(SplitChargeRules) then (error 'SplitChargeRules must be a string')
        else if std.isEmpty(SplitChargeRules) then (error 'SplitChargeRules must be not empty')
        else SplitChargeRules,
    },
  },
  setDefaultValue(DefaultValue): {
    Properties+::: {
      DefaultValue:
        if !std.isString(DefaultValue) then (error 'DefaultValue must be a string')
        else if std.isEmpty(DefaultValue) then (error 'DefaultValue must be not empty')
        else if std.length(DefaultValue) < 1 then error ('DefaultValue should have at least 1 characters')
        else if std.length(DefaultValue) > 50 then error ('DefaultValue should have not more than 50 characters')
        else DefaultValue,
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
