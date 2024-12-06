{
  new(
    AssetModelName,
  ): {
    local base = self,
    Properties: {
      AssetModelName:
        if !std.isString(AssetModelName) then (error 'AssetModelName must be a string')
        else if std.isEmpty(AssetModelName) then (error 'AssetModelName must be not empty')
        else AssetModelName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTSiteWise::AssetModel',
  },
  setAssetModelId(AssetModelId): {
    Properties+::: {
      AssetModelId:
        if !std.isString(AssetModelId) then (error 'AssetModelId must be a string')
        else if std.isEmpty(AssetModelId) then (error 'AssetModelId must be not empty')
        else if std.length(AssetModelId) < 36 then error ('AssetModelId should have at least 36 characters')
        else if std.length(AssetModelId) > 36 then error ('AssetModelId should have not more than 36 characters')
        else AssetModelId,
    },
  },
  setAssetModelType(AssetModelType): {
    Properties+::: {
      AssetModelType:
        if !std.isString(AssetModelType) then (error 'AssetModelType must be a string')
        else if std.isEmpty(AssetModelType) then (error 'AssetModelType must be not empty')
        else AssetModelType,
    },
  },
  setAssetModelExternalId(AssetModelExternalId): {
    Properties+::: {
      AssetModelExternalId:
        if !std.isString(AssetModelExternalId) then (error 'AssetModelExternalId must be a string')
        else if std.isEmpty(AssetModelExternalId) then (error 'AssetModelExternalId must be not empty')
        else if std.length(AssetModelExternalId) < 2 then error ('AssetModelExternalId should have at least 2 characters')
        else if std.length(AssetModelExternalId) > 128 then error ('AssetModelExternalId should have not more than 128 characters')
        else AssetModelExternalId,
    },
  },
  setAssetModelArn(AssetModelArn): {
    Properties+::: {
      AssetModelArn:
        if !std.isString(AssetModelArn) then (error 'AssetModelArn must be a string')
        else if std.isEmpty(AssetModelArn) then (error 'AssetModelArn must be not empty')
        else AssetModelArn,
    },
  },
  setAssetModelDescription(AssetModelDescription): {
    Properties+::: {
      AssetModelDescription:
        if !std.isString(AssetModelDescription) then (error 'AssetModelDescription must be a string')
        else if std.isEmpty(AssetModelDescription) then (error 'AssetModelDescription must be not empty')
        else AssetModelDescription,
    },
  },
  setAssetModelProperties(AssetModelProperties): {
    Properties+::: {
      AssetModelProperties:
        if !std.isArray(AssetModelProperties) then (error 'AssetModelProperties must be an array')
        else AssetModelProperties,
    },
  },
  pushAssetModelProperties(AssetModelProperties): {
    Properties+::: {
      AssetModelProperties+: AssetModelProperties,
    },
  },
  setAssetModelCompositeModels(AssetModelCompositeModels): {
    Properties+::: {
      AssetModelCompositeModels:
        if !std.isArray(AssetModelCompositeModels) then (error 'AssetModelCompositeModels must be an array')
        else AssetModelCompositeModels,
    },
  },
  pushAssetModelCompositeModels(AssetModelCompositeModels): {
    Properties+::: {
      AssetModelCompositeModels+: AssetModelCompositeModels,
    },
  },
  setAssetModelHierarchies(AssetModelHierarchies): {
    Properties+::: {
      AssetModelHierarchies:
        if !std.isArray(AssetModelHierarchies) then (error 'AssetModelHierarchies must be an array')
        else AssetModelHierarchies,
    },
  },
  pushAssetModelHierarchies(AssetModelHierarchies): {
    Properties+::: {
      AssetModelHierarchies+: AssetModelHierarchies,
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
