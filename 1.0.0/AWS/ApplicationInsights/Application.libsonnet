{
  new(
    ResourceGroupName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ResourceGroupName) : 'ResourceGroupName must be a string',
      ResourceGroupName: ResourceGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApplicationInsights::Application',
  },
  withApplicationARN(ApplicationARN): {
    assert std.isString(ApplicationARN) : 'ApplicationARN must be a string',
    Properties+::: {
      ApplicationARN: ApplicationARN,
    },
  },
  withCWEMonitorEnabled(CWEMonitorEnabled): {
    assert std.isBoolean(CWEMonitorEnabled) : 'CWEMonitorEnabled must be a boolean',
    Properties+::: {
      CWEMonitorEnabled: CWEMonitorEnabled,
    },
  },
  withOpsCenterEnabled(OpsCenterEnabled): {
    assert std.isBoolean(OpsCenterEnabled) : 'OpsCenterEnabled must be a boolean',
    Properties+::: {
      OpsCenterEnabled: OpsCenterEnabled,
    },
  },
  withOpsItemSNSTopicArn(OpsItemSNSTopicArn): {
    assert std.isString(OpsItemSNSTopicArn) : 'OpsItemSNSTopicArn must be a string',
    Properties+::: {
      OpsItemSNSTopicArn: OpsItemSNSTopicArn,
    },
  },
  withSNSNotificationArn(SNSNotificationArn): {
    assert std.isString(SNSNotificationArn) : 'SNSNotificationArn must be a string',
    Properties+::: {
      SNSNotificationArn: SNSNotificationArn,
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
  withCustomComponents(CustomComponents): {
    Properties+::: {
      CustomComponents: (if std.isArray(CustomComponents) then CustomComponents else [CustomComponents]),
    },
  },
  withCustomComponentsMixin(CustomComponents): {
    Properties+::: {
      CustomComponents+: (if std.isArray(CustomComponents) then CustomComponents else [CustomComponents]),
    },
  },
  withLogPatternSets(LogPatternSets): {
    Properties+::: {
      LogPatternSets: (if std.isArray(LogPatternSets) then LogPatternSets else [LogPatternSets]),
    },
  },
  withLogPatternSetsMixin(LogPatternSets): {
    Properties+::: {
      LogPatternSets+: (if std.isArray(LogPatternSets) then LogPatternSets else [LogPatternSets]),
    },
  },
  withAutoConfigurationEnabled(AutoConfigurationEnabled): {
    assert std.isBoolean(AutoConfigurationEnabled) : 'AutoConfigurationEnabled must be a boolean',
    Properties+::: {
      AutoConfigurationEnabled: AutoConfigurationEnabled,
    },
  },
  withComponentMonitoringSettings(ComponentMonitoringSettings): {
    Properties+::: {
      ComponentMonitoringSettings: (if std.isArray(ComponentMonitoringSettings) then ComponentMonitoringSettings else [ComponentMonitoringSettings]),
    },
  },
  withComponentMonitoringSettingsMixin(ComponentMonitoringSettings): {
    Properties+::: {
      ComponentMonitoringSettings+: (if std.isArray(ComponentMonitoringSettings) then ComponentMonitoringSettings else [ComponentMonitoringSettings]),
    },
  },
  withGroupingType(GroupingType): {
    assert std.isString(GroupingType) : 'GroupingType must be a string',
    assert GroupingType == 'ACCOUNT_BASED' : "GroupingType should be 'ACCOUNT_BASED'",
    Properties+::: {
      GroupingType: GroupingType,
    },
  },
  withAttachMissingPermission(AttachMissingPermission): {
    assert std.isBoolean(AttachMissingPermission) : 'AttachMissingPermission must be a boolean',
    Properties+::: {
      AttachMissingPermission: AttachMissingPermission,
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
