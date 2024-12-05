{
  new(
    DiscoveryEntryPointArn,
    Name,
  ): {
    local base = self,
    Properties: {
      DiscoveryEntryPointArn:
        if !std.isString(DiscoveryEntryPointArn) then (error 'DiscoveryEntryPointArn must be a string')
        else if std.isEmpty(DiscoveryEntryPointArn) then (error 'DiscoveryEntryPointArn must be not empty')
        else if std.length(DiscoveryEntryPointArn) < 1 then error ('DiscoveryEntryPointArn should have at least 1 characters')
        else if std.length(DiscoveryEntryPointArn) > 2048 then error ('DiscoveryEntryPointArn should have not more than 2048 characters')
        else DiscoveryEntryPointArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::SignalMap',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCloudWatchAlarmTemplateGroupIdentifiers(CloudWatchAlarmTemplateGroupIdentifiers): {
    Properties+::: {
      CloudWatchAlarmTemplateGroupIdentifiers:
        if !std.isArray(CloudWatchAlarmTemplateGroupIdentifiers) then (error 'CloudWatchAlarmTemplateGroupIdentifiers must be an array')
        else CloudWatchAlarmTemplateGroupIdentifiers,
    },
  },
  setCloudWatchAlarmTemplateGroupIdentifiersMixin(CloudWatchAlarmTemplateGroupIdentifiers): {
    Properties+::: {
      CloudWatchAlarmTemplateGroupIdentifiers+: CloudWatchAlarmTemplateGroupIdentifiers,
    },
  },
  setCloudWatchAlarmTemplateGroupIds(CloudWatchAlarmTemplateGroupIds): {
    Properties+::: {
      CloudWatchAlarmTemplateGroupIds:
        if !std.isArray(CloudWatchAlarmTemplateGroupIds) then (error 'CloudWatchAlarmTemplateGroupIds must be an array')
        else CloudWatchAlarmTemplateGroupIds,
    },
  },
  setCloudWatchAlarmTemplateGroupIdsMixin(CloudWatchAlarmTemplateGroupIds): {
    Properties+::: {
      CloudWatchAlarmTemplateGroupIds+: CloudWatchAlarmTemplateGroupIds,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setErrorMessage(ErrorMessage): {
    Properties+::: {
      ErrorMessage:
        if !std.isString(ErrorMessage) then (error 'ErrorMessage must be a string')
        else if std.isEmpty(ErrorMessage) then (error 'ErrorMessage must be not empty')
        else if std.length(ErrorMessage) < 1 then error ('ErrorMessage should have at least 1 characters')
        else if std.length(ErrorMessage) > 2048 then error ('ErrorMessage should have not more than 2048 characters')
        else ErrorMessage,
    },
  },
  setEventBridgeRuleTemplateGroupIdentifiers(EventBridgeRuleTemplateGroupIdentifiers): {
    Properties+::: {
      EventBridgeRuleTemplateGroupIdentifiers:
        if !std.isArray(EventBridgeRuleTemplateGroupIdentifiers) then (error 'EventBridgeRuleTemplateGroupIdentifiers must be an array')
        else EventBridgeRuleTemplateGroupIdentifiers,
    },
  },
  setEventBridgeRuleTemplateGroupIdentifiersMixin(EventBridgeRuleTemplateGroupIdentifiers): {
    Properties+::: {
      EventBridgeRuleTemplateGroupIdentifiers+: EventBridgeRuleTemplateGroupIdentifiers,
    },
  },
  setEventBridgeRuleTemplateGroupIds(EventBridgeRuleTemplateGroupIds): {
    Properties+::: {
      EventBridgeRuleTemplateGroupIds:
        if !std.isArray(EventBridgeRuleTemplateGroupIds) then (error 'EventBridgeRuleTemplateGroupIds must be an array')
        else EventBridgeRuleTemplateGroupIds,
    },
  },
  setEventBridgeRuleTemplateGroupIdsMixin(EventBridgeRuleTemplateGroupIds): {
    Properties+::: {
      EventBridgeRuleTemplateGroupIds+: EventBridgeRuleTemplateGroupIds,
    },
  },
  setFailedMediaResourceMap(FailedMediaResourceMap): {
    Properties+::: {
      FailedMediaResourceMap:
        if !std.isObject(FailedMediaResourceMap) then (error 'FailedMediaResourceMap must be an object')
        else FailedMediaResourceMap,
    },
  },
  setForceRediscovery(ForceRediscovery): {
    Properties+::: {
      ForceRediscovery:
        if !std.isBoolean(ForceRediscovery) then (error 'ForceRediscovery must be a boolean') else ForceRediscovery,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 7 then error ('Id should have at least 7 characters')
        else if std.length(Id) > 11 then error ('Id should have not more than 11 characters')
        else Id,
    },
  },
  setIdentifier(Identifier): {
    Properties+::: {
      Identifier:
        if !std.isString(Identifier) then (error 'Identifier must be a string')
        else if std.isEmpty(Identifier) then (error 'Identifier must be not empty')
        else Identifier,
    },
  },
  setLastDiscoveredAt(LastDiscoveredAt): {
    Properties+::: {
      LastDiscoveredAt:
        if !std.isString(LastDiscoveredAt) then (error 'LastDiscoveredAt must be a string')
        else if std.isEmpty(LastDiscoveredAt) then (error 'LastDiscoveredAt must be not empty')
        else LastDiscoveredAt,
    },
  },
  setLastSuccessfulMonitorDeployment(LastSuccessfulMonitorDeployment): {
    Properties+::: {
      LastSuccessfulMonitorDeployment:
        if !std.isObject(LastSuccessfulMonitorDeployment) then (error 'LastSuccessfulMonitorDeployment must be an object')
        else if !std.objectHas(LastSuccessfulMonitorDeployment, 'DetailsUri') then (error ' have attribute DetailsUri')
        else if !std.objectHas(LastSuccessfulMonitorDeployment, 'Status') then (error ' have attribute Status')
        else LastSuccessfulMonitorDeployment,
    },
  },
  setMediaResourceMap(MediaResourceMap): {
    Properties+::: {
      MediaResourceMap:
        if !std.isObject(MediaResourceMap) then (error 'MediaResourceMap must be an object')
        else MediaResourceMap,
    },
  },
  setModifiedAt(ModifiedAt): {
    Properties+::: {
      ModifiedAt:
        if !std.isString(ModifiedAt) then (error 'ModifiedAt must be a string')
        else if std.isEmpty(ModifiedAt) then (error 'ModifiedAt must be not empty')
        else ModifiedAt,
    },
  },
  setMonitorChangesPendingDeployment(MonitorChangesPendingDeployment): {
    Properties+::: {
      MonitorChangesPendingDeployment:
        if !std.isBoolean(MonitorChangesPendingDeployment) then (error 'MonitorChangesPendingDeployment must be a boolean') else MonitorChangesPendingDeployment,
    },
  },
  setMonitorDeployment(MonitorDeployment): {
    Properties+::: {
      MonitorDeployment:
        if !std.isObject(MonitorDeployment) then (error 'MonitorDeployment must be an object')
        else if !std.objectHas(MonitorDeployment, 'Status') then (error ' have attribute Status')
        else MonitorDeployment,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATE_IN_PROGRESS' && Status != 'CREATE_COMPLETE' && Status != 'CREATE_FAILED' && Status != 'UPDATE_IN_PROGRESS' && Status != 'UPDATE_COMPLETE' && Status != 'UPDATE_REVERTED' && Status != 'UPDATE_FAILED' && Status != 'READY' && Status != 'NOT_READY' then (error "Status should be 'CREATE_IN_PROGRESS' or 'CREATE_COMPLETE' or 'CREATE_FAILED' or 'UPDATE_IN_PROGRESS' or 'UPDATE_COMPLETE' or 'UPDATE_REVERTED' or 'UPDATE_FAILED' or 'READY' or 'NOT_READY'")
        else Status,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
