{
  // AWS DMS Endpoint
  Endpoint: {
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
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DMS::Endpoint',
    },
    withSybaseSettings(SybaseSettings): {
      assert std.isObject(SybaseSettings) : 'SybaseSettings must be a object',
      Properties+::: {
        SybaseSettings: SybaseSettings,
      },
    },
    withRedisSettings(RedisSettings): {
      assert std.isObject(RedisSettings) : 'RedisSettings must be a object',
      Properties+::: {
        RedisSettings: RedisSettings,
      },
    },
    withOracleSettings(OracleSettings): {
      assert std.isObject(OracleSettings) : 'OracleSettings must be a object',
      Properties+::: {
        OracleSettings: OracleSettings,
      },
    },
    withKafkaSettings(KafkaSettings): {
      assert std.isObject(KafkaSettings) : 'KafkaSettings must be a object',
      Properties+::: {
        KafkaSettings: KafkaSettings,
      },
    },
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a number',
      Properties+::: {
        Port: Port,
      },
    },
    withMySqlSettings(MySqlSettings): {
      assert std.isObject(MySqlSettings) : 'MySqlSettings must be a object',
      Properties+::: {
        MySqlSettings: MySqlSettings,
      },
    },
    withS3Settings(S3Settings): {
      assert std.isObject(S3Settings) : 'S3Settings must be a object',
      Properties+::: {
        S3Settings: S3Settings,
      },
    },
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: {
        ResourceIdentifier: ResourceIdentifier,
      },
    },
    withKinesisSettings(KinesisSettings): {
      assert std.isObject(KinesisSettings) : 'KinesisSettings must be a object',
      Properties+::: {
        KinesisSettings: KinesisSettings,
      },
    },
    withSslMode(SslMode): {
      assert std.isString(SslMode) : 'SslMode must be a string',
      Properties+::: {
        SslMode: SslMode,
      },
    },
    withRedshiftSettings(RedshiftSettings): {
      assert std.isObject(RedshiftSettings) : 'RedshiftSettings must be a object',
      Properties+::: {
        RedshiftSettings: RedshiftSettings,
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
    withPassword(Password): {
      assert std.isString(Password) : 'Password must be a string',
      Properties+::: {
        Password: Password,
      },
    },
    withMongoDbSettings(MongoDbSettings): {
      assert std.isObject(MongoDbSettings) : 'MongoDbSettings must be a object',
      Properties+::: {
        MongoDbSettings: MongoDbSettings,
      },
    },
    withIbmDb2Settings(IbmDb2Settings): {
      assert std.isObject(IbmDb2Settings) : 'IbmDb2Settings must be a object',
      Properties+::: {
        IbmDb2Settings: IbmDb2Settings,
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withExternalId(ExternalId): {
      assert std.isString(ExternalId) : 'ExternalId must be a string',
      Properties+::: {
        ExternalId: ExternalId,
      },
    },
    withDatabaseName(DatabaseName): {
      assert std.isString(DatabaseName) : 'DatabaseName must be a string',
      Properties+::: {
        DatabaseName: DatabaseName,
      },
    },
    withNeptuneSettings(NeptuneSettings): {
      assert std.isObject(NeptuneSettings) : 'NeptuneSettings must be a object',
      Properties+::: {
        NeptuneSettings: NeptuneSettings,
      },
    },
    withElasticsearchSettings(ElasticsearchSettings): {
      assert std.isObject(ElasticsearchSettings) : 'ElasticsearchSettings must be a object',
      Properties+::: {
        ElasticsearchSettings: ElasticsearchSettings,
      },
    },
    withDocDbSettings(DocDbSettings): {
      assert std.isObject(DocDbSettings) : 'DocDbSettings must be a object',
      Properties+::: {
        DocDbSettings: DocDbSettings,
      },
    },
    withDynamoDbSettings(DynamoDbSettings): {
      assert std.isObject(DynamoDbSettings) : 'DynamoDbSettings must be a object',
      Properties+::: {
        DynamoDbSettings: DynamoDbSettings,
      },
    },
    withUsername(Username): {
      assert std.isString(Username) : 'Username must be a string',
      Properties+::: {
        Username: Username,
      },
    },
    withMicrosoftSqlServerSettings(MicrosoftSqlServerSettings): {
      assert std.isObject(MicrosoftSqlServerSettings) : 'MicrosoftSqlServerSettings must be a object',
      Properties+::: {
        MicrosoftSqlServerSettings: MicrosoftSqlServerSettings,
      },
    },
    withGcpMySQLSettings(GcpMySQLSettings): {
      assert std.isObject(GcpMySQLSettings) : 'GcpMySQLSettings must be a object',
      Properties+::: {
        GcpMySQLSettings: GcpMySQLSettings,
      },
    },
    withServerName(ServerName): {
      assert std.isString(ServerName) : 'ServerName must be a string',
      Properties+::: {
        ServerName: ServerName,
      },
    },
    withExtraConnectionAttributes(ExtraConnectionAttributes): {
      assert std.isString(ExtraConnectionAttributes) : 'ExtraConnectionAttributes must be a string',
      Properties+::: {
        ExtraConnectionAttributes: ExtraConnectionAttributes,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withEndpointIdentifier(EndpointIdentifier): {
      assert std.isString(EndpointIdentifier) : 'EndpointIdentifier must be a string',
      Properties+::: {
        EndpointIdentifier: EndpointIdentifier,
      },
    },
    withCertificateArn(CertificateArn): {
      assert std.isString(CertificateArn) : 'CertificateArn must be a string',
      Properties+::: {
        CertificateArn: CertificateArn,
      },
    },
    withPostgreSqlSettings(PostgreSqlSettings): {
      assert std.isObject(PostgreSqlSettings) : 'PostgreSqlSettings must be a object',
      Properties+::: {
        PostgreSqlSettings: PostgreSqlSettings,
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
