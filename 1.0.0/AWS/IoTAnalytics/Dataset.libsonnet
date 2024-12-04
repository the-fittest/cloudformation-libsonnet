{
  new(
    Actions,
  ): {
    local base = self,
    Properties: {
      Actions: (if std.isArray(Actions) then Actions else [Actions]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTAnalytics::Dataset',
  },
  withLateDataRules(LateDataRules): {
    Properties+::: {
      LateDataRules: (if std.isArray(LateDataRules) then LateDataRules else [LateDataRules]),
    },
  },
  withLateDataRulesMixin(LateDataRules): {
    Properties+::: {
      LateDataRules+: (if std.isArray(LateDataRules) then LateDataRules else [LateDataRules]),
    },
  },
  withDatasetName(DatasetName): {
    assert std.isString(DatasetName) : 'DatasetName must be a string',
    Properties+::: {
      DatasetName: DatasetName,
    },
  },
  withContentDeliveryRules(ContentDeliveryRules): {
    Properties+::: {
      ContentDeliveryRules: (if std.isArray(ContentDeliveryRules) then ContentDeliveryRules else [ContentDeliveryRules]),
    },
  },
  withContentDeliveryRulesMixin(ContentDeliveryRules): {
    Properties+::: {
      ContentDeliveryRules+: (if std.isArray(ContentDeliveryRules) then ContentDeliveryRules else [ContentDeliveryRules]),
    },
  },
  withTriggers(Triggers): {
    Properties+::: {
      Triggers: (if std.isArray(Triggers) then Triggers else [Triggers]),
    },
  },
  withTriggersMixin(Triggers): {
    Properties+::: {
      Triggers+: (if std.isArray(Triggers) then Triggers else [Triggers]),
    },
  },
  withVersioningConfiguration(VersioningConfiguration): {
    assert std.isObject(VersioningConfiguration) : 'VersioningConfiguration must be a object',
    Properties+::: {
      VersioningConfiguration: VersioningConfiguration,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withRetentionPeriod(RetentionPeriod): {
    assert std.isObject(RetentionPeriod) : 'RetentionPeriod must be a object',
    Properties+::: {
      RetentionPeriod: RetentionPeriod,
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
