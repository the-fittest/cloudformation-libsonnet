{
  new(
    Principal,
    Resource,
    Permissions,
    PermissionsWithGrantOption,
  ): {
    local base = self,
    Properties: {
      Principal:
        if !std.isObject(Principal) then (error 'Principal must be an object')
        else Principal,
      Resource:
        if !std.isObject(Resource) then (error 'Resource must be an object')
        else Resource,
      Permissions:
        if !std.isArray(Permissions) then (error 'Permissions must be an array')
        else Permissions,
      PermissionsWithGrantOption:
        if !std.isArray(PermissionsWithGrantOption) then (error 'PermissionsWithGrantOption must be an array')
        else PermissionsWithGrantOption,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LakeFormation::PrincipalPermissions',
  },
  setCatalog(Catalog): {
    Properties+::: {
      Catalog:
        if !std.isString(Catalog) then (error 'Catalog must be a string')
        else if std.isEmpty(Catalog) then (error 'Catalog must be not empty')
        else if std.length(Catalog) < 12 then error ('Catalog should have at least 12 characters')
        else if std.length(Catalog) > 12 then error ('Catalog should have not more than 12 characters')
        else Catalog,
    },
  },
  setPrincipalIdentifier(PrincipalIdentifier): {
    Properties+::: {
      PrincipalIdentifier:
        if !std.isString(PrincipalIdentifier) then (error 'PrincipalIdentifier must be a string')
        else if std.isEmpty(PrincipalIdentifier) then (error 'PrincipalIdentifier must be not empty')
        else PrincipalIdentifier,
    },
  },
  setResourceIdentifier(ResourceIdentifier): {
    Properties+::: {
      ResourceIdentifier:
        if !std.isString(ResourceIdentifier) then (error 'ResourceIdentifier must be a string')
        else if std.isEmpty(ResourceIdentifier) then (error 'ResourceIdentifier must be not empty')
        else ResourceIdentifier,
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
