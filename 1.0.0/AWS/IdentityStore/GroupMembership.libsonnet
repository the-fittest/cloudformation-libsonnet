{
  new(
    IdentityStoreId,
    GroupId,
    MemberId,
  ): {
    local base = self,
    Properties: {
      IdentityStoreId:
        if !std.isString(IdentityStoreId) then (error 'IdentityStoreId must be a string')
        else if std.isEmpty(IdentityStoreId) then (error 'IdentityStoreId must be not empty')
        else if std.length(IdentityStoreId) < 1 then error ('IdentityStoreId should have at least 1 characters')
        else if std.length(IdentityStoreId) > 36 then error ('IdentityStoreId should have not more than 36 characters')
        else IdentityStoreId,
      GroupId:
        if !std.isString(GroupId) then (error 'GroupId must be a string')
        else if std.isEmpty(GroupId) then (error 'GroupId must be not empty')
        else if std.length(GroupId) < 1 then error ('GroupId should have at least 1 characters')
        else if std.length(GroupId) > 47 then error ('GroupId should have not more than 47 characters')
        else GroupId,
      MemberId:
        if !std.isObject(MemberId) then (error 'MemberId must be an object')
        else if !std.objectHas(MemberId, 'UserId') then (error ' have attribute UserId')
        else MemberId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IdentityStore::GroupMembership',
  },
  setMembershipId(MembershipId): {
    Properties+::: {
      MembershipId:
        if !std.isString(MembershipId) then (error 'MembershipId must be a string')
        else if std.isEmpty(MembershipId) then (error 'MembershipId must be not empty')
        else if std.length(MembershipId) < 1 then error ('MembershipId should have at least 1 characters')
        else if std.length(MembershipId) > 47 then error ('MembershipId should have not more than 47 characters')
        else MembershipId,
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
