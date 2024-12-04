{
  // AWS Config OrganizationConfigRule
  OrganizationConfigRule: {
    new(
      OrganizationConfigRuleName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(OrganizationConfigRuleName) : 'OrganizationConfigRuleName must be a string',
        OrganizationConfigRuleName: OrganizationConfigRuleName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Config::OrganizationConfigRule',
    },
    withOrganizationCustomRuleMetadata(OrganizationCustomRuleMetadata): {
      assert std.isObject(OrganizationCustomRuleMetadata) : 'OrganizationCustomRuleMetadata must be a object',
      Properties+::: {
        OrganizationCustomRuleMetadata: OrganizationCustomRuleMetadata,
      },
    },
    withOrganizationManagedRuleMetadata(OrganizationManagedRuleMetadata): {
      assert std.isObject(OrganizationManagedRuleMetadata) : 'OrganizationManagedRuleMetadata must be a object',
      Properties+::: {
        OrganizationManagedRuleMetadata: OrganizationManagedRuleMetadata,
      },
    },
    withExcludedAccounts(ExcludedAccounts): {
      Properties+::: {
        ExcludedAccounts: (if std.isArray(ExcludedAccounts) then ExcludedAccounts else [ExcludedAccounts]),
      },
    },
    withExcludedAccountsMixin(ExcludedAccounts): {
      Properties+::: {
        ExcludedAccounts+: (if std.isArray(ExcludedAccounts) then ExcludedAccounts else [ExcludedAccounts]),
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withOrganizationCustomPolicyRuleMetadata(OrganizationCustomPolicyRuleMetadata): {
      assert std.isObject(OrganizationCustomPolicyRuleMetadata) : 'OrganizationCustomPolicyRuleMetadata must be a object',
      Properties+::: {
        OrganizationCustomPolicyRuleMetadata: OrganizationCustomPolicyRuleMetadata,
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
  },
}
