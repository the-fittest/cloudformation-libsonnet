{
  new(
    MonitorName,
  ): {
    local base = self,
    Properties: {
      MonitorName:
        if !std.isString(MonitorName) then (error 'MonitorName must be a string')
        else if std.isEmpty(MonitorName) then (error 'MonitorName must be not empty')
        else if std.length(MonitorName) < 1 then error ('MonitorName should have at least 1 characters')
        else if std.length(MonitorName) > 255 then error ('MonitorName should have not more than 255 characters')
        else MonitorName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::InternetMonitor::Monitor',
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
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
  setMonitorArn(MonitorArn): {
    Properties+::: {
      MonitorArn:
        if !std.isString(MonitorArn) then (error 'MonitorArn must be a string')
        else if std.isEmpty(MonitorArn) then (error 'MonitorArn must be not empty')
        else if std.length(MonitorArn) < 20 then error ('MonitorArn should have at least 20 characters')
        else if std.length(MonitorArn) > 512 then error ('MonitorArn should have not more than 512 characters')
        else MonitorArn,
    },
  },
  setLinkedAccountId(LinkedAccountId): {
    Properties+::: {
      LinkedAccountId:
        if !std.isString(LinkedAccountId) then (error 'LinkedAccountId must be a string')
        else if std.isEmpty(LinkedAccountId) then (error 'LinkedAccountId must be not empty')
        else if std.length(LinkedAccountId) < 12 then error ('LinkedAccountId should have at least 12 characters')
        else if std.length(LinkedAccountId) > 12 then error ('LinkedAccountId should have not more than 12 characters')
        else LinkedAccountId,
    },
  },
  setIncludeLinkedAccounts(IncludeLinkedAccounts): {
    Properties+::: {
      IncludeLinkedAccounts:
        if !std.isBoolean(IncludeLinkedAccounts) then (error 'IncludeLinkedAccounts must be a boolean') else IncludeLinkedAccounts,
    },
  },
  setProcessingStatus(ProcessingStatus): {
    Properties+::: {
      ProcessingStatus:
        if !std.isString(ProcessingStatus) then (error 'ProcessingStatus must be a string')
        else if std.isEmpty(ProcessingStatus) then (error 'ProcessingStatus must be not empty')
        else if ProcessingStatus != 'OK' && ProcessingStatus != 'INACTIVE' && ProcessingStatus != 'COLLECTING_DATA' && ProcessingStatus != 'INSUFFICIENT_DATA' && ProcessingStatus != 'FAULT_SERVICE' && ProcessingStatus != 'FAULT_ACCESS_CLOUDWATCH' then (error "ProcessingStatus should be 'OK' or 'INACTIVE' or 'COLLECTING_DATA' or 'INSUFFICIENT_DATA' or 'FAULT_SERVICE' or 'FAULT_ACCESS_CLOUDWATCH'")
        else ProcessingStatus,
    },
  },
  setProcessingStatusInfo(ProcessingStatusInfo): {
    Properties+::: {
      ProcessingStatusInfo:
        if !std.isString(ProcessingStatusInfo) then (error 'ProcessingStatusInfo must be a string')
        else if std.isEmpty(ProcessingStatusInfo) then (error 'ProcessingStatusInfo must be not empty')
        else ProcessingStatusInfo,
    },
  },
  setResources(Resources): {
    Properties+::: {
      Resources:
        if !std.isArray(Resources) then (error 'Resources must be an array')
        else Resources,
    },
  },
  pushResources(Resources): {
    Properties+::: {
      Resources+: Resources,
    },
  },
  setResourcesToAdd(ResourcesToAdd): {
    Properties+::: {
      ResourcesToAdd:
        if !std.isArray(ResourcesToAdd) then (error 'ResourcesToAdd must be an array')
        else ResourcesToAdd,
    },
  },
  pushResourcesToAdd(ResourcesToAdd): {
    Properties+::: {
      ResourcesToAdd+: ResourcesToAdd,
    },
  },
  setResourcesToRemove(ResourcesToRemove): {
    Properties+::: {
      ResourcesToRemove:
        if !std.isArray(ResourcesToRemove) then (error 'ResourcesToRemove must be an array')
        else ResourcesToRemove,
    },
  },
  pushResourcesToRemove(ResourcesToRemove): {
    Properties+::: {
      ResourcesToRemove+: ResourcesToRemove,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'PENDING' && Status != 'ACTIVE' && Status != 'INACTIVE' && Status != 'ERROR' then (error "Status should be 'PENDING' or 'ACTIVE' or 'INACTIVE' or 'ERROR'")
        else Status,
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
  setMaxCityNetworksToMonitor(MaxCityNetworksToMonitor): {
    Properties+::: {
      MaxCityNetworksToMonitor:
        if !std.isNumber(MaxCityNetworksToMonitor) then (error 'MaxCityNetworksToMonitor must be an number')
        else if MaxCityNetworksToMonitor < 1 then error ('MaxCityNetworksToMonitor should be at least 1')
        else if MaxCityNetworksToMonitor > 500000 then error ('MaxCityNetworksToMonitor should be not more than 500000')
        else MaxCityNetworksToMonitor,
    },
  },
  setTrafficPercentageToMonitor(TrafficPercentageToMonitor): {
    Properties+::: {
      TrafficPercentageToMonitor:
        if !std.isNumber(TrafficPercentageToMonitor) then (error 'TrafficPercentageToMonitor must be an number')
        else if TrafficPercentageToMonitor < 1 then error ('TrafficPercentageToMonitor should be at least 1')
        else if TrafficPercentageToMonitor > 100 then error ('TrafficPercentageToMonitor should be not more than 100')
        else TrafficPercentageToMonitor,
    },
  },
  setInternetMeasurementsLogDelivery(InternetMeasurementsLogDelivery): {
    Properties+::: {
      InternetMeasurementsLogDelivery:
        if !std.isObject(InternetMeasurementsLogDelivery) then (error 'InternetMeasurementsLogDelivery must be an object')
        else InternetMeasurementsLogDelivery,
    },
  },
  setHealthEventsConfig(HealthEventsConfig): {
    Properties+::: {
      HealthEventsConfig:
        if !std.isObject(HealthEventsConfig) then (error 'HealthEventsConfig must be an object')
        else HealthEventsConfig,
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
