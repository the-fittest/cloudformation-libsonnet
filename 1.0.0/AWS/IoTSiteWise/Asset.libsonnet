{
  new(
    AssetName,
    AssetModelId,
  ): {
    local base = self,
    Properties: {
      AssetName:
        if !std.isString(AssetName) then (error 'AssetName must be a string')
        else if std.isEmpty(AssetName) then (error 'AssetName must be not empty')
        else AssetName,
      AssetModelId:
        if !std.isString(AssetModelId) then (error 'AssetModelId must be a string')
        else if std.isEmpty(AssetModelId) then (error 'AssetModelId must be not empty')
        else AssetModelId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTSiteWise::Asset',
  },
  setAssetId(AssetId): {
    Properties+::: {
      AssetId:
        if !std.isString(AssetId) then (error 'AssetId must be a string')
        else if std.isEmpty(AssetId) then (error 'AssetId must be not empty')
        else if std.length(AssetId) < 36 then error ('AssetId should have at least 36 characters')
        else if std.length(AssetId) > 36 then error ('AssetId should have not more than 36 characters')
        else AssetId,
    },
  },
  setAssetExternalId(AssetExternalId): {
    Properties+::: {
      AssetExternalId:
        if !std.isString(AssetExternalId) then (error 'AssetExternalId must be a string')
        else if std.isEmpty(AssetExternalId) then (error 'AssetExternalId must be not empty')
        else if std.length(AssetExternalId) < 2 then error ('AssetExternalId should have at least 2 characters')
        else if std.length(AssetExternalId) > 128 then error ('AssetExternalId should have not more than 128 characters')
        else AssetExternalId,
    },
  },
  setAssetArn(AssetArn): {
    Properties+::: {
      AssetArn:
        if !std.isString(AssetArn) then (error 'AssetArn must be a string')
        else if std.isEmpty(AssetArn) then (error 'AssetArn must be not empty')
        else AssetArn,
    },
  },
  setAssetDescription(AssetDescription): {
    Properties+::: {
      AssetDescription:
        if !std.isString(AssetDescription) then (error 'AssetDescription must be a string')
        else if std.isEmpty(AssetDescription) then (error 'AssetDescription must be not empty')
        else AssetDescription,
    },
  },
  setAssetProperties(AssetProperties): {
    Properties+::: {
      AssetProperties:
        if !std.isArray(AssetProperties) then (error 'AssetProperties must be an array')
        else AssetProperties,
    },
  },
  pushAssetProperties(AssetProperties): {
    Properties+::: {
      AssetProperties+: AssetProperties,
    },
  },
  setAssetHierarchies(AssetHierarchies): {
    Properties+::: {
      AssetHierarchies:
        if !std.isArray(AssetHierarchies) then (error 'AssetHierarchies must be an array')
        else AssetHierarchies,
    },
  },
  pushAssetHierarchies(AssetHierarchies): {
    Properties+::: {
      AssetHierarchies+: AssetHierarchies,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
