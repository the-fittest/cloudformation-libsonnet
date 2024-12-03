local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  GlobalTable: {
    '#': d.pkg(
      name='GlobalTable',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DynamoDB.libsonnet',
      help='Version: None. Resource Type definition for AWS::DynamoDB::GlobalTable',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DynamoDB::GlobalTable Resource
        * KeySchema 
        * AttributeDefinitions 
        * Replicas 
      |||,
      args=[
        d.arg('KeySchema', 'd.T.array'),
        d.arg('AttributeDefinitions', 'd.T.array'),
        d.arg('Replicas', 'd.T.array'),
      ]
    ),
    new(
      KeySchema,
      AttributeDefinitions,
      Replicas,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(KeySchema) : 'KeySchema must be a array',
        KeySchema: KeySchema,
        assert std.isArray(AttributeDefinitions) : 'AttributeDefinitions must be a array',
        AttributeDefinitions: AttributeDefinitions,
        assert std.isArray(Replicas) : 'Replicas must be a array',
        Replicas: Replicas,
      },
      DependsOn:: [],
      Type: 'AWS::DynamoDB::GlobalTable',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withStreamArn': d.fn('`withStreamArn` StreamArn ', [d.arg('StreamArn', d.T.string)]),
    withStreamArn(StreamArn): {
      assert std.isString(StreamArn) : 'StreamArn must be a string',
      Properties+::: { StreamArn: StreamArn },
    },
    '#withBillingMode': d.fn('`withBillingMode` BillingMode ', [d.arg('BillingMode', d.T.string)]),
    withBillingMode(BillingMode): {
      assert std.isString(BillingMode) : 'BillingMode must be a string',
      Properties+::: { BillingMode: BillingMode },
    },
    '#withGlobalSecondaryIndexes': d.fn('`withGlobalSecondaryIndexes` GlobalSecondaryIndexes ', [d.arg('GlobalSecondaryIndexes', d.T.array)]),
    withGlobalSecondaryIndexes(GlobalSecondaryIndexes): {
      assert std.isArray(GlobalSecondaryIndexes) : 'GlobalSecondaryIndexes must be a array',
      Properties+::: { GlobalSecondaryIndexes: GlobalSecondaryIndexes },
    },
    '#withLocalSecondaryIndexes': d.fn('`withLocalSecondaryIndexes` LocalSecondaryIndexes ', [d.arg('LocalSecondaryIndexes', d.T.array)]),
    withLocalSecondaryIndexes(LocalSecondaryIndexes): {
      assert std.isArray(LocalSecondaryIndexes) : 'LocalSecondaryIndexes must be a array',
      Properties+::: { LocalSecondaryIndexes: LocalSecondaryIndexes },
    },
    '#withWriteProvisionedThroughputSettings': d.fn('`withWriteProvisionedThroughputSettings` WriteProvisionedThroughputSettings ', [d.arg('WriteProvisionedThroughputSettings', d.T.object)]),
    withWriteProvisionedThroughputSettings(WriteProvisionedThroughputSettings): {
      assert std.isObject(WriteProvisionedThroughputSettings) : 'WriteProvisionedThroughputSettings must be a object',
      Properties+::: { WriteProvisionedThroughputSettings: WriteProvisionedThroughputSettings },
    },
    '#withWriteOnDemandThroughputSettings': d.fn('`withWriteOnDemandThroughputSettings` WriteOnDemandThroughputSettings ', [d.arg('WriteOnDemandThroughputSettings', d.T.object)]),
    withWriteOnDemandThroughputSettings(WriteOnDemandThroughputSettings): {
      assert std.isObject(WriteOnDemandThroughputSettings) : 'WriteOnDemandThroughputSettings must be a object',
      Properties+::: { WriteOnDemandThroughputSettings: WriteOnDemandThroughputSettings },
    },
    '#withWarmThroughput': d.fn('`withWarmThroughput` WarmThroughput ', [d.arg('WarmThroughput', d.T.object)]),
    withWarmThroughput(WarmThroughput): {
      assert std.isObject(WarmThroughput) : 'WarmThroughput must be a object',
      Properties+::: { WarmThroughput: WarmThroughput },
    },
    '#withSSESpecification': d.fn('`withSSESpecification` SSESpecification ', [d.arg('SSESpecification', d.T.object)]),
    withSSESpecification(SSESpecification): {
      assert std.isObject(SSESpecification) : 'SSESpecification must be a object',
      Properties+::: { SSESpecification: SSESpecification },
    },
    '#withStreamSpecification': d.fn('`withStreamSpecification` StreamSpecification ', [d.arg('StreamSpecification', d.T.object)]),
    withStreamSpecification(StreamSpecification): {
      assert std.isObject(StreamSpecification) : 'StreamSpecification must be a object',
      Properties+::: { StreamSpecification: StreamSpecification },
    },
    '#withTableName': d.fn('`withTableName` TableName ', [d.arg('TableName', d.T.string)]),
    withTableName(TableName): {
      assert std.isString(TableName) : 'TableName must be a string',
      Properties+::: { TableName: TableName },
    },
    '#withTableId': d.fn('`withTableId` TableId ', [d.arg('TableId', d.T.string)]),
    withTableId(TableId): {
      assert std.isString(TableId) : 'TableId must be a string',
      Properties+::: { TableId: TableId },
    },
    '#withTimeToLiveSpecification': d.fn('`withTimeToLiveSpecification` TimeToLiveSpecification ', [d.arg('TimeToLiveSpecification', d.T.object)]),
    withTimeToLiveSpecification(TimeToLiveSpecification): {
      assert std.isObject(TimeToLiveSpecification) : 'TimeToLiveSpecification must be a object',
      Properties+::: { TimeToLiveSpecification: TimeToLiveSpecification },
    },
  },
  Table: {
    '#': d.pkg(
      name='Table',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DynamoDB.libsonnet',
      help='The AWS::DynamoDB::Table resource creates a DDB table. For more information, see [CreateTable](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_CreateTable.html) in the *API Reference*. You should be aware of the following behaviors when working with DDB tables:+CFNlong typically creates DDB tables in parallel. However, if your template includes multiple DDB tables with indexes, you must declare dependencies so that the tables are created sequentially. DDBlong limits the number of tables with secondary indexes that are in the creating state. If you create multiple tables with indexes at the same time, DDB returns an error and the stack operation fails. For an example, see [DynamoDB Table with a DependsOn Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#aws-resource-dynamodb-table--examples--DynamoDB_Table_with_a_DependsOn_Attribute).Our guidance is to use the latest schema documented for your CFNlong templates. This schema supports the provisioning of all table settings below. When using this schema in your CFNlong templates, please ensure that your Identity and Access Management (IAM) policies are updated with appropriate permissions to allow for the authorization of these setting changes.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DynamoDB::Table Resource
        * KeySchema Specifies the attributes that make up the primary key for the table. The attributes in the KeySchema property must also be defined in the AttributeDefinitions property.
      |||,
      args=[
        d.arg('KeySchema', ''),
      ]
    ),
    new(
      KeySchema,
    ): {
      local base = self,
      Properties: {
        // Type: undefined
        KeySchema: KeySchema,
      },
      DependsOn:: [],
      Type: 'AWS::DynamoDB::Table',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOnDemandThroughput': d.fn('`withOnDemandThroughput` OnDemandThroughput ', [d.arg('OnDemandThroughput', d.T.object)]),
    withOnDemandThroughput(OnDemandThroughput): {
      assert std.isObject(OnDemandThroughput) : 'OnDemandThroughput must be a object',
      Properties+::: { OnDemandThroughput: OnDemandThroughput },
    },
    '#withSSESpecification': d.fn('`withSSESpecification` SSESpecification ', [d.arg('SSESpecification', d.T.object)]),
    withSSESpecification(SSESpecification): {
      assert std.isObject(SSESpecification) : 'SSESpecification must be a object',
      Properties+::: { SSESpecification: SSESpecification },
    },
    '#withKinesisStreamSpecification': d.fn('`withKinesisStreamSpecification` KinesisStreamSpecification ', [d.arg('KinesisStreamSpecification', d.T.object)]),
    withKinesisStreamSpecification(KinesisStreamSpecification): {
      assert std.isObject(KinesisStreamSpecification) : 'KinesisStreamSpecification must be a object',
      Properties+::: { KinesisStreamSpecification: KinesisStreamSpecification },
    },
    '#withStreamSpecification': d.fn('`withStreamSpecification` StreamSpecification ', [d.arg('StreamSpecification', d.T.object)]),
    withStreamSpecification(StreamSpecification): {
      assert std.isObject(StreamSpecification) : 'StreamSpecification must be a object',
      Properties+::: { StreamSpecification: StreamSpecification },
    },
    '#withContributorInsightsSpecification': d.fn('`withContributorInsightsSpecification` ContributorInsightsSpecification ', [d.arg('ContributorInsightsSpecification', d.T.object)]),
    withContributorInsightsSpecification(ContributorInsightsSpecification): {
      assert std.isObject(ContributorInsightsSpecification) : 'ContributorInsightsSpecification must be a object',
      Properties+::: { ContributorInsightsSpecification: ContributorInsightsSpecification },
    },
    '#withImportSourceSpecification': d.fn('`withImportSourceSpecification` ImportSourceSpecification ', [d.arg('ImportSourceSpecification', d.T.object)]),
    withImportSourceSpecification(ImportSourceSpecification): {
      assert std.isObject(ImportSourceSpecification) : 'ImportSourceSpecification must be a object',
      Properties+::: { ImportSourceSpecification: ImportSourceSpecification },
    },
    '#withPointInTimeRecoverySpecification': d.fn('`withPointInTimeRecoverySpecification` PointInTimeRecoverySpecification ', [d.arg('PointInTimeRecoverySpecification', d.T.object)]),
    withPointInTimeRecoverySpecification(PointInTimeRecoverySpecification): {
      assert std.isObject(PointInTimeRecoverySpecification) : 'PointInTimeRecoverySpecification must be a object',
      Properties+::: { PointInTimeRecoverySpecification: PointInTimeRecoverySpecification },
    },
    '#withProvisionedThroughput': d.fn('`withProvisionedThroughput` ProvisionedThroughput ', [d.arg('ProvisionedThroughput', d.T.object)]),
    withProvisionedThroughput(ProvisionedThroughput): {
      assert std.isObject(ProvisionedThroughput) : 'ProvisionedThroughput must be a object',
      Properties+::: { ProvisionedThroughput: ProvisionedThroughput },
    },
    '#withWarmThroughput': d.fn('`withWarmThroughput` WarmThroughput ', [d.arg('WarmThroughput', d.T.object)]),
    withWarmThroughput(WarmThroughput): {
      assert std.isObject(WarmThroughput) : 'WarmThroughput must be a object',
      Properties+::: { WarmThroughput: WarmThroughput },
    },
    '#withTableName': d.fn('`withTableName` TableName ', [d.arg('TableName', d.T.string)]),
    withTableName(TableName): {
      assert std.isString(TableName) : 'TableName must be a string',
      Properties+::: { TableName: TableName },
    },
    '#withAttributeDefinitions': d.fn('`withAttributeDefinitions` AttributeDefinitions ', [d.arg('AttributeDefinitions', d.T.array)]),
    withAttributeDefinitions(AttributeDefinitions): {
      assert std.isArray(AttributeDefinitions) : 'AttributeDefinitions must be a array',
      Properties+::: { AttributeDefinitions: AttributeDefinitions },
    },
    '#withBillingMode': d.fn('`withBillingMode` BillingMode ', [d.arg('BillingMode', d.T.string)]),
    withBillingMode(BillingMode): {
      assert std.isString(BillingMode) : 'BillingMode must be a string',
      Properties+::: { BillingMode: BillingMode },
    },
    '#withGlobalSecondaryIndexes': d.fn('`withGlobalSecondaryIndexes` GlobalSecondaryIndexes ', [d.arg('GlobalSecondaryIndexes', d.T.array)]),
    withGlobalSecondaryIndexes(GlobalSecondaryIndexes): {
      assert std.isArray(GlobalSecondaryIndexes) : 'GlobalSecondaryIndexes must be a array',
      Properties+::: { GlobalSecondaryIndexes: GlobalSecondaryIndexes },
    },
    '#withResourcePolicy': d.fn('`withResourcePolicy` ResourcePolicy ', [d.arg('ResourcePolicy', d.T.object)]),
    withResourcePolicy(ResourcePolicy): {
      assert std.isObject(ResourcePolicy) : 'ResourcePolicy must be a object',
      Properties+::: { ResourcePolicy: ResourcePolicy },
    },
    '#withLocalSecondaryIndexes': d.fn('`withLocalSecondaryIndexes` LocalSecondaryIndexes ', [d.arg('LocalSecondaryIndexes', d.T.array)]),
    withLocalSecondaryIndexes(LocalSecondaryIndexes): {
      assert std.isArray(LocalSecondaryIndexes) : 'LocalSecondaryIndexes must be a array',
      Properties+::: { LocalSecondaryIndexes: LocalSecondaryIndexes },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withStreamArn': d.fn('`withStreamArn` StreamArn ', [d.arg('StreamArn', d.T.string)]),
    withStreamArn(StreamArn): {
      assert std.isString(StreamArn) : 'StreamArn must be a string',
      Properties+::: { StreamArn: StreamArn },
    },
    '#withDeletionProtectionEnabled': d.fn('`withDeletionProtectionEnabled` DeletionProtectionEnabled ', [d.arg('DeletionProtectionEnabled', d.T.boolean)]),
    withDeletionProtectionEnabled(DeletionProtectionEnabled): {
      assert std.isBoolean(DeletionProtectionEnabled) : 'DeletionProtectionEnabled must be a boolean',
      Properties+::: { DeletionProtectionEnabled: DeletionProtectionEnabled },
    },
    '#withTableClass': d.fn('`withTableClass` TableClass ', [d.arg('TableClass', d.T.string)]),
    withTableClass(TableClass): {
      assert std.isString(TableClass) : 'TableClass must be a string',
      Properties+::: { TableClass: TableClass },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTimeToLiveSpecification': d.fn('`withTimeToLiveSpecification` TimeToLiveSpecification ', [d.arg('TimeToLiveSpecification', d.T.object)]),
    withTimeToLiveSpecification(TimeToLiveSpecification): {
      assert std.isObject(TimeToLiveSpecification) : 'TimeToLiveSpecification must be a object',
      Properties+::: { TimeToLiveSpecification: TimeToLiveSpecification },
    },
  },
}
