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
      assert std.isNumber(RuleOrder) : 'RuleOrder must be a number',
      RuleOrder: RuleOrder,
      assert std.isString(RuleName) : 'RuleName must be a string',
      RuleName: RuleName,
      assert std.isString(Description) : 'Description must be a string',
      Description: Description,
      assert std.isObject(Criteria) : 'Criteria must be an object',
      Criteria: Criteria,
      Actions: (if std.isArray(Actions) then Actions else [Actions]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::AutomationRule',
  },
  withRuleArn(RuleArn): {
    assert std.isString(RuleArn) : 'RuleArn must be a string',
    Properties+::: {
      RuleArn: RuleArn,
    },
  },
  withRuleStatus(RuleStatus): {
    assert std.isString(RuleStatus) : 'RuleStatus must be a string',
    assert RuleStatus == 'ENABLED' || RuleStatus == 'DISABLED' : "RuleStatus should be 'ENABLED' or 'DISABLED'",
    Properties+::: {
      RuleStatus: RuleStatus,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withUpdatedAt(UpdatedAt): {
    assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
    Properties+::: {
      UpdatedAt: UpdatedAt,
    },
  },
  withCreatedBy(CreatedBy): {
    assert std.isString(CreatedBy) : 'CreatedBy must be a string',
    Properties+::: {
      CreatedBy: CreatedBy,
    },
  },
  withIsTerminal(IsTerminal): {
    assert std.isBoolean(IsTerminal) : 'IsTerminal must be a boolean',
    Properties+::: {
      IsTerminal: IsTerminal,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
