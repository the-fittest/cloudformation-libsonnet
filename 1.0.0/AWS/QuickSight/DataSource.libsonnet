{
  new(
    Name,
    Type,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'ADOBE_ANALYTICS' || Type == 'AMAZON_ELASTICSEARCH' || Type == 'AMAZON_OPENSEARCH' || Type == 'ATHENA' || Type == 'AURORA' || Type == 'AURORA_POSTGRESQL' || Type == 'AWS_IOT_ANALYTICS' || Type == 'DATABRICKS' || Type == 'DENODO' || Type == 'DREMIO' || Type == 'DYNAMODB' || Type == 'SAPHANA' || Type == 'DB2_AS400' || Type == 'EXASOL' || Type == 'FILE' || Type == 'GITHUB' || Type == 'JIRA' || Type == 'MARIADB' || Type == 'MYSQL' || Type == 'ORACLE' || Type == 'POSTGRESQL' || Type == 'PRESTO' || Type == 'REDSHIFT' || Type == 'S3' || Type == 'S3_TABLES' || Type == 'SALESFORCE' || Type == 'SERVICENOW' || Type == 'SNOWFLAKE' || Type == 'SPARK' || Type == 'SQLSERVER' || Type == 'TERADATA' || Type == 'TIMESTREAM' || Type == 'TWITTER' || Type == 'BIGQUERY' || Type == 'GOOGLE_ANALYTICS' || Type == 'TRINO' || Type == 'STARBURST' || Type == 'MONGO' || Type == 'MONGO_ATLAS' || Type == 'DOCUMENTDB' || Type == 'APPFLOW' || Type == 'IMPALA' || Type == 'GLUE' : "Type should be 'ADOBE_ANALYTICS' or 'AMAZON_ELASTICSEARCH' or 'AMAZON_OPENSEARCH' or 'ATHENA' or 'AURORA' or 'AURORA_POSTGRESQL' or 'AWS_IOT_ANALYTICS' or 'DATABRICKS' or 'DENODO' or 'DREMIO' or 'DYNAMODB' or 'SAPHANA' or 'DB2_AS400' or 'EXASOL' or 'FILE' or 'GITHUB' or 'JIRA' or 'MARIADB' or 'MYSQL' or 'ORACLE' or 'POSTGRESQL' or 'PRESTO' or 'REDSHIFT' or 'S3' or 'S3_TABLES' or 'SALESFORCE' or 'SERVICENOW' or 'SNOWFLAKE' or 'SPARK' or 'SQLSERVER' or 'TERADATA' or 'TIMESTREAM' or 'TWITTER' or 'BIGQUERY' or 'GOOGLE_ANALYTICS' or 'TRINO' or 'STARBURST' or 'MONGO' or 'MONGO_ATLAS' or 'DOCUMENTDB' or 'APPFLOW' or 'IMPALA' or 'GLUE'",
      Type: Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::QuickSight::DataSource',
  },
  withAlternateDataSourceParameters(AlternateDataSourceParameters): {
    Properties+::: {
      AlternateDataSourceParameters: (if std.isArray(AlternateDataSourceParameters) then AlternateDataSourceParameters else [AlternateDataSourceParameters]),
    },
  },
  withAlternateDataSourceParametersMixin(AlternateDataSourceParameters): {
    Properties+::: {
      AlternateDataSourceParameters+: (if std.isArray(AlternateDataSourceParameters) then AlternateDataSourceParameters else [AlternateDataSourceParameters]),
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAwsAccountId(AwsAccountId): {
    assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
    Properties+::: {
      AwsAccountId: AwsAccountId,
    },
  },
  withCreatedTime(CreatedTime): {
    assert std.isString(CreatedTime) : 'CreatedTime must be a string',
    Properties+::: {
      CreatedTime: CreatedTime,
    },
  },
  withCredentials(Credentials): {
    assert std.isObject(Credentials) : 'Credentials must be a object',
    Properties+::: {
      Credentials: Credentials,
    },
  },
  withDataSourceId(DataSourceId): {
    assert std.isString(DataSourceId) : 'DataSourceId must be a string',
    Properties+::: {
      DataSourceId: DataSourceId,
    },
  },
  withDataSourceParameters(DataSourceParameters): {
    assert std.isObject(DataSourceParameters) : 'DataSourceParameters must be a object',
    Properties+::: {
      DataSourceParameters: DataSourceParameters,
    },
  },
  withErrorInfo(ErrorInfo): {
    assert std.isObject(ErrorInfo) : 'ErrorInfo must be a object',
    Properties+::: {
      ErrorInfo: ErrorInfo,
    },
  },
  withFolderArns(FolderArns): {
    Properties+::: {
      FolderArns: (if std.isArray(FolderArns) then FolderArns else [FolderArns]),
    },
  },
  withFolderArnsMixin(FolderArns): {
    Properties+::: {
      FolderArns+: (if std.isArray(FolderArns) then FolderArns else [FolderArns]),
    },
  },
  withLastUpdatedTime(LastUpdatedTime): {
    assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
    Properties+::: {
      LastUpdatedTime: LastUpdatedTime,
    },
  },
  withPermissions(Permissions): {
    Properties+::: {
      Permissions: (if std.isArray(Permissions) then Permissions else [Permissions]),
    },
  },
  withPermissionsMixin(Permissions): {
    Properties+::: {
      Permissions+: (if std.isArray(Permissions) then Permissions else [Permissions]),
    },
  },
  withSslProperties(SslProperties): {
    assert std.isObject(SslProperties) : 'SslProperties must be a object',
    Properties+::: {
      SslProperties: SslProperties,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'CREATION_IN_PROGRESS' || Status == 'CREATION_SUCCESSFUL' || Status == 'CREATION_FAILED' || Status == 'UPDATE_IN_PROGRESS' || Status == 'UPDATE_SUCCESSFUL' || Status == 'UPDATE_FAILED' || Status == 'DELETED' : "Status should be 'CREATION_IN_PROGRESS' or 'CREATION_SUCCESSFUL' or 'CREATION_FAILED' or 'UPDATE_IN_PROGRESS' or 'UPDATE_SUCCESSFUL' or 'UPDATE_FAILED' or 'DELETED'",
    Properties+::: {
      Status: Status,
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
  withVpcConnectionProperties(VpcConnectionProperties): {
    assert std.isObject(VpcConnectionProperties) : 'VpcConnectionProperties must be a object',
    Properties+::: {
      VpcConnectionProperties: VpcConnectionProperties,
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
