{
  // AWS DynamoDB Table
  Table: {
    new(
      KeySchema,
    ): {
      local base = self,
      Properties: {
        KeySchema: KeySchema,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DynamoDB::Table',
    },
    withOnDemandThroughput(OnDemandThroughput): {
      assert std.isObject(OnDemandThroughput) : 'OnDemandThroughput must be a object',
      Properties+::: {
        OnDemandThroughput: OnDemandThroughput,
      },
    },
    withSSESpecification(SSESpecification): {
      assert std.isObject(SSESpecification) : 'SSESpecification must be a object',
      Properties+::: {
        SSESpecification: SSESpecification,
      },
    },
    withKinesisStreamSpecification(KinesisStreamSpecification): {
      assert std.isObject(KinesisStreamSpecification) : 'KinesisStreamSpecification must be a object',
      Properties+::: {
        KinesisStreamSpecification: KinesisStreamSpecification,
      },
    },
    withStreamSpecification(StreamSpecification): {
      assert std.isObject(StreamSpecification) : 'StreamSpecification must be a object',
      Properties+::: {
        StreamSpecification: StreamSpecification,
      },
    },
    withContributorInsightsSpecification(ContributorInsightsSpecification): {
      assert std.isObject(ContributorInsightsSpecification) : 'ContributorInsightsSpecification must be a object',
      Properties+::: {
        ContributorInsightsSpecification: ContributorInsightsSpecification,
      },
    },
    withImportSourceSpecification(ImportSourceSpecification): {
      assert std.isObject(ImportSourceSpecification) : 'ImportSourceSpecification must be a object',
      Properties+::: {
        ImportSourceSpecification: ImportSourceSpecification,
      },
    },
    withPointInTimeRecoverySpecification(PointInTimeRecoverySpecification): {
      assert std.isObject(PointInTimeRecoverySpecification) : 'PointInTimeRecoverySpecification must be a object',
      Properties+::: {
        PointInTimeRecoverySpecification: PointInTimeRecoverySpecification,
      },
    },
    withProvisionedThroughput(ProvisionedThroughput): {
      assert std.isObject(ProvisionedThroughput) : 'ProvisionedThroughput must be a object',
      Properties+::: {
        ProvisionedThroughput: ProvisionedThroughput,
      },
    },
    withWarmThroughput(WarmThroughput): {
      assert std.isObject(WarmThroughput) : 'WarmThroughput must be a object',
      Properties+::: {
        WarmThroughput: WarmThroughput,
      },
    },
    withTableName(TableName): {
      assert std.isString(TableName) : 'TableName must be a string',
      Properties+::: {
        TableName: TableName,
      },
    },
    withAttributeDefinitions(AttributeDefinitions): {
      Properties+::: {
        AttributeDefinitions: (if std.isArray(AttributeDefinitions) then AttributeDefinitions else [AttributeDefinitions]),
      },
    },
    withAttributeDefinitionsMixin(AttributeDefinitions): {
      Properties+::: {
        AttributeDefinitions+: (if std.isArray(AttributeDefinitions) then AttributeDefinitions else [AttributeDefinitions]),
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
    withResourcePolicy(ResourcePolicy): {
      assert std.isObject(ResourcePolicy) : 'ResourcePolicy must be a object',
      Properties+::: {
        ResourcePolicy: ResourcePolicy,
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
    withDeletionProtectionEnabled(DeletionProtectionEnabled): {
      assert std.isBoolean(DeletionProtectionEnabled) : 'DeletionProtectionEnabled must be a boolean',
      Properties+::: {
        DeletionProtectionEnabled: DeletionProtectionEnabled,
      },
    },
    withTableClass(TableClass): {
      assert std.isString(TableClass) : 'TableClass must be a string',
      Properties+::: {
        TableClass: TableClass,
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
  },
}
