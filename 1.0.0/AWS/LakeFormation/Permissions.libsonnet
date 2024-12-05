{
  new(
    DataLakePrincipal,
    Resource,
  ): {
    local base = self,
    Properties: {
      DataLakePrincipal:
        if !std.isObject(DataLakePrincipal) then (error 'DataLakePrincipal must be an object')
        else DataLakePrincipal,
      Resource:
        if !std.isObject(Resource) then (error 'Resource must be an object')
        else Resource,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LakeFormation::Permissions',
  },
  setPermissions(Permissions): {
    Properties+::: {
      Permissions:
        if !std.isArray(Permissions) then (error 'Permissions must be an array')
        else Permissions,
    },
  },
  setPermissionsMixin(Permissions): {
    Properties+::: {
      Permissions+: Permissions,
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
  setPermissionsWithGrantOption(PermissionsWithGrantOption): {
    Properties+::: {
      PermissionsWithGrantOption:
        if !std.isArray(PermissionsWithGrantOption) then (error 'PermissionsWithGrantOption must be an array')
        else PermissionsWithGrantOption,
    },
  },
  setPermissionsWithGrantOptionMixin(PermissionsWithGrantOption): {
    Properties+::: {
      PermissionsWithGrantOption+: PermissionsWithGrantOption,
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
