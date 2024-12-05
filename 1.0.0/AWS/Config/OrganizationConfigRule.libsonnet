{
  new(
    OrganizationConfigRuleName,
  ): {
    local base = self,
    Properties: {
      OrganizationConfigRuleName:
        if !std.isString(OrganizationConfigRuleName) then (error 'OrganizationConfigRuleName must be a string')
        else if std.isEmpty(OrganizationConfigRuleName) then (error 'OrganizationConfigRuleName must be not empty')
        else OrganizationConfigRuleName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::OrganizationConfigRule',
  },
  setOrganizationCustomRuleMetadata(OrganizationCustomRuleMetadata): {
    Properties+::: {
      OrganizationCustomRuleMetadata:
        if !std.isObject(OrganizationCustomRuleMetadata) then (error 'OrganizationCustomRuleMetadata must be an object')
        else if !std.objectHas(OrganizationCustomRuleMetadata, 'LambdaFunctionArn') then (error ' have attribute LambdaFunctionArn')
        else if !std.objectHas(OrganizationCustomRuleMetadata, 'OrganizationConfigRuleTriggerTypes') then (error ' have attribute OrganizationConfigRuleTriggerTypes')
        else OrganizationCustomRuleMetadata,
    },
  },
  setOrganizationManagedRuleMetadata(OrganizationManagedRuleMetadata): {
    Properties+::: {
      OrganizationManagedRuleMetadata:
        if !std.isObject(OrganizationManagedRuleMetadata) then (error 'OrganizationManagedRuleMetadata must be an object')
        else if !std.objectHas(OrganizationManagedRuleMetadata, 'RuleIdentifier') then (error ' have attribute RuleIdentifier')
        else OrganizationManagedRuleMetadata,
    },
  },
  setExcludedAccounts(ExcludedAccounts): {
    Properties+::: {
      ExcludedAccounts:
        if !std.isArray(ExcludedAccounts) then (error 'ExcludedAccounts must be an array')
        else ExcludedAccounts,
    },
  },
  setExcludedAccountsMixin(ExcludedAccounts): {
    Properties+::: {
      ExcludedAccounts+: ExcludedAccounts,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setOrganizationCustomPolicyRuleMetadata(OrganizationCustomPolicyRuleMetadata): {
    Properties+::: {
      OrganizationCustomPolicyRuleMetadata:
        if !std.isObject(OrganizationCustomPolicyRuleMetadata) then (error 'OrganizationCustomPolicyRuleMetadata must be an object')
        else if !std.objectHas(OrganizationCustomPolicyRuleMetadata, 'Runtime') then (error ' have attribute Runtime')
        else if !std.objectHas(OrganizationCustomPolicyRuleMetadata, 'PolicyText') then (error ' have attribute PolicyText')
        else OrganizationCustomPolicyRuleMetadata,
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
