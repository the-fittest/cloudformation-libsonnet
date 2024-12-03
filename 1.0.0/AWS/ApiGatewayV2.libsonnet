local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Api: {
    '#': d.pkg(
      name='Api',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::Api resource creates an API. WebSocket APIs and HTTP APIs are supported. For more information about WebSocket APIs, see [About WebSocket APIs in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-overview.html) in the *API Gateway Developer Guide*. For more information about HTTP APIs, see [HTTP APIs](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api.html) in the *API Gateway Developer Guide.*',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::Api Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::Api',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRouteSelectionExpression': d.fn('`withRouteSelectionExpression` RouteSelectionExpression ', [d.arg('RouteSelectionExpression', d.T.string)]),
    withRouteSelectionExpression(RouteSelectionExpression): {
      assert std.isString(RouteSelectionExpression) : 'RouteSelectionExpression must be a string',
      Properties+::: { RouteSelectionExpression: RouteSelectionExpression },
    },
    '#withBodyS3Location': d.fn('`withBodyS3Location` BodyS3Location ', [d.arg('BodyS3Location', d.T.object)]),
    withBodyS3Location(BodyS3Location): {
      assert std.isObject(BodyS3Location) : 'BodyS3Location must be a object',
      Properties+::: { BodyS3Location: BodyS3Location },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withApiEndpoint': d.fn('`withApiEndpoint` ApiEndpoint ', [d.arg('ApiEndpoint', d.T.string)]),
    withApiEndpoint(ApiEndpoint): {
      assert std.isString(ApiEndpoint) : 'ApiEndpoint must be a string',
      Properties+::: { ApiEndpoint: ApiEndpoint },
    },
    '#withBasePath': d.fn('`withBasePath` BasePath ', [d.arg('BasePath', d.T.string)]),
    withBasePath(BasePath): {
      assert std.isString(BasePath) : 'BasePath must be a string',
      Properties+::: { BasePath: BasePath },
    },
    '#withFailOnWarnings': d.fn('`withFailOnWarnings` FailOnWarnings ', [d.arg('FailOnWarnings', d.T.boolean)]),
    withFailOnWarnings(FailOnWarnings): {
      assert std.isBoolean(FailOnWarnings) : 'FailOnWarnings must be a boolean',
      Properties+::: { FailOnWarnings: FailOnWarnings },
    },
    '#withDisableExecuteApiEndpoint': d.fn('`withDisableExecuteApiEndpoint` DisableExecuteApiEndpoint ', [d.arg('DisableExecuteApiEndpoint', d.T.boolean)]),
    withDisableExecuteApiEndpoint(DisableExecuteApiEndpoint): {
      assert std.isBoolean(DisableExecuteApiEndpoint) : 'DisableExecuteApiEndpoint must be a boolean',
      Properties+::: { DisableExecuteApiEndpoint: DisableExecuteApiEndpoint },
    },
    '#withDisableSchemaValidation': d.fn('`withDisableSchemaValidation` DisableSchemaValidation ', [d.arg('DisableSchemaValidation', d.T.boolean)]),
    withDisableSchemaValidation(DisableSchemaValidation): {
      assert std.isBoolean(DisableSchemaValidation) : 'DisableSchemaValidation must be a boolean',
      Properties+::: { DisableSchemaValidation: DisableSchemaValidation },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTarget': d.fn('`withTarget` Target ', [d.arg('Target', d.T.string)]),
    withTarget(Target): {
      assert std.isString(Target) : 'Target must be a string',
      Properties+::: { Target: Target },
    },
    '#withCredentialsArn': d.fn('`withCredentialsArn` CredentialsArn ', [d.arg('CredentialsArn', d.T.string)]),
    withCredentialsArn(CredentialsArn): {
      assert std.isString(CredentialsArn) : 'CredentialsArn must be a string',
      Properties+::: { CredentialsArn: CredentialsArn },
    },
    '#withCorsConfiguration': d.fn('`withCorsConfiguration` CorsConfiguration ', [d.arg('CorsConfiguration', d.T.object)]),
    withCorsConfiguration(CorsConfiguration): {
      assert std.isObject(CorsConfiguration) : 'CorsConfiguration must be a object',
      Properties+::: { CorsConfiguration: CorsConfiguration },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withProtocolType': d.fn('`withProtocolType` ProtocolType ', [d.arg('ProtocolType', d.T.string)]),
    withProtocolType(ProtocolType): {
      assert std.isString(ProtocolType) : 'ProtocolType must be a string',
      Properties+::: { ProtocolType: ProtocolType },
    },
    '#withRouteKey': d.fn('`withRouteKey` RouteKey ', [d.arg('RouteKey', d.T.string)]),
    withRouteKey(RouteKey): {
      assert std.isString(RouteKey) : 'RouteKey must be a string',
      Properties+::: { RouteKey: RouteKey },
    },
    '#withApiId': d.fn('`withApiId` ApiId ', [d.arg('ApiId', d.T.string)]),
    withApiId(ApiId): {
      assert std.isString(ApiId) : 'ApiId must be a string',
      Properties+::: { ApiId: ApiId },
    },
    '#withBody': d.fn('`withBody` Body ', [d.arg('Body', d.T.object)]),
    withBody(Body): {
      assert std.isObject(Body) : 'Body must be a object',
      Properties+::: { Body: Body },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withApiKeySelectionExpression': d.fn('`withApiKeySelectionExpression` ApiKeySelectionExpression ', [d.arg('ApiKeySelectionExpression', d.T.string)]),
    withApiKeySelectionExpression(ApiKeySelectionExpression): {
      assert std.isString(ApiKeySelectionExpression) : 'ApiKeySelectionExpression must be a string',
      Properties+::: { ApiKeySelectionExpression: ApiKeySelectionExpression },
    },
  },
  ApiGatewayManagedOverrides: {
    '#': d.pkg(
      name='ApiGatewayManagedOverrides',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='Resource Type definition for AWS::ApiGatewayV2::ApiGatewayManagedOverrides',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::ApiGatewayManagedOverrides Resource
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
      Type: 'AWS::ApiGatewayV2::ApiGatewayManagedOverrides',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStage': d.fn('`withStage` Stage ', [d.arg('Stage', d.T.object)]),
    withStage(Stage): {
      assert std.isObject(Stage) : 'Stage must be a object',
      Properties+::: { Stage: Stage },
    },
    '#withIntegration': d.fn('`withIntegration` Integration ', [d.arg('Integration', d.T.object)]),
    withIntegration(Integration): {
      assert std.isObject(Integration) : 'Integration must be a object',
      Properties+::: { Integration: Integration },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRoute': d.fn('`withRoute` Route ', [d.arg('Route', d.T.object)]),
    withRoute(Route): {
      assert std.isObject(Route) : 'Route must be a object',
      Properties+::: { Route: Route },
    },
  },
  ApiMapping: {
    '#': d.pkg(
      name='ApiMapping',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::ApiMapping resource contains an API mapping. An API mapping relates a path of your custom domain name to a stage of your API. A custom domain name can have multiple API mappings, but the paths cant overlap. A custom domain can map only to APIs of the same protocol type. For more information, see [CreateApiMapping](https://docs.aws.amazon.com/apigatewayv2/latest/api-reference/domainnames-domainname-apimappings.html#CreateApiMapping) in the *Amazon API Gateway V2 API Reference*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::ApiMapping Resource
        * DomainName The domain name.
        * Stage The API stage.
        * ApiId The identifier of the API.
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
        d.arg('Stage', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
      Stage,
      ApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isString(Stage) : 'Stage must be a string',
        Stage: Stage,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::ApiMapping',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApiMappingId': d.fn('`withApiMappingId` ApiMappingId ', [d.arg('ApiMappingId', d.T.string)]),
    withApiMappingId(ApiMappingId): {
      assert std.isString(ApiMappingId) : 'ApiMappingId must be a string',
      Properties+::: { ApiMappingId: ApiMappingId },
    },
    '#withApiMappingKey': d.fn('`withApiMappingKey` ApiMappingKey ', [d.arg('ApiMappingKey', d.T.string)]),
    withApiMappingKey(ApiMappingKey): {
      assert std.isString(ApiMappingKey) : 'ApiMappingKey must be a string',
      Properties+::: { ApiMappingKey: ApiMappingKey },
    },
  },
  Authorizer: {
    '#': d.pkg(
      name='Authorizer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::Authorizer resource creates an authorizer for a WebSocket API or an HTTP API. To learn more, see [Controlling and managing access to a WebSocket API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-control-access.html) and [Controlling and managing access to an HTTP API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-access-control.html) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::Authorizer Resource
        * AuthorizerType The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).
        * ApiId The API identifier.
        * Name The name of the authorizer.
      |||,
      args=[
        d.arg('AuthorizerType', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      AuthorizerType,
      ApiId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AuthorizerType) : 'AuthorizerType must be a string',
        AuthorizerType: AuthorizerType,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::Authorizer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIdentityValidationExpression': d.fn('`withIdentityValidationExpression` IdentityValidationExpression ', [d.arg('IdentityValidationExpression', d.T.string)]),
    withIdentityValidationExpression(IdentityValidationExpression): {
      assert std.isString(IdentityValidationExpression) : 'IdentityValidationExpression must be a string',
      Properties+::: { IdentityValidationExpression: IdentityValidationExpression },
    },
    '#withAuthorizerUri': d.fn('`withAuthorizerUri` AuthorizerUri ', [d.arg('AuthorizerUri', d.T.string)]),
    withAuthorizerUri(AuthorizerUri): {
      assert std.isString(AuthorizerUri) : 'AuthorizerUri must be a string',
      Properties+::: { AuthorizerUri: AuthorizerUri },
    },
    '#withAuthorizerCredentialsArn': d.fn('`withAuthorizerCredentialsArn` AuthorizerCredentialsArn ', [d.arg('AuthorizerCredentialsArn', d.T.string)]),
    withAuthorizerCredentialsArn(AuthorizerCredentialsArn): {
      assert std.isString(AuthorizerCredentialsArn) : 'AuthorizerCredentialsArn must be a string',
      Properties+::: { AuthorizerCredentialsArn: AuthorizerCredentialsArn },
    },
    '#withJwtConfiguration': d.fn('`withJwtConfiguration` JwtConfiguration ', [d.arg('JwtConfiguration', d.T.object)]),
    withJwtConfiguration(JwtConfiguration): {
      assert std.isObject(JwtConfiguration) : 'JwtConfiguration must be a object',
      Properties+::: { JwtConfiguration: JwtConfiguration },
    },
    '#withAuthorizerResultTtlInSeconds': d.fn('`withAuthorizerResultTtlInSeconds` AuthorizerResultTtlInSeconds ', [d.arg('AuthorizerResultTtlInSeconds', d.T.integer)]),
    withAuthorizerResultTtlInSeconds(AuthorizerResultTtlInSeconds): {
      assert std.isNumber(AuthorizerResultTtlInSeconds) : 'AuthorizerResultTtlInSeconds must be a integer',
      Properties+::: { AuthorizerResultTtlInSeconds: AuthorizerResultTtlInSeconds },
    },
    '#withIdentitySource': d.fn('`withIdentitySource` IdentitySource ', [d.arg('IdentitySource', d.T.array)]),
    withIdentitySource(IdentitySource): {
      assert std.isArray(IdentitySource) : 'IdentitySource must be a array',
      Properties+::: { IdentitySource: IdentitySource },
    },
    '#withAuthorizerPayloadFormatVersion': d.fn('`withAuthorizerPayloadFormatVersion` AuthorizerPayloadFormatVersion ', [d.arg('AuthorizerPayloadFormatVersion', d.T.string)]),
    withAuthorizerPayloadFormatVersion(AuthorizerPayloadFormatVersion): {
      assert std.isString(AuthorizerPayloadFormatVersion) : 'AuthorizerPayloadFormatVersion must be a string',
      Properties+::: { AuthorizerPayloadFormatVersion: AuthorizerPayloadFormatVersion },
    },
    '#withEnableSimpleResponses': d.fn('`withEnableSimpleResponses` EnableSimpleResponses ', [d.arg('EnableSimpleResponses', d.T.boolean)]),
    withEnableSimpleResponses(EnableSimpleResponses): {
      assert std.isBoolean(EnableSimpleResponses) : 'EnableSimpleResponses must be a boolean',
      Properties+::: { EnableSimpleResponses: EnableSimpleResponses },
    },
    '#withAuthorizerId': d.fn('`withAuthorizerId` AuthorizerId ', [d.arg('AuthorizerId', d.T.string)]),
    withAuthorizerId(AuthorizerId): {
      assert std.isString(AuthorizerId) : 'AuthorizerId must be a string',
      Properties+::: { AuthorizerId: AuthorizerId },
    },
  },
  Deployment: {
    '#': d.pkg(
      name='Deployment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::Deployment resource creates a deployment for an API.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::Deployment Resource
        * ApiId The API identifier.
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
      Type: 'AWS::ApiGatewayV2::Deployment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeploymentId': d.fn('`withDeploymentId` DeploymentId ', [d.arg('DeploymentId', d.T.string)]),
    withDeploymentId(DeploymentId): {
      assert std.isString(DeploymentId) : 'DeploymentId must be a string',
      Properties+::: { DeploymentId: DeploymentId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withStageName': d.fn('`withStageName` StageName ', [d.arg('StageName', d.T.string)]),
    withStageName(StageName): {
      assert std.isString(StageName) : 'StageName must be a string',
      Properties+::: { StageName: StageName },
    },
  },
  DomainName: {
    '#': d.pkg(
      name='DomainName',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::DomainName resource specifies a custom domain name for your API in Amazon API Gateway (API Gateway).  You can use a custom domain name to provide a URL thats more intuitive and easier to recall. For more information about using custom domain names, see [Set up Custom Domain Name for an API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::DomainName Resource
        * DomainName The custom domain name for your API in Amazon API Gateway. Uppercase letters and the underscore (_) character are not supported.
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::DomainName',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMutualTlsAuthentication': d.fn('`withMutualTlsAuthentication` MutualTlsAuthentication ', [d.arg('MutualTlsAuthentication', d.T.object)]),
    withMutualTlsAuthentication(MutualTlsAuthentication): {
      assert std.isObject(MutualTlsAuthentication) : 'MutualTlsAuthentication must be a object',
      Properties+::: { MutualTlsAuthentication: MutualTlsAuthentication },
    },
    '#withRegionalHostedZoneId': d.fn('`withRegionalHostedZoneId` RegionalHostedZoneId ', [d.arg('RegionalHostedZoneId', d.T.string)]),
    withRegionalHostedZoneId(RegionalHostedZoneId): {
      assert std.isString(RegionalHostedZoneId) : 'RegionalHostedZoneId must be a string',
      Properties+::: { RegionalHostedZoneId: RegionalHostedZoneId },
    },
    '#withRegionalDomainName': d.fn('`withRegionalDomainName` RegionalDomainName ', [d.arg('RegionalDomainName', d.T.string)]),
    withRegionalDomainName(RegionalDomainName): {
      assert std.isString(RegionalDomainName) : 'RegionalDomainName must be a string',
      Properties+::: { RegionalDomainName: RegionalDomainName },
    },
    '#withDomainNameConfigurations': d.fn('`withDomainNameConfigurations` DomainNameConfigurations ', [d.arg('DomainNameConfigurations', d.T.array)]),
    withDomainNameConfigurations(DomainNameConfigurations): {
      assert std.isArray(DomainNameConfigurations) : 'DomainNameConfigurations must be a array',
      Properties+::: { DomainNameConfigurations: DomainNameConfigurations },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Integration: {
    '#': d.pkg(
      name='Integration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::Integration Resource
        * ApiId The API identifier.
        * IntegrationType The integration type of an integration.
      |||,
      args=[
        d.arg('ApiId', 'd.T.string'),
        d.arg('IntegrationType', 'd.T.string'),
      ]
    ),
    new(
      ApiId,
      IntegrationType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(IntegrationType) : 'IntegrationType must be a string',
        IntegrationType: IntegrationType,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::Integration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectionId': d.fn('`withConnectionId` ConnectionId ', [d.arg('ConnectionId', d.T.string)]),
    withConnectionId(ConnectionId): {
      assert std.isString(ConnectionId) : 'ConnectionId must be a string',
      Properties+::: { ConnectionId: ConnectionId },
    },
    '#withConnectionType': d.fn('`withConnectionType` ConnectionType ', [d.arg('ConnectionType', d.T.string)]),
    withConnectionType(ConnectionType): {
      assert std.isString(ConnectionType) : 'ConnectionType must be a string',
      Properties+::: { ConnectionType: ConnectionType },
    },
    '#withContentHandlingStrategy': d.fn('`withContentHandlingStrategy` ContentHandlingStrategy ', [d.arg('ContentHandlingStrategy', d.T.string)]),
    withContentHandlingStrategy(ContentHandlingStrategy): {
      assert std.isString(ContentHandlingStrategy) : 'ContentHandlingStrategy must be a string',
      Properties+::: { ContentHandlingStrategy: ContentHandlingStrategy },
    },
    '#withCredentialsArn': d.fn('`withCredentialsArn` CredentialsArn ', [d.arg('CredentialsArn', d.T.string)]),
    withCredentialsArn(CredentialsArn): {
      assert std.isString(CredentialsArn) : 'CredentialsArn must be a string',
      Properties+::: { CredentialsArn: CredentialsArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withIntegrationMethod': d.fn('`withIntegrationMethod` IntegrationMethod ', [d.arg('IntegrationMethod', d.T.string)]),
    withIntegrationMethod(IntegrationMethod): {
      assert std.isString(IntegrationMethod) : 'IntegrationMethod must be a string',
      Properties+::: { IntegrationMethod: IntegrationMethod },
    },
    '#withIntegrationSubtype': d.fn('`withIntegrationSubtype` IntegrationSubtype ', [d.arg('IntegrationSubtype', d.T.string)]),
    withIntegrationSubtype(IntegrationSubtype): {
      assert std.isString(IntegrationSubtype) : 'IntegrationSubtype must be a string',
      Properties+::: { IntegrationSubtype: IntegrationSubtype },
    },
    '#withIntegrationId': d.fn('`withIntegrationId` IntegrationId ', [d.arg('IntegrationId', d.T.string)]),
    withIntegrationId(IntegrationId): {
      assert std.isString(IntegrationId) : 'IntegrationId must be a string',
      Properties+::: { IntegrationId: IntegrationId },
    },
    '#withIntegrationUri': d.fn('`withIntegrationUri` IntegrationUri ', [d.arg('IntegrationUri', d.T.string)]),
    withIntegrationUri(IntegrationUri): {
      assert std.isString(IntegrationUri) : 'IntegrationUri must be a string',
      Properties+::: { IntegrationUri: IntegrationUri },
    },
    '#withPassthroughBehavior': d.fn('`withPassthroughBehavior` PassthroughBehavior ', [d.arg('PassthroughBehavior', d.T.string)]),
    withPassthroughBehavior(PassthroughBehavior): {
      assert std.isString(PassthroughBehavior) : 'PassthroughBehavior must be a string',
      Properties+::: { PassthroughBehavior: PassthroughBehavior },
    },
    '#withPayloadFormatVersion': d.fn('`withPayloadFormatVersion` PayloadFormatVersion ', [d.arg('PayloadFormatVersion', d.T.string)]),
    withPayloadFormatVersion(PayloadFormatVersion): {
      assert std.isString(PayloadFormatVersion) : 'PayloadFormatVersion must be a string',
      Properties+::: { PayloadFormatVersion: PayloadFormatVersion },
    },
    '#withRequestParameters': d.fn('`withRequestParameters` RequestParameters ', [d.arg('RequestParameters', d.T.object)]),
    withRequestParameters(RequestParameters): {
      assert std.isObject(RequestParameters) : 'RequestParameters must be a object',
      Properties+::: { RequestParameters: RequestParameters },
    },
    '#withRequestTemplates': d.fn('`withRequestTemplates` RequestTemplates ', [d.arg('RequestTemplates', d.T.object)]),
    withRequestTemplates(RequestTemplates): {
      assert std.isObject(RequestTemplates) : 'RequestTemplates must be a object',
      Properties+::: { RequestTemplates: RequestTemplates },
    },
    '#withResponseParameters': d.fn('`withResponseParameters` ResponseParameters ', [d.arg('ResponseParameters', d.T.object)]),
    withResponseParameters(ResponseParameters): {
      assert std.isObject(ResponseParameters) : 'ResponseParameters must be a object',
      Properties+::: { ResponseParameters: ResponseParameters },
    },
    '#withTemplateSelectionExpression': d.fn('`withTemplateSelectionExpression` TemplateSelectionExpression ', [d.arg('TemplateSelectionExpression', d.T.string)]),
    withTemplateSelectionExpression(TemplateSelectionExpression): {
      assert std.isString(TemplateSelectionExpression) : 'TemplateSelectionExpression must be a string',
      Properties+::: { TemplateSelectionExpression: TemplateSelectionExpression },
    },
    '#withTimeoutInMillis': d.fn('`withTimeoutInMillis` TimeoutInMillis ', [d.arg('TimeoutInMillis', d.T.integer)]),
    withTimeoutInMillis(TimeoutInMillis): {
      assert std.isNumber(TimeoutInMillis) : 'TimeoutInMillis must be a integer',
      Properties+::: { TimeoutInMillis: TimeoutInMillis },
    },
    '#withTlsConfig': d.fn('`withTlsConfig` TlsConfig ', [d.arg('TlsConfig', d.T.object)]),
    withTlsConfig(TlsConfig): {
      assert std.isObject(TlsConfig) : 'TlsConfig must be a object',
      Properties+::: { TlsConfig: TlsConfig },
    },
  },
  IntegrationResponse: {
    '#': d.pkg(
      name='IntegrationResponse',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::IntegrationResponse resource updates an integration response for an WebSocket API. For more information, see [Set up WebSocket API Integration Responses in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-integration-responses.html) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::IntegrationResponse Resource
        * ApiId The API identifier.
        * IntegrationId The integration ID.
        * IntegrationResponseKey The integration response key.
      |||,
      args=[
        d.arg('ApiId', 'd.T.string'),
        d.arg('IntegrationId', 'd.T.string'),
        d.arg('IntegrationResponseKey', 'd.T.string'),
      ]
    ),
    new(
      ApiId,
      IntegrationId,
      IntegrationResponseKey,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(IntegrationId) : 'IntegrationId must be a string',
        IntegrationId: IntegrationId,
        assert std.isString(IntegrationResponseKey) : 'IntegrationResponseKey must be a string',
        IntegrationResponseKey: IntegrationResponseKey,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::IntegrationResponse',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIntegrationResponseId': d.fn('`withIntegrationResponseId` IntegrationResponseId ', [d.arg('IntegrationResponseId', d.T.string)]),
    withIntegrationResponseId(IntegrationResponseId): {
      assert std.isString(IntegrationResponseId) : 'IntegrationResponseId must be a string',
      Properties+::: { IntegrationResponseId: IntegrationResponseId },
    },
    '#withResponseTemplates': d.fn('`withResponseTemplates` ResponseTemplates ', [d.arg('ResponseTemplates', d.T.object)]),
    withResponseTemplates(ResponseTemplates): {
      assert std.isObject(ResponseTemplates) : 'ResponseTemplates must be a object',
      Properties+::: { ResponseTemplates: ResponseTemplates },
    },
    '#withTemplateSelectionExpression': d.fn('`withTemplateSelectionExpression` TemplateSelectionExpression ', [d.arg('TemplateSelectionExpression', d.T.string)]),
    withTemplateSelectionExpression(TemplateSelectionExpression): {
      assert std.isString(TemplateSelectionExpression) : 'TemplateSelectionExpression must be a string',
      Properties+::: { TemplateSelectionExpression: TemplateSelectionExpression },
    },
    '#withResponseParameters': d.fn('`withResponseParameters` ResponseParameters ', [d.arg('ResponseParameters', d.T.object)]),
    withResponseParameters(ResponseParameters): {
      assert std.isObject(ResponseParameters) : 'ResponseParameters must be a object',
      Properties+::: { ResponseParameters: ResponseParameters },
    },
    '#withContentHandlingStrategy': d.fn('`withContentHandlingStrategy` ContentHandlingStrategy ', [d.arg('ContentHandlingStrategy', d.T.string)]),
    withContentHandlingStrategy(ContentHandlingStrategy): {
      assert std.isString(ContentHandlingStrategy) : 'ContentHandlingStrategy must be a string',
      Properties+::: { ContentHandlingStrategy: ContentHandlingStrategy },
    },
  },
  Model: {
    '#': d.pkg(
      name='Model',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::Model resource updates data model for a WebSocket API. For more information, see [Model Selection Expressions](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::Model Resource
        * ApiId The API identifier.
        * Schema The schema for the model. For application/json models, this should be JSON schema draft 4 model.
        * Name The name of the model.
      |||,
      args=[
        d.arg('ApiId', 'd.T.string'),
        d.arg('Schema', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ApiId,
      Schema,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isObject(Schema) : 'Schema must be a object',
        Schema: Schema,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::Model',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withModelId': d.fn('`withModelId` ModelId ', [d.arg('ModelId', d.T.string)]),
    withModelId(ModelId): {
      assert std.isString(ModelId) : 'ModelId must be a string',
      Properties+::: { ModelId: ModelId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withContentType': d.fn('`withContentType` ContentType ', [d.arg('ContentType', d.T.string)]),
    withContentType(ContentType): {
      assert std.isString(ContentType) : 'ContentType must be a string',
      Properties+::: { ContentType: ContentType },
    },
  },
  Route: {
    '#': d.pkg(
      name='Route',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::Route resource creates a route for an API.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::Route Resource
        * RouteKey The route key for the route. For HTTP APIs, the route key can be either $default, or a combination of an HTTP method and resource path, for example, GET /pets.
        * ApiId The API identifier.
      |||,
      args=[
        d.arg('RouteKey', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
      ]
    ),
    new(
      RouteKey,
      ApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RouteKey) : 'RouteKey must be a string',
        RouteKey: RouteKey,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::Route',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRouteId': d.fn('`withRouteId` RouteId ', [d.arg('RouteId', d.T.string)]),
    withRouteId(RouteId): {
      assert std.isString(RouteId) : 'RouteId must be a string',
      Properties+::: { RouteId: RouteId },
    },
    '#withRouteResponseSelectionExpression': d.fn('`withRouteResponseSelectionExpression` RouteResponseSelectionExpression ', [d.arg('RouteResponseSelectionExpression', d.T.string)]),
    withRouteResponseSelectionExpression(RouteResponseSelectionExpression): {
      assert std.isString(RouteResponseSelectionExpression) : 'RouteResponseSelectionExpression must be a string',
      Properties+::: { RouteResponseSelectionExpression: RouteResponseSelectionExpression },
    },
    '#withRequestModels': d.fn('`withRequestModels` RequestModels ', [d.arg('RequestModels', d.T.object)]),
    withRequestModels(RequestModels): {
      assert std.isObject(RequestModels) : 'RequestModels must be a object',
      Properties+::: { RequestModels: RequestModels },
    },
    '#withOperationName': d.fn('`withOperationName` OperationName ', [d.arg('OperationName', d.T.string)]),
    withOperationName(OperationName): {
      assert std.isString(OperationName) : 'OperationName must be a string',
      Properties+::: { OperationName: OperationName },
    },
    '#withAuthorizationScopes': d.fn('`withAuthorizationScopes` AuthorizationScopes ', [d.arg('AuthorizationScopes', d.T.array)]),
    withAuthorizationScopes(AuthorizationScopes): {
      assert std.isArray(AuthorizationScopes) : 'AuthorizationScopes must be a array',
      Properties+::: { AuthorizationScopes: AuthorizationScopes },
    },
    '#withApiKeyRequired': d.fn('`withApiKeyRequired` ApiKeyRequired ', [d.arg('ApiKeyRequired', d.T.boolean)]),
    withApiKeyRequired(ApiKeyRequired): {
      assert std.isBoolean(ApiKeyRequired) : 'ApiKeyRequired must be a boolean',
      Properties+::: { ApiKeyRequired: ApiKeyRequired },
    },
    '#withAuthorizationType': d.fn('`withAuthorizationType` AuthorizationType ', [d.arg('AuthorizationType', d.T.string)]),
    withAuthorizationType(AuthorizationType): {
      assert std.isString(AuthorizationType) : 'AuthorizationType must be a string',
      Properties+::: { AuthorizationType: AuthorizationType },
    },
    '#withModelSelectionExpression': d.fn('`withModelSelectionExpression` ModelSelectionExpression ', [d.arg('ModelSelectionExpression', d.T.string)]),
    withModelSelectionExpression(ModelSelectionExpression): {
      assert std.isString(ModelSelectionExpression) : 'ModelSelectionExpression must be a string',
      Properties+::: { ModelSelectionExpression: ModelSelectionExpression },
    },
    '#withRequestParameters': d.fn('`withRequestParameters` RequestParameters ', [d.arg('RequestParameters', d.T.object)]),
    withRequestParameters(RequestParameters): {
      assert std.isObject(RequestParameters) : 'RequestParameters must be a object',
      Properties+::: { RequestParameters: RequestParameters },
    },
    '#withTarget': d.fn('`withTarget` Target ', [d.arg('Target', d.T.string)]),
    withTarget(Target): {
      assert std.isString(Target) : 'Target must be a string',
      Properties+::: { Target: Target },
    },
    '#withAuthorizerId': d.fn('`withAuthorizerId` AuthorizerId ', [d.arg('AuthorizerId', d.T.string)]),
    withAuthorizerId(AuthorizerId): {
      assert std.isString(AuthorizerId) : 'AuthorizerId must be a string',
      Properties+::: { AuthorizerId: AuthorizerId },
    },
  },
  RouteResponse: {
    '#': d.pkg(
      name='RouteResponse',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::RouteResponse resource creates a route response for a WebSocket API. For more information, see [Set up Route Responses for a WebSocket API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-route-response.html) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::RouteResponse Resource
        * RouteResponseKey The route response key.
        * RouteId The route ID.
        * ApiId The API identifier.
      |||,
      args=[
        d.arg('RouteResponseKey', 'd.T.string'),
        d.arg('RouteId', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
      ]
    ),
    new(
      RouteResponseKey,
      RouteId,
      ApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RouteResponseKey) : 'RouteResponseKey must be a string',
        RouteResponseKey: RouteResponseKey,
        assert std.isString(RouteId) : 'RouteId must be a string',
        RouteId: RouteId,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::RouteResponse',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResponseParameters': d.fn('`withResponseParameters` ResponseParameters ', [d.arg('ResponseParameters')]),
    withResponseParameters(ResponseParameters): {
      // Type: undefined
      Properties+::: { ResponseParameters: ResponseParameters },
    },
    '#withModelSelectionExpression': d.fn('`withModelSelectionExpression` ModelSelectionExpression ', [d.arg('ModelSelectionExpression', d.T.string)]),
    withModelSelectionExpression(ModelSelectionExpression): {
      assert std.isString(ModelSelectionExpression) : 'ModelSelectionExpression must be a string',
      Properties+::: { ModelSelectionExpression: ModelSelectionExpression },
    },
    '#withResponseModels': d.fn('`withResponseModels` ResponseModels ', [d.arg('ResponseModels', d.T.object)]),
    withResponseModels(ResponseModels): {
      assert std.isObject(ResponseModels) : 'ResponseModels must be a object',
      Properties+::: { ResponseModels: ResponseModels },
    },
    '#withRouteResponseId': d.fn('`withRouteResponseId` RouteResponseId ', [d.arg('RouteResponseId', d.T.string)]),
    withRouteResponseId(RouteResponseId): {
      assert std.isString(RouteResponseId) : 'RouteResponseId must be a string',
      Properties+::: { RouteResponseId: RouteResponseId },
    },
  },
  Stage: {
    '#': d.pkg(
      name='Stage',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='Resource Type definition for AWS::ApiGatewayV2::Stage',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::Stage Resource
        * StageName 
        * ApiId 
      |||,
      args=[
        d.arg('StageName', 'd.T.string'),
        d.arg('ApiId', 'd.T.string'),
      ]
    ),
    new(
      StageName,
      ApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StageName) : 'StageName must be a string',
        StageName: StageName,
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::Stage',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeploymentId': d.fn('`withDeploymentId` DeploymentId ', [d.arg('DeploymentId', d.T.string)]),
    withDeploymentId(DeploymentId): {
      assert std.isString(DeploymentId) : 'DeploymentId must be a string',
      Properties+::: { DeploymentId: DeploymentId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAutoDeploy': d.fn('`withAutoDeploy` AutoDeploy ', [d.arg('AutoDeploy', d.T.boolean)]),
    withAutoDeploy(AutoDeploy): {
      assert std.isBoolean(AutoDeploy) : 'AutoDeploy must be a boolean',
      Properties+::: { AutoDeploy: AutoDeploy },
    },
    '#withRouteSettings': d.fn('`withRouteSettings` RouteSettings ', [d.arg('RouteSettings', d.T.object)]),
    withRouteSettings(RouteSettings): {
      assert std.isObject(RouteSettings) : 'RouteSettings must be a object',
      Properties+::: { RouteSettings: RouteSettings },
    },
    '#withStageVariables': d.fn('`withStageVariables` StageVariables ', [d.arg('StageVariables', d.T.object)]),
    withStageVariables(StageVariables): {
      assert std.isObject(StageVariables) : 'StageVariables must be a object',
      Properties+::: { StageVariables: StageVariables },
    },
    '#withAccessPolicyId': d.fn('`withAccessPolicyId` AccessPolicyId ', [d.arg('AccessPolicyId', d.T.string)]),
    withAccessPolicyId(AccessPolicyId): {
      assert std.isString(AccessPolicyId) : 'AccessPolicyId must be a string',
      Properties+::: { AccessPolicyId: AccessPolicyId },
    },
    '#withClientCertificateId': d.fn('`withClientCertificateId` ClientCertificateId ', [d.arg('ClientCertificateId', d.T.string)]),
    withClientCertificateId(ClientCertificateId): {
      assert std.isString(ClientCertificateId) : 'ClientCertificateId must be a string',
      Properties+::: { ClientCertificateId: ClientCertificateId },
    },
    '#withAccessLogSettings': d.fn('`withAccessLogSettings` AccessLogSettings ', [d.arg('AccessLogSettings', d.T.object)]),
    withAccessLogSettings(AccessLogSettings): {
      assert std.isObject(AccessLogSettings) : 'AccessLogSettings must be a object',
      Properties+::: { AccessLogSettings: AccessLogSettings },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDefaultRouteSettings': d.fn('`withDefaultRouteSettings` DefaultRouteSettings ', [d.arg('DefaultRouteSettings', d.T.object)]),
    withDefaultRouteSettings(DefaultRouteSettings): {
      assert std.isObject(DefaultRouteSettings) : 'DefaultRouteSettings must be a object',
      Properties+::: { DefaultRouteSettings: DefaultRouteSettings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  VpcLink: {
    '#': d.pkg(
      name='VpcLink',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGatewayV2.libsonnet',
      help='The AWS::ApiGatewayV2::VpcLink resource creates a VPC link. Supported only for HTTP APIs. The VPC link status must transition from PENDING to AVAILABLE to successfully create a VPC link, which can take up to 10 minutes. To learn more, see [Working with VPC Links for HTTP APIs](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-vpc-links.html) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGatewayV2::VpcLink Resource
        * SubnetIds A list of subnet IDs to include in the VPC link.
        * Name The name of the VPC link.
      |||,
      args=[
        d.arg('SubnetIds', 'd.T.array'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      SubnetIds,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGatewayV2::VpcLink',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVpcLinkId': d.fn('`withVpcLinkId` VpcLinkId ', [d.arg('VpcLinkId', d.T.string)]),
    withVpcLinkId(VpcLinkId): {
      assert std.isString(VpcLinkId) : 'VpcLinkId must be a string',
      Properties+::: { VpcLinkId: VpcLinkId },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
