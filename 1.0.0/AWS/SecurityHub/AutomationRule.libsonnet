{
  new(
    RuleOrder,
    RuleName,
    Description,
    Criteria,
    Actions,
  ): {
    local base = self,
    Properties: {
      RuleOrder:
        if !std.isNumber(RuleOrder) then (error 'RuleOrder must be an number')
        else if RuleOrder < 1 then error ('RuleOrder should be at least 1')
        else if RuleOrder > 1000 then error ('RuleOrder should be not more than 1000')
        else RuleOrder,
      RuleName:
        if !std.isString(RuleName) then (error 'RuleName must be a string')
        else if std.isEmpty(RuleName) then (error 'RuleName must be not empty')
        else if std.length(RuleName) < 1 then error ('RuleName should have at least 1 characters')
        else if std.length(RuleName) > 256 then error ('RuleName should have not more than 256 characters')
        else RuleName,
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
      Criteria:
        if !std.isObject(Criteria) then (error 'Criteria must be an object')
        else Criteria,
      Actions:
        if !std.isArray(Actions) then (error 'Actions must be an array')
        else if std.length(Actions) < 1 then error ('Actions cannot have less than 1 items')
        else if std.length(Actions) > 1 then error ('Actions cannot have more than 1 items')
        else Actions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::AutomationRule',
  },
  setRuleArn(RuleArn): {
    Properties+::: {
      RuleArn:
        if !std.isString(RuleArn) then (error 'RuleArn must be a string')
        else if std.isEmpty(RuleArn) then (error 'RuleArn must be not empty')
        else RuleArn,
    },
  },
  setRuleStatus(RuleStatus): {
    Properties+::: {
      RuleStatus:
        if !std.isString(RuleStatus) then (error 'RuleStatus must be a string')
        else if std.isEmpty(RuleStatus) then (error 'RuleStatus must be not empty')
        else if RuleStatus != 'ENABLED' && RuleStatus != 'DISABLED' then (error "RuleStatus should be 'ENABLED' or 'DISABLED'")
        else RuleStatus,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setCreatedBy(CreatedBy): {
    Properties+::: {
      CreatedBy:
        if !std.isString(CreatedBy) then (error 'CreatedBy must be a string')
        else if std.isEmpty(CreatedBy) then (error 'CreatedBy must be not empty')
        else if std.length(CreatedBy) < 1 then error ('CreatedBy should have at least 1 characters')
        else if std.length(CreatedBy) > 256 then error ('CreatedBy should have not more than 256 characters')
        else CreatedBy,
    },
  },
  setIsTerminal(IsTerminal): {
    Properties+::: {
      IsTerminal:
        if !std.isBoolean(IsTerminal) then (error 'IsTerminal must be a boolean') else IsTerminal,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
