{
  new(
    Name,
    CollectionScheme,
    SignalCatalogArn,
    TargetArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
      CollectionScheme: CollectionScheme,
      SignalCatalogArn:
        if !std.isString(SignalCatalogArn) then (error 'SignalCatalogArn must be a string')
        else if std.isEmpty(SignalCatalogArn) then (error 'SignalCatalogArn must be not empty')
        else SignalCatalogArn,
      TargetArn:
        if !std.isString(TargetArn) then (error 'TargetArn must be a string')
        else if std.isEmpty(TargetArn) then (error 'TargetArn must be not empty')
        else TargetArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTFleetWise::Campaign',
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'WAITING_FOR_APPROVAL' && Status != 'RUNNING' && Status != 'SUSPENDED' then (error "Status should be 'CREATING' or 'WAITING_FOR_APPROVAL' or 'RUNNING' or 'SUSPENDED'")
        else Status,
    },
  },
  setAction(Action): {
    Properties+::: {
      Action:
        if !std.isString(Action) then (error 'Action must be a string')
        else if std.isEmpty(Action) then (error 'Action must be not empty')
        else if Action != 'APPROVE' && Action != 'SUSPEND' && Action != 'RESUME' && Action != 'UPDATE' then (error "Action should be 'APPROVE' or 'SUSPEND' or 'RESUME' or 'UPDATE'")
        else Action,
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
  setCompression(Compression): {
    Properties+::: {
      Compression:
        if !std.isString(Compression) then (error 'Compression must be a string')
        else if std.isEmpty(Compression) then (error 'Compression must be not empty')
        else if Compression != 'OFF' && Compression != 'SNAPPY' then (error "Compression should be 'OFF' or 'SNAPPY'")
        else Compression,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setPriority(Priority): {
    Properties+::: {
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else Priority,
    },
  },
  setSignalsToCollect(SignalsToCollect): {
    Properties+::: {
      SignalsToCollect:
        if !std.isArray(SignalsToCollect) then (error 'SignalsToCollect must be an array')
        else if std.length(SignalsToCollect) > 1000 then error ('SignalsToCollect cannot have more than 1000 items')
        else SignalsToCollect,
    },
  },
  setSignalsToCollectMixin(SignalsToCollect): {
    Properties+::: {
      SignalsToCollect+: SignalsToCollect,
    },
  },
  setSignalsToFetch(SignalsToFetch): {
    Properties+::: {
      SignalsToFetch:
        if !std.isArray(SignalsToFetch) then (error 'SignalsToFetch must be an array')
        else if std.length(SignalsToFetch) > 10 then error ('SignalsToFetch cannot have more than 10 items')
        else SignalsToFetch,
    },
  },
  setSignalsToFetchMixin(SignalsToFetch): {
    Properties+::: {
      SignalsToFetch+: SignalsToFetch,
    },
  },
  setDataDestinationConfigs(DataDestinationConfigs): {
    Properties+::: {
      DataDestinationConfigs:
        if !std.isArray(DataDestinationConfigs) then (error 'DataDestinationConfigs must be an array')
        else if std.length(DataDestinationConfigs) < 1 then error ('DataDestinationConfigs cannot have less than 1 items')
        else if std.length(DataDestinationConfigs) > 1 then error ('DataDestinationConfigs cannot have more than 1 items')
        else DataDestinationConfigs,
    },
  },
  setDataDestinationConfigsMixin(DataDestinationConfigs): {
    Properties+::: {
      DataDestinationConfigs+: DataDestinationConfigs,
    },
  },
  setStartTime(StartTime): {
    Properties+::: {
      StartTime:
        if !std.isString(StartTime) then (error 'StartTime must be a string')
        else if std.isEmpty(StartTime) then (error 'StartTime must be not empty')
        else StartTime,
    },
  },
  setExpiryTime(ExpiryTime): {
    Properties+::: {
      ExpiryTime:
        if !std.isString(ExpiryTime) then (error 'ExpiryTime must be a string')
        else if std.isEmpty(ExpiryTime) then (error 'ExpiryTime must be not empty')
        else ExpiryTime,
    },
  },
  setLastModificationTime(LastModificationTime): {
    Properties+::: {
      LastModificationTime:
        if !std.isString(LastModificationTime) then (error 'LastModificationTime must be a string')
        else if std.isEmpty(LastModificationTime) then (error 'LastModificationTime must be not empty')
        else LastModificationTime,
    },
  },
  setSpoolingMode(SpoolingMode): {
    Properties+::: {
      SpoolingMode:
        if !std.isString(SpoolingMode) then (error 'SpoolingMode must be a string')
        else if std.isEmpty(SpoolingMode) then (error 'SpoolingMode must be not empty')
        else if SpoolingMode != 'OFF' && SpoolingMode != 'TO_DISK' then (error "SpoolingMode should be 'OFF' or 'TO_DISK'")
        else SpoolingMode,
    },
  },
  setPostTriggerCollectionDuration(PostTriggerCollectionDuration): {
    Properties+::: {
      PostTriggerCollectionDuration:
        if !std.isNumber(PostTriggerCollectionDuration) then (error 'PostTriggerCollectionDuration must be an number')
        else if PostTriggerCollectionDuration > 4294967295 then error ('PostTriggerCollectionDuration should be not more than 4294967295')
        else PostTriggerCollectionDuration,
    },
  },
  setDataExtraDimensions(DataExtraDimensions): {
    Properties+::: {
      DataExtraDimensions:
        if !std.isArray(DataExtraDimensions) then (error 'DataExtraDimensions must be an array')
        else if std.length(DataExtraDimensions) > 5 then error ('DataExtraDimensions cannot have more than 5 items')
        else DataExtraDimensions,
    },
  },
  setDataExtraDimensionsMixin(DataExtraDimensions): {
    Properties+::: {
      DataExtraDimensions+: DataExtraDimensions,
    },
  },
  setDiagnosticsMode(DiagnosticsMode): {
    Properties+::: {
      DiagnosticsMode:
        if !std.isString(DiagnosticsMode) then (error 'DiagnosticsMode must be a string')
        else if std.isEmpty(DiagnosticsMode) then (error 'DiagnosticsMode must be not empty')
        else if DiagnosticsMode != 'OFF' && DiagnosticsMode != 'SEND_ACTIVE_DTCS' then (error "DiagnosticsMode should be 'OFF' or 'SEND_ACTIVE_DTCS'")
        else DiagnosticsMode,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDataPartitions(DataPartitions): {
    Properties+::: {
      DataPartitions:
        if !std.isArray(DataPartitions) then (error 'DataPartitions must be an array')
        else if std.length(DataPartitions) > 20 then error ('DataPartitions cannot have more than 20 items')
        else DataPartitions,
    },
  },
  setDataPartitionsMixin(DataPartitions): {
    Properties+::: {
      DataPartitions+: DataPartitions,
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
