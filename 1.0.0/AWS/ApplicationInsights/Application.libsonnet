{
  new(
    ResourceGroupName,
  ): {
    local base = self,
    Properties: {
      ResourceGroupName:
        if !std.isString(ResourceGroupName) then (error 'ResourceGroupName must be a string')
        else if std.isEmpty(ResourceGroupName) then (error 'ResourceGroupName must be not empty')
        else if std.length(ResourceGroupName) < 1 then error ('ResourceGroupName should have at least 1 characters')
        else if std.length(ResourceGroupName) > 256 then error ('ResourceGroupName should have not more than 256 characters')
        else ResourceGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApplicationInsights::Application',
  },
  setApplicationARN(ApplicationARN): {
    Properties+::: {
      ApplicationARN:
        if !std.isString(ApplicationARN) then (error 'ApplicationARN must be a string')
        else if std.isEmpty(ApplicationARN) then (error 'ApplicationARN must be not empty')
        else ApplicationARN,
    },
  },
  setCWEMonitorEnabled(CWEMonitorEnabled): {
    Properties+::: {
      CWEMonitorEnabled:
        if !std.isBoolean(CWEMonitorEnabled) then (error 'CWEMonitorEnabled must be a boolean') else CWEMonitorEnabled,
    },
  },
  setOpsCenterEnabled(OpsCenterEnabled): {
    Properties+::: {
      OpsCenterEnabled:
        if !std.isBoolean(OpsCenterEnabled) then (error 'OpsCenterEnabled must be a boolean') else OpsCenterEnabled,
    },
  },
  setOpsItemSNSTopicArn(OpsItemSNSTopicArn): {
    Properties+::: {
      OpsItemSNSTopicArn:
        if !std.isString(OpsItemSNSTopicArn) then (error 'OpsItemSNSTopicArn must be a string')
        else if std.isEmpty(OpsItemSNSTopicArn) then (error 'OpsItemSNSTopicArn must be not empty')
        else if std.length(OpsItemSNSTopicArn) < 20 then error ('OpsItemSNSTopicArn should have at least 20 characters')
        else if std.length(OpsItemSNSTopicArn) > 300 then error ('OpsItemSNSTopicArn should have not more than 300 characters')
        else OpsItemSNSTopicArn,
    },
  },
  setSNSNotificationArn(SNSNotificationArn): {
    Properties+::: {
      SNSNotificationArn:
        if !std.isString(SNSNotificationArn) then (error 'SNSNotificationArn must be a string')
        else if std.isEmpty(SNSNotificationArn) then (error 'SNSNotificationArn must be not empty')
        else if std.length(SNSNotificationArn) < 20 then error ('SNSNotificationArn should have at least 20 characters')
        else if std.length(SNSNotificationArn) > 300 then error ('SNSNotificationArn should have not more than 300 characters')
        else SNSNotificationArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setCustomComponents(CustomComponents): {
    Properties+::: {
      CustomComponents:
        if !std.isArray(CustomComponents) then (error 'CustomComponents must be an array')
        else if std.length(CustomComponents) < 1 then error ('CustomComponents cannot have less than 1 items')
        else CustomComponents,
    },
  },
  pushCustomComponents(CustomComponents): {
    Properties+::: {
      CustomComponents+: CustomComponents,
    },
  },
  setLogPatternSets(LogPatternSets): {
    Properties+::: {
      LogPatternSets:
        if !std.isArray(LogPatternSets) then (error 'LogPatternSets must be an array')
        else if std.length(LogPatternSets) < 1 then error ('LogPatternSets cannot have less than 1 items')
        else LogPatternSets,
    },
  },
  pushLogPatternSets(LogPatternSets): {
    Properties+::: {
      LogPatternSets+: LogPatternSets,
    },
  },
  setAutoConfigurationEnabled(AutoConfigurationEnabled): {
    Properties+::: {
      AutoConfigurationEnabled:
        if !std.isBoolean(AutoConfigurationEnabled) then (error 'AutoConfigurationEnabled must be a boolean') else AutoConfigurationEnabled,
    },
  },
  setComponentMonitoringSettings(ComponentMonitoringSettings): {
    Properties+::: {
      ComponentMonitoringSettings:
        if !std.isArray(ComponentMonitoringSettings) then (error 'ComponentMonitoringSettings must be an array')
        else if std.length(ComponentMonitoringSettings) < 1 then error ('ComponentMonitoringSettings cannot have less than 1 items')
        else ComponentMonitoringSettings,
    },
  },
  pushComponentMonitoringSettings(ComponentMonitoringSettings): {
    Properties+::: {
      ComponentMonitoringSettings+: ComponentMonitoringSettings,
    },
  },
  setGroupingType(GroupingType): {
    Properties+::: {
      GroupingType:
        if !std.isString(GroupingType) then (error 'GroupingType must be a string')
        else if std.isEmpty(GroupingType) then (error 'GroupingType must be not empty')
        else if GroupingType != 'ACCOUNT_BASED' then (error "GroupingType should be 'ACCOUNT_BASED'")
        else GroupingType,
    },
  },
  setAttachMissingPermission(AttachMissingPermission): {
    Properties+::: {
      AttachMissingPermission:
        if !std.isBoolean(AttachMissingPermission) then (error 'AttachMissingPermission must be a boolean') else AttachMissingPermission,
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
