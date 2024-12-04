{
  new(
    Principal,
    Resource,
    Permissions,
    PermissionsWithGrantOption,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(Principal) : 'Principal must be an object',
      Principal: Principal,
      assert std.isObject(Resource) : 'Resource must be an object',
      Resource: Resource,
      Permissions: (if std.isArray(Permissions) then Permissions else [Permissions]),
      PermissionsWithGrantOption: (if std.isArray(PermissionsWithGrantOption) then PermissionsWithGrantOption else [PermissionsWithGrantOption]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LakeFormation::PrincipalPermissions',
  },
  withCatalog(Catalog): {
    assert std.isString(Catalog) : 'Catalog must be a string',
    Properties+::: {
      Catalog: Catalog,
    },
  },
  withPrincipalIdentifier(PrincipalIdentifier): {
    assert std.isString(PrincipalIdentifier) : 'PrincipalIdentifier must be a string',
    Properties+::: {
      PrincipalIdentifier: PrincipalIdentifier,
    },
  },
  withResourceIdentifier(ResourceIdentifier): {
    assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
    Properties+::: {
      ResourceIdentifier: ResourceIdentifier,
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
}
