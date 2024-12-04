{
  new(
    FunctionName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(FunctionName) : 'FunctionName must be a string',
      FunctionName: FunctionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::EventSourceMapping',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withBatchSize(BatchSize): {
    assert std.isNumber(BatchSize) : 'BatchSize must be a number',
    Properties+::: {
      BatchSize: BatchSize,
    },
  },
  withBisectBatchOnFunctionError(BisectBatchOnFunctionError): {
    assert std.isBoolean(BisectBatchOnFunctionError) : 'BisectBatchOnFunctionError must be a boolean',
    Properties+::: {
      BisectBatchOnFunctionError: BisectBatchOnFunctionError,
    },
  },
  withDestinationConfig(DestinationConfig): {
    assert std.isObject(DestinationConfig) : 'DestinationConfig must be a object',
    Properties+::: {
      DestinationConfig: DestinationConfig,
    },
  },
  withEnabled(Enabled): {
    assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
    Properties+::: {
      Enabled: Enabled,
    },
  },
  withEventSourceArn(EventSourceArn): {
    assert std.isString(EventSourceArn) : 'EventSourceArn must be a string',
    Properties+::: {
      EventSourceArn: EventSourceArn,
    },
  },
  withEventSourceMappingArn(EventSourceMappingArn): {
    assert std.isString(EventSourceMappingArn) : 'EventSourceMappingArn must be a string',
    Properties+::: {
      EventSourceMappingArn: EventSourceMappingArn,
    },
  },
  withFilterCriteria(FilterCriteria): {
    assert std.isObject(FilterCriteria) : 'FilterCriteria must be a object',
    Properties+::: {
      FilterCriteria: FilterCriteria,
    },
  },
  withKmsKeyArn(KmsKeyArn): {
    assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
    Properties+::: {
      KmsKeyArn: KmsKeyArn,
    },
  },
  withMaximumBatchingWindowInSeconds(MaximumBatchingWindowInSeconds): {
    assert std.isNumber(MaximumBatchingWindowInSeconds) : 'MaximumBatchingWindowInSeconds must be a number',
    Properties+::: {
      MaximumBatchingWindowInSeconds: MaximumBatchingWindowInSeconds,
    },
  },
  withMaximumRecordAgeInSeconds(MaximumRecordAgeInSeconds): {
    assert std.isNumber(MaximumRecordAgeInSeconds) : 'MaximumRecordAgeInSeconds must be a number',
    Properties+::: {
      MaximumRecordAgeInSeconds: MaximumRecordAgeInSeconds,
    },
  },
  withMaximumRetryAttempts(MaximumRetryAttempts): {
    assert std.isNumber(MaximumRetryAttempts) : 'MaximumRetryAttempts must be a number',
    Properties+::: {
      MaximumRetryAttempts: MaximumRetryAttempts,
    },
  },
  withParallelizationFactor(ParallelizationFactor): {
    assert std.isNumber(ParallelizationFactor) : 'ParallelizationFactor must be a number',
    Properties+::: {
      ParallelizationFactor: ParallelizationFactor,
    },
  },
  withStartingPosition(StartingPosition): {
    assert std.isString(StartingPosition) : 'StartingPosition must be a string',
    Properties+::: {
      StartingPosition: StartingPosition,
    },
  },
  withStartingPositionTimestamp(StartingPositionTimestamp): {
    assert std.isNumber(StartingPositionTimestamp) : 'StartingPositionTimestamp must be a number',
    Properties+::: {
      StartingPositionTimestamp: StartingPositionTimestamp,
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
  withTopics(Topics): {
    Properties+::: {
      Topics: (if std.isArray(Topics) then Topics else [Topics]),
    },
  },
  withTopicsMixin(Topics): {
    Properties+::: {
      Topics+: (if std.isArray(Topics) then Topics else [Topics]),
    },
  },
  withQueues(Queues): {
    Properties+::: {
      Queues: (if std.isArray(Queues) then Queues else [Queues]),
    },
  },
  withQueuesMixin(Queues): {
    Properties+::: {
      Queues+: (if std.isArray(Queues) then Queues else [Queues]),
    },
  },
  withSourceAccessConfigurations(SourceAccessConfigurations): {
    Properties+::: {
      SourceAccessConfigurations: (if std.isArray(SourceAccessConfigurations) then SourceAccessConfigurations else [SourceAccessConfigurations]),
    },
  },
  withSourceAccessConfigurationsMixin(SourceAccessConfigurations): {
    Properties+::: {
      SourceAccessConfigurations+: (if std.isArray(SourceAccessConfigurations) then SourceAccessConfigurations else [SourceAccessConfigurations]),
    },
  },
  withTumblingWindowInSeconds(TumblingWindowInSeconds): {
    assert std.isNumber(TumblingWindowInSeconds) : 'TumblingWindowInSeconds must be a number',
    Properties+::: {
      TumblingWindowInSeconds: TumblingWindowInSeconds,
    },
  },
  withFunctionResponseTypes(FunctionResponseTypes): {
    Properties+::: {
      FunctionResponseTypes: (if std.isArray(FunctionResponseTypes) then FunctionResponseTypes else [FunctionResponseTypes]),
    },
  },
  withFunctionResponseTypesMixin(FunctionResponseTypes): {
    Properties+::: {
      FunctionResponseTypes+: (if std.isArray(FunctionResponseTypes) then FunctionResponseTypes else [FunctionResponseTypes]),
    },
  },
  withSelfManagedEventSource(SelfManagedEventSource): {
    assert std.isObject(SelfManagedEventSource) : 'SelfManagedEventSource must be a object',
    Properties+::: {
      SelfManagedEventSource: SelfManagedEventSource,
    },
  },
  withAmazonManagedKafkaEventSourceConfig(AmazonManagedKafkaEventSourceConfig): {
    assert std.isObject(AmazonManagedKafkaEventSourceConfig) : 'AmazonManagedKafkaEventSourceConfig must be a object',
    Properties+::: {
      AmazonManagedKafkaEventSourceConfig: AmazonManagedKafkaEventSourceConfig,
    },
  },
  withSelfManagedKafkaEventSourceConfig(SelfManagedKafkaEventSourceConfig): {
    assert std.isObject(SelfManagedKafkaEventSourceConfig) : 'SelfManagedKafkaEventSourceConfig must be a object',
    Properties+::: {
      SelfManagedKafkaEventSourceConfig: SelfManagedKafkaEventSourceConfig,
    },
  },
  withScalingConfig(ScalingConfig): {
    assert std.isObject(ScalingConfig) : 'ScalingConfig must be a object',
    Properties+::: {
      ScalingConfig: ScalingConfig,
    },
  },
  withDocumentDBEventSourceConfig(DocumentDBEventSourceConfig): {
    assert std.isObject(DocumentDBEventSourceConfig) : 'DocumentDBEventSourceConfig must be a object',
    Properties+::: {
      DocumentDBEventSourceConfig: DocumentDBEventSourceConfig,
    },
  },
  withProvisionedPollerConfig(ProvisionedPollerConfig): {
    assert std.isObject(ProvisionedPollerConfig) : 'ProvisionedPollerConfig must be a object',
    Properties+::: {
      ProvisionedPollerConfig: ProvisionedPollerConfig,
    },
  },
  withMetricsConfig(MetricsConfig): {
    assert std.isObject(MetricsConfig) : 'MetricsConfig must be a object',
    Properties+::: {
      MetricsConfig: MetricsConfig,
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
