{
  new(
    MonitorName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(MonitorName) : 'MonitorName must be a string',
      MonitorName: MonitorName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::InternetMonitor::Monitor',
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withModifiedAt(ModifiedAt): {
    assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
    Properties+::: {
      ModifiedAt: ModifiedAt,
    },
  },
  withMonitorArn(MonitorArn): {
    assert std.isString(MonitorArn) : 'MonitorArn must be a string',
    Properties+::: {
      MonitorArn: MonitorArn,
    },
  },
  withLinkedAccountId(LinkedAccountId): {
    assert std.isString(LinkedAccountId) : 'LinkedAccountId must be a string',
    Properties+::: {
      LinkedAccountId: LinkedAccountId,
    },
  },
  withIncludeLinkedAccounts(IncludeLinkedAccounts): {
    assert std.isBoolean(IncludeLinkedAccounts) : 'IncludeLinkedAccounts must be a boolean',
    Properties+::: {
      IncludeLinkedAccounts: IncludeLinkedAccounts,
    },
  },
  withProcessingStatus(ProcessingStatus): {
    assert std.isString(ProcessingStatus) : 'ProcessingStatus must be a string',
    Properties+::: {
      ProcessingStatus: ProcessingStatus,
    },
  },
  withProcessingStatusInfo(ProcessingStatusInfo): {
    assert std.isString(ProcessingStatusInfo) : 'ProcessingStatusInfo must be a string',
    Properties+::: {
      ProcessingStatusInfo: ProcessingStatusInfo,
    },
  },
  withResources(Resources): {
    Properties+::: {
      Resources: (if std.isArray(Resources) then Resources else [Resources]),
    },
  },
  withResourcesMixin(Resources): {
    Properties+::: {
      Resources+: (if std.isArray(Resources) then Resources else [Resources]),
    },
  },
  withResourcesToAdd(ResourcesToAdd): {
    Properties+::: {
      ResourcesToAdd: (if std.isArray(ResourcesToAdd) then ResourcesToAdd else [ResourcesToAdd]),
    },
  },
  withResourcesToAddMixin(ResourcesToAdd): {
    Properties+::: {
      ResourcesToAdd+: (if std.isArray(ResourcesToAdd) then ResourcesToAdd else [ResourcesToAdd]),
    },
  },
  withResourcesToRemove(ResourcesToRemove): {
    Properties+::: {
      ResourcesToRemove: (if std.isArray(ResourcesToRemove) then ResourcesToRemove else [ResourcesToRemove]),
    },
  },
  withResourcesToRemoveMixin(ResourcesToRemove): {
    Properties+::: {
      ResourcesToRemove+: (if std.isArray(ResourcesToRemove) then ResourcesToRemove else [ResourcesToRemove]),
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
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
  withMaxCityNetworksToMonitor(MaxCityNetworksToMonitor): {
    assert std.isNumber(MaxCityNetworksToMonitor) : 'MaxCityNetworksToMonitor must be a number',
    Properties+::: {
      MaxCityNetworksToMonitor: MaxCityNetworksToMonitor,
    },
  },
  withTrafficPercentageToMonitor(TrafficPercentageToMonitor): {
    assert std.isNumber(TrafficPercentageToMonitor) : 'TrafficPercentageToMonitor must be a number',
    Properties+::: {
      TrafficPercentageToMonitor: TrafficPercentageToMonitor,
    },
  },
  withInternetMeasurementsLogDelivery(InternetMeasurementsLogDelivery): {
    assert std.isObject(InternetMeasurementsLogDelivery) : 'InternetMeasurementsLogDelivery must be a object',
    Properties+::: {
      InternetMeasurementsLogDelivery: InternetMeasurementsLogDelivery,
    },
  },
  withHealthEventsConfig(HealthEventsConfig): {
    assert std.isObject(HealthEventsConfig) : 'HealthEventsConfig must be a object',
    Properties+::: {
      HealthEventsConfig: HealthEventsConfig,
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
