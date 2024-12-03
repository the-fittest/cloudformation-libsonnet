local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Certificate: {
    '#': d.pkg(
      name='Certificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource Type definition for AWS::DMS::Certificate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::Certificate Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::DMS::Certificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withCertificateIdentifier': d.fn('`withCertificateIdentifier` CertificateIdentifier ', [d.arg('CertificateIdentifier', d.T.string)]),
    withCertificateIdentifier(CertificateIdentifier): {
      assert std.isString(CertificateIdentifier) : 'CertificateIdentifier must be a string',
      Properties+::: { CertificateIdentifier: CertificateIdentifier },
    },
    '#withCertificatePem': d.fn('`withCertificatePem` CertificatePem ', [d.arg('CertificatePem', d.T.string)]),
    withCertificatePem(CertificatePem): {
      assert std.isString(CertificatePem) : 'CertificatePem must be a string',
      Properties+::: { CertificatePem: CertificatePem },
    },
    '#withCertificateWallet': d.fn('`withCertificateWallet` CertificateWallet ', [d.arg('CertificateWallet', d.T.string)]),
    withCertificateWallet(CertificateWallet): {
      assert std.isString(CertificateWallet) : 'CertificateWallet must be a string',
      Properties+::: { CertificateWallet: CertificateWallet },
    },
  },
  DataMigration: {
    '#': d.pkg(
      name='DataMigration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource schema for AWS::DMS::DataMigration.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::DataMigration Resource
        * DataMigrationType The property describes the type of migration.
        * MigrationProjectIdentifier The property describes an identifier for the migration project. It is used for describing/deleting/modifying can be name/arn
        * ServiceAccessRoleArn The property describes Amazon Resource Name (ARN) of the service access role.
      |||,
      args=[
        d.arg('DataMigrationType', 'd.T.string'),
        d.arg('MigrationProjectIdentifier', 'd.T.string'),
        d.arg('ServiceAccessRoleArn', 'd.T.string'),
      ]
    ),
    new(
      DataMigrationType,
      MigrationProjectIdentifier,
      ServiceAccessRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DataMigrationType) : 'DataMigrationType must be a string',
        assert DataMigrationType == 'full-load' || DataMigrationType == 'cdc' || DataMigrationType == 'full-load-and-cdc' : "DataMigrationType must be either 'full-load' or 'cdc' or 'full-load-and-cdc'",
        DataMigrationType: DataMigrationType,
        assert std.isString(MigrationProjectIdentifier) : 'MigrationProjectIdentifier must be a string',
        MigrationProjectIdentifier: MigrationProjectIdentifier,
        assert std.isString(ServiceAccessRoleArn) : 'ServiceAccessRoleArn must be a string',
        ServiceAccessRoleArn: ServiceAccessRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::DMS::DataMigration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDataMigrationName': d.fn('`withDataMigrationName` DataMigrationName ', [d.arg('DataMigrationName', d.T.string)]),
    withDataMigrationName(DataMigrationName): {
      assert std.isString(DataMigrationName) : 'DataMigrationName must be a string',
      Properties+::: { DataMigrationName: DataMigrationName },
    },
    '#withDataMigrationArn': d.fn('`withDataMigrationArn` DataMigrationArn ', [d.arg('DataMigrationArn', d.T.string)]),
    withDataMigrationArn(DataMigrationArn): {
      assert std.isString(DataMigrationArn) : 'DataMigrationArn must be a string',
      Properties+::: { DataMigrationArn: DataMigrationArn },
    },
    '#withDataMigrationIdentifier': d.fn('`withDataMigrationIdentifier` DataMigrationIdentifier ', [d.arg('DataMigrationIdentifier', d.T.string)]),
    withDataMigrationIdentifier(DataMigrationIdentifier): {
      assert std.isString(DataMigrationIdentifier) : 'DataMigrationIdentifier must be a string',
      Properties+::: { DataMigrationIdentifier: DataMigrationIdentifier },
    },
    '#withDataMigrationCreateTime': d.fn('`withDataMigrationCreateTime` DataMigrationCreateTime ', [d.arg('DataMigrationCreateTime', d.T.string)]),
    withDataMigrationCreateTime(DataMigrationCreateTime): {
      assert std.isString(DataMigrationCreateTime) : 'DataMigrationCreateTime must be a string',
      Properties+::: { DataMigrationCreateTime: DataMigrationCreateTime },
    },
    '#withDataMigrationSettings': d.fn('`withDataMigrationSettings` DataMigrationSettings ', [d.arg('DataMigrationSettings', d.T.object)]),
    withDataMigrationSettings(DataMigrationSettings): {
      assert std.isObject(DataMigrationSettings) : 'DataMigrationSettings must be a object',
      Properties+::: { DataMigrationSettings: DataMigrationSettings },
    },
    '#withSourceDataSettings': d.fn('`withSourceDataSettings` SourceDataSettings ', [d.arg('SourceDataSettings', d.T.array)]),
    withSourceDataSettings(SourceDataSettings): {
      assert std.isArray(SourceDataSettings) : 'SourceDataSettings must be a array',
      Properties+::: { SourceDataSettings: SourceDataSettings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DataProvider: {
    '#': d.pkg(
      name='DataProvider',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource schema for AWS::DMS::DataProvider',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::DataProvider Resource
        * Engine The property describes a data engine for the data provider.
      |||,
      args=[
        d.arg('Engine', 'd.T.string'),
      ]
    ),
    new(
      Engine,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Engine) : 'Engine must be a string',
        assert Engine == 'postgres' || Engine == 'mysql' || Engine == 'oracle' || Engine == 'sqlserver' || Engine == 'aurora' || Engine == 'aurora_postgresql' : "Engine must be either 'postgres' or 'mysql' or 'oracle' or 'sqlserver' or 'aurora' or 'aurora_postgresql'",
        Engine: Engine,
      },
      DependsOn:: [],
      Type: 'AWS::DMS::DataProvider',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDataProviderName': d.fn('`withDataProviderName` DataProviderName ', [d.arg('DataProviderName', d.T.string)]),
    withDataProviderName(DataProviderName): {
      assert std.isString(DataProviderName) : 'DataProviderName must be a string',
      Properties+::: { DataProviderName: DataProviderName },
    },
    '#withDataProviderIdentifier': d.fn('`withDataProviderIdentifier` DataProviderIdentifier ', [d.arg('DataProviderIdentifier', d.T.string)]),
    withDataProviderIdentifier(DataProviderIdentifier): {
      assert std.isString(DataProviderIdentifier) : 'DataProviderIdentifier must be a string',
      Properties+::: { DataProviderIdentifier: DataProviderIdentifier },
    },
    '#withDataProviderArn': d.fn('`withDataProviderArn` DataProviderArn ', [d.arg('DataProviderArn', d.T.string)]),
    withDataProviderArn(DataProviderArn): {
      assert std.isString(DataProviderArn) : 'DataProviderArn must be a string',
      Properties+::: { DataProviderArn: DataProviderArn },
    },
    '#withDataProviderCreationTime': d.fn('`withDataProviderCreationTime` DataProviderCreationTime ', [d.arg('DataProviderCreationTime', d.T.string)]),
    withDataProviderCreationTime(DataProviderCreationTime): {
      assert std.isString(DataProviderCreationTime) : 'DataProviderCreationTime must be a string',
      Properties+::: { DataProviderCreationTime: DataProviderCreationTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withExactSettings': d.fn('`withExactSettings` ExactSettings ', [d.arg('ExactSettings', d.T.boolean)]),
    withExactSettings(ExactSettings): {
      assert std.isBoolean(ExactSettings) : 'ExactSettings must be a boolean',
      Properties+::: { ExactSettings: ExactSettings },
    },
    '#withSettings': d.fn('`withSettings` Settings ', [d.arg('Settings', d.T.object)]),
    withSettings(Settings): {
      assert std.isObject(Settings) : 'Settings must be a object',
      Properties+::: { Settings: Settings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Endpoint: {
    '#': d.pkg(
      name='Endpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource Type definition for AWS::DMS::Endpoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::Endpoint Resource
        * EndpointType 
        * EngineName 
      |||,
      args=[
        d.arg('EndpointType', 'd.T.string'),
        d.arg('EngineName', 'd.T.string'),
      ]
    ),
    new(
      EndpointType,
      EngineName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EndpointType) : 'EndpointType must be a string',
        EndpointType: EndpointType,
        assert std.isString(EngineName) : 'EngineName must be a string',
        EngineName: EngineName,
      },
      DependsOn:: [],
      Type: 'AWS::DMS::Endpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSybaseSettings': d.fn('`withSybaseSettings` SybaseSettings ', [d.arg('SybaseSettings', d.T.object)]),
    withSybaseSettings(SybaseSettings): {
      assert std.isObject(SybaseSettings) : 'SybaseSettings must be a object',
      Properties+::: { SybaseSettings: SybaseSettings },
    },
    '#withRedisSettings': d.fn('`withRedisSettings` RedisSettings ', [d.arg('RedisSettings', d.T.object)]),
    withRedisSettings(RedisSettings): {
      assert std.isObject(RedisSettings) : 'RedisSettings must be a object',
      Properties+::: { RedisSettings: RedisSettings },
    },
    '#withOracleSettings': d.fn('`withOracleSettings` OracleSettings ', [d.arg('OracleSettings', d.T.object)]),
    withOracleSettings(OracleSettings): {
      assert std.isObject(OracleSettings) : 'OracleSettings must be a object',
      Properties+::: { OracleSettings: OracleSettings },
    },
    '#withKafkaSettings': d.fn('`withKafkaSettings` KafkaSettings ', [d.arg('KafkaSettings', d.T.object)]),
    withKafkaSettings(KafkaSettings): {
      assert std.isObject(KafkaSettings) : 'KafkaSettings must be a object',
      Properties+::: { KafkaSettings: KafkaSettings },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withMySqlSettings': d.fn('`withMySqlSettings` MySqlSettings ', [d.arg('MySqlSettings', d.T.object)]),
    withMySqlSettings(MySqlSettings): {
      assert std.isObject(MySqlSettings) : 'MySqlSettings must be a object',
      Properties+::: { MySqlSettings: MySqlSettings },
    },
    '#withS3Settings': d.fn('`withS3Settings` S3Settings ', [d.arg('S3Settings', d.T.object)]),
    withS3Settings(S3Settings): {
      assert std.isObject(S3Settings) : 'S3Settings must be a object',
      Properties+::: { S3Settings: S3Settings },
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
    '#withKinesisSettings': d.fn('`withKinesisSettings` KinesisSettings ', [d.arg('KinesisSettings', d.T.object)]),
    withKinesisSettings(KinesisSettings): {
      assert std.isObject(KinesisSettings) : 'KinesisSettings must be a object',
      Properties+::: { KinesisSettings: KinesisSettings },
    },
    '#withSslMode': d.fn('`withSslMode` SslMode ', [d.arg('SslMode', d.T.string)]),
    withSslMode(SslMode): {
      assert std.isString(SslMode) : 'SslMode must be a string',
      Properties+::: { SslMode: SslMode },
    },
    '#withRedshiftSettings': d.fn('`withRedshiftSettings` RedshiftSettings ', [d.arg('RedshiftSettings', d.T.object)]),
    withRedshiftSettings(RedshiftSettings): {
      assert std.isObject(RedshiftSettings) : 'RedshiftSettings must be a object',
      Properties+::: { RedshiftSettings: RedshiftSettings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withPassword': d.fn('`withPassword` Password ', [d.arg('Password', d.T.string)]),
    withPassword(Password): {
      assert std.isString(Password) : 'Password must be a string',
      Properties+::: { Password: Password },
    },
    '#withMongoDbSettings': d.fn('`withMongoDbSettings` MongoDbSettings ', [d.arg('MongoDbSettings', d.T.object)]),
    withMongoDbSettings(MongoDbSettings): {
      assert std.isObject(MongoDbSettings) : 'MongoDbSettings must be a object',
      Properties+::: { MongoDbSettings: MongoDbSettings },
    },
    '#withIbmDb2Settings': d.fn('`withIbmDb2Settings` IbmDb2Settings ', [d.arg('IbmDb2Settings', d.T.object)]),
    withIbmDb2Settings(IbmDb2Settings): {
      assert std.isObject(IbmDb2Settings) : 'IbmDb2Settings must be a object',
      Properties+::: { IbmDb2Settings: IbmDb2Settings },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withExternalId': d.fn('`withExternalId` ExternalId ', [d.arg('ExternalId', d.T.string)]),
    withExternalId(ExternalId): {
      assert std.isString(ExternalId) : 'ExternalId must be a string',
      Properties+::: { ExternalId: ExternalId },
    },
    '#withDatabaseName': d.fn('`withDatabaseName` DatabaseName ', [d.arg('DatabaseName', d.T.string)]),
    withDatabaseName(DatabaseName): {
      assert std.isString(DatabaseName) : 'DatabaseName must be a string',
      Properties+::: { DatabaseName: DatabaseName },
    },
    '#withNeptuneSettings': d.fn('`withNeptuneSettings` NeptuneSettings ', [d.arg('NeptuneSettings', d.T.object)]),
    withNeptuneSettings(NeptuneSettings): {
      assert std.isObject(NeptuneSettings) : 'NeptuneSettings must be a object',
      Properties+::: { NeptuneSettings: NeptuneSettings },
    },
    '#withElasticsearchSettings': d.fn('`withElasticsearchSettings` ElasticsearchSettings ', [d.arg('ElasticsearchSettings', d.T.object)]),
    withElasticsearchSettings(ElasticsearchSettings): {
      assert std.isObject(ElasticsearchSettings) : 'ElasticsearchSettings must be a object',
      Properties+::: { ElasticsearchSettings: ElasticsearchSettings },
    },
    '#withDocDbSettings': d.fn('`withDocDbSettings` DocDbSettings ', [d.arg('DocDbSettings', d.T.object)]),
    withDocDbSettings(DocDbSettings): {
      assert std.isObject(DocDbSettings) : 'DocDbSettings must be a object',
      Properties+::: { DocDbSettings: DocDbSettings },
    },
    '#withDynamoDbSettings': d.fn('`withDynamoDbSettings` DynamoDbSettings ', [d.arg('DynamoDbSettings', d.T.object)]),
    withDynamoDbSettings(DynamoDbSettings): {
      assert std.isObject(DynamoDbSettings) : 'DynamoDbSettings must be a object',
      Properties+::: { DynamoDbSettings: DynamoDbSettings },
    },
    '#withUsername': d.fn('`withUsername` Username ', [d.arg('Username', d.T.string)]),
    withUsername(Username): {
      assert std.isString(Username) : 'Username must be a string',
      Properties+::: { Username: Username },
    },
    '#withMicrosoftSqlServerSettings': d.fn('`withMicrosoftSqlServerSettings` MicrosoftSqlServerSettings ', [d.arg('MicrosoftSqlServerSettings', d.T.object)]),
    withMicrosoftSqlServerSettings(MicrosoftSqlServerSettings): {
      assert std.isObject(MicrosoftSqlServerSettings) : 'MicrosoftSqlServerSettings must be a object',
      Properties+::: { MicrosoftSqlServerSettings: MicrosoftSqlServerSettings },
    },
    '#withGcpMySQLSettings': d.fn('`withGcpMySQLSettings` GcpMySQLSettings ', [d.arg('GcpMySQLSettings', d.T.object)]),
    withGcpMySQLSettings(GcpMySQLSettings): {
      assert std.isObject(GcpMySQLSettings) : 'GcpMySQLSettings must be a object',
      Properties+::: { GcpMySQLSettings: GcpMySQLSettings },
    },
    '#withServerName': d.fn('`withServerName` ServerName ', [d.arg('ServerName', d.T.string)]),
    withServerName(ServerName): {
      assert std.isString(ServerName) : 'ServerName must be a string',
      Properties+::: { ServerName: ServerName },
    },
    '#withExtraConnectionAttributes': d.fn('`withExtraConnectionAttributes` ExtraConnectionAttributes ', [d.arg('ExtraConnectionAttributes', d.T.string)]),
    withExtraConnectionAttributes(ExtraConnectionAttributes): {
      assert std.isString(ExtraConnectionAttributes) : 'ExtraConnectionAttributes must be a string',
      Properties+::: { ExtraConnectionAttributes: ExtraConnectionAttributes },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEndpointIdentifier': d.fn('`withEndpointIdentifier` EndpointIdentifier ', [d.arg('EndpointIdentifier', d.T.string)]),
    withEndpointIdentifier(EndpointIdentifier): {
      assert std.isString(EndpointIdentifier) : 'EndpointIdentifier must be a string',
      Properties+::: { EndpointIdentifier: EndpointIdentifier },
    },
    '#withCertificateArn': d.fn('`withCertificateArn` CertificateArn ', [d.arg('CertificateArn', d.T.string)]),
    withCertificateArn(CertificateArn): {
      assert std.isString(CertificateArn) : 'CertificateArn must be a string',
      Properties+::: { CertificateArn: CertificateArn },
    },
    '#withPostgreSqlSettings': d.fn('`withPostgreSqlSettings` PostgreSqlSettings ', [d.arg('PostgreSqlSettings', d.T.object)]),
    withPostgreSqlSettings(PostgreSqlSettings): {
      assert std.isObject(PostgreSqlSettings) : 'PostgreSqlSettings must be a object',
      Properties+::: { PostgreSqlSettings: PostgreSqlSettings },
    },
  },
  EventSubscription: {
    '#': d.pkg(
      name='EventSubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource Type definition for AWS::DMS::EventSubscription',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::EventSubscription Resource
        * SnsTopicArn 
      |||,
      args=[
        d.arg('SnsTopicArn', 'd.T.string'),
      ]
    ),
    new(
      SnsTopicArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
        SnsTopicArn: SnsTopicArn,
      },
      DependsOn:: [],
      Type: 'AWS::DMS::EventSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSourceType': d.fn('`withSourceType` SourceType ', [d.arg('SourceType', d.T.string)]),
    withSourceType(SourceType): {
      assert std.isString(SourceType) : 'SourceType must be a string',
      Properties+::: { SourceType: SourceType },
    },
    '#withEventCategories': d.fn('`withEventCategories` EventCategories ', [d.arg('EventCategories', d.T.array)]),
    withEventCategories(EventCategories): {
      assert std.isArray(EventCategories) : 'EventCategories must be a array',
      Properties+::: { EventCategories: EventCategories },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withSubscriptionName': d.fn('`withSubscriptionName` SubscriptionName ', [d.arg('SubscriptionName', d.T.string)]),
    withSubscriptionName(SubscriptionName): {
      assert std.isString(SubscriptionName) : 'SubscriptionName must be a string',
      Properties+::: { SubscriptionName: SubscriptionName },
    },
    '#withSourceIds': d.fn('`withSourceIds` SourceIds ', [d.arg('SourceIds', d.T.array)]),
    withSourceIds(SourceIds): {
      assert std.isArray(SourceIds) : 'SourceIds must be a array',
      Properties+::: { SourceIds: SourceIds },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  InstanceProfile: {
    '#': d.pkg(
      name='InstanceProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource schema for AWS::DMS::InstanceProfile.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::InstanceProfile Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::DMS::InstanceProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInstanceProfileArn': d.fn('`withInstanceProfileArn` InstanceProfileArn ', [d.arg('InstanceProfileArn', d.T.string)]),
    withInstanceProfileArn(InstanceProfileArn): {
      assert std.isString(InstanceProfileArn) : 'InstanceProfileArn must be a string',
      Properties+::: { InstanceProfileArn: InstanceProfileArn },
    },
    '#withInstanceProfileIdentifier': d.fn('`withInstanceProfileIdentifier` InstanceProfileIdentifier ', [d.arg('InstanceProfileIdentifier', d.T.string)]),
    withInstanceProfileIdentifier(InstanceProfileIdentifier): {
      assert std.isString(InstanceProfileIdentifier) : 'InstanceProfileIdentifier must be a string',
      Properties+::: { InstanceProfileIdentifier: InstanceProfileIdentifier },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withNetworkType': d.fn('`withNetworkType` NetworkType ', [d.arg('NetworkType', d.T.string)]),
    withNetworkType(NetworkType): {
      assert std.isString(NetworkType) : 'NetworkType must be a string',
      assert NetworkType == 'IPV4' || NetworkType == 'DUAL' : "NetworkType must be either 'IPV4' or 'DUAL'",
      Properties+::: { NetworkType: NetworkType },
    },
    '#withInstanceProfileName': d.fn('`withInstanceProfileName` InstanceProfileName ', [d.arg('InstanceProfileName', d.T.string)]),
    withInstanceProfileName(InstanceProfileName): {
      assert std.isString(InstanceProfileName) : 'InstanceProfileName must be a string',
      Properties+::: { InstanceProfileName: InstanceProfileName },
    },
    '#withInstanceProfileCreationTime': d.fn('`withInstanceProfileCreationTime` InstanceProfileCreationTime ', [d.arg('InstanceProfileCreationTime', d.T.string)]),
    withInstanceProfileCreationTime(InstanceProfileCreationTime): {
      assert std.isString(InstanceProfileCreationTime) : 'InstanceProfileCreationTime must be a string',
      Properties+::: { InstanceProfileCreationTime: InstanceProfileCreationTime },
    },
    '#withSubnetGroupIdentifier': d.fn('`withSubnetGroupIdentifier` SubnetGroupIdentifier ', [d.arg('SubnetGroupIdentifier', d.T.string)]),
    withSubnetGroupIdentifier(SubnetGroupIdentifier): {
      assert std.isString(SubnetGroupIdentifier) : 'SubnetGroupIdentifier must be a string',
      Properties+::: { SubnetGroupIdentifier: SubnetGroupIdentifier },
    },
    '#withVpcSecurityGroups': d.fn('`withVpcSecurityGroups` VpcSecurityGroups ', [d.arg('VpcSecurityGroups', d.T.array)]),
    withVpcSecurityGroups(VpcSecurityGroups): {
      assert std.isArray(VpcSecurityGroups) : 'VpcSecurityGroups must be a array',
      Properties+::: { VpcSecurityGroups: VpcSecurityGroups },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MigrationProject: {
    '#': d.pkg(
      name='MigrationProject',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource schema for AWS::DMS::MigrationProject',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::MigrationProject Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::DMS::MigrationProject',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMigrationProjectName': d.fn('`withMigrationProjectName` MigrationProjectName ', [d.arg('MigrationProjectName', d.T.string)]),
    withMigrationProjectName(MigrationProjectName): {
      assert std.isString(MigrationProjectName) : 'MigrationProjectName must be a string',
      Properties+::: { MigrationProjectName: MigrationProjectName },
    },
    '#withMigrationProjectIdentifier': d.fn('`withMigrationProjectIdentifier` MigrationProjectIdentifier ', [d.arg('MigrationProjectIdentifier', d.T.string)]),
    withMigrationProjectIdentifier(MigrationProjectIdentifier): {
      assert std.isString(MigrationProjectIdentifier) : 'MigrationProjectIdentifier must be a string',
      Properties+::: { MigrationProjectIdentifier: MigrationProjectIdentifier },
    },
    '#withMigrationProjectArn': d.fn('`withMigrationProjectArn` MigrationProjectArn ', [d.arg('MigrationProjectArn', d.T.string)]),
    withMigrationProjectArn(MigrationProjectArn): {
      assert std.isString(MigrationProjectArn) : 'MigrationProjectArn must be a string',
      Properties+::: { MigrationProjectArn: MigrationProjectArn },
    },
    '#withMigrationProjectCreationTime': d.fn('`withMigrationProjectCreationTime` MigrationProjectCreationTime ', [d.arg('MigrationProjectCreationTime', d.T.string)]),
    withMigrationProjectCreationTime(MigrationProjectCreationTime): {
      assert std.isString(MigrationProjectCreationTime) : 'MigrationProjectCreationTime must be a string',
      Properties+::: { MigrationProjectCreationTime: MigrationProjectCreationTime },
    },
    '#withInstanceProfileIdentifier': d.fn('`withInstanceProfileIdentifier` InstanceProfileIdentifier ', [d.arg('InstanceProfileIdentifier', d.T.string)]),
    withInstanceProfileIdentifier(InstanceProfileIdentifier): {
      assert std.isString(InstanceProfileIdentifier) : 'InstanceProfileIdentifier must be a string',
      Properties+::: { InstanceProfileIdentifier: InstanceProfileIdentifier },
    },
    '#withInstanceProfileName': d.fn('`withInstanceProfileName` InstanceProfileName ', [d.arg('InstanceProfileName', d.T.string)]),
    withInstanceProfileName(InstanceProfileName): {
      assert std.isString(InstanceProfileName) : 'InstanceProfileName must be a string',
      Properties+::: { InstanceProfileName: InstanceProfileName },
    },
    '#withInstanceProfileArn': d.fn('`withInstanceProfileArn` InstanceProfileArn ', [d.arg('InstanceProfileArn', d.T.string)]),
    withInstanceProfileArn(InstanceProfileArn): {
      assert std.isString(InstanceProfileArn) : 'InstanceProfileArn must be a string',
      Properties+::: { InstanceProfileArn: InstanceProfileArn },
    },
    '#withTransformationRules': d.fn('`withTransformationRules` TransformationRules ', [d.arg('TransformationRules', d.T.string)]),
    withTransformationRules(TransformationRules): {
      assert std.isString(TransformationRules) : 'TransformationRules must be a string',
      Properties+::: { TransformationRules: TransformationRules },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSchemaConversionApplicationAttributes': d.fn('`withSchemaConversionApplicationAttributes` SchemaConversionApplicationAttributes ', [d.arg('SchemaConversionApplicationAttributes', d.T.object)]),
    withSchemaConversionApplicationAttributes(SchemaConversionApplicationAttributes): {
      assert std.isObject(SchemaConversionApplicationAttributes) : 'SchemaConversionApplicationAttributes must be a object',
      Properties+::: { SchemaConversionApplicationAttributes: SchemaConversionApplicationAttributes },
    },
    '#withSourceDataProviderDescriptors': d.fn('`withSourceDataProviderDescriptors` SourceDataProviderDescriptors ', [d.arg('SourceDataProviderDescriptors', d.T.array)]),
    withSourceDataProviderDescriptors(SourceDataProviderDescriptors): {
      assert std.isArray(SourceDataProviderDescriptors) : 'SourceDataProviderDescriptors must be a array',
      Properties+::: { SourceDataProviderDescriptors: SourceDataProviderDescriptors },
    },
    '#withTargetDataProviderDescriptors': d.fn('`withTargetDataProviderDescriptors` TargetDataProviderDescriptors ', [d.arg('TargetDataProviderDescriptors', d.T.array)]),
    withTargetDataProviderDescriptors(TargetDataProviderDescriptors): {
      assert std.isArray(TargetDataProviderDescriptors) : 'TargetDataProviderDescriptors must be a array',
      Properties+::: { TargetDataProviderDescriptors: TargetDataProviderDescriptors },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ReplicationConfig: {
    '#': d.pkg(
      name='ReplicationConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='A replication configuration that you later provide to configure and start a AWS DMS Serverless replication',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::ReplicationConfig Resource
        * ReplicationConfigIdentifier A unique identifier of replication configuration
        * SourceEndpointArn The Amazon Resource Name (ARN) of the source endpoint for this AWS DMS Serverless replication configuration
        * TargetEndpointArn The Amazon Resource Name (ARN) of the target endpoint for this AWS DMS Serverless replication configuration
        * ReplicationType The type of AWS DMS Serverless replication to provision using this replication configuration
        * ComputeConfig 
        * TableMappings JSON table mappings for AWS DMS Serverless replications that are provisioned using this replication configuration
      |||,
      args=[
        d.arg('ReplicationConfigIdentifier', 'd.T.string'),
        d.arg('SourceEndpointArn', 'd.T.string'),
        d.arg('TargetEndpointArn', 'd.T.string'),
        d.arg('ReplicationType', 'd.T.string'),
        d.arg('ComputeConfig', 'd.T.object'),
        d.arg('TableMappings', 'd.T.object'),
      ]
    ),
    new(
      ReplicationConfigIdentifier,
      SourceEndpointArn,
      TargetEndpointArn,
      ReplicationType,
      ComputeConfig,
      TableMappings,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ReplicationConfigIdentifier) : 'ReplicationConfigIdentifier must be a string',
        ReplicationConfigIdentifier: ReplicationConfigIdentifier,
        assert std.isString(SourceEndpointArn) : 'SourceEndpointArn must be a string',
        SourceEndpointArn: SourceEndpointArn,
        assert std.isString(TargetEndpointArn) : 'TargetEndpointArn must be a string',
        TargetEndpointArn: TargetEndpointArn,
        assert std.isString(ReplicationType) : 'ReplicationType must be a string',
        assert ReplicationType == 'full-load' || ReplicationType == 'full-load-and-cdc' || ReplicationType == 'cdc' : "ReplicationType must be either 'full-load' or 'full-load-and-cdc' or 'cdc'",
        ReplicationType: ReplicationType,
        assert std.isObject(ComputeConfig) : 'ComputeConfig must be a object',
        ComputeConfig: ComputeConfig,
        assert std.isObject(TableMappings) : 'TableMappings must be a object',
        TableMappings: TableMappings,
      },
      DependsOn:: [],
      Type: 'AWS::DMS::ReplicationConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withReplicationConfigArn': d.fn('`withReplicationConfigArn` ReplicationConfigArn ', [d.arg('ReplicationConfigArn', d.T.string)]),
    withReplicationConfigArn(ReplicationConfigArn): {
      assert std.isString(ReplicationConfigArn) : 'ReplicationConfigArn must be a string',
      Properties+::: { ReplicationConfigArn: ReplicationConfigArn },
    },
    '#withReplicationSettings': d.fn('`withReplicationSettings` ReplicationSettings ', [d.arg('ReplicationSettings', d.T.object)]),
    withReplicationSettings(ReplicationSettings): {
      assert std.isObject(ReplicationSettings) : 'ReplicationSettings must be a object',
      Properties+::: { ReplicationSettings: ReplicationSettings },
    },
    '#withSupplementalSettings': d.fn('`withSupplementalSettings` SupplementalSettings ', [d.arg('SupplementalSettings', d.T.object)]),
    withSupplementalSettings(SupplementalSettings): {
      assert std.isObject(SupplementalSettings) : 'SupplementalSettings must be a object',
      Properties+::: { SupplementalSettings: SupplementalSettings },
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ReplicationInstance: {
    '#': d.pkg(
      name='ReplicationInstance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource Type definition for AWS::DMS::ReplicationInstance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::ReplicationInstance Resource
        * ReplicationInstanceClass 
      |||,
      args=[
        d.arg('ReplicationInstanceClass', 'd.T.string'),
      ]
    ),
    new(
      ReplicationInstanceClass,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ReplicationInstanceClass) : 'ReplicationInstanceClass must be a string',
        ReplicationInstanceClass: ReplicationInstanceClass,
      },
      DependsOn:: [],
      Type: 'AWS::DMS::ReplicationInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withReplicationInstanceIdentifier': d.fn('`withReplicationInstanceIdentifier` ReplicationInstanceIdentifier ', [d.arg('ReplicationInstanceIdentifier', d.T.string)]),
    withReplicationInstanceIdentifier(ReplicationInstanceIdentifier): {
      assert std.isString(ReplicationInstanceIdentifier) : 'ReplicationInstanceIdentifier must be a string',
      Properties+::: { ReplicationInstanceIdentifier: ReplicationInstanceIdentifier },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withReplicationSubnetGroupIdentifier': d.fn('`withReplicationSubnetGroupIdentifier` ReplicationSubnetGroupIdentifier ', [d.arg('ReplicationSubnetGroupIdentifier', d.T.string)]),
    withReplicationSubnetGroupIdentifier(ReplicationSubnetGroupIdentifier): {
      assert std.isString(ReplicationSubnetGroupIdentifier) : 'ReplicationSubnetGroupIdentifier must be a string',
      Properties+::: { ReplicationSubnetGroupIdentifier: ReplicationSubnetGroupIdentifier },
    },
    '#withReplicationInstancePrivateIpAddresses': d.fn('`withReplicationInstancePrivateIpAddresses` ReplicationInstancePrivateIpAddresses ', [d.arg('ReplicationInstancePrivateIpAddresses', d.T.string)]),
    withReplicationInstancePrivateIpAddresses(ReplicationInstancePrivateIpAddresses): {
      assert std.isString(ReplicationInstancePrivateIpAddresses) : 'ReplicationInstancePrivateIpAddresses must be a string',
      Properties+::: { ReplicationInstancePrivateIpAddresses: ReplicationInstancePrivateIpAddresses },
    },
    '#withAllocatedStorage': d.fn('`withAllocatedStorage` AllocatedStorage ', [d.arg('AllocatedStorage', d.T.integer)]),
    withAllocatedStorage(AllocatedStorage): {
      assert std.isNumber(AllocatedStorage) : 'AllocatedStorage must be a integer',
      Properties+::: { AllocatedStorage: AllocatedStorage },
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
    '#withNetworkType': d.fn('`withNetworkType` NetworkType ', [d.arg('NetworkType', d.T.string)]),
    withNetworkType(NetworkType): {
      assert std.isString(NetworkType) : 'NetworkType must be a string',
      Properties+::: { NetworkType: NetworkType },
    },
    '#withAllowMajorVersionUpgrade': d.fn('`withAllowMajorVersionUpgrade` AllowMajorVersionUpgrade ', [d.arg('AllowMajorVersionUpgrade', d.T.boolean)]),
    withAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
      assert std.isBoolean(AllowMajorVersionUpgrade) : 'AllowMajorVersionUpgrade must be a boolean',
      Properties+::: { AllowMajorVersionUpgrade: AllowMajorVersionUpgrade },
    },
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withMultiAZ': d.fn('`withMultiAZ` MultiAZ ', [d.arg('MultiAZ', d.T.boolean)]),
    withMultiAZ(MultiAZ): {
      assert std.isBoolean(MultiAZ) : 'MultiAZ must be a boolean',
      Properties+::: { MultiAZ: MultiAZ },
    },
    '#withReplicationInstancePublicIpAddresses': d.fn('`withReplicationInstancePublicIpAddresses` ReplicationInstancePublicIpAddresses ', [d.arg('ReplicationInstancePublicIpAddresses', d.T.string)]),
    withReplicationInstancePublicIpAddresses(ReplicationInstancePublicIpAddresses): {
      assert std.isString(ReplicationInstancePublicIpAddresses) : 'ReplicationInstancePublicIpAddresses must be a string',
      Properties+::: { ReplicationInstancePublicIpAddresses: ReplicationInstancePublicIpAddresses },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ReplicationSubnetGroup: {
    '#': d.pkg(
      name='ReplicationSubnetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource Type definition for AWS::DMS::ReplicationSubnetGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::ReplicationSubnetGroup Resource
        * ReplicationSubnetGroupDescription 
        * SubnetIds 
      |||,
      args=[
        d.arg('ReplicationSubnetGroupDescription', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
      ]
    ),
    new(
      ReplicationSubnetGroupDescription,
      SubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ReplicationSubnetGroupDescription) : 'ReplicationSubnetGroupDescription must be a string',
        ReplicationSubnetGroupDescription: ReplicationSubnetGroupDescription,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::DMS::ReplicationSubnetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withReplicationSubnetGroupIdentifier': d.fn('`withReplicationSubnetGroupIdentifier` ReplicationSubnetGroupIdentifier ', [d.arg('ReplicationSubnetGroupIdentifier', d.T.string)]),
    withReplicationSubnetGroupIdentifier(ReplicationSubnetGroupIdentifier): {
      assert std.isString(ReplicationSubnetGroupIdentifier) : 'ReplicationSubnetGroupIdentifier must be a string',
      Properties+::: { ReplicationSubnetGroupIdentifier: ReplicationSubnetGroupIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ReplicationTask: {
    '#': d.pkg(
      name='ReplicationTask',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DMS.libsonnet',
      help='Resource Type definition for AWS::DMS::ReplicationTask',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DMS::ReplicationTask Resource
        * TableMappings 
        * SourceEndpointArn 
        * MigrationType 
        * TargetEndpointArn 
        * ReplicationInstanceArn 
      |||,
      args=[
        d.arg('TableMappings', 'd.T.string'),
        d.arg('SourceEndpointArn', 'd.T.string'),
        d.arg('MigrationType', 'd.T.string'),
        d.arg('TargetEndpointArn', 'd.T.string'),
        d.arg('ReplicationInstanceArn', 'd.T.string'),
      ]
    ),
    new(
      TableMappings,
      SourceEndpointArn,
      MigrationType,
      TargetEndpointArn,
      ReplicationInstanceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TableMappings) : 'TableMappings must be a string',
        TableMappings: TableMappings,
        assert std.isString(SourceEndpointArn) : 'SourceEndpointArn must be a string',
        SourceEndpointArn: SourceEndpointArn,
        assert std.isString(MigrationType) : 'MigrationType must be a string',
        MigrationType: MigrationType,
        assert std.isString(TargetEndpointArn) : 'TargetEndpointArn must be a string',
        TargetEndpointArn: TargetEndpointArn,
        assert std.isString(ReplicationInstanceArn) : 'ReplicationInstanceArn must be a string',
        ReplicationInstanceArn: ReplicationInstanceArn,
      },
      DependsOn:: [],
      Type: 'AWS::DMS::ReplicationTask',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withReplicationTaskSettings': d.fn('`withReplicationTaskSettings` ReplicationTaskSettings ', [d.arg('ReplicationTaskSettings', d.T.string)]),
    withReplicationTaskSettings(ReplicationTaskSettings): {
      assert std.isString(ReplicationTaskSettings) : 'ReplicationTaskSettings must be a string',
      Properties+::: { ReplicationTaskSettings: ReplicationTaskSettings },
    },
    '#withCdcStartPosition': d.fn('`withCdcStartPosition` CdcStartPosition ', [d.arg('CdcStartPosition', d.T.string)]),
    withCdcStartPosition(CdcStartPosition): {
      assert std.isString(CdcStartPosition) : 'CdcStartPosition must be a string',
      Properties+::: { CdcStartPosition: CdcStartPosition },
    },
    '#withCdcStopPosition': d.fn('`withCdcStopPosition` CdcStopPosition ', [d.arg('CdcStopPosition', d.T.string)]),
    withCdcStopPosition(CdcStopPosition): {
      assert std.isString(CdcStopPosition) : 'CdcStopPosition must be a string',
      Properties+::: { CdcStopPosition: CdcStopPosition },
    },
    '#withTaskData': d.fn('`withTaskData` TaskData ', [d.arg('TaskData', d.T.string)]),
    withTaskData(TaskData): {
      assert std.isString(TaskData) : 'TaskData must be a string',
      Properties+::: { TaskData: TaskData },
    },
    '#withCdcStartTime': d.fn('`withCdcStartTime` CdcStartTime ', [d.arg('CdcStartTime', d.T.integer)]),
    withCdcStartTime(CdcStartTime): {
      // Type: number
      Properties+::: { CdcStartTime: CdcStartTime },
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
    '#withReplicationTaskIdentifier': d.fn('`withReplicationTaskIdentifier` ReplicationTaskIdentifier ', [d.arg('ReplicationTaskIdentifier', d.T.string)]),
    withReplicationTaskIdentifier(ReplicationTaskIdentifier): {
      assert std.isString(ReplicationTaskIdentifier) : 'ReplicationTaskIdentifier must be a string',
      Properties+::: { ReplicationTaskIdentifier: ReplicationTaskIdentifier },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
