{
  new(
    AdminAccountId,
  ): {
    local base = self,
    Properties: {
      AdminAccountId:
        if !std.isString(AdminAccountId) then (error 'AdminAccountId must be a string')
        else if std.isEmpty(AdminAccountId) then (error 'AdminAccountId must be not empty')
        else AdminAccountId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::DelegatedAdmin',
  },
  setDelegatedAdminIdentifier(DelegatedAdminIdentifier): {
    Properties+::: {
      DelegatedAdminIdentifier:
        if !std.isString(DelegatedAdminIdentifier) then (error 'DelegatedAdminIdentifier must be a string')
        else if std.isEmpty(DelegatedAdminIdentifier) then (error 'DelegatedAdminIdentifier must be not empty')
        else DelegatedAdminIdentifier,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ENABLED' && Status != 'DISABLE_IN_PROGRESS' then (error "Status should be 'ENABLED' or 'DISABLE_IN_PROGRESS'")
        else Status,
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
