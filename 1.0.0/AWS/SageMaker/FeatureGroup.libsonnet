{
  new(
    FeatureGroupName,
    RecordIdentifierFeatureName,
    EventTimeFeatureName,
    FeatureDefinitions,
  ): {
    local base = self,
    Properties: {
      assert std.isString(FeatureGroupName) : 'FeatureGroupName must be a string',
      FeatureGroupName: FeatureGroupName,
      assert std.isString(RecordIdentifierFeatureName) : 'RecordIdentifierFeatureName must be a string',
      RecordIdentifierFeatureName: RecordIdentifierFeatureName,
      assert std.isString(EventTimeFeatureName) : 'EventTimeFeatureName must be a string',
      EventTimeFeatureName: EventTimeFeatureName,
      FeatureDefinitions: (if std.isArray(FeatureDefinitions) then FeatureDefinitions else [FeatureDefinitions]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::FeatureGroup',
  },
  withOnlineStoreConfig(OnlineStoreConfig): {
    assert std.isObject(OnlineStoreConfig) : 'OnlineStoreConfig must be a object',
    Properties+::: {
      OnlineStoreConfig: OnlineStoreConfig,
    },
  },
  withOfflineStoreConfig(OfflineStoreConfig): {
    assert std.isObject(OfflineStoreConfig) : 'OfflineStoreConfig must be a object',
    Properties+::: {
      OfflineStoreConfig: OfflineStoreConfig,
    },
  },
  withThroughputConfig(ThroughputConfig): {
    assert std.isObject(ThroughputConfig) : 'ThroughputConfig must be a object',
    Properties+::: {
      ThroughputConfig: ThroughputConfig,
    },
  },
  withRoleArn(RoleArn): {
    assert std.isString(RoleArn) : 'RoleArn must be a string',
    Properties+::: {
      RoleArn: RoleArn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withFeatureGroupStatus(FeatureGroupStatus): {
    assert std.isString(FeatureGroupStatus) : 'FeatureGroupStatus must be a string',
    Properties+::: {
      FeatureGroupStatus: FeatureGroupStatus,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
