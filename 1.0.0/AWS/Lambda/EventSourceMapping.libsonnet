{
  new(
    FunctionName,
  ): {
    local base = self,
    Properties: {
      FunctionName:
        if !std.isString(FunctionName) then (error 'FunctionName must be a string')
        else if std.isEmpty(FunctionName) then (error 'FunctionName must be not empty')
        else if std.length(FunctionName) < 1 then error ('FunctionName should have at least 1 characters')
        else if std.length(FunctionName) > 140 then error ('FunctionName should have not more than 140 characters')
        else FunctionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::EventSourceMapping',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 36 then error ('Id should have at least 36 characters')
        else if std.length(Id) > 36 then error ('Id should have not more than 36 characters')
        else Id,
    },
  },
  setBatchSize(BatchSize): {
    Properties+::: {
      BatchSize:
        if !std.isNumber(BatchSize) then (error 'BatchSize must be an number')
        else if BatchSize < 1 then error ('BatchSize should be at least 1')
        else if BatchSize > 10000 then error ('BatchSize should be not more than 10000')
        else BatchSize,
    },
  },
  setBisectBatchOnFunctionError(BisectBatchOnFunctionError): {
    Properties+::: {
      BisectBatchOnFunctionError:
        if !std.isBoolean(BisectBatchOnFunctionError) then (error 'BisectBatchOnFunctionError must be a boolean') else BisectBatchOnFunctionError,
    },
  },
  setDestinationConfig(DestinationConfig): {
    Properties+::: {
      DestinationConfig:
        if !std.isObject(DestinationConfig) then (error 'DestinationConfig must be an object')
        else DestinationConfig,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setEventSourceArn(EventSourceArn): {
    Properties+::: {
      EventSourceArn:
        if !std.isString(EventSourceArn) then (error 'EventSourceArn must be a string')
        else if std.isEmpty(EventSourceArn) then (error 'EventSourceArn must be not empty')
        else if std.length(EventSourceArn) < 12 then error ('EventSourceArn should have at least 12 characters')
        else if std.length(EventSourceArn) > 1024 then error ('EventSourceArn should have not more than 1024 characters')
        else EventSourceArn,
    },
  },
  setEventSourceMappingArn(EventSourceMappingArn): {
    Properties+::: {
      EventSourceMappingArn:
        if !std.isString(EventSourceMappingArn) then (error 'EventSourceMappingArn must be a string')
        else if std.isEmpty(EventSourceMappingArn) then (error 'EventSourceMappingArn must be not empty')
        else if std.length(EventSourceMappingArn) < 85 then error ('EventSourceMappingArn should have at least 85 characters')
        else if std.length(EventSourceMappingArn) > 120 then error ('EventSourceMappingArn should have not more than 120 characters')
        else EventSourceMappingArn,
    },
  },
  setFilterCriteria(FilterCriteria): {
    Properties+::: {
      FilterCriteria:
        if !std.isObject(FilterCriteria) then (error 'FilterCriteria must be an object')
        else FilterCriteria,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 12 then error ('KmsKeyArn should have at least 12 characters')
        else if std.length(KmsKeyArn) > 2048 then error ('KmsKeyArn should have not more than 2048 characters')
        else KmsKeyArn,
    },
  },
  setMaximumBatchingWindowInSeconds(MaximumBatchingWindowInSeconds): {
    Properties+::: {
      MaximumBatchingWindowInSeconds:
        if !std.isNumber(MaximumBatchingWindowInSeconds) then (error 'MaximumBatchingWindowInSeconds must be an number')
        else if MaximumBatchingWindowInSeconds > 300 then error ('MaximumBatchingWindowInSeconds should be not more than 300')
        else MaximumBatchingWindowInSeconds,
    },
  },
  setMaximumRecordAgeInSeconds(MaximumRecordAgeInSeconds): {
    Properties+::: {
      MaximumRecordAgeInSeconds:
        if !std.isNumber(MaximumRecordAgeInSeconds) then (error 'MaximumRecordAgeInSeconds must be an number')
        else if MaximumRecordAgeInSeconds < -1 then error ('MaximumRecordAgeInSeconds should be at least -1')
        else if MaximumRecordAgeInSeconds > 604800 then error ('MaximumRecordAgeInSeconds should be not more than 604800')
        else MaximumRecordAgeInSeconds,
    },
  },
  setMaximumRetryAttempts(MaximumRetryAttempts): {
    Properties+::: {
      MaximumRetryAttempts:
        if !std.isNumber(MaximumRetryAttempts) then (error 'MaximumRetryAttempts must be an number')
        else if MaximumRetryAttempts < -1 then error ('MaximumRetryAttempts should be at least -1')
        else if MaximumRetryAttempts > 10000 then error ('MaximumRetryAttempts should be not more than 10000')
        else MaximumRetryAttempts,
    },
  },
  setParallelizationFactor(ParallelizationFactor): {
    Properties+::: {
      ParallelizationFactor:
        if !std.isNumber(ParallelizationFactor) then (error 'ParallelizationFactor must be an number')
        else if ParallelizationFactor < 1 then error ('ParallelizationFactor should be at least 1')
        else if ParallelizationFactor > 10 then error ('ParallelizationFactor should be not more than 10')
        else ParallelizationFactor,
    },
  },
  setStartingPosition(StartingPosition): {
    Properties+::: {
      StartingPosition:
        if !std.isString(StartingPosition) then (error 'StartingPosition must be a string')
        else if std.isEmpty(StartingPosition) then (error 'StartingPosition must be not empty')
        else if std.length(StartingPosition) < 6 then error ('StartingPosition should have at least 6 characters')
        else if std.length(StartingPosition) > 12 then error ('StartingPosition should have not more than 12 characters')
        else StartingPosition,
    },
  },
  setStartingPositionTimestamp(StartingPositionTimestamp): {
    Properties+::: {
      StartingPositionTimestamp:
        if !std.isNumber(StartingPositionTimestamp) then (error 'StartingPositionTimestamp must be an number')
        else StartingPositionTimestamp,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTopics(Topics): {
    Properties+::: {
      Topics:
        if !std.isArray(Topics) then (error 'Topics must be an array')
        else if std.length(Topics) < 1 then error ('Topics cannot have less than 1 items')
        else if std.length(Topics) > 1 then error ('Topics cannot have more than 1 items')
        else Topics,
    },
  },
  setTopicsMixin(Topics): {
    Properties+::: {
      Topics+: Topics,
    },
  },
  setQueues(Queues): {
    Properties+::: {
      Queues:
        if !std.isArray(Queues) then (error 'Queues must be an array')
        else if std.length(Queues) < 1 then error ('Queues cannot have less than 1 items')
        else if std.length(Queues) > 1 then error ('Queues cannot have more than 1 items')
        else Queues,
    },
  },
  setQueuesMixin(Queues): {
    Properties+::: {
      Queues+: Queues,
    },
  },
  setSourceAccessConfigurations(SourceAccessConfigurations): {
    Properties+::: {
      SourceAccessConfigurations:
        if !std.isArray(SourceAccessConfigurations) then (error 'SourceAccessConfigurations must be an array')
        else if std.length(SourceAccessConfigurations) < 1 then error ('SourceAccessConfigurations cannot have less than 1 items')
        else if std.length(SourceAccessConfigurations) > 22 then error ('SourceAccessConfigurations cannot have more than 22 items')
        else SourceAccessConfigurations,
    },
  },
  setSourceAccessConfigurationsMixin(SourceAccessConfigurations): {
    Properties+::: {
      SourceAccessConfigurations+: SourceAccessConfigurations,
    },
  },
  setTumblingWindowInSeconds(TumblingWindowInSeconds): {
    Properties+::: {
      TumblingWindowInSeconds:
        if !std.isNumber(TumblingWindowInSeconds) then (error 'TumblingWindowInSeconds must be an number')
        else if TumblingWindowInSeconds > 900 then error ('TumblingWindowInSeconds should be not more than 900')
        else TumblingWindowInSeconds,
    },
  },
  setFunctionResponseTypes(FunctionResponseTypes): {
    Properties+::: {
      FunctionResponseTypes:
        if !std.isArray(FunctionResponseTypes) then (error 'FunctionResponseTypes must be an array')
        else FunctionResponseTypes,
    },
  },
  setFunctionResponseTypesMixin(FunctionResponseTypes): {
    Properties+::: {
      FunctionResponseTypes+: FunctionResponseTypes,
    },
  },
  setSelfManagedEventSource(SelfManagedEventSource): {
    Properties+::: {
      SelfManagedEventSource:
        if !std.isObject(SelfManagedEventSource) then (error 'SelfManagedEventSource must be an object')
        else SelfManagedEventSource,
    },
  },
  setAmazonManagedKafkaEventSourceConfig(AmazonManagedKafkaEventSourceConfig): {
    Properties+::: {
      AmazonManagedKafkaEventSourceConfig:
        if !std.isObject(AmazonManagedKafkaEventSourceConfig) then (error 'AmazonManagedKafkaEventSourceConfig must be an object')
        else AmazonManagedKafkaEventSourceConfig,
    },
  },
  setSelfManagedKafkaEventSourceConfig(SelfManagedKafkaEventSourceConfig): {
    Properties+::: {
      SelfManagedKafkaEventSourceConfig:
        if !std.isObject(SelfManagedKafkaEventSourceConfig) then (error 'SelfManagedKafkaEventSourceConfig must be an object')
        else SelfManagedKafkaEventSourceConfig,
    },
  },
  setScalingConfig(ScalingConfig): {
    Properties+::: {
      ScalingConfig:
        if !std.isObject(ScalingConfig) then (error 'ScalingConfig must be an object')
        else ScalingConfig,
    },
  },
  setDocumentDBEventSourceConfig(DocumentDBEventSourceConfig): {
    Properties+::: {
      DocumentDBEventSourceConfig:
        if !std.isObject(DocumentDBEventSourceConfig) then (error 'DocumentDBEventSourceConfig must be an object')
        else DocumentDBEventSourceConfig,
    },
  },
  setProvisionedPollerConfig(ProvisionedPollerConfig): {
    Properties+::: {
      ProvisionedPollerConfig:
        if !std.isObject(ProvisionedPollerConfig) then (error 'ProvisionedPollerConfig must be an object')
        else ProvisionedPollerConfig,
    },
  },
  setMetricsConfig(MetricsConfig): {
    Properties+::: {
      MetricsConfig:
        if !std.isObject(MetricsConfig) then (error 'MetricsConfig must be an object')
        else MetricsConfig,
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
