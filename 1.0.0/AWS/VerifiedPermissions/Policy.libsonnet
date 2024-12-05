{
  new(
    Definition,
    PolicyStoreId,
  ): {
    local base = self,
    Properties: {
      Definition: Definition,
      PolicyStoreId:
        if !std.isString(PolicyStoreId) then (error 'PolicyStoreId must be a string')
        else if std.isEmpty(PolicyStoreId) then (error 'PolicyStoreId must be not empty')
        else if std.length(PolicyStoreId) < 1 then error ('PolicyStoreId should have at least 1 characters')
        else if std.length(PolicyStoreId) > 200 then error ('PolicyStoreId should have not more than 200 characters')
        else PolicyStoreId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::VerifiedPermissions::Policy',
  },
  setPolicyId(PolicyId): {
    Properties+::: {
      PolicyId:
        if !std.isString(PolicyId) then (error 'PolicyId must be a string')
        else if std.isEmpty(PolicyId) then (error 'PolicyId must be not empty')
        else if std.length(PolicyId) < 1 then error ('PolicyId should have at least 1 characters')
        else if std.length(PolicyId) > 200 then error ('PolicyId should have not more than 200 characters')
        else PolicyId,
    },
  },
  setPolicyType(PolicyType): {
    Properties+::: {
      PolicyType:
        if !std.isString(PolicyType) then (error 'PolicyType must be a string')
        else if std.isEmpty(PolicyType) then (error 'PolicyType must be not empty')
        else if PolicyType != 'STATIC' && PolicyType != 'TEMPLATE_LINKED' then (error "PolicyType should be 'STATIC' or 'TEMPLATE_LINKED'")
        else PolicyType,
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
