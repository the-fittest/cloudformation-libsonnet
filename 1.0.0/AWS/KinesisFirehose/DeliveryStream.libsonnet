{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KinesisFirehose::DeliveryStream',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDeliveryStreamEncryptionConfigurationInput(DeliveryStreamEncryptionConfigurationInput): {
    Properties+::: {
      DeliveryStreamEncryptionConfigurationInput:
        if !std.isObject(DeliveryStreamEncryptionConfigurationInput) then (error 'DeliveryStreamEncryptionConfigurationInput must be an object')
        else if !std.objectHas(DeliveryStreamEncryptionConfigurationInput, 'KeyType') then (error ' have attribute KeyType')
        else DeliveryStreamEncryptionConfigurationInput,
    },
  },
  setDeliveryStreamName(DeliveryStreamName): {
    Properties+::: {
      DeliveryStreamName:
        if !std.isString(DeliveryStreamName) then (error 'DeliveryStreamName must be a string')
        else if std.isEmpty(DeliveryStreamName) then (error 'DeliveryStreamName must be not empty')
        else if std.length(DeliveryStreamName) < 1 then error ('DeliveryStreamName should have at least 1 characters')
        else if std.length(DeliveryStreamName) > 64 then error ('DeliveryStreamName should have not more than 64 characters')
        else DeliveryStreamName,
    },
  },
  setDeliveryStreamType(DeliveryStreamType): {
    Properties+::: {
      DeliveryStreamType:
        if !std.isString(DeliveryStreamType) then (error 'DeliveryStreamType must be a string')
        else if std.isEmpty(DeliveryStreamType) then (error 'DeliveryStreamType must be not empty')
        else if DeliveryStreamType != 'DatabaseAsSource' && DeliveryStreamType != 'DirectPut' && DeliveryStreamType != 'KinesisStreamAsSource' && DeliveryStreamType != 'MSKAsSource' then (error "DeliveryStreamType should be 'DatabaseAsSource' or 'DirectPut' or 'KinesisStreamAsSource' or 'MSKAsSource'")
        else DeliveryStreamType,
    },
  },
  setElasticsearchDestinationConfiguration(ElasticsearchDestinationConfiguration): {
    Properties+::: {
      ElasticsearchDestinationConfiguration:
        if !std.isObject(ElasticsearchDestinationConfiguration) then (error 'ElasticsearchDestinationConfiguration must be an object')
        else if !std.objectHas(ElasticsearchDestinationConfiguration, 'IndexName') then (error ' have attribute IndexName')
        else if !std.objectHas(ElasticsearchDestinationConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else if !std.objectHas(ElasticsearchDestinationConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else ElasticsearchDestinationConfiguration,
    },
  },
  setAmazonopensearchserviceDestinationConfiguration(AmazonopensearchserviceDestinationConfiguration): {
    Properties+::: {
      AmazonopensearchserviceDestinationConfiguration:
        if !std.isObject(AmazonopensearchserviceDestinationConfiguration) then (error 'AmazonopensearchserviceDestinationConfiguration must be an object')
        else if !std.objectHas(AmazonopensearchserviceDestinationConfiguration, 'IndexName') then (error ' have attribute IndexName')
        else if !std.objectHas(AmazonopensearchserviceDestinationConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else if !std.objectHas(AmazonopensearchserviceDestinationConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else AmazonopensearchserviceDestinationConfiguration,
    },
  },
  setAmazonOpenSearchServerlessDestinationConfiguration(AmazonOpenSearchServerlessDestinationConfiguration): {
    Properties+::: {
      AmazonOpenSearchServerlessDestinationConfiguration:
        if !std.isObject(AmazonOpenSearchServerlessDestinationConfiguration) then (error 'AmazonOpenSearchServerlessDestinationConfiguration must be an object')
        else if !std.objectHas(AmazonOpenSearchServerlessDestinationConfiguration, 'IndexName') then (error ' have attribute IndexName')
        else if !std.objectHas(AmazonOpenSearchServerlessDestinationConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else if !std.objectHas(AmazonOpenSearchServerlessDestinationConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else AmazonOpenSearchServerlessDestinationConfiguration,
    },
  },
  setExtendedS3DestinationConfiguration(ExtendedS3DestinationConfiguration): {
    Properties+::: {
      ExtendedS3DestinationConfiguration:
        if !std.isObject(ExtendedS3DestinationConfiguration) then (error 'ExtendedS3DestinationConfiguration must be an object')
        else if !std.objectHas(ExtendedS3DestinationConfiguration, 'BucketARN') then (error ' have attribute BucketARN')
        else if !std.objectHas(ExtendedS3DestinationConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else ExtendedS3DestinationConfiguration,
    },
  },
  setDatabaseSourceConfiguration(DatabaseSourceConfiguration): {
    Properties+::: {
      DatabaseSourceConfiguration:
        if !std.isObject(DatabaseSourceConfiguration) then (error 'DatabaseSourceConfiguration must be an object')
        else if !std.objectHas(DatabaseSourceConfiguration, 'Type') then (error ' have attribute Type')
        else if !std.objectHas(DatabaseSourceConfiguration, 'Endpoint') then (error ' have attribute Endpoint')
        else if !std.objectHas(DatabaseSourceConfiguration, 'Port') then (error ' have attribute Port')
        else if !std.objectHas(DatabaseSourceConfiguration, 'Databases') then (error ' have attribute Databases')
        else if !std.objectHas(DatabaseSourceConfiguration, 'Tables') then (error ' have attribute Tables')
        else if !std.objectHas(DatabaseSourceConfiguration, 'SnapshotWatermarkTable') then (error ' have attribute SnapshotWatermarkTable')
        else if !std.objectHas(DatabaseSourceConfiguration, 'DatabaseSourceAuthenticationConfiguration') then (error ' have attribute DatabaseSourceAuthenticationConfiguration')
        else if !std.objectHas(DatabaseSourceConfiguration, 'DatabaseSourceVPCConfiguration') then (error ' have attribute DatabaseSourceVPCConfiguration')
        else DatabaseSourceConfiguration,
    },
  },
  setKinesisStreamSourceConfiguration(KinesisStreamSourceConfiguration): {
    Properties+::: {
      KinesisStreamSourceConfiguration:
        if !std.isObject(KinesisStreamSourceConfiguration) then (error 'KinesisStreamSourceConfiguration must be an object')
        else if !std.objectHas(KinesisStreamSourceConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else if !std.objectHas(KinesisStreamSourceConfiguration, 'KinesisStreamARN') then (error ' have attribute KinesisStreamARN')
        else KinesisStreamSourceConfiguration,
    },
  },
  setMSKSourceConfiguration(MSKSourceConfiguration): {
    Properties+::: {
      MSKSourceConfiguration:
        if !std.isObject(MSKSourceConfiguration) then (error 'MSKSourceConfiguration must be an object')
        else if !std.objectHas(MSKSourceConfiguration, 'MSKClusterARN') then (error ' have attribute MSKClusterARN')
        else if !std.objectHas(MSKSourceConfiguration, 'TopicName') then (error ' have attribute TopicName')
        else if !std.objectHas(MSKSourceConfiguration, 'AuthenticationConfiguration') then (error ' have attribute AuthenticationConfiguration')
        else MSKSourceConfiguration,
    },
  },
  setRedshiftDestinationConfiguration(RedshiftDestinationConfiguration): {
    Properties+::: {
      RedshiftDestinationConfiguration:
        if !std.isObject(RedshiftDestinationConfiguration) then (error 'RedshiftDestinationConfiguration must be an object')
        else if !std.objectHas(RedshiftDestinationConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else if !std.objectHas(RedshiftDestinationConfiguration, 'ClusterJDBCURL') then (error ' have attribute ClusterJDBCURL')
        else if !std.objectHas(RedshiftDestinationConfiguration, 'CopyCommand') then (error ' have attribute CopyCommand')
        else if !std.objectHas(RedshiftDestinationConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else RedshiftDestinationConfiguration,
    },
  },
  setS3DestinationConfiguration(S3DestinationConfiguration): {
    Properties+::: {
      S3DestinationConfiguration:
        if !std.isObject(S3DestinationConfiguration) then (error 'S3DestinationConfiguration must be an object')
        else if !std.objectHas(S3DestinationConfiguration, 'BucketARN') then (error ' have attribute BucketARN')
        else if !std.objectHas(S3DestinationConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else S3DestinationConfiguration,
    },
  },
  setSplunkDestinationConfiguration(SplunkDestinationConfiguration): {
    Properties+::: {
      SplunkDestinationConfiguration:
        if !std.isObject(SplunkDestinationConfiguration) then (error 'SplunkDestinationConfiguration must be an object')
        else if !std.objectHas(SplunkDestinationConfiguration, 'HECEndpoint') then (error ' have attribute HECEndpoint')
        else if !std.objectHas(SplunkDestinationConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else if !std.objectHas(SplunkDestinationConfiguration, 'HECEndpointType') then (error ' have attribute HECEndpointType')
        else SplunkDestinationConfiguration,
    },
  },
  setHttpEndpointDestinationConfiguration(HttpEndpointDestinationConfiguration): {
    Properties+::: {
      HttpEndpointDestinationConfiguration:
        if !std.isObject(HttpEndpointDestinationConfiguration) then (error 'HttpEndpointDestinationConfiguration must be an object')
        else if !std.objectHas(HttpEndpointDestinationConfiguration, 'EndpointConfiguration') then (error ' have attribute EndpointConfiguration')
        else if !std.objectHas(HttpEndpointDestinationConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else HttpEndpointDestinationConfiguration,
    },
  },
  setSnowflakeDestinationConfiguration(SnowflakeDestinationConfiguration): {
    Properties+::: {
      SnowflakeDestinationConfiguration:
        if !std.isObject(SnowflakeDestinationConfiguration) then (error 'SnowflakeDestinationConfiguration must be an object')
        else if !std.objectHas(SnowflakeDestinationConfiguration, 'AccountUrl') then (error ' have attribute AccountUrl')
        else if !std.objectHas(SnowflakeDestinationConfiguration, 'Database') then (error ' have attribute Database')
        else if !std.objectHas(SnowflakeDestinationConfiguration, 'Schema') then (error ' have attribute Schema')
        else if !std.objectHas(SnowflakeDestinationConfiguration, 'Table') then (error ' have attribute Table')
        else if !std.objectHas(SnowflakeDestinationConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else if !std.objectHas(SnowflakeDestinationConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else SnowflakeDestinationConfiguration,
    },
  },
  setIcebergDestinationConfiguration(IcebergDestinationConfiguration): {
    Properties+::: {
      IcebergDestinationConfiguration:
        if !std.isObject(IcebergDestinationConfiguration) then (error 'IcebergDestinationConfiguration must be an object')
        else if !std.objectHas(IcebergDestinationConfiguration, 'RoleARN') then (error ' have attribute RoleARN')
        else if !std.objectHas(IcebergDestinationConfiguration, 'CatalogConfiguration') then (error ' have attribute CatalogConfiguration')
        else if !std.objectHas(IcebergDestinationConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else IcebergDestinationConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
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
