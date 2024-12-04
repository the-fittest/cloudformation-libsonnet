{
  new(
    KeySchema,
    AttributeDefinitions,
    Replicas,
  ): {
    local base = self,
    Properties: {
      KeySchema: (if std.isArray(KeySchema) then KeySchema else [KeySchema]),
      AttributeDefinitions: (if std.isArray(AttributeDefinitions) then AttributeDefinitions else [AttributeDefinitions]),
      Replicas: (if std.isArray(Replicas) then Replicas else [Replicas]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DynamoDB::GlobalTable',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withStreamArn(StreamArn): {
    assert std.isString(StreamArn) : 'StreamArn must be a string',
    Properties+::: {
      StreamArn: StreamArn,
    },
  },
  withBillingMode(BillingMode): {
    assert std.isString(BillingMode) : 'BillingMode must be a string',
    Properties+::: {
      BillingMode: BillingMode,
    },
  },
  withGlobalSecondaryIndexes(GlobalSecondaryIndexes): {
    Properties+::: {
      GlobalSecondaryIndexes: (if std.isArray(GlobalSecondaryIndexes) then GlobalSecondaryIndexes else [GlobalSecondaryIndexes]),
    },
  },
  withGlobalSecondaryIndexesMixin(GlobalSecondaryIndexes): {
    Properties+::: {
      GlobalSecondaryIndexes+: (if std.isArray(GlobalSecondaryIndexes) then GlobalSecondaryIndexes else [GlobalSecondaryIndexes]),
    },
  },
  withLocalSecondaryIndexes(LocalSecondaryIndexes): {
    Properties+::: {
      LocalSecondaryIndexes: (if std.isArray(LocalSecondaryIndexes) then LocalSecondaryIndexes else [LocalSecondaryIndexes]),
    },
  },
  withLocalSecondaryIndexesMixin(LocalSecondaryIndexes): {
    Properties+::: {
      LocalSecondaryIndexes+: (if std.isArray(LocalSecondaryIndexes) then LocalSecondaryIndexes else [LocalSecondaryIndexes]),
    },
  },
  withWriteProvisionedThroughputSettings(WriteProvisionedThroughputSettings): {
    assert std.isObject(WriteProvisionedThroughputSettings) : 'WriteProvisionedThroughputSettings must be a object',
    Properties+::: {
      WriteProvisionedThroughputSettings: WriteProvisionedThroughputSettings,
    },
  },
  withWriteOnDemandThroughputSettings(WriteOnDemandThroughputSettings): {
    assert std.isObject(WriteOnDemandThroughputSettings) : 'WriteOnDemandThroughputSettings must be a object',
    Properties+::: {
      WriteOnDemandThroughputSettings: WriteOnDemandThroughputSettings,
    },
  },
  withWarmThroughput(WarmThroughput): {
    assert std.isObject(WarmThroughput) : 'WarmThroughput must be a object',
    Properties+::: {
      WarmThroughput: WarmThroughput,
    },
  },
  withSSESpecification(SSESpecification): {
    assert std.isObject(SSESpecification) : 'SSESpecification must be a object',
    Properties+::: {
      SSESpecification: SSESpecification,
    },
  },
  withStreamSpecification(StreamSpecification): {
    assert std.isObject(StreamSpecification) : 'StreamSpecification must be a object',
    Properties+::: {
      StreamSpecification: StreamSpecification,
    },
  },
  withTableName(TableName): {
    assert std.isString(TableName) : 'TableName must be a string',
    Properties+::: {
      TableName: TableName,
    },
  },
  withTableId(TableId): {
    assert std.isString(TableId) : 'TableId must be a string',
    Properties+::: {
      TableId: TableId,
    },
  },
  withTimeToLiveSpecification(TimeToLiveSpecification): {
    assert std.isObject(TimeToLiveSpecification) : 'TimeToLiveSpecification must be a object',
    Properties+::: {
      TimeToLiveSpecification: TimeToLiveSpecification,
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
