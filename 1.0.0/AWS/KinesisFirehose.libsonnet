local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DeliveryStream: {
    '#': d.pkg(
      name='DeliveryStream',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisFirehose.libsonnet',
      help='Resource Type definition for AWS::KinesisFirehose::DeliveryStream',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisFirehose::DeliveryStream Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::KinesisFirehose::DeliveryStream',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDeliveryStreamEncryptionConfigurationInput': d.fn('`withDeliveryStreamEncryptionConfigurationInput` DeliveryStreamEncryptionConfigurationInput ', [d.arg('DeliveryStreamEncryptionConfigurationInput', d.T.object)]),
    withDeliveryStreamEncryptionConfigurationInput(DeliveryStreamEncryptionConfigurationInput): {
      assert std.isObject(DeliveryStreamEncryptionConfigurationInput) : 'DeliveryStreamEncryptionConfigurationInput must be a object',
      Properties+::: { DeliveryStreamEncryptionConfigurationInput: DeliveryStreamEncryptionConfigurationInput },
    },
    '#withDeliveryStreamName': d.fn('`withDeliveryStreamName` DeliveryStreamName ', [d.arg('DeliveryStreamName', d.T.string)]),
    withDeliveryStreamName(DeliveryStreamName): {
      assert std.isString(DeliveryStreamName) : 'DeliveryStreamName must be a string',
      Properties+::: { DeliveryStreamName: DeliveryStreamName },
    },
    '#withDeliveryStreamType': d.fn('`withDeliveryStreamType` DeliveryStreamType ', [d.arg('DeliveryStreamType', d.T.string)]),
    withDeliveryStreamType(DeliveryStreamType): {
      assert std.isString(DeliveryStreamType) : 'DeliveryStreamType must be a string',
      assert DeliveryStreamType == 'DatabaseAsSource' || DeliveryStreamType == 'DirectPut' || DeliveryStreamType == 'KinesisStreamAsSource' || DeliveryStreamType == 'MSKAsSource' : "DeliveryStreamType must be either 'DatabaseAsSource' or 'DirectPut' or 'KinesisStreamAsSource' or 'MSKAsSource'",
      Properties+::: { DeliveryStreamType: DeliveryStreamType },
    },
    '#withElasticsearchDestinationConfiguration': d.fn('`withElasticsearchDestinationConfiguration` ElasticsearchDestinationConfiguration ', [d.arg('ElasticsearchDestinationConfiguration', d.T.object)]),
    withElasticsearchDestinationConfiguration(ElasticsearchDestinationConfiguration): {
      assert std.isObject(ElasticsearchDestinationConfiguration) : 'ElasticsearchDestinationConfiguration must be a object',
      Properties+::: { ElasticsearchDestinationConfiguration: ElasticsearchDestinationConfiguration },
    },
    '#withAmazonopensearchserviceDestinationConfiguration': d.fn('`withAmazonopensearchserviceDestinationConfiguration` AmazonopensearchserviceDestinationConfiguration ', [d.arg('AmazonopensearchserviceDestinationConfiguration', d.T.object)]),
    withAmazonopensearchserviceDestinationConfiguration(AmazonopensearchserviceDestinationConfiguration): {
      assert std.isObject(AmazonopensearchserviceDestinationConfiguration) : 'AmazonopensearchserviceDestinationConfiguration must be a object',
      Properties+::: { AmazonopensearchserviceDestinationConfiguration: AmazonopensearchserviceDestinationConfiguration },
    },
    '#withAmazonOpenSearchServerlessDestinationConfiguration': d.fn('`withAmazonOpenSearchServerlessDestinationConfiguration` AmazonOpenSearchServerlessDestinationConfiguration ', [d.arg('AmazonOpenSearchServerlessDestinationConfiguration', d.T.object)]),
    withAmazonOpenSearchServerlessDestinationConfiguration(AmazonOpenSearchServerlessDestinationConfiguration): {
      assert std.isObject(AmazonOpenSearchServerlessDestinationConfiguration) : 'AmazonOpenSearchServerlessDestinationConfiguration must be a object',
      Properties+::: { AmazonOpenSearchServerlessDestinationConfiguration: AmazonOpenSearchServerlessDestinationConfiguration },
    },
    '#withExtendedS3DestinationConfiguration': d.fn('`withExtendedS3DestinationConfiguration` ExtendedS3DestinationConfiguration ', [d.arg('ExtendedS3DestinationConfiguration', d.T.object)]),
    withExtendedS3DestinationConfiguration(ExtendedS3DestinationConfiguration): {
      assert std.isObject(ExtendedS3DestinationConfiguration) : 'ExtendedS3DestinationConfiguration must be a object',
      Properties+::: { ExtendedS3DestinationConfiguration: ExtendedS3DestinationConfiguration },
    },
    '#withDatabaseSourceConfiguration': d.fn('`withDatabaseSourceConfiguration` DatabaseSourceConfiguration ', [d.arg('DatabaseSourceConfiguration', d.T.object)]),
    withDatabaseSourceConfiguration(DatabaseSourceConfiguration): {
      assert std.isObject(DatabaseSourceConfiguration) : 'DatabaseSourceConfiguration must be a object',
      Properties+::: { DatabaseSourceConfiguration: DatabaseSourceConfiguration },
    },
    '#withKinesisStreamSourceConfiguration': d.fn('`withKinesisStreamSourceConfiguration` KinesisStreamSourceConfiguration ', [d.arg('KinesisStreamSourceConfiguration', d.T.object)]),
    withKinesisStreamSourceConfiguration(KinesisStreamSourceConfiguration): {
      assert std.isObject(KinesisStreamSourceConfiguration) : 'KinesisStreamSourceConfiguration must be a object',
      Properties+::: { KinesisStreamSourceConfiguration: KinesisStreamSourceConfiguration },
    },
    '#withMSKSourceConfiguration': d.fn('`withMSKSourceConfiguration` MSKSourceConfiguration ', [d.arg('MSKSourceConfiguration', d.T.object)]),
    withMSKSourceConfiguration(MSKSourceConfiguration): {
      assert std.isObject(MSKSourceConfiguration) : 'MSKSourceConfiguration must be a object',
      Properties+::: { MSKSourceConfiguration: MSKSourceConfiguration },
    },
    '#withRedshiftDestinationConfiguration': d.fn('`withRedshiftDestinationConfiguration` RedshiftDestinationConfiguration ', [d.arg('RedshiftDestinationConfiguration', d.T.object)]),
    withRedshiftDestinationConfiguration(RedshiftDestinationConfiguration): {
      assert std.isObject(RedshiftDestinationConfiguration) : 'RedshiftDestinationConfiguration must be a object',
      Properties+::: { RedshiftDestinationConfiguration: RedshiftDestinationConfiguration },
    },
    '#withS3DestinationConfiguration': d.fn('`withS3DestinationConfiguration` S3DestinationConfiguration ', [d.arg('S3DestinationConfiguration', d.T.object)]),
    withS3DestinationConfiguration(S3DestinationConfiguration): {
      assert std.isObject(S3DestinationConfiguration) : 'S3DestinationConfiguration must be a object',
      Properties+::: { S3DestinationConfiguration: S3DestinationConfiguration },
    },
    '#withSplunkDestinationConfiguration': d.fn('`withSplunkDestinationConfiguration` SplunkDestinationConfiguration ', [d.arg('SplunkDestinationConfiguration', d.T.object)]),
    withSplunkDestinationConfiguration(SplunkDestinationConfiguration): {
      assert std.isObject(SplunkDestinationConfiguration) : 'SplunkDestinationConfiguration must be a object',
      Properties+::: { SplunkDestinationConfiguration: SplunkDestinationConfiguration },
    },
    '#withHttpEndpointDestinationConfiguration': d.fn('`withHttpEndpointDestinationConfiguration` HttpEndpointDestinationConfiguration ', [d.arg('HttpEndpointDestinationConfiguration', d.T.object)]),
    withHttpEndpointDestinationConfiguration(HttpEndpointDestinationConfiguration): {
      assert std.isObject(HttpEndpointDestinationConfiguration) : 'HttpEndpointDestinationConfiguration must be a object',
      Properties+::: { HttpEndpointDestinationConfiguration: HttpEndpointDestinationConfiguration },
    },
    '#withSnowflakeDestinationConfiguration': d.fn('`withSnowflakeDestinationConfiguration` SnowflakeDestinationConfiguration ', [d.arg('SnowflakeDestinationConfiguration', d.T.object)]),
    withSnowflakeDestinationConfiguration(SnowflakeDestinationConfiguration): {
      assert std.isObject(SnowflakeDestinationConfiguration) : 'SnowflakeDestinationConfiguration must be a object',
      Properties+::: { SnowflakeDestinationConfiguration: SnowflakeDestinationConfiguration },
    },
    '#withIcebergDestinationConfiguration': d.fn('`withIcebergDestinationConfiguration` IcebergDestinationConfiguration ', [d.arg('IcebergDestinationConfiguration', d.T.object)]),
    withIcebergDestinationConfiguration(IcebergDestinationConfiguration): {
      assert std.isObject(IcebergDestinationConfiguration) : 'IcebergDestinationConfiguration must be a object',
      Properties+::: { IcebergDestinationConfiguration: IcebergDestinationConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
