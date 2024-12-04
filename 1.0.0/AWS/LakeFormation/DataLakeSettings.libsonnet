{
  // AWS LakeFormation DataLakeSettings
  DataLakeSettings: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::LakeFormation::DataLakeSettings',
    },
    withAllowExternalDataFiltering(AllowExternalDataFiltering): {
      assert std.isBoolean(AllowExternalDataFiltering) : 'AllowExternalDataFiltering must be a boolean',
      Properties+::: {
        AllowExternalDataFiltering: AllowExternalDataFiltering,
      },
    },
    withExternalDataFilteringAllowList(ExternalDataFilteringAllowList): {
      assert std.isObject(ExternalDataFilteringAllowList) : 'ExternalDataFilteringAllowList must be a object',
      Properties+::: {
        ExternalDataFilteringAllowList: ExternalDataFilteringAllowList,
      },
    },
    withCreateTableDefaultPermissions(CreateTableDefaultPermissions): {
      assert std.isObject(CreateTableDefaultPermissions) : 'CreateTableDefaultPermissions must be a object',
      Properties+::: {
        CreateTableDefaultPermissions: CreateTableDefaultPermissions,
      },
    },
    withMutationType(MutationType): {
      assert std.isString(MutationType) : 'MutationType must be a string',
      Properties+::: {
        MutationType: MutationType,
      },
    },
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: {
        Parameters: Parameters,
      },
    },
    withAllowFullTableExternalDataAccess(AllowFullTableExternalDataAccess): {
      assert std.isBoolean(AllowFullTableExternalDataAccess) : 'AllowFullTableExternalDataAccess must be a boolean',
      Properties+::: {
        AllowFullTableExternalDataAccess: AllowFullTableExternalDataAccess,
      },
    },
    withAdmins(Admins): {
      assert std.isObject(Admins) : 'Admins must be a object',
      Properties+::: {
        Admins: Admins,
      },
    },
    withCreateDatabaseDefaultPermissions(CreateDatabaseDefaultPermissions): {
      assert std.isObject(CreateDatabaseDefaultPermissions) : 'CreateDatabaseDefaultPermissions must be a object',
      Properties+::: {
        CreateDatabaseDefaultPermissions: CreateDatabaseDefaultPermissions,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withAuthorizedSessionTagValueList(AuthorizedSessionTagValueList): {
      Properties+::: {
        AuthorizedSessionTagValueList: (if std.isArray(AuthorizedSessionTagValueList) then AuthorizedSessionTagValueList else [AuthorizedSessionTagValueList]),
      },
    },
    withAuthorizedSessionTagValueListMixin(AuthorizedSessionTagValueList): {
      Properties+::: {
        AuthorizedSessionTagValueList+: (if std.isArray(AuthorizedSessionTagValueList) then AuthorizedSessionTagValueList else [AuthorizedSessionTagValueList]),
      },
    },
    withTrustedResourceOwners(TrustedResourceOwners): {
      Properties+::: {
        TrustedResourceOwners: (if std.isArray(TrustedResourceOwners) then TrustedResourceOwners else [TrustedResourceOwners]),
      },
    },
    withTrustedResourceOwnersMixin(TrustedResourceOwners): {
      Properties+::: {
        TrustedResourceOwners+: (if std.isArray(TrustedResourceOwners) then TrustedResourceOwners else [TrustedResourceOwners]),
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
