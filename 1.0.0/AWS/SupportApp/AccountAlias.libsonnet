{
  new(
    AccountAlias,
  ): {
    local base = self,
    Properties: {
      AccountAlias:
        if !std.isString(AccountAlias) then (error 'AccountAlias must be a string')
        else if std.isEmpty(AccountAlias) then (error 'AccountAlias must be not empty')
        else if std.length(AccountAlias) < 1 then error ('AccountAlias should have at least 1 characters')
        else if std.length(AccountAlias) > 30 then error ('AccountAlias should have not more than 30 characters')
        else AccountAlias,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SupportApp::AccountAlias',
  },
  setAccountAliasResourceId(AccountAliasResourceId): {
    Properties+::: {
      AccountAliasResourceId:
        if !std.isString(AccountAliasResourceId) then (error 'AccountAliasResourceId must be a string')
        else if std.isEmpty(AccountAliasResourceId) then (error 'AccountAliasResourceId must be not empty')
        else if std.length(AccountAliasResourceId) < 29 then error ('AccountAliasResourceId should have at least 29 characters')
        else if std.length(AccountAliasResourceId) > 29 then error ('AccountAliasResourceId should have not more than 29 characters')
        else AccountAliasResourceId,
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
