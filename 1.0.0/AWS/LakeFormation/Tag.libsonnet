{
  new(
    TagKey,
    TagValues,
  ): {
    local base = self,
    Properties: {
      TagKey:
        if !std.isString(TagKey) then (error 'TagKey must be a string')
        else if std.isEmpty(TagKey) then (error 'TagKey must be not empty')
        else if std.length(TagKey) < 1 then error ('TagKey should have at least 1 characters')
        else if std.length(TagKey) > 128 then error ('TagKey should have not more than 128 characters')
        else TagKey,
      TagValues:
        if !std.isArray(TagValues) then (error 'TagValues must be an array')
        else if std.length(TagValues) < 1 then error ('TagValues cannot have less than 1 items')
        else if std.length(TagValues) > 1000 then error ('TagValues cannot have more than 1000 items')
        else TagValues,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LakeFormation::Tag',
  },
  setCatalogId(CatalogId): {
    Properties+::: {
      CatalogId:
        if !std.isString(CatalogId) then (error 'CatalogId must be a string')
        else if std.isEmpty(CatalogId) then (error 'CatalogId must be not empty')
        else if std.length(CatalogId) < 12 then error ('CatalogId should have at least 12 characters')
        else if std.length(CatalogId) > 12 then error ('CatalogId should have not more than 12 characters')
        else CatalogId,
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
