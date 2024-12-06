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
  pushGroups(Groups): {
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
  pushRoles(Roles): {
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
  pushUsers(Users): {
    Properties+::: {
      Users+: Users,
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
