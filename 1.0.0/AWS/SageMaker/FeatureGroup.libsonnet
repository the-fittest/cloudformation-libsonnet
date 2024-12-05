{
  new(
    FeatureGroupName,
    RecordIdentifierFeatureName,
    EventTimeFeatureName,
    FeatureDefinitions,
  ): {
    local base = self,
    Properties: {
      FeatureGroupName:
        if !std.isString(FeatureGroupName) then (error 'FeatureGroupName must be a string')
        else if std.isEmpty(FeatureGroupName) then (error 'FeatureGroupName must be not empty')
        else if std.length(FeatureGroupName) < 1 then error ('FeatureGroupName should have at least 1 characters')
        else if std.length(FeatureGroupName) > 64 then error ('FeatureGroupName should have not more than 64 characters')
        else FeatureGroupName,
      RecordIdentifierFeatureName:
        if !std.isString(RecordIdentifierFeatureName) then (error 'RecordIdentifierFeatureName must be a string')
        else if std.isEmpty(RecordIdentifierFeatureName) then (error 'RecordIdentifierFeatureName must be not empty')
        else if std.length(RecordIdentifierFeatureName) < 1 then error ('RecordIdentifierFeatureName should have at least 1 characters')
        else if std.length(RecordIdentifierFeatureName) > 64 then error ('RecordIdentifierFeatureName should have not more than 64 characters')
        else RecordIdentifierFeatureName,
      EventTimeFeatureName:
        if !std.isString(EventTimeFeatureName) then (error 'EventTimeFeatureName must be a string')
        else if std.isEmpty(EventTimeFeatureName) then (error 'EventTimeFeatureName must be not empty')
        else if std.length(EventTimeFeatureName) < 1 then error ('EventTimeFeatureName should have at least 1 characters')
        else if std.length(EventTimeFeatureName) > 64 then error ('EventTimeFeatureName should have not more than 64 characters')
        else EventTimeFeatureName,
      FeatureDefinitions:
        if !std.isArray(FeatureDefinitions) then (error 'FeatureDefinitions must be an array')
        else if std.length(FeatureDefinitions) < 1 then error ('FeatureDefinitions cannot have less than 1 items')
        else if std.length(FeatureDefinitions) > 2500 then error ('FeatureDefinitions cannot have more than 2500 items')
        else FeatureDefinitions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::FeatureGroup',
  },
  setOnlineStoreConfig(OnlineStoreConfig): {
    Properties+::: {
      OnlineStoreConfig:
        if !std.isObject(OnlineStoreConfig) then (error 'OnlineStoreConfig must be an object')
        else OnlineStoreConfig,
    },
  },
  setOfflineStoreConfig(OfflineStoreConfig): {
    Properties+::: {
      OfflineStoreConfig:
        if !std.isObject(OfflineStoreConfig) then (error 'OfflineStoreConfig must be an object')
        else if !std.objectHas(OfflineStoreConfig, 'S3StorageConfig') then (error ' have attribute S3StorageConfig')
        else OfflineStoreConfig,
    },
  },
  setThroughputConfig(ThroughputConfig): {
    Properties+::: {
      ThroughputConfig:
        if !std.isObject(ThroughputConfig) then (error 'ThroughputConfig must be an object')
        else if !std.objectHas(ThroughputConfig, 'ThroughputMode') then (error ' have attribute ThroughputMode')
        else ThroughputConfig,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 20 then error ('RoleArn should have at least 20 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 128 then error ('Description should have not more than 128 characters')
        else Description,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setFeatureGroupStatus(FeatureGroupStatus): {
    Properties+::: {
      FeatureGroupStatus:
        if !std.isString(FeatureGroupStatus) then (error 'FeatureGroupStatus must be a string')
        else if std.isEmpty(FeatureGroupStatus) then (error 'FeatureGroupStatus must be not empty')
        else FeatureGroupStatus,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
