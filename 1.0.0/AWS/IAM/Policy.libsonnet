{
  new(
    PolicyDocument,
    PolicyName,
  ): {
    local base = self,
    Properties: {
      PolicyDocument: PolicyDocument,
      PolicyName:
        if !std.isString(PolicyName) then (error 'PolicyName must be a string')
        else if std.isEmpty(PolicyName) then (error 'PolicyName must be not empty')
        else if std.length(PolicyName) < 1 then error ('PolicyName should have at least 1 characters')
        else if std.length(PolicyName) > 128 then error ('PolicyName should have not more than 128 characters')
        else PolicyName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IAM::Policy',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setGroups(Groups): {
    Properties+::: {
      Groups:
        if !std.isArray(Groups) then (error 'Groups must be an array')
        else Groups,
    },
  },
  setGroupsMixin(Groups): {
    Properties+::: {
      Groups+: Groups,
    },
  },
  setRoles(Roles): {
    Properties+::: {
      Roles:
        if !std.isArray(Roles) then (error 'Roles must be an array')
        else Roles,
    },
  },
  setRolesMixin(Roles): {
    Properties+::: {
      Roles+: Roles,
    },
  },
  setUsers(Users): {
    Properties+::: {
      Users:
        if !std.isArray(Users) then (error 'Users must be an array')
        else Users,
    },
  },
  setUsersMixin(Users): {
    Properties+::: {
      Users+: Users,
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
