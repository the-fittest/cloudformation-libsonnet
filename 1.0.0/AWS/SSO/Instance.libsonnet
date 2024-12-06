{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSO::Instance',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 32 then error ('Name should have not more than 32 characters')
        else Name,
    },
  },
  setInstanceArn(InstanceArn): {
    Properties+::: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else if std.length(InstanceArn) < 10 then error ('InstanceArn should have at least 10 characters')
        else if std.length(InstanceArn) > 1224 then error ('InstanceArn should have not more than 1224 characters')
        else InstanceArn,
    },
  },
  setOwnerAccountId(OwnerAccountId): {
    Properties+::: {
      OwnerAccountId:
        if !std.isString(OwnerAccountId) then (error 'OwnerAccountId must be a string')
        else if std.isEmpty(OwnerAccountId) then (error 'OwnerAccountId must be not empty')
        else if std.length(OwnerAccountId) < 12 then error ('OwnerAccountId should have at least 12 characters')
        else if std.length(OwnerAccountId) > 12 then error ('OwnerAccountId should have not more than 12 characters')
        else OwnerAccountId,
    },
  },
  setIdentityStoreId(IdentityStoreId): {
    Properties+::: {
      IdentityStoreId:
        if !std.isString(IdentityStoreId) then (error 'IdentityStoreId must be a string')
        else if std.isEmpty(IdentityStoreId) then (error 'IdentityStoreId must be not empty')
        else if std.length(IdentityStoreId) < 1 then error ('IdentityStoreId should have at least 1 characters')
        else if std.length(IdentityStoreId) > 64 then error ('IdentityStoreId should have not more than 64 characters')
        else IdentityStoreId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATE_IN_PROGRESS' && Status != 'DELETE_IN_PROGRESS' && Status != 'ACTIVE' then (error "Status should be 'CREATE_IN_PROGRESS' or 'DELETE_IN_PROGRESS' or 'ACTIVE'")
        else Status,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 75 then error ('Tags cannot have more than 75 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
