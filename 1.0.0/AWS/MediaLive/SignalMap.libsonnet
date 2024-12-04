{
  new(
    DiscoveryEntryPointArn,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DiscoveryEntryPointArn) : 'DiscoveryEntryPointArn must be a string',
      DiscoveryEntryPointArn: DiscoveryEntryPointArn,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::SignalMap',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCloudWatchAlarmTemplateGroupIdentifiers(CloudWatchAlarmTemplateGroupIdentifiers): {
    Properties+::: {
      CloudWatchAlarmTemplateGroupIdentifiers: (if std.isArray(CloudWatchAlarmTemplateGroupIdentifiers) then CloudWatchAlarmTemplateGroupIdentifiers else [CloudWatchAlarmTemplateGroupIdentifiers]),
    },
  },
  withCloudWatchAlarmTemplateGroupIdentifiersMixin(CloudWatchAlarmTemplateGroupIdentifiers): {
    Properties+::: {
      CloudWatchAlarmTemplateGroupIdentifiers+: (if std.isArray(CloudWatchAlarmTemplateGroupIdentifiers) then CloudWatchAlarmTemplateGroupIdentifiers else [CloudWatchAlarmTemplateGroupIdentifiers]),
    },
  },
  withCloudWatchAlarmTemplateGroupIds(CloudWatchAlarmTemplateGroupIds): {
    Properties+::: {
      CloudWatchAlarmTemplateGroupIds: (if std.isArray(CloudWatchAlarmTemplateGroupIds) then CloudWatchAlarmTemplateGroupIds else [CloudWatchAlarmTemplateGroupIds]),
    },
  },
  withCloudWatchAlarmTemplateGroupIdsMixin(CloudWatchAlarmTemplateGroupIds): {
    Properties+::: {
      CloudWatchAlarmTemplateGroupIds+: (if std.isArray(CloudWatchAlarmTemplateGroupIds) then CloudWatchAlarmTemplateGroupIds else [CloudWatchAlarmTemplateGroupIds]),
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withErrorMessage(ErrorMessage): {
    assert std.isString(ErrorMessage) : 'ErrorMessage must be a string',
    Properties+::: {
      ErrorMessage: ErrorMessage,
    },
  },
  withEventBridgeRuleTemplateGroupIdentifiers(EventBridgeRuleTemplateGroupIdentifiers): {
    Properties+::: {
      EventBridgeRuleTemplateGroupIdentifiers: (if std.isArray(EventBridgeRuleTemplateGroupIdentifiers) then EventBridgeRuleTemplateGroupIdentifiers else [EventBridgeRuleTemplateGroupIdentifiers]),
    },
  },
  withEventBridgeRuleTemplateGroupIdentifiersMixin(EventBridgeRuleTemplateGroupIdentifiers): {
    Properties+::: {
      EventBridgeRuleTemplateGroupIdentifiers+: (if std.isArray(EventBridgeRuleTemplateGroupIdentifiers) then EventBridgeRuleTemplateGroupIdentifiers else [EventBridgeRuleTemplateGroupIdentifiers]),
    },
  },
  withEventBridgeRuleTemplateGroupIds(EventBridgeRuleTemplateGroupIds): {
    Properties+::: {
      EventBridgeRuleTemplateGroupIds: (if std.isArray(EventBridgeRuleTemplateGroupIds) then EventBridgeRuleTemplateGroupIds else [EventBridgeRuleTemplateGroupIds]),
    },
  },
  withEventBridgeRuleTemplateGroupIdsMixin(EventBridgeRuleTemplateGroupIds): {
    Properties+::: {
      EventBridgeRuleTemplateGroupIds+: (if std.isArray(EventBridgeRuleTemplateGroupIds) then EventBridgeRuleTemplateGroupIds else [EventBridgeRuleTemplateGroupIds]),
    },
  },
  withFailedMediaResourceMap(FailedMediaResourceMap): {
    assert std.isObject(FailedMediaResourceMap) : 'FailedMediaResourceMap must be a object',
    Properties+::: {
      FailedMediaResourceMap: FailedMediaResourceMap,
    },
  },
  withForceRediscovery(ForceRediscovery): {
    assert std.isBoolean(ForceRediscovery) : 'ForceRediscovery must be a boolean',
    Properties+::: {
      ForceRediscovery: ForceRediscovery,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withIdentifier(Identifier): {
    assert std.isString(Identifier) : 'Identifier must be a string',
    Properties+::: {
      Identifier: Identifier,
    },
  },
  withLastDiscoveredAt(LastDiscoveredAt): {
    assert std.isString(LastDiscoveredAt) : 'LastDiscoveredAt must be a string',
    Properties+::: {
      LastDiscoveredAt: LastDiscoveredAt,
    },
  },
  withLastSuccessfulMonitorDeployment(LastSuccessfulMonitorDeployment): {
    assert std.isObject(LastSuccessfulMonitorDeployment) : 'LastSuccessfulMonitorDeployment must be a object',
    Properties+::: {
      LastSuccessfulMonitorDeployment: LastSuccessfulMonitorDeployment,
    },
  },
  withMediaResourceMap(MediaResourceMap): {
    assert std.isObject(MediaResourceMap) : 'MediaResourceMap must be a object',
    Properties+::: {
      MediaResourceMap: MediaResourceMap,
    },
  },
  withModifiedAt(ModifiedAt): {
    assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
    Properties+::: {
      ModifiedAt: ModifiedAt,
    },
  },
  withMonitorChangesPendingDeployment(MonitorChangesPendingDeployment): {
    assert std.isBoolean(MonitorChangesPendingDeployment) : 'MonitorChangesPendingDeployment must be a boolean',
    Properties+::: {
      MonitorChangesPendingDeployment: MonitorChangesPendingDeployment,
    },
  },
  withMonitorDeployment(MonitorDeployment): {
    assert std.isObject(MonitorDeployment) : 'MonitorDeployment must be a object',
    Properties+::: {
      MonitorDeployment: MonitorDeployment,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
