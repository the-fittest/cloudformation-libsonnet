{
  new(
    Name,
    Type,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'ADOBE_ANALYTICS' && Type != 'AMAZON_ELASTICSEARCH' && Type != 'AMAZON_OPENSEARCH' && Type != 'ATHENA' && Type != 'AURORA' && Type != 'AURORA_POSTGRESQL' && Type != 'AWS_IOT_ANALYTICS' && Type != 'DATABRICKS' && Type != 'DENODO' && Type != 'DREMIO' && Type != 'DYNAMODB' && Type != 'SAPHANA' && Type != 'DB2_AS400' && Type != 'EXASOL' && Type != 'FILE' && Type != 'GITHUB' && Type != 'JIRA' && Type != 'MARIADB' && Type != 'MYSQL' && Type != 'ORACLE' && Type != 'POSTGRESQL' && Type != 'PRESTO' && Type != 'REDSHIFT' && Type != 'S3' && Type != 'S3_TABLES' && Type != 'SALESFORCE' && Type != 'SERVICENOW' && Type != 'SNOWFLAKE' && Type != 'SPARK' && Type != 'SQLSERVER' && Type != 'TERADATA' && Type != 'TIMESTREAM' && Type != 'TWITTER' && Type != 'BIGQUERY' && Type != 'GOOGLE_ANALYTICS' && Type != 'TRINO' && Type != 'STARBURST' && Type != 'MONGO' && Type != 'MONGO_ATLAS' && Type != 'DOCUMENTDB' && Type != 'APPFLOW' && Type != 'IMPALA' && Type != 'GLUE' then (error "Type should be 'ADOBE_ANALYTICS' or 'AMAZON_ELASTICSEARCH' or 'AMAZON_OPENSEARCH' or 'ATHENA' or 'AURORA' or 'AURORA_POSTGRESQL' or 'AWS_IOT_ANALYTICS' or 'DATABRICKS' or 'DENODO' or 'DREMIO' or 'DYNAMODB' or 'SAPHANA' or 'DB2_AS400' or 'EXASOL' or 'FILE' or 'GITHUB' or 'JIRA' or 'MARIADB' or 'MYSQL' or 'ORACLE' or 'POSTGRESQL' or 'PRESTO' or 'REDSHIFT' or 'S3' or 'S3_TABLES' or 'SALESFORCE' or 'SERVICENOW' or 'SNOWFLAKE' or 'SPARK' or 'SQLSERVER' or 'TERADATA' or 'TIMESTREAM' or 'TWITTER' or 'BIGQUERY' or 'GOOGLE_ANALYTICS' or 'TRINO' or 'STARBURST' or 'MONGO' or 'MONGO_ATLAS' or 'DOCUMENTDB' or 'APPFLOW' or 'IMPALA' or 'GLUE'")
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::QuickSight::DataSource',
  },
  setAlternateDataSourceParameters(AlternateDataSourceParameters): {
    Properties+::: {
      AlternateDataSourceParameters:
        if !std.isArray(AlternateDataSourceParameters) then (error 'AlternateDataSourceParameters must be an array')
        else if std.length(AlternateDataSourceParameters) < 1 then error ('AlternateDataSourceParameters cannot have less than 1 items')
        else if std.length(AlternateDataSourceParameters) > 50 then error ('AlternateDataSourceParameters cannot have more than 50 items')
        else AlternateDataSourceParameters,
    },
  },
  setAlternateDataSourceParametersMixin(AlternateDataSourceParameters): {
    Properties+::: {
      AlternateDataSourceParameters+: AlternateDataSourceParameters,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setAwsAccountId(AwsAccountId): {
    Properties+::: {
      AwsAccountId:
        if !std.isString(AwsAccountId) then (error 'AwsAccountId must be a string')
        else if std.isEmpty(AwsAccountId) then (error 'AwsAccountId must be not empty')
        else if std.length(AwsAccountId) < 12 then error ('AwsAccountId should have at least 12 characters')
        else if std.length(AwsAccountId) > 12 then error ('AwsAccountId should have not more than 12 characters')
        else AwsAccountId,
    },
  },
  setCreatedTime(CreatedTime): {
    Properties+::: {
      CreatedTime:
        if !std.isString(CreatedTime) then (error 'CreatedTime must be a string')
        else if std.isEmpty(CreatedTime) then (error 'CreatedTime must be not empty')
        else CreatedTime,
    },
  },
  setCredentials(Credentials): {
    Properties+::: {
      Credentials:
        if !std.isObject(Credentials) then (error 'Credentials must be an object')
        else Credentials,
    },
  },
  setDataSourceId(DataSourceId): {
    Properties+::: {
      DataSourceId:
        if !std.isString(DataSourceId) then (error 'DataSourceId must be a string')
        else if std.isEmpty(DataSourceId) then (error 'DataSourceId must be not empty')
        else DataSourceId,
    },
  },
  setDataSourceParameters(DataSourceParameters): {
    Properties+::: {
      DataSourceParameters:
        if !std.isObject(DataSourceParameters) then (error 'DataSourceParameters must be an object')
        else DataSourceParameters,
    },
  },
  setErrorInfo(ErrorInfo): {
    Properties+::: {
      ErrorInfo:
        if !std.isObject(ErrorInfo) then (error 'ErrorInfo must be an object')
        else ErrorInfo,
    },
  },
  setFolderArns(FolderArns): {
    Properties+::: {
      FolderArns:
        if !std.isArray(FolderArns) then (error 'FolderArns must be an array')
        else if std.length(FolderArns) > 10 then error ('FolderArns cannot have more than 10 items')
        else FolderArns,
    },
  },
  setFolderArnsMixin(FolderArns): {
    Properties+::: {
      FolderArns+: FolderArns,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isString(LastUpdatedTime) then (error 'LastUpdatedTime must be a string')
        else if std.isEmpty(LastUpdatedTime) then (error 'LastUpdatedTime must be not empty')
        else LastUpdatedTime,
    },
  },
  setPermissions(Permissions): {
    Properties+::: {
      Permissions:
        if !std.isArray(Permissions) then (error 'Permissions must be an array')
        else if std.length(Permissions) < 1 then error ('Permissions cannot have less than 1 items')
        else if std.length(Permissions) > 64 then error ('Permissions cannot have more than 64 items')
        else Permissions,
    },
  },
  setPermissionsMixin(Permissions): {
    Properties+::: {
      Permissions+: Permissions,
    },
  },
  setSslProperties(SslProperties): {
    Properties+::: {
      SslProperties:
        if !std.isObject(SslProperties) then (error 'SslProperties must be an object')
        else SslProperties,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATION_IN_PROGRESS' && Status != 'CREATION_SUCCESSFUL' && Status != 'CREATION_FAILED' && Status != 'UPDATE_IN_PROGRESS' && Status != 'UPDATE_SUCCESSFUL' && Status != 'UPDATE_FAILED' && Status != 'DELETED' then (error "Status should be 'CREATION_IN_PROGRESS' or 'CREATION_SUCCESSFUL' or 'CREATION_FAILED' or 'UPDATE_IN_PROGRESS' or 'UPDATE_SUCCESSFUL' or 'UPDATE_FAILED' or 'DELETED'")
        else Status,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setVpcConnectionProperties(VpcConnectionProperties): {
    Properties+::: {
      VpcConnectionProperties:
        if !std.isObject(VpcConnectionProperties) then (error 'VpcConnectionProperties must be an object')
        else if !std.objectHas(VpcConnectionProperties, 'VpcConnectionArn') then (error ' have attribute VpcConnectionArn')
        else VpcConnectionProperties,
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
