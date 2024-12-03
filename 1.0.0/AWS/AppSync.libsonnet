local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Api: {
    '#': d.pkg(
      name='Api',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource schema for AppSync Api',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::Api Resource
        * Name 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::Api',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApiId': d.fn('`withApiId` ApiId ', [d.arg('ApiId', d.T.string)]),
    withApiId(ApiId): {
      assert std.isString(ApiId) : 'ApiId must be a string',
      Properties+::: { ApiId: ApiId },
    },
    '#withApiArn': d.fn('`withApiArn` ApiArn ', [d.arg('ApiArn', d.T.string)]),
    withApiArn(ApiArn): {
      assert std.isString(ApiArn) : 'ApiArn must be a string',
      Properties+::: { ApiArn: ApiArn },
    },
    '#withOwnerContact': d.fn('`withOwnerContact` OwnerContact ', [d.arg('OwnerContact', d.T.string)]),
    withOwnerContact(OwnerContact): {
      assert std.isString(OwnerContact) : 'OwnerContact must be a string',
      Properties+::: { OwnerContact: OwnerContact },
    },
    '#withDns': d.fn('`withDns` Dns ', [d.arg('Dns', d.T.object)]),
    withDns(Dns): {
      assert std.isObject(Dns) : 'Dns must be a object',
      Properties+::: { Dns: Dns },
    },
    '#withEventConfig': d.fn('`withEventConfig` EventConfig ', [d.arg('EventConfig', d.T.object)]),
    withEventConfig(EventConfig): {
      assert std.isObject(EventConfig) : 'EventConfig must be a object',
      Properties+::: { EventConfig: EventConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ApiCache: {
    '#': d.pkg(
      name='ApiCache',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource Type definition for AWS::AppSync::ApiCache',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::ApiCache Resource
        * Type 
        * ApiId 
        * ApiCachingBehavior 
        * Ttl 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
        d.arg('ApiCachingBehavior', 'd.T.string'),
        d.arg('Ttl', 'd.T.integer'),
      ]
    ),
    new(
      Type,
      ApiId,
      ApiCachingBehavior,
      Ttl,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(ApiCachingBehavior) : 'ApiCachingBehavior must be a string',
        ApiCachingBehavior: ApiCachingBehavior,
        // Type: number
        Ttl: Ttl,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::ApiCache',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTransitEncryptionEnabled': d.fn('`withTransitEncryptionEnabled` TransitEncryptionEnabled ', [d.arg('TransitEncryptionEnabled', d.T.boolean)]),
    withTransitEncryptionEnabled(TransitEncryptionEnabled): {
      assert std.isBoolean(TransitEncryptionEnabled) : 'TransitEncryptionEnabled must be a boolean',
      Properties+::: { TransitEncryptionEnabled: TransitEncryptionEnabled },
    },
    '#withHealthMetricsConfig': d.fn('`withHealthMetricsConfig` HealthMetricsConfig ', [d.arg('HealthMetricsConfig', d.T.string)]),
    withHealthMetricsConfig(HealthMetricsConfig): {
      assert std.isString(HealthMetricsConfig) : 'HealthMetricsConfig must be a string',
      Properties+::: { HealthMetricsConfig: HealthMetricsConfig },
    },
    '#withAtRestEncryptionEnabled': d.fn('`withAtRestEncryptionEnabled` AtRestEncryptionEnabled ', [d.arg('AtRestEncryptionEnabled', d.T.boolean)]),
    withAtRestEncryptionEnabled(AtRestEncryptionEnabled): {
      assert std.isBoolean(AtRestEncryptionEnabled) : 'AtRestEncryptionEnabled must be a boolean',
      Properties+::: { AtRestEncryptionEnabled: AtRestEncryptionEnabled },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ApiKey: {
    '#': d.pkg(
      name='ApiKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource Type definition for AWS::AppSync::ApiKey',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::ApiKey Resource
        * ApiId 
      |||,
      args=[
        d.arg('ApiId', 'd.T.string'),
      ]
    ),
    new(
      ApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::ApiKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApiKey': d.fn('`withApiKey` ApiKey ', [d.arg('ApiKey', d.T.string)]),
    withApiKey(ApiKey): {
      assert std.isString(ApiKey) : 'ApiKey must be a string',
      Properties+::: { ApiKey: ApiKey },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withApiKeyId': d.fn('`withApiKeyId` ApiKeyId ', [d.arg('ApiKeyId', d.T.string)]),
    withApiKeyId(ApiKeyId): {
      assert std.isString(ApiKeyId) : 'ApiKeyId must be a string',
      Properties+::: { ApiKeyId: ApiKeyId },
    },
    '#withExpires': d.fn('`withExpires` Expires ', [d.arg('Expires', d.T.integer)]),
    withExpires(Expires): {
      // Type: number
      Properties+::: { Expires: Expires },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  ChannelNamespace: {
    '#': d.pkg(
      name='ChannelNamespace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource schema for AppSync ChannelNamespace',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::ChannelNamespace Resource
        * ApiId AppSync Api Id that this Channel Namespace belongs to.
        * Name 
      |||,
      args=[
        d.arg('ApiId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ApiId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::ChannelNamespace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSubscribeAuthModes': d.fn('`withSubscribeAuthModes` SubscribeAuthModes ', [d.arg('SubscribeAuthModes', d.T.array)]),
    withSubscribeAuthModes(SubscribeAuthModes): {
      assert std.isArray(SubscribeAuthModes) : 'SubscribeAuthModes must be a array',
      Properties+::: { SubscribeAuthModes: SubscribeAuthModes },
    },
    '#withPublishAuthModes': d.fn('`withPublishAuthModes` PublishAuthModes ', [d.arg('PublishAuthModes', d.T.array)]),
    withPublishAuthModes(PublishAuthModes): {
      assert std.isArray(PublishAuthModes) : 'PublishAuthModes must be a array',
      Properties+::: { PublishAuthModes: PublishAuthModes },
    },
    '#withCodeHandlers': d.fn('`withCodeHandlers` CodeHandlers ', [d.arg('CodeHandlers', d.T.string)]),
    withCodeHandlers(CodeHandlers): {
      assert std.isString(CodeHandlers) : 'CodeHandlers must be a string',
      Properties+::: { CodeHandlers: CodeHandlers },
    },
    '#withCodeS3Location': d.fn('`withCodeS3Location` CodeS3Location ', [d.arg('CodeS3Location', d.T.string)]),
    withCodeS3Location(CodeS3Location): {
      assert std.isString(CodeS3Location) : 'CodeS3Location must be a string',
      Properties+::: { CodeS3Location: CodeS3Location },
    },
    '#withChannelNamespaceArn': d.fn('`withChannelNamespaceArn` ChannelNamespaceArn ', [d.arg('ChannelNamespaceArn', d.T.string)]),
    withChannelNamespaceArn(ChannelNamespaceArn): {
      assert std.isString(ChannelNamespaceArn) : 'ChannelNamespaceArn must be a string',
      Properties+::: { ChannelNamespaceArn: ChannelNamespaceArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DataSource: {
    '#': d.pkg(
      name='DataSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource Type definition for AWS::AppSync::DataSource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::DataSource Resource
        * Type The type of the data source.
        * ApiId Unique AWS AppSync GraphQL API identifier where this data source will be created.
        * Name Friendly name for you to identify your AppSync data source after creation.
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Type,
      ApiId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::DataSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDynamoDBConfig': d.fn('`withDynamoDBConfig` DynamoDBConfig ', [d.arg('DynamoDBConfig', d.T.object)]),
    withDynamoDBConfig(DynamoDBConfig): {
      assert std.isObject(DynamoDBConfig) : 'DynamoDBConfig must be a object',
      Properties+::: { DynamoDBConfig: DynamoDBConfig },
    },
    '#withElasticsearchConfig': d.fn('`withElasticsearchConfig` ElasticsearchConfig ', [d.arg('ElasticsearchConfig', d.T.object)]),
    withElasticsearchConfig(ElasticsearchConfig): {
      assert std.isObject(ElasticsearchConfig) : 'ElasticsearchConfig must be a object',
      Properties+::: { ElasticsearchConfig: ElasticsearchConfig },
    },
    '#withEventBridgeConfig': d.fn('`withEventBridgeConfig` EventBridgeConfig ', [d.arg('EventBridgeConfig', d.T.object)]),
    withEventBridgeConfig(EventBridgeConfig): {
      assert std.isObject(EventBridgeConfig) : 'EventBridgeConfig must be a object',
      Properties+::: { EventBridgeConfig: EventBridgeConfig },
    },
    '#withHttpConfig': d.fn('`withHttpConfig` HttpConfig ', [d.arg('HttpConfig', d.T.object)]),
    withHttpConfig(HttpConfig): {
      assert std.isObject(HttpConfig) : 'HttpConfig must be a object',
      Properties+::: { HttpConfig: HttpConfig },
    },
    '#withLambdaConfig': d.fn('`withLambdaConfig` LambdaConfig ', [d.arg('LambdaConfig', d.T.object)]),
    withLambdaConfig(LambdaConfig): {
      assert std.isObject(LambdaConfig) : 'LambdaConfig must be a object',
      Properties+::: { LambdaConfig: LambdaConfig },
    },
    '#withOpenSearchServiceConfig': d.fn('`withOpenSearchServiceConfig` OpenSearchServiceConfig ', [d.arg('OpenSearchServiceConfig', d.T.object)]),
    withOpenSearchServiceConfig(OpenSearchServiceConfig): {
      assert std.isObject(OpenSearchServiceConfig) : 'OpenSearchServiceConfig must be a object',
      Properties+::: { OpenSearchServiceConfig: OpenSearchServiceConfig },
    },
    '#withRelationalDatabaseConfig': d.fn('`withRelationalDatabaseConfig` RelationalDatabaseConfig ', [d.arg('RelationalDatabaseConfig', d.T.object)]),
    withRelationalDatabaseConfig(RelationalDatabaseConfig): {
      assert std.isObject(RelationalDatabaseConfig) : 'RelationalDatabaseConfig must be a object',
      Properties+::: { RelationalDatabaseConfig: RelationalDatabaseConfig },
    },
    '#withServiceRoleArn': d.fn('`withServiceRoleArn` ServiceRoleArn ', [d.arg('ServiceRoleArn', d.T.string)]),
    withServiceRoleArn(ServiceRoleArn): {
      assert std.isString(ServiceRoleArn) : 'ServiceRoleArn must be a string',
      Properties+::: { ServiceRoleArn: ServiceRoleArn },
    },
    '#withDataSourceArn': d.fn('`withDataSourceArn` DataSourceArn ', [d.arg('DataSourceArn', d.T.string)]),
    withDataSourceArn(DataSourceArn): {
      assert std.isString(DataSourceArn) : 'DataSourceArn must be a string',
      Properties+::: { DataSourceArn: DataSourceArn },
    },
    '#withMetricsConfig': d.fn('`withMetricsConfig` MetricsConfig ', [d.arg('MetricsConfig', d.T.string)]),
    withMetricsConfig(MetricsConfig): {
      assert std.isString(MetricsConfig) : 'MetricsConfig must be a string',
      assert MetricsConfig == 'DISABLED' || MetricsConfig == 'ENABLED' : "MetricsConfig must be either 'DISABLED' or 'ENABLED'",
      Properties+::: { MetricsConfig: MetricsConfig },
    },
  },
  DomainName: {
    '#': d.pkg(
      name='DomainName',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource Type definition for AWS::AppSync::DomainName',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::DomainName Resource
        * DomainName 
        * CertificateArn 
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
        d.arg('CertificateArn', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
      CertificateArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isString(CertificateArn) : 'CertificateArn must be a string',
        CertificateArn: CertificateArn,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::DomainName',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAppSyncDomainName': d.fn('`withAppSyncDomainName` AppSyncDomainName ', [d.arg('AppSyncDomainName', d.T.string)]),
    withAppSyncDomainName(AppSyncDomainName): {
      assert std.isString(AppSyncDomainName) : 'AppSyncDomainName must be a string',
      Properties+::: { AppSyncDomainName: AppSyncDomainName },
    },
    '#withHostedZoneId': d.fn('`withHostedZoneId` HostedZoneId ', [d.arg('HostedZoneId', d.T.string)]),
    withHostedZoneId(HostedZoneId): {
      assert std.isString(HostedZoneId) : 'HostedZoneId must be a string',
      Properties+::: { HostedZoneId: HostedZoneId },
    },
  },
  DomainNameApiAssociation: {
    '#': d.pkg(
      name='DomainNameApiAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource Type definition for AWS::AppSync::DomainNameApiAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::DomainNameApiAssociation Resource
        * DomainName 
        * ApiId 
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
      ApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::DomainNameApiAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApiAssociationIdentifier': d.fn('`withApiAssociationIdentifier` ApiAssociationIdentifier ', [d.arg('ApiAssociationIdentifier', d.T.string)]),
    withApiAssociationIdentifier(ApiAssociationIdentifier): {
      assert std.isString(ApiAssociationIdentifier) : 'ApiAssociationIdentifier must be a string',
      Properties+::: { ApiAssociationIdentifier: ApiAssociationIdentifier },
    },
  },
  FunctionConfiguration: {
    '#': d.pkg(
      name='FunctionConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::FunctionConfiguration Resource
        * ApiId The AWS AppSync GraphQL API that you want to attach using this function.
        * DataSourceName The name of data source this function will attach.
        * Name The name of the function.
      |||,
      args=[
        d.arg('ApiId', 'd.T.string'),
        d.arg('DataSourceName', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ApiId,
      DataSourceName,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(DataSourceName) : 'DataSourceName must be a string',
        DataSourceName: DataSourceName,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::FunctionConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFunctionId': d.fn('`withFunctionId` FunctionId ', [d.arg('FunctionId', d.T.string)]),
    withFunctionId(FunctionId): {
      assert std.isString(FunctionId) : 'FunctionId must be a string',
      Properties+::: { FunctionId: FunctionId },
    },
    '#withFunctionArn': d.fn('`withFunctionArn` FunctionArn ', [d.arg('FunctionArn', d.T.string)]),
    withFunctionArn(FunctionArn): {
      assert std.isString(FunctionArn) : 'FunctionArn must be a string',
      Properties+::: { FunctionArn: FunctionArn },
    },
    '#withCode': d.fn('`withCode` Code ', [d.arg('Code', d.T.string)]),
    withCode(Code): {
      assert std.isString(Code) : 'Code must be a string',
      Properties+::: { Code: Code },
    },
    '#withCodeS3Location': d.fn('`withCodeS3Location` CodeS3Location ', [d.arg('CodeS3Location', d.T.string)]),
    withCodeS3Location(CodeS3Location): {
      assert std.isString(CodeS3Location) : 'CodeS3Location must be a string',
      Properties+::: { CodeS3Location: CodeS3Location },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFunctionVersion': d.fn('`withFunctionVersion` FunctionVersion ', [d.arg('FunctionVersion', d.T.string)]),
    withFunctionVersion(FunctionVersion): {
      assert std.isString(FunctionVersion) : 'FunctionVersion must be a string',
      Properties+::: { FunctionVersion: FunctionVersion },
    },
    '#withMaxBatchSize': d.fn('`withMaxBatchSize` MaxBatchSize ', [d.arg('MaxBatchSize', d.T.integer)]),
    withMaxBatchSize(MaxBatchSize): {
      assert std.isNumber(MaxBatchSize) : 'MaxBatchSize must be a integer',
      Properties+::: { MaxBatchSize: MaxBatchSize },
    },
    '#withRequestMappingTemplate': d.fn('`withRequestMappingTemplate` RequestMappingTemplate ', [d.arg('RequestMappingTemplate', d.T.string)]),
    withRequestMappingTemplate(RequestMappingTemplate): {
      assert std.isString(RequestMappingTemplate) : 'RequestMappingTemplate must be a string',
      Properties+::: { RequestMappingTemplate: RequestMappingTemplate },
    },
    '#withRequestMappingTemplateS3Location': d.fn('`withRequestMappingTemplateS3Location` RequestMappingTemplateS3Location ', [d.arg('RequestMappingTemplateS3Location', d.T.string)]),
    withRequestMappingTemplateS3Location(RequestMappingTemplateS3Location): {
      assert std.isString(RequestMappingTemplateS3Location) : 'RequestMappingTemplateS3Location must be a string',
      Properties+::: { RequestMappingTemplateS3Location: RequestMappingTemplateS3Location },
    },
    '#withResponseMappingTemplate': d.fn('`withResponseMappingTemplate` ResponseMappingTemplate ', [d.arg('ResponseMappingTemplate', d.T.string)]),
    withResponseMappingTemplate(ResponseMappingTemplate): {
      assert std.isString(ResponseMappingTemplate) : 'ResponseMappingTemplate must be a string',
      Properties+::: { ResponseMappingTemplate: ResponseMappingTemplate },
    },
    '#withResponseMappingTemplateS3Location': d.fn('`withResponseMappingTemplateS3Location` ResponseMappingTemplateS3Location ', [d.arg('ResponseMappingTemplateS3Location', d.T.string)]),
    withResponseMappingTemplateS3Location(ResponseMappingTemplateS3Location): {
      assert std.isString(ResponseMappingTemplateS3Location) : 'ResponseMappingTemplateS3Location must be a string',
      Properties+::: { ResponseMappingTemplateS3Location: ResponseMappingTemplateS3Location },
    },
    '#withRuntime': d.fn('`withRuntime` Runtime ', [d.arg('Runtime', d.T.object)]),
    withRuntime(Runtime): {
      assert std.isObject(Runtime) : 'Runtime must be a object',
      Properties+::: { Runtime: Runtime },
    },
    '#withSyncConfig': d.fn('`withSyncConfig` SyncConfig ', [d.arg('SyncConfig', d.T.object)]),
    withSyncConfig(SyncConfig): {
      assert std.isObject(SyncConfig) : 'SyncConfig must be a object',
      Properties+::: { SyncConfig: SyncConfig },
    },
  },
  GraphQLApi: {
    '#': d.pkg(
      name='GraphQLApi',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource Type definition for AWS::AppSync::GraphQLApi',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::GraphQLApi Resource
        * Name The API name
        * AuthenticationType Security configuration for your GraphQL API
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('AuthenticationType', 'd.T.string'),
      ]
    ),
    new(
      Name,
      AuthenticationType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
        AuthenticationType: AuthenticationType,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::GraphQLApi',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAdditionalAuthenticationProviders': d.fn('`withAdditionalAuthenticationProviders` AdditionalAuthenticationProviders ', [d.arg('AdditionalAuthenticationProviders', d.T.array)]),
    withAdditionalAuthenticationProviders(AdditionalAuthenticationProviders): {
      assert std.isArray(AdditionalAuthenticationProviders) : 'AdditionalAuthenticationProviders must be a array',
      Properties+::: { AdditionalAuthenticationProviders: AdditionalAuthenticationProviders },
    },
    '#withApiId': d.fn('`withApiId` ApiId ', [d.arg('ApiId', d.T.string)]),
    withApiId(ApiId): {
      assert std.isString(ApiId) : 'ApiId must be a string',
      Properties+::: { ApiId: ApiId },
    },
    '#withApiType': d.fn('`withApiType` ApiType ', [d.arg('ApiType', d.T.string)]),
    withApiType(ApiType): {
      assert std.isString(ApiType) : 'ApiType must be a string',
      Properties+::: { ApiType: ApiType },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withEnhancedMetricsConfig': d.fn('`withEnhancedMetricsConfig` EnhancedMetricsConfig ', [d.arg('EnhancedMetricsConfig', d.T.object)]),
    withEnhancedMetricsConfig(EnhancedMetricsConfig): {
      assert std.isObject(EnhancedMetricsConfig) : 'EnhancedMetricsConfig must be a object',
      Properties+::: { EnhancedMetricsConfig: EnhancedMetricsConfig },
    },
    '#withEnvironmentVariables': d.fn('`withEnvironmentVariables` EnvironmentVariables ', [d.arg('EnvironmentVariables', d.T.object)]),
    withEnvironmentVariables(EnvironmentVariables): {
      assert std.isObject(EnvironmentVariables) : 'EnvironmentVariables must be a object',
      Properties+::: { EnvironmentVariables: EnvironmentVariables },
    },
    '#withGraphQLDns': d.fn('`withGraphQLDns` GraphQLDns ', [d.arg('GraphQLDns', d.T.string)]),
    withGraphQLDns(GraphQLDns): {
      assert std.isString(GraphQLDns) : 'GraphQLDns must be a string',
      Properties+::: { GraphQLDns: GraphQLDns },
    },
    '#withGraphQLEndpointArn': d.fn('`withGraphQLEndpointArn` GraphQLEndpointArn ', [d.arg('GraphQLEndpointArn', d.T.string)]),
    withGraphQLEndpointArn(GraphQLEndpointArn): {
      assert std.isString(GraphQLEndpointArn) : 'GraphQLEndpointArn must be a string',
      Properties+::: { GraphQLEndpointArn: GraphQLEndpointArn },
    },
    '#withGraphQLUrl': d.fn('`withGraphQLUrl` GraphQLUrl ', [d.arg('GraphQLUrl', d.T.string)]),
    withGraphQLUrl(GraphQLUrl): {
      assert std.isString(GraphQLUrl) : 'GraphQLUrl must be a string',
      Properties+::: { GraphQLUrl: GraphQLUrl },
    },
    '#withIntrospectionConfig': d.fn('`withIntrospectionConfig` IntrospectionConfig ', [d.arg('IntrospectionConfig', d.T.string)]),
    withIntrospectionConfig(IntrospectionConfig): {
      assert std.isString(IntrospectionConfig) : 'IntrospectionConfig must be a string',
      Properties+::: { IntrospectionConfig: IntrospectionConfig },
    },
    '#withLambdaAuthorizerConfig': d.fn('`withLambdaAuthorizerConfig` LambdaAuthorizerConfig ', [d.arg('LambdaAuthorizerConfig', d.T.object)]),
    withLambdaAuthorizerConfig(LambdaAuthorizerConfig): {
      assert std.isObject(LambdaAuthorizerConfig) : 'LambdaAuthorizerConfig must be a object',
      Properties+::: { LambdaAuthorizerConfig: LambdaAuthorizerConfig },
    },
    '#withLogConfig': d.fn('`withLogConfig` LogConfig ', [d.arg('LogConfig', d.T.object)]),
    withLogConfig(LogConfig): {
      assert std.isObject(LogConfig) : 'LogConfig must be a object',
      Properties+::: { LogConfig: LogConfig },
    },
    '#withMergedApiExecutionRoleArn': d.fn('`withMergedApiExecutionRoleArn` MergedApiExecutionRoleArn ', [d.arg('MergedApiExecutionRoleArn', d.T.string)]),
    withMergedApiExecutionRoleArn(MergedApiExecutionRoleArn): {
      assert std.isString(MergedApiExecutionRoleArn) : 'MergedApiExecutionRoleArn must be a string',
      Properties+::: { MergedApiExecutionRoleArn: MergedApiExecutionRoleArn },
    },
    '#withOpenIDConnectConfig': d.fn('`withOpenIDConnectConfig` OpenIDConnectConfig ', [d.arg('OpenIDConnectConfig', d.T.object)]),
    withOpenIDConnectConfig(OpenIDConnectConfig): {
      assert std.isObject(OpenIDConnectConfig) : 'OpenIDConnectConfig must be a object',
      Properties+::: { OpenIDConnectConfig: OpenIDConnectConfig },
    },
    '#withOwnerContact': d.fn('`withOwnerContact` OwnerContact ', [d.arg('OwnerContact', d.T.string)]),
    withOwnerContact(OwnerContact): {
      assert std.isString(OwnerContact) : 'OwnerContact must be a string',
      Properties+::: { OwnerContact: OwnerContact },
    },
    '#withQueryDepthLimit': d.fn('`withQueryDepthLimit` QueryDepthLimit ', [d.arg('QueryDepthLimit', d.T.integer)]),
    withQueryDepthLimit(QueryDepthLimit): {
      assert std.isNumber(QueryDepthLimit) : 'QueryDepthLimit must be a integer',
      Properties+::: { QueryDepthLimit: QueryDepthLimit },
    },
    '#withRealtimeDns': d.fn('`withRealtimeDns` RealtimeDns ', [d.arg('RealtimeDns', d.T.string)]),
    withRealtimeDns(RealtimeDns): {
      assert std.isString(RealtimeDns) : 'RealtimeDns must be a string',
      Properties+::: { RealtimeDns: RealtimeDns },
    },
    '#withRealtimeUrl': d.fn('`withRealtimeUrl` RealtimeUrl ', [d.arg('RealtimeUrl', d.T.string)]),
    withRealtimeUrl(RealtimeUrl): {
      assert std.isString(RealtimeUrl) : 'RealtimeUrl must be a string',
      Properties+::: { RealtimeUrl: RealtimeUrl },
    },
    '#withResolverCountLimit': d.fn('`withResolverCountLimit` ResolverCountLimit ', [d.arg('ResolverCountLimit', d.T.integer)]),
    withResolverCountLimit(ResolverCountLimit): {
      assert std.isNumber(ResolverCountLimit) : 'ResolverCountLimit must be a integer',
      Properties+::: { ResolverCountLimit: ResolverCountLimit },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUserPoolConfig': d.fn('`withUserPoolConfig` UserPoolConfig ', [d.arg('UserPoolConfig', d.T.object)]),
    withUserPoolConfig(UserPoolConfig): {
      assert std.isObject(UserPoolConfig) : 'UserPoolConfig must be a object',
      Properties+::: { UserPoolConfig: UserPoolConfig },
    },
    '#withVisibility': d.fn('`withVisibility` Visibility ', [d.arg('Visibility', d.T.string)]),
    withVisibility(Visibility): {
      assert std.isString(Visibility) : 'Visibility must be a string',
      Properties+::: { Visibility: Visibility },
    },
    '#withXrayEnabled': d.fn('`withXrayEnabled` XrayEnabled ', [d.arg('XrayEnabled', d.T.boolean)]),
    withXrayEnabled(XrayEnabled): {
      assert std.isBoolean(XrayEnabled) : 'XrayEnabled must be a boolean',
      Properties+::: { XrayEnabled: XrayEnabled },
    },
  },
  GraphQLSchema: {
    '#': d.pkg(
      name='GraphQLSchema',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource Type definition for AWS::AppSync::GraphQLSchema',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::GraphQLSchema Resource
        * ApiId 
      |||,
      args=[
        d.arg('ApiId', 'd.T.string'),
      ]
    ),
    new(
      ApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::GraphQLSchema',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDefinition': d.fn('`withDefinition` Definition ', [d.arg('Definition', d.T.string)]),
    withDefinition(Definition): {
      assert std.isString(Definition) : 'Definition must be a string',
      Properties+::: { Definition: Definition },
    },
    '#withDefinitionS3Location': d.fn('`withDefinitionS3Location` DefinitionS3Location ', [d.arg('DefinitionS3Location', d.T.string)]),
    withDefinitionS3Location(DefinitionS3Location): {
      assert std.isString(DefinitionS3Location) : 'DefinitionS3Location must be a string',
      Properties+::: { DefinitionS3Location: DefinitionS3Location },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Resolver: {
    '#': d.pkg(
      name='Resolver',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='The AWS::AppSync::Resolver resource defines the logical GraphQL resolver that you attach to fields in a schema. Request and response templates for resolvers are written in Apache Velocity Template Language (VTL) format. For more information about resolvers, see [Resolver Mapping Template Reference](https://docs.aws.amazon.com/appsync/latest/devguide/resolver-mapping-template-reference.html).When you submit an update, CFNLong updates resources based on differences between what you submit and the stacks current template. To cause this resource to be updated you must change a property value for this resource in the CFNshort template. Changing the S3 file content without changing a property value will not result in an update operation. See [Update Behaviors of Stack Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::Resolver Resource
        * TypeName The GraphQL type that invokes this resolver.
        * ApiId The APSYlong GraphQL API to which you want to attach this resolver.
        * FieldName The GraphQL field on a type that invokes the resolver.
      |||,
      args=[
        d.arg('TypeName', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
        d.arg('FieldName', 'd.T.string'),
      ]
    ),
    new(
      TypeName,
      ApiId,
      FieldName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TypeName) : 'TypeName must be a string',
        TypeName: TypeName,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(FieldName) : 'FieldName must be a string',
        FieldName: FieldName,
      },
      DependsOn:: [],
      Type: 'AWS::AppSync::Resolver',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCachingConfig': d.fn('`withCachingConfig` CachingConfig ', [d.arg('CachingConfig', d.T.object)]),
    withCachingConfig(CachingConfig): {
      assert std.isObject(CachingConfig) : 'CachingConfig must be a object',
      Properties+::: { CachingConfig: CachingConfig },
    },
    '#withCode': d.fn('`withCode` Code ', [d.arg('Code', d.T.string)]),
    withCode(Code): {
      assert std.isString(Code) : 'Code must be a string',
      Properties+::: { Code: Code },
    },
    '#withCodeS3Location': d.fn('`withCodeS3Location` CodeS3Location ', [d.arg('CodeS3Location', d.T.string)]),
    withCodeS3Location(CodeS3Location): {
      assert std.isString(CodeS3Location) : 'CodeS3Location must be a string',
      Properties+::: { CodeS3Location: CodeS3Location },
    },
    '#withDataSourceName': d.fn('`withDataSourceName` DataSourceName ', [d.arg('DataSourceName', d.T.string)]),
    withDataSourceName(DataSourceName): {
      assert std.isString(DataSourceName) : 'DataSourceName must be a string',
      Properties+::: { DataSourceName: DataSourceName },
    },
    '#withKind': d.fn('`withKind` Kind ', [d.arg('Kind', d.T.string)]),
    withKind(Kind): {
      assert std.isString(Kind) : 'Kind must be a string',
      Properties+::: { Kind: Kind },
    },
    '#withMaxBatchSize': d.fn('`withMaxBatchSize` MaxBatchSize ', [d.arg('MaxBatchSize', d.T.integer)]),
    withMaxBatchSize(MaxBatchSize): {
      assert std.isNumber(MaxBatchSize) : 'MaxBatchSize must be a integer',
      Properties+::: { MaxBatchSize: MaxBatchSize },
    },
    '#withPipelineConfig': d.fn('`withPipelineConfig` PipelineConfig ', [d.arg('PipelineConfig', d.T.object)]),
    withPipelineConfig(PipelineConfig): {
      assert std.isObject(PipelineConfig) : 'PipelineConfig must be a object',
      Properties+::: { PipelineConfig: PipelineConfig },
    },
    '#withRequestMappingTemplate': d.fn('`withRequestMappingTemplate` RequestMappingTemplate ', [d.arg('RequestMappingTemplate', d.T.string)]),
    withRequestMappingTemplate(RequestMappingTemplate): {
      assert std.isString(RequestMappingTemplate) : 'RequestMappingTemplate must be a string',
      Properties+::: { RequestMappingTemplate: RequestMappingTemplate },
    },
    '#withRequestMappingTemplateS3Location': d.fn('`withRequestMappingTemplateS3Location` RequestMappingTemplateS3Location ', [d.arg('RequestMappingTemplateS3Location', d.T.string)]),
    withRequestMappingTemplateS3Location(RequestMappingTemplateS3Location): {
      assert std.isString(RequestMappingTemplateS3Location) : 'RequestMappingTemplateS3Location must be a string',
      Properties+::: { RequestMappingTemplateS3Location: RequestMappingTemplateS3Location },
    },
    '#withResolverArn': d.fn('`withResolverArn` ResolverArn ', [d.arg('ResolverArn', d.T.string)]),
    withResolverArn(ResolverArn): {
      assert std.isString(ResolverArn) : 'ResolverArn must be a string',
      Properties+::: { ResolverArn: ResolverArn },
    },
    '#withResponseMappingTemplate': d.fn('`withResponseMappingTemplate` ResponseMappingTemplate ', [d.arg('ResponseMappingTemplate', d.T.string)]),
    withResponseMappingTemplate(ResponseMappingTemplate): {
      assert std.isString(ResponseMappingTemplate) : 'ResponseMappingTemplate must be a string',
      Properties+::: { ResponseMappingTemplate: ResponseMappingTemplate },
    },
    '#withResponseMappingTemplateS3Location': d.fn('`withResponseMappingTemplateS3Location` ResponseMappingTemplateS3Location ', [d.arg('ResponseMappingTemplateS3Location', d.T.string)]),
    withResponseMappingTemplateS3Location(ResponseMappingTemplateS3Location): {
      assert std.isString(ResponseMappingTemplateS3Location) : 'ResponseMappingTemplateS3Location must be a string',
      Properties+::: { ResponseMappingTemplateS3Location: ResponseMappingTemplateS3Location },
    },
    '#withRuntime': d.fn('`withRuntime` Runtime ', [d.arg('Runtime', d.T.object)]),
    withRuntime(Runtime): {
      assert std.isObject(Runtime) : 'Runtime must be a object',
      Properties+::: { Runtime: Runtime },
    },
    '#withSyncConfig': d.fn('`withSyncConfig` SyncConfig ', [d.arg('SyncConfig', d.T.object)]),
    withSyncConfig(SyncConfig): {
      assert std.isObject(SyncConfig) : 'SyncConfig must be a object',
      Properties+::: { SyncConfig: SyncConfig },
    },
    '#withMetricsConfig': d.fn('`withMetricsConfig` MetricsConfig ', [d.arg('MetricsConfig', d.T.string)]),
    withMetricsConfig(MetricsConfig): {
      assert std.isString(MetricsConfig) : 'MetricsConfig must be a string',
      assert MetricsConfig == 'ENABLED' || MetricsConfig == 'DISABLED' : "MetricsConfig must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { MetricsConfig: MetricsConfig },
    },
  },
  SourceApiAssociation: {
    '#': d.pkg(
      name='SourceApiAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppSync.libsonnet',
      help='Resource Type definition for AWS::AppSync::SourceApiAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppSync::SourceApiAssociation Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::AppSync::SourceApiAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSourceApiIdentifier': d.fn('`withSourceApiIdentifier` SourceApiIdentifier ', [d.arg('SourceApiIdentifier', d.T.string)]),
    withSourceApiIdentifier(SourceApiIdentifier): {
      assert std.isString(SourceApiIdentifier) : 'SourceApiIdentifier must be a string',
      Properties+::: { SourceApiIdentifier: SourceApiIdentifier },
    },
    '#withMergedApiIdentifier': d.fn('`withMergedApiIdentifier` MergedApiIdentifier ', [d.arg('MergedApiIdentifier', d.T.string)]),
    withMergedApiIdentifier(MergedApiIdentifier): {
      assert std.isString(MergedApiIdentifier) : 'MergedApiIdentifier must be a string',
      Properties+::: { MergedApiIdentifier: MergedApiIdentifier },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSourceApiAssociationConfig': d.fn('`withSourceApiAssociationConfig` SourceApiAssociationConfig ', [d.arg('SourceApiAssociationConfig')]),
    withSourceApiAssociationConfig(SourceApiAssociationConfig): {
      // Type: undefined
      Properties+::: { SourceApiAssociationConfig: SourceApiAssociationConfig },
    },
    '#withAssociationId': d.fn('`withAssociationId` AssociationId ', [d.arg('AssociationId', d.T.string)]),
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: { AssociationId: AssociationId },
    },
    '#withAssociationArn': d.fn('`withAssociationArn` AssociationArn ', [d.arg('AssociationArn', d.T.string)]),
    withAssociationArn(AssociationArn): {
      assert std.isString(AssociationArn) : 'AssociationArn must be a string',
      Properties+::: { AssociationArn: AssociationArn },
    },
    '#withSourceApiId': d.fn('`withSourceApiId` SourceApiId ', [d.arg('SourceApiId', d.T.string)]),
    withSourceApiId(SourceApiId): {
      assert std.isString(SourceApiId) : 'SourceApiId must be a string',
      Properties+::: { SourceApiId: SourceApiId },
    },
    '#withSourceApiArn': d.fn('`withSourceApiArn` SourceApiArn ', [d.arg('SourceApiArn', d.T.string)]),
    withSourceApiArn(SourceApiArn): {
      assert std.isString(SourceApiArn) : 'SourceApiArn must be a string',
      Properties+::: { SourceApiArn: SourceApiArn },
    },
    '#withMergedApiId': d.fn('`withMergedApiId` MergedApiId ', [d.arg('MergedApiId', d.T.string)]),
    withMergedApiId(MergedApiId): {
      assert std.isString(MergedApiId) : 'MergedApiId must be a string',
      Properties+::: { MergedApiId: MergedApiId },
    },
    '#withMergedApiArn': d.fn('`withMergedApiArn` MergedApiArn ', [d.arg('MergedApiArn', d.T.string)]),
    withMergedApiArn(MergedApiArn): {
      assert std.isString(MergedApiArn) : 'MergedApiArn must be a string',
      Properties+::: { MergedApiArn: MergedApiArn },
    },
    '#withSourceApiAssociationStatus': d.fn('`withSourceApiAssociationStatus` SourceApiAssociationStatus ', [d.arg('SourceApiAssociationStatus', d.T.string)]),
    withSourceApiAssociationStatus(SourceApiAssociationStatus): {
      assert std.isString(SourceApiAssociationStatus) : 'SourceApiAssociationStatus must be a string',
      assert SourceApiAssociationStatus == 'MERGE_SCHEDULED' || SourceApiAssociationStatus == 'MERGE_FAILED' || SourceApiAssociationStatus == 'MERGE_SUCCESS' || SourceApiAssociationStatus == 'MERGE_IN_PROGRESS' || SourceApiAssociationStatus == 'AUTO_MERGE_SCHEDULE_FAILED' || SourceApiAssociationStatus == 'DELETION_SCHEDULED' || SourceApiAssociationStatus == 'DELETION_IN_PROGRESS' || SourceApiAssociationStatus == 'DELETION_FAILED' : "SourceApiAssociationStatus must be either 'MERGE_SCHEDULED' or 'MERGE_FAILED' or 'MERGE_SUCCESS' or 'MERGE_IN_PROGRESS' or 'AUTO_MERGE_SCHEDULE_FAILED' or 'DELETION_SCHEDULED' or 'DELETION_IN_PROGRESS' or 'DELETION_FAILED'",
      Properties+::: { SourceApiAssociationStatus: SourceApiAssociationStatus },
    },
    '#withSourceApiAssociationStatusDetail': d.fn('`withSourceApiAssociationStatusDetail` SourceApiAssociationStatusDetail ', [d.arg('SourceApiAssociationStatusDetail', d.T.string)]),
    withSourceApiAssociationStatusDetail(SourceApiAssociationStatusDetail): {
      assert std.isString(SourceApiAssociationStatusDetail) : 'SourceApiAssociationStatusDetail must be a string',
      Properties+::: { SourceApiAssociationStatusDetail: SourceApiAssociationStatusDetail },
    },
    '#withLastSuccessfulMergeDate': d.fn('`withLastSuccessfulMergeDate` LastSuccessfulMergeDate ', [d.arg('LastSuccessfulMergeDate', d.T.string)]),
    withLastSuccessfulMergeDate(LastSuccessfulMergeDate): {
      assert std.isString(LastSuccessfulMergeDate) : 'LastSuccessfulMergeDate must be a string',
      Properties+::: { LastSuccessfulMergeDate: LastSuccessfulMergeDate },
    },
  },
}
