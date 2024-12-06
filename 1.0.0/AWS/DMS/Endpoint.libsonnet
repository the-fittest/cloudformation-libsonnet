{
  new(
    EndpointType,
    EngineName,
  ): {
    local base = self,
    Properties: {
      EndpointType:
        if !std.isString(EndpointType) then (error 'EndpointType must be a string')
        else if std.isEmpty(EndpointType) then (error 'EndpointType must be not empty')
        else EndpointType,
      EngineName:
        if !std.isString(EngineName) then (error 'EngineName must be a string')
        else if std.isEmpty(EngineName) then (error 'EngineName must be not empty')
        else EngineName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::Endpoint',
  },
  setSybaseSettings(SybaseSettings): {
    Properties+::: {
      SybaseSettings:
        if !std.isObject(SybaseSettings) then (error 'SybaseSettings must be an object')
        else SybaseSettings,
    },
  },
  setRedisSettings(RedisSettings): {
    Properties+::: {
      RedisSettings:
        if !std.isObject(RedisSettings) then (error 'RedisSettings must be an object')
        else RedisSettings,
    },
  },
  setOracleSettings(OracleSettings): {
    Properties+::: {
      OracleSettings:
        if !std.isObject(OracleSettings) then (error 'OracleSettings must be an object')
        else OracleSettings,
    },
  },
  setKafkaSettings(KafkaSettings): {
    Properties+::: {
      KafkaSettings:
        if !std.isObject(KafkaSettings) then (error 'KafkaSettings must be an object')
        else KafkaSettings,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setMySqlSettings(MySqlSettings): {
    Properties+::: {
      MySqlSettings:
        if !std.isObject(MySqlSettings) then (error 'MySqlSettings must be an object')
        else MySqlSettings,
    },
  },
  setS3Settings(S3Settings): {
    Properties+::: {
      S3Settings:
        if !std.isObject(S3Settings) then (error 'S3Settings must be an object')
        else S3Settings,
    },
  },
  setResourceIdentifier(ResourceIdentifier): {
    Properties+::: {
      ResourceIdentifier:
        if !std.isString(ResourceIdentifier) then (error 'ResourceIdentifier must be a string')
        else if std.isEmpty(ResourceIdentifier) then (error 'ResourceIdentifier must be not empty')
        else ResourceIdentifier,
    },
  },
  setKinesisSettings(KinesisSettings): {
    Properties+::: {
      KinesisSettings:
        if !std.isObject(KinesisSettings) then (error 'KinesisSettings must be an object')
        else KinesisSettings,
    },
  },
  setSslMode(SslMode): {
    Properties+::: {
      SslMode:
        if !std.isString(SslMode) then (error 'SslMode must be a string')
        else if std.isEmpty(SslMode) then (error 'SslMode must be not empty')
        else SslMode,
    },
  },
  setRedshiftSettings(RedshiftSettings): {
    Properties+::: {
      RedshiftSettings:
        if !std.isObject(RedshiftSettings) then (error 'RedshiftSettings must be an object')
        else RedshiftSettings,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setPassword(Password): {
    Properties+::: {
      Password:
        if !std.isString(Password) then (error 'Password must be a string')
        else if std.isEmpty(Password) then (error 'Password must be not empty')
        else Password,
    },
  },
  setMongoDbSettings(MongoDbSettings): {
    Properties+::: {
      MongoDbSettings:
        if !std.isObject(MongoDbSettings) then (error 'MongoDbSettings must be an object')
        else MongoDbSettings,
    },
  },
  setIbmDb2Settings(IbmDb2Settings): {
    Properties+::: {
      IbmDb2Settings:
        if !std.isObject(IbmDb2Settings) then (error 'IbmDb2Settings must be an object')
        else IbmDb2Settings,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setExternalId(ExternalId): {
    Properties+::: {
      ExternalId:
        if !std.isString(ExternalId) then (error 'ExternalId must be a string')
        else if std.isEmpty(ExternalId) then (error 'ExternalId must be not empty')
        else ExternalId,
    },
  },
  setDatabaseName(DatabaseName): {
    Properties+::: {
      DatabaseName:
        if !std.isString(DatabaseName) then (error 'DatabaseName must be a string')
        else if std.isEmpty(DatabaseName) then (error 'DatabaseName must be not empty')
        else DatabaseName,
    },
  },
  setNeptuneSettings(NeptuneSettings): {
    Properties+::: {
      NeptuneSettings:
        if !std.isObject(NeptuneSettings) then (error 'NeptuneSettings must be an object')
        else NeptuneSettings,
    },
  },
  setElasticsearchSettings(ElasticsearchSettings): {
    Properties+::: {
      ElasticsearchSettings:
        if !std.isObject(ElasticsearchSettings) then (error 'ElasticsearchSettings must be an object')
        else ElasticsearchSettings,
    },
  },
  setDocDbSettings(DocDbSettings): {
    Properties+::: {
      DocDbSettings:
        if !std.isObject(DocDbSettings) then (error 'DocDbSettings must be an object')
        else DocDbSettings,
    },
  },
  setDynamoDbSettings(DynamoDbSettings): {
    Properties+::: {
      DynamoDbSettings:
        if !std.isObject(DynamoDbSettings) then (error 'DynamoDbSettings must be an object')
        else DynamoDbSettings,
    },
  },
  setUsername(Username): {
    Properties+::: {
      Username:
        if !std.isString(Username) then (error 'Username must be a string')
        else if std.isEmpty(Username) then (error 'Username must be not empty')
        else Username,
    },
  },
  setMicrosoftSqlServerSettings(MicrosoftSqlServerSettings): {
    Properties+::: {
      MicrosoftSqlServerSettings:
        if !std.isObject(MicrosoftSqlServerSettings) then (error 'MicrosoftSqlServerSettings must be an object')
        else MicrosoftSqlServerSettings,
    },
  },
  setGcpMySQLSettings(GcpMySQLSettings): {
    Properties+::: {
      GcpMySQLSettings:
        if !std.isObject(GcpMySQLSettings) then (error 'GcpMySQLSettings must be an object')
        else GcpMySQLSettings,
    },
  },
  setServerName(ServerName): {
    Properties+::: {
      ServerName:
        if !std.isString(ServerName) then (error 'ServerName must be a string')
        else if std.isEmpty(ServerName) then (error 'ServerName must be not empty')
        else ServerName,
    },
  },
  setExtraConnectionAttributes(ExtraConnectionAttributes): {
    Properties+::: {
      ExtraConnectionAttributes:
        if !std.isString(ExtraConnectionAttributes) then (error 'ExtraConnectionAttributes must be a string')
        else if std.isEmpty(ExtraConnectionAttributes) then (error 'ExtraConnectionAttributes must be not empty')
        else ExtraConnectionAttributes,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setEndpointIdentifier(EndpointIdentifier): {
    Properties+::: {
      EndpointIdentifier:
        if !std.isString(EndpointIdentifier) then (error 'EndpointIdentifier must be a string')
        else if std.isEmpty(EndpointIdentifier) then (error 'EndpointIdentifier must be not empty')
        else EndpointIdentifier,
    },
  },
  setCertificateArn(CertificateArn): {
    Properties+::: {
      CertificateArn:
        if !std.isString(CertificateArn) then (error 'CertificateArn must be a string')
        else if std.isEmpty(CertificateArn) then (error 'CertificateArn must be not empty')
        else CertificateArn,
    },
  },
  setPostgreSqlSettings(PostgreSqlSettings): {
    Properties+::: {
      PostgreSqlSettings:
        if !std.isObject(PostgreSqlSettings) then (error 'PostgreSqlSettings must be an object')
        else PostgreSqlSettings,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
