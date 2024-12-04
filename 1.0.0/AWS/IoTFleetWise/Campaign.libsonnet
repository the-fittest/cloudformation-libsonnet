{
  // AWS IoTFleetWise Campaign
  Campaign: {
    new(
      Name,
      CollectionScheme,
      SignalCatalogArn,
      TargetArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        CollectionScheme: CollectionScheme,
        assert std.isString(SignalCatalogArn) : 'SignalCatalogArn must be a string',
        SignalCatalogArn: SignalCatalogArn,
        assert std.isString(TargetArn) : 'TargetArn must be a string',
        TargetArn: TargetArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoTFleetWise::Campaign',
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withAction(Action): {
      assert std.isString(Action) : 'Action must be a string',
      Properties+::: {
        Action: Action,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withCompression(Compression): {
      assert std.isString(Compression) : 'Compression must be a string',
      Properties+::: {
        Compression: Compression,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withPriority(Priority): {
      assert std.isNumber(Priority) : 'Priority must be a number',
      Properties+::: {
        Priority: Priority,
      },
    },
    withSignalsToCollect(SignalsToCollect): {
      Properties+::: {
        SignalsToCollect: (if std.isArray(SignalsToCollect) then SignalsToCollect else [SignalsToCollect]),
      },
    },
    withSignalsToCollectMixin(SignalsToCollect): {
      Properties+::: {
        SignalsToCollect+: (if std.isArray(SignalsToCollect) then SignalsToCollect else [SignalsToCollect]),
      },
    },
    withSignalsToFetch(SignalsToFetch): {
      Properties+::: {
        SignalsToFetch: (if std.isArray(SignalsToFetch) then SignalsToFetch else [SignalsToFetch]),
      },
    },
    withSignalsToFetchMixin(SignalsToFetch): {
      Properties+::: {
        SignalsToFetch+: (if std.isArray(SignalsToFetch) then SignalsToFetch else [SignalsToFetch]),
      },
    },
    withDataDestinationConfigs(DataDestinationConfigs): {
      Properties+::: {
        DataDestinationConfigs: (if std.isArray(DataDestinationConfigs) then DataDestinationConfigs else [DataDestinationConfigs]),
      },
    },
    withDataDestinationConfigsMixin(DataDestinationConfigs): {
      Properties+::: {
        DataDestinationConfigs+: (if std.isArray(DataDestinationConfigs) then DataDestinationConfigs else [DataDestinationConfigs]),
      },
    },
    withStartTime(StartTime): {
      assert std.isString(StartTime) : 'StartTime must be a string',
      Properties+::: {
        StartTime: StartTime,
      },
    },
    withExpiryTime(ExpiryTime): {
      assert std.isString(ExpiryTime) : 'ExpiryTime must be a string',
      Properties+::: {
        ExpiryTime: ExpiryTime,
      },
    },
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: {
        LastModificationTime: LastModificationTime,
      },
    },
    withSpoolingMode(SpoolingMode): {
      assert std.isString(SpoolingMode) : 'SpoolingMode must be a string',
      Properties+::: {
        SpoolingMode: SpoolingMode,
      },
    },
    withPostTriggerCollectionDuration(PostTriggerCollectionDuration): {
      assert std.isNumber(PostTriggerCollectionDuration) : 'PostTriggerCollectionDuration must be a number',
      Properties+::: {
        PostTriggerCollectionDuration: PostTriggerCollectionDuration,
      },
    },
    withDataExtraDimensions(DataExtraDimensions): {
      Properties+::: {
        DataExtraDimensions: (if std.isArray(DataExtraDimensions) then DataExtraDimensions else [DataExtraDimensions]),
      },
    },
    withDataExtraDimensionsMixin(DataExtraDimensions): {
      Properties+::: {
        DataExtraDimensions+: (if std.isArray(DataExtraDimensions) then DataExtraDimensions else [DataExtraDimensions]),
      },
    },
    withDiagnosticsMode(DiagnosticsMode): {
      assert std.isString(DiagnosticsMode) : 'DiagnosticsMode must be a string',
      Properties+::: {
        DiagnosticsMode: DiagnosticsMode,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withDataPartitions(DataPartitions): {
      Properties+::: {
        DataPartitions: (if std.isArray(DataPartitions) then DataPartitions else [DataPartitions]),
      },
    },
    withDataPartitionsMixin(DataPartitions): {
      Properties+::: {
        DataPartitions+: (if std.isArray(DataPartitions) then DataPartitions else [DataPartitions]),
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
  },
}
