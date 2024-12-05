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
    Type: 'AWS::LakeFormation::DataLakeSettings',
  },
  setAllowExternalDataFiltering(AllowExternalDataFiltering): {
    Properties+::: {
      AllowExternalDataFiltering:
        if !std.isBoolean(AllowExternalDataFiltering) then (error 'AllowExternalDataFiltering must be a boolean') else AllowExternalDataFiltering,
    },
  },
  setExternalDataFilteringAllowList(ExternalDataFilteringAllowList): {
    Properties+::: {
      ExternalDataFilteringAllowList:
        if !std.isObject(ExternalDataFilteringAllowList) then (error 'ExternalDataFilteringAllowList must be an object')
        else ExternalDataFilteringAllowList,
    },
  },
  setCreateTableDefaultPermissions(CreateTableDefaultPermissions): {
    Properties+::: {
      CreateTableDefaultPermissions:
        if !std.isObject(CreateTableDefaultPermissions) then (error 'CreateTableDefaultPermissions must be an object')
        else CreateTableDefaultPermissions,
    },
  },
  setMutationType(MutationType): {
    Properties+::: {
      MutationType:
        if !std.isString(MutationType) then (error 'MutationType must be a string')
        else if std.isEmpty(MutationType) then (error 'MutationType must be not empty')
        else MutationType,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isObject(Parameters) then (error 'Parameters must be an object')
        else Parameters,
    },
  },
  setAllowFullTableExternalDataAccess(AllowFullTableExternalDataAccess): {
    Properties+::: {
      AllowFullTableExternalDataAccess:
        if !std.isBoolean(AllowFullTableExternalDataAccess) then (error 'AllowFullTableExternalDataAccess must be a boolean') else AllowFullTableExternalDataAccess,
    },
  },
  setAdmins(Admins): {
    Properties+::: {
      Admins:
        if !std.isObject(Admins) then (error 'Admins must be an object')
        else Admins,
    },
  },
  setCreateDatabaseDefaultPermissions(CreateDatabaseDefaultPermissions): {
    Properties+::: {
      CreateDatabaseDefaultPermissions:
        if !std.isObject(CreateDatabaseDefaultPermissions) then (error 'CreateDatabaseDefaultPermissions must be an object')
        else CreateDatabaseDefaultPermissions,
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
  setAuthorizedSessionTagValueList(AuthorizedSessionTagValueList): {
    Properties+::: {
      AuthorizedSessionTagValueList:
        if !std.isArray(AuthorizedSessionTagValueList) then (error 'AuthorizedSessionTagValueList must be an array')
        else AuthorizedSessionTagValueList,
    },
  },
  setAuthorizedSessionTagValueListMixin(AuthorizedSessionTagValueList): {
    Properties+::: {
      AuthorizedSessionTagValueList+: AuthorizedSessionTagValueList,
    },
  },
  setTrustedResourceOwners(TrustedResourceOwners): {
    Properties+::: {
      TrustedResourceOwners:
        if !std.isArray(TrustedResourceOwners) then (error 'TrustedResourceOwners must be an array')
        else TrustedResourceOwners,
    },
  },
  setTrustedResourceOwnersMixin(TrustedResourceOwners): {
    Properties+::: {
      TrustedResourceOwners+: TrustedResourceOwners,
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
