{
  new(
    Type,
    ApiId,
    Name,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::DataSource',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setDynamoDBConfig(DynamoDBConfig): {
    Properties+::: {
      DynamoDBConfig:
        if !std.isObject(DynamoDBConfig) then (error 'DynamoDBConfig must be an object')
        else if !std.objectHas(DynamoDBConfig, 'TableName') then (error ' have attribute TableName')
        else if !std.objectHas(DynamoDBConfig, 'AwsRegion') then (error ' have attribute AwsRegion')
        else DynamoDBConfig,
    },
  },
  setElasticsearchConfig(ElasticsearchConfig): {
    Properties+::: {
      ElasticsearchConfig:
        if !std.isObject(ElasticsearchConfig) then (error 'ElasticsearchConfig must be an object')
        else if !std.objectHas(ElasticsearchConfig, 'AwsRegion') then (error ' have attribute AwsRegion')
        else if !std.objectHas(ElasticsearchConfig, 'Endpoint') then (error ' have attribute Endpoint')
        else ElasticsearchConfig,
    },
  },
  setEventBridgeConfig(EventBridgeConfig): {
    Properties+::: {
      EventBridgeConfig:
        if !std.isObject(EventBridgeConfig) then (error 'EventBridgeConfig must be an object')
        else if !std.objectHas(EventBridgeConfig, 'EventBusArn') then (error ' have attribute EventBusArn')
        else EventBridgeConfig,
    },
  },
  setHttpConfig(HttpConfig): {
    Properties+::: {
      HttpConfig:
        if !std.isObject(HttpConfig) then (error 'HttpConfig must be an object')
        else if !std.objectHas(HttpConfig, 'Endpoint') then (error ' have attribute Endpoint')
        else HttpConfig,
    },
  },
  setLambdaConfig(LambdaConfig): {
    Properties+::: {
      LambdaConfig:
        if !std.isObject(LambdaConfig) then (error 'LambdaConfig must be an object')
        else if !std.objectHas(LambdaConfig, 'LambdaFunctionArn') then (error ' have attribute LambdaFunctionArn')
        else LambdaConfig,
    },
  },
  setOpenSearchServiceConfig(OpenSearchServiceConfig): {
    Properties+::: {
      OpenSearchServiceConfig:
        if !std.isObject(OpenSearchServiceConfig) then (error 'OpenSearchServiceConfig must be an object')
        else if !std.objectHas(OpenSearchServiceConfig, 'AwsRegion') then (error ' have attribute AwsRegion')
        else if !std.objectHas(OpenSearchServiceConfig, 'Endpoint') then (error ' have attribute Endpoint')
        else OpenSearchServiceConfig,
    },
  },
  setRelationalDatabaseConfig(RelationalDatabaseConfig): {
    Properties+::: {
      RelationalDatabaseConfig:
        if !std.isObject(RelationalDatabaseConfig) then (error 'RelationalDatabaseConfig must be an object')
        else if !std.objectHas(RelationalDatabaseConfig, 'RelationalDatabaseSourceType') then (error ' have attribute RelationalDatabaseSourceType')
        else RelationalDatabaseConfig,
    },
  },
  setServiceRoleArn(ServiceRoleArn): {
    Properties+::: {
      ServiceRoleArn:
        if !std.isString(ServiceRoleArn) then (error 'ServiceRoleArn must be a string')
        else if std.isEmpty(ServiceRoleArn) then (error 'ServiceRoleArn must be not empty')
        else ServiceRoleArn,
    },
  },
  setDataSourceArn(DataSourceArn): {
    Properties+::: {
      DataSourceArn:
        if !std.isString(DataSourceArn) then (error 'DataSourceArn must be a string')
        else if std.isEmpty(DataSourceArn) then (error 'DataSourceArn must be not empty')
        else DataSourceArn,
    },
  },
  setMetricsConfig(MetricsConfig): {
    Properties+::: {
      MetricsConfig:
        if !std.isString(MetricsConfig) then (error 'MetricsConfig must be a string')
        else if std.isEmpty(MetricsConfig) then (error 'MetricsConfig must be not empty')
        else if MetricsConfig != 'DISABLED' && MetricsConfig != 'ENABLED' then (error "MetricsConfig should be 'DISABLED' or 'ENABLED'")
        else MetricsConfig,
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
