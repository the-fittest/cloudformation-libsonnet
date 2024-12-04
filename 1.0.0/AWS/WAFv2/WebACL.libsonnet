{
  new(
    DefaultAction,
    Scope,
    VisibilityConfig,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(DefaultAction) : 'DefaultAction must be an object',
      DefaultAction: DefaultAction,
      assert std.isString(Scope) : 'Scope must be a string',
      assert Scope == 'CLOUDFRONT' || Scope == 'REGIONAL' : "Scope should be 'CLOUDFRONT' or 'REGIONAL'",
      Scope: Scope,
      assert std.isObject(VisibilityConfig) : 'VisibilityConfig must be an object',
      VisibilityConfig: VisibilityConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WAFv2::WebACL',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCapacity(Capacity): {
    assert std.isNumber(Capacity) : 'Capacity must be a number',
    Properties+::: {
      Capacity: Capacity,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withRules(Rules): {
    Properties+::: {
      Rules: (if std.isArray(Rules) then Rules else [Rules]),
    },
  },
  withRulesMixin(Rules): {
    Properties+::: {
      Rules+: (if std.isArray(Rules) then Rules else [Rules]),
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withLabelNamespace(LabelNamespace): {
    assert std.isString(LabelNamespace) : 'LabelNamespace must be a string',
    Properties+::: {
      LabelNamespace: LabelNamespace,
    },
  },
  withCustomResponseBodies(CustomResponseBodies): {
    assert std.isObject(CustomResponseBodies) : 'CustomResponseBodies must be a object',
    Properties+::: {
      CustomResponseBodies: CustomResponseBodies,
    },
  },
  withCaptchaConfig(CaptchaConfig): {
    assert std.isObject(CaptchaConfig) : 'CaptchaConfig must be a object',
    Properties+::: {
      CaptchaConfig: CaptchaConfig,
    },
  },
  withChallengeConfig(ChallengeConfig): {
    assert std.isObject(ChallengeConfig) : 'ChallengeConfig must be a object',
    Properties+::: {
      ChallengeConfig: ChallengeConfig,
    },
  },
  withTokenDomains(TokenDomains): {
    Properties+::: {
      TokenDomains: (if std.isArray(TokenDomains) then TokenDomains else [TokenDomains]),
    },
  },
  withTokenDomainsMixin(TokenDomains): {
    Properties+::: {
      TokenDomains+: (if std.isArray(TokenDomains) then TokenDomains else [TokenDomains]),
    },
  },
  withAssociationConfig(AssociationConfig): {
    assert std.isObject(AssociationConfig) : 'AssociationConfig must be a object',
    Properties+::: {
      AssociationConfig: AssociationConfig,
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
