{
  new(
    PolicyName,
    PolicyType,
    PolicyDocument,
  ): {
    local base = self,
    Properties: {
      PolicyName:
        if !std.isString(PolicyName) then (error 'PolicyName must be a string')
        else if std.isEmpty(PolicyName) then (error 'PolicyName must be not empty')
        else if std.length(PolicyName) < 1 then error ('PolicyName should have at least 1 characters')
        else if std.length(PolicyName) > 256 then error ('PolicyName should have not more than 256 characters')
        else PolicyName,
      PolicyType:
        if !std.isString(PolicyType) then (error 'PolicyType must be a string')
        else if std.isEmpty(PolicyType) then (error 'PolicyType must be not empty')
        else if PolicyType != 'DATA_PROTECTION_POLICY' && PolicyType != 'SUBSCRIPTION_FILTER_POLICY' then (error "PolicyType should be 'DATA_PROTECTION_POLICY' or 'SUBSCRIPTION_FILTER_POLICY'")
        else PolicyType,
      PolicyDocument:
        if !std.isString(PolicyDocument) then (error 'PolicyDocument must be a string')
        else if std.isEmpty(PolicyDocument) then (error 'PolicyDocument must be not empty')
        else if std.length(PolicyDocument) < 1 then error ('PolicyDocument should have at least 1 characters')
        else if std.length(PolicyDocument) > 30720 then error ('PolicyDocument should have not more than 30720 characters')
        else PolicyDocument,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::AccountPolicy',
  },
  setAccountId(AccountId): {
    Properties+::: {
      AccountId:
        if !std.isString(AccountId) then (error 'AccountId must be a string')
        else if std.isEmpty(AccountId) then (error 'AccountId must be not empty')
        else AccountId,
    },
  },
  setScope(Scope): {
    Properties+::: {
      Scope:
        if !std.isString(Scope) then (error 'Scope must be a string')
        else if std.isEmpty(Scope) then (error 'Scope must be not empty')
        else if Scope != 'ALL' then (error "Scope should be 'ALL'")
        else Scope,
    },
  },
  setSelectionCriteria(SelectionCriteria): {
    Properties+::: {
      SelectionCriteria:
        if !std.isString(SelectionCriteria) then (error 'SelectionCriteria must be a string')
        else if std.isEmpty(SelectionCriteria) then (error 'SelectionCriteria must be not empty')
        else SelectionCriteria,
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
