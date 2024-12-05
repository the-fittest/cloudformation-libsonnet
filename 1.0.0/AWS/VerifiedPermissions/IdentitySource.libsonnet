{
  new(
    Configuration,
    PolicyStoreId,
  ): {
    local base = self,
    Properties: {
      Configuration: Configuration,
      PolicyStoreId:
        if !std.isString(PolicyStoreId) then (error 'PolicyStoreId must be a string')
        else if std.isEmpty(PolicyStoreId) then (error 'PolicyStoreId must be not empty')
        else if std.length(PolicyStoreId) < 1 then error ('PolicyStoreId should have at least 1 characters')
        else if std.length(PolicyStoreId) > 200 then error ('PolicyStoreId should have not more than 200 characters')
        else PolicyStoreId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::VerifiedPermissions::IdentitySource',
  },
  setDetails(Details): {
    Properties+::: {
      Details:
        if !std.isObject(Details) then (error 'Details must be an object')
        else Details,
    },
  },
  setIdentitySourceId(IdentitySourceId): {
    Properties+::: {
      IdentitySourceId:
        if !std.isString(IdentitySourceId) then (error 'IdentitySourceId must be a string')
        else if std.isEmpty(IdentitySourceId) then (error 'IdentitySourceId must be not empty')
        else if std.length(IdentitySourceId) < 1 then error ('IdentitySourceId should have at least 1 characters')
        else if std.length(IdentitySourceId) > 200 then error ('IdentitySourceId should have not more than 200 characters')
        else IdentitySourceId,
    },
  },
  setPrincipalEntityType(PrincipalEntityType): {
    Properties+::: {
      PrincipalEntityType:
        if !std.isString(PrincipalEntityType) then (error 'PrincipalEntityType must be a string')
        else if std.isEmpty(PrincipalEntityType) then (error 'PrincipalEntityType must be not empty')
        else if std.length(PrincipalEntityType) < 1 then error ('PrincipalEntityType should have at least 1 characters')
        else if std.length(PrincipalEntityType) > 200 then error ('PrincipalEntityType should have not more than 200 characters')
        else PrincipalEntityType,
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
