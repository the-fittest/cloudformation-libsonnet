{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KinesisFirehose::DeliveryStream',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDeliveryStreamEncryptionConfigurationInput(DeliveryStreamEncryptionConfigurationInput): {
    assert std.isObject(DeliveryStreamEncryptionConfigurationInput) : 'DeliveryStreamEncryptionConfigurationInput must be a object',
    Properties+::: {
      DeliveryStreamEncryptionConfigurationInput: DeliveryStreamEncryptionConfigurationInput,
    },
  },
  withDeliveryStreamName(DeliveryStreamName): {
    assert std.isString(DeliveryStreamName) : 'DeliveryStreamName must be a string',
    Properties+::: {
      DeliveryStreamName: DeliveryStreamName,
    },
  },
  withDeliveryStreamType(DeliveryStreamType): {
    assert std.isString(DeliveryStreamType) : 'DeliveryStreamType must be a string',
    assert DeliveryStreamType == 'DatabaseAsSource' || DeliveryStreamType == 'DirectPut' || DeliveryStreamType == 'KinesisStreamAsSource' || DeliveryStreamType == 'MSKAsSource' : "DeliveryStreamType should be 'DatabaseAsSource' or 'DirectPut' or 'KinesisStreamAsSource' or 'MSKAsSource'",
    Properties+::: {
      DeliveryStreamType: DeliveryStreamType,
    },
  },
  withElasticsearchDestinationConfiguration(ElasticsearchDestinationConfiguration): {
    assert std.isObject(ElasticsearchDestinationConfiguration) : 'ElasticsearchDestinationConfiguration must be a object',
    Properties+::: {
      ElasticsearchDestinationConfiguration: ElasticsearchDestinationConfiguration,
    },
  },
  withAmazonopensearchserviceDestinationConfiguration(AmazonopensearchserviceDestinationConfiguration): {
    assert std.isObject(AmazonopensearchserviceDestinationConfiguration) : 'AmazonopensearchserviceDestinationConfiguration must be a object',
    Properties+::: {
      AmazonopensearchserviceDestinationConfiguration: AmazonopensearchserviceDestinationConfiguration,
    },
  },
  withAmazonOpenSearchServerlessDestinationConfiguration(AmazonOpenSearchServerlessDestinationConfiguration): {
    assert std.isObject(AmazonOpenSearchServerlessDestinationConfiguration) : 'AmazonOpenSearchServerlessDestinationConfiguration must be a object',
    Properties+::: {
      AmazonOpenSearchServerlessDestinationConfiguration: AmazonOpenSearchServerlessDestinationConfiguration,
    },
  },
  withExtendedS3DestinationConfiguration(ExtendedS3DestinationConfiguration): {
    assert std.isObject(ExtendedS3DestinationConfiguration) : 'ExtendedS3DestinationConfiguration must be a object',
    Properties+::: {
      ExtendedS3DestinationConfiguration: ExtendedS3DestinationConfiguration,
    },
  },
  withDatabaseSourceConfiguration(DatabaseSourceConfiguration): {
    assert std.isObject(DatabaseSourceConfiguration) : 'DatabaseSourceConfiguration must be a object',
    Properties+::: {
      DatabaseSourceConfiguration: DatabaseSourceConfiguration,
    },
  },
  withKinesisStreamSourceConfiguration(KinesisStreamSourceConfiguration): {
    assert std.isObject(KinesisStreamSourceConfiguration) : 'KinesisStreamSourceConfiguration must be a object',
    Properties+::: {
      KinesisStreamSourceConfiguration: KinesisStreamSourceConfiguration,
    },
  },
  withMSKSourceConfiguration(MSKSourceConfiguration): {
    assert std.isObject(MSKSourceConfiguration) : 'MSKSourceConfiguration must be a object',
    Properties+::: {
      MSKSourceConfiguration: MSKSourceConfiguration,
    },
  },
  withRedshiftDestinationConfiguration(RedshiftDestinationConfiguration): {
    assert std.isObject(RedshiftDestinationConfiguration) : 'RedshiftDestinationConfiguration must be a object',
    Properties+::: {
      RedshiftDestinationConfiguration: RedshiftDestinationConfiguration,
    },
  },
  withS3DestinationConfiguration(S3DestinationConfiguration): {
    assert std.isObject(S3DestinationConfiguration) : 'S3DestinationConfiguration must be a object',
    Properties+::: {
      S3DestinationConfiguration: S3DestinationConfiguration,
    },
  },
  withSplunkDestinationConfiguration(SplunkDestinationConfiguration): {
    assert std.isObject(SplunkDestinationConfiguration) : 'SplunkDestinationConfiguration must be a object',
    Properties+::: {
      SplunkDestinationConfiguration: SplunkDestinationConfiguration,
    },
  },
  withHttpEndpointDestinationConfiguration(HttpEndpointDestinationConfiguration): {
    assert std.isObject(HttpEndpointDestinationConfiguration) : 'HttpEndpointDestinationConfiguration must be a object',
    Properties+::: {
      HttpEndpointDestinationConfiguration: HttpEndpointDestinationConfiguration,
    },
  },
  withSnowflakeDestinationConfiguration(SnowflakeDestinationConfiguration): {
    assert std.isObject(SnowflakeDestinationConfiguration) : 'SnowflakeDestinationConfiguration must be a object',
    Properties+::: {
      SnowflakeDestinationConfiguration: SnowflakeDestinationConfiguration,
    },
  },
  withIcebergDestinationConfiguration(IcebergDestinationConfiguration): {
    assert std.isObject(IcebergDestinationConfiguration) : 'IcebergDestinationConfiguration must be a object',
    Properties+::: {
      IcebergDestinationConfiguration: IcebergDestinationConfiguration,
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
}
