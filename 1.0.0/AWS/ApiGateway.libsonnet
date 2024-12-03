local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Account: {
    '#': d.pkg(
      name='Account',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::Account resource specifies the IAM role that Amazon API Gateway uses to write API logs to Amazon CloudWatch Logs. To avoid overwriting other roles, you should only have one AWS::ApiGateway::Account resource per region per account.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::Account Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ApiGateway::Account',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withCloudWatchRoleArn': d.fn('`withCloudWatchRoleArn` CloudWatchRoleArn ', [d.arg('CloudWatchRoleArn', d.T.string)]),
    withCloudWatchRoleArn(CloudWatchRoleArn): {
      assert std.isString(CloudWatchRoleArn) : 'CloudWatchRoleArn must be a string',
      Properties+::: { CloudWatchRoleArn: CloudWatchRoleArn },
    },
  },
  ApiKey: {
    '#': d.pkg(
      name='ApiKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::ApiKey resource creates a unique key that you can distribute to clients who are executing API Gateway Method resources that require an API key. To specify which API key clients must use, map the API key with the RestApi and Stage resources that include the methods that require a key.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::ApiKey Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ApiGateway::ApiKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAPIKeyId': d.fn('`withAPIKeyId` APIKeyId ', [d.arg('APIKeyId', d.T.string)]),
    withAPIKeyId(APIKeyId): {
      assert std.isString(APIKeyId) : 'APIKeyId must be a string',
      Properties+::: { APIKeyId: APIKeyId },
    },
    '#withCustomerId': d.fn('`withCustomerId` CustomerId ', [d.arg('CustomerId', d.T.string)]),
    withCustomerId(CustomerId): {
      assert std.isString(CustomerId) : 'CustomerId must be a string',
      Properties+::: { CustomerId: CustomerId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withGenerateDistinctId': d.fn('`withGenerateDistinctId` GenerateDistinctId ', [d.arg('GenerateDistinctId', d.T.boolean)]),
    withGenerateDistinctId(GenerateDistinctId): {
      assert std.isBoolean(GenerateDistinctId) : 'GenerateDistinctId must be a boolean',
      Properties+::: { GenerateDistinctId: GenerateDistinctId },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withStageKeys': d.fn('`withStageKeys` StageKeys ', [d.arg('StageKeys', d.T.array)]),
    withStageKeys(StageKeys): {
      assert std.isArray(StageKeys) : 'StageKeys must be a array',
      Properties+::: { StageKeys: StageKeys },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withValue': d.fn('`withValue` Value ', [d.arg('Value', d.T.string)]),
    withValue(Value): {
      assert std.isString(Value) : 'Value must be a string',
      Properties+::: { Value: Value },
    },
  },
  Authorizer: {
    '#': d.pkg(
      name='Authorizer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::Authorizer resource creates an authorization layer that API Gateway activates for methods that have authorization enabled. API Gateway activates the authorizer when a client calls those methods.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::Authorizer Resource
        * RestApiId 
        * Type 
        * Name 
      |||,
      args=[
        d.arg('RestApiId', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      RestApiId,
      Type,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::Authorizer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAuthorizerId': d.fn('`withAuthorizerId` AuthorizerId ', [d.arg('AuthorizerId', d.T.string)]),
    withAuthorizerId(AuthorizerId): {
      assert std.isString(AuthorizerId) : 'AuthorizerId must be a string',
      Properties+::: { AuthorizerId: AuthorizerId },
    },
    '#withAuthType': d.fn('`withAuthType` AuthType ', [d.arg('AuthType', d.T.string)]),
    withAuthType(AuthType): {
      assert std.isString(AuthType) : 'AuthType must be a string',
      Properties+::: { AuthType: AuthType },
    },
    '#withAuthorizerCredentials': d.fn('`withAuthorizerCredentials` AuthorizerCredentials ', [d.arg('AuthorizerCredentials', d.T.string)]),
    withAuthorizerCredentials(AuthorizerCredentials): {
      assert std.isString(AuthorizerCredentials) : 'AuthorizerCredentials must be a string',
      Properties+::: { AuthorizerCredentials: AuthorizerCredentials },
    },
    '#withAuthorizerResultTtlInSeconds': d.fn('`withAuthorizerResultTtlInSeconds` AuthorizerResultTtlInSeconds ', [d.arg('AuthorizerResultTtlInSeconds', d.T.integer)]),
    withAuthorizerResultTtlInSeconds(AuthorizerResultTtlInSeconds): {
      assert std.isNumber(AuthorizerResultTtlInSeconds) : 'AuthorizerResultTtlInSeconds must be a integer',
      Properties+::: { AuthorizerResultTtlInSeconds: AuthorizerResultTtlInSeconds },
    },
    '#withAuthorizerUri': d.fn('`withAuthorizerUri` AuthorizerUri ', [d.arg('AuthorizerUri', d.T.string)]),
    withAuthorizerUri(AuthorizerUri): {
      assert std.isString(AuthorizerUri) : 'AuthorizerUri must be a string',
      Properties+::: { AuthorizerUri: AuthorizerUri },
    },
    '#withIdentitySource': d.fn('`withIdentitySource` IdentitySource ', [d.arg('IdentitySource', d.T.string)]),
    withIdentitySource(IdentitySource): {
      assert std.isString(IdentitySource) : 'IdentitySource must be a string',
      Properties+::: { IdentitySource: IdentitySource },
    },
    '#withIdentityValidationExpression': d.fn('`withIdentityValidationExpression` IdentityValidationExpression ', [d.arg('IdentityValidationExpression', d.T.string)]),
    withIdentityValidationExpression(IdentityValidationExpression): {
      assert std.isString(IdentityValidationExpression) : 'IdentityValidationExpression must be a string',
      Properties+::: { IdentityValidationExpression: IdentityValidationExpression },
    },
    '#withProviderARNs': d.fn('`withProviderARNs` ProviderARNs ', [d.arg('ProviderARNs', d.T.array)]),
    withProviderARNs(ProviderARNs): {
      assert std.isArray(ProviderARNs) : 'ProviderARNs must be a array',
      Properties+::: { ProviderARNs: ProviderARNs },
    },
  },
  BasePathMapping: {
    '#': d.pkg(
      name='BasePathMapping',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::BasePathMapping resource creates a base path that clients who call your API must use in the invocation URL.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::BasePathMapping Resource
        * DomainName 
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
      Type: 'AWS::ApiGateway::BasePathMapping',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBasePath': d.fn('`withBasePath` BasePath ', [d.arg('BasePath', d.T.string)]),
    withBasePath(BasePath): {
      assert std.isString(BasePath) : 'BasePath must be a string',
      Properties+::: { BasePath: BasePath },
    },
    '#withRestApiId': d.fn('`withRestApiId` RestApiId ', [d.arg('RestApiId', d.T.string)]),
    withRestApiId(RestApiId): {
      assert std.isString(RestApiId) : 'RestApiId must be a string',
      Properties+::: { RestApiId: RestApiId },
    },
    '#withStage': d.fn('`withStage` Stage ', [d.arg('Stage', d.T.string)]),
    withStage(Stage): {
      assert std.isString(Stage) : 'Stage must be a string',
      Properties+::: { Stage: Stage },
    },
  },
  BasePathMappingV2: {
    '#': d.pkg(
      name='BasePathMappingV2',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='Resource Type definition for AWS::ApiGateway::BasePathMappingV2',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::BasePathMappingV2 Resource
        * DomainNameArn The Arn of an AWS::ApiGateway::DomainNameV2 resource.
        * RestApiId The ID of the API.
      |||,
      args=[
        d.arg('DomainNameArn', 'd.T.string'),
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      DomainNameArn,
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainNameArn) : 'DomainNameArn must be a string',
        DomainNameArn: DomainNameArn,
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::BasePathMappingV2',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBasePath': d.fn('`withBasePath` BasePath ', [d.arg('BasePath', d.T.string)]),
    withBasePath(BasePath): {
      assert std.isString(BasePath) : 'BasePath must be a string',
      Properties+::: { BasePath: BasePath },
    },
    '#withStage': d.fn('`withStage` Stage ', [d.arg('Stage', d.T.string)]),
    withStage(Stage): {
      assert std.isString(Stage) : 'Stage must be a string',
      Properties+::: { Stage: Stage },
    },
    '#withBasePathMappingArn': d.fn('`withBasePathMappingArn` BasePathMappingArn ', [d.arg('BasePathMappingArn', d.T.string)]),
    withBasePathMappingArn(BasePathMappingArn): {
      assert std.isString(BasePathMappingArn) : 'BasePathMappingArn must be a string',
      Properties+::: { BasePathMappingArn: BasePathMappingArn },
    },
  },
  ClientCertificate: {
    '#': d.pkg(
      name='ClientCertificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::ClientCertificate resource creates a client certificate that API Gateway uses to configure client-side SSL authentication for sending requests to the integration endpoint.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::ClientCertificate Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ApiGateway::ClientCertificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClientCertificateId': d.fn('`withClientCertificateId` ClientCertificateId ', [d.arg('ClientCertificateId', d.T.string)]),
    withClientCertificateId(ClientCertificateId): {
      assert std.isString(ClientCertificateId) : 'ClientCertificateId must be a string',
      Properties+::: { ClientCertificateId: ClientCertificateId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Deployment: {
    '#': d.pkg(
      name='Deployment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::Deployment resource deploys an API Gateway RestApi resource to a stage so that clients can call the API over the internet. The stage acts as an environment.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::Deployment Resource
        * RestApiId 
      |||,
      args=[
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::Deployment',
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
    '#withStageDescription': d.fn('`withStageDescription` StageDescription ', [d.arg('StageDescription', d.T.object)]),
    withStageDescription(StageDescription): {
      assert std.isObject(StageDescription) : 'StageDescription must be a object',
      Properties+::: { StageDescription: StageDescription },
    },
    '#withStageName': d.fn('`withStageName` StageName ', [d.arg('StageName', d.T.string)]),
    withStageName(StageName): {
      assert std.isString(StageName) : 'StageName must be a string',
      Properties+::: { StageName: StageName },
    },
    '#withDeploymentCanarySettings': d.fn('`withDeploymentCanarySettings` DeploymentCanarySettings ', [d.arg('DeploymentCanarySettings', d.T.object)]),
    withDeploymentCanarySettings(DeploymentCanarySettings): {
      assert std.isObject(DeploymentCanarySettings) : 'DeploymentCanarySettings must be a object',
      Properties+::: { DeploymentCanarySettings: DeploymentCanarySettings },
    },
  },
  DocumentationPart: {
    '#': d.pkg(
      name='DocumentationPart',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::DocumentationPart resource creates a documentation part for an API. For more information, see [Representation of API Documentation in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api-content-representation.html) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::DocumentationPart Resource
        * Location 
        * Properties 
        * RestApiId 
      |||,
      args=[
        d.arg('Location', 'd.T.object'),
        d.arg('Properties', 'd.T.string'),
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      Location,
      Properties,
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Location) : 'Location must be a object',
        Location: Location,
        assert std.isString(Properties) : 'Properties must be a string',
        Properties: Properties,
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::DocumentationPart',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDocumentationPartId': d.fn('`withDocumentationPartId` DocumentationPartId ', [d.arg('DocumentationPartId', d.T.string)]),
    withDocumentationPartId(DocumentationPartId): {
      assert std.isString(DocumentationPartId) : 'DocumentationPartId must be a string',
      Properties+::: { DocumentationPartId: DocumentationPartId },
    },
  },
  DocumentationVersion: {
    '#': d.pkg(
      name='DocumentationVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::DocumentationVersion resource creates a snapshot of the documentation for an API. For more information, see [Representation of API Documentation in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api-content-representation.html) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::DocumentationVersion Resource
        * DocumentationVersion 
        * RestApiId 
      |||,
      args=[
        d.arg('DocumentationVersion', 'd.T.string'),
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      DocumentationVersion,
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DocumentationVersion) : 'DocumentationVersion must be a string',
        DocumentationVersion: DocumentationVersion,
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::DocumentationVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  DomainName: {
    '#': d.pkg(
      name='DomainName',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='Resource Type definition for AWS::ApiGateway::DomainName.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::DomainName Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ApiGateway::DomainName',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMutualTlsAuthentication': d.fn('`withMutualTlsAuthentication` MutualTlsAuthentication ', [d.arg('MutualTlsAuthentication', d.T.object)]),
    withMutualTlsAuthentication(MutualTlsAuthentication): {
      assert std.isObject(MutualTlsAuthentication) : 'MutualTlsAuthentication must be a object',
      Properties+::: { MutualTlsAuthentication: MutualTlsAuthentication },
    },
    '#withOwnershipVerificationCertificateArn': d.fn('`withOwnershipVerificationCertificateArn` OwnershipVerificationCertificateArn ', [d.arg('OwnershipVerificationCertificateArn', d.T.string)]),
    withOwnershipVerificationCertificateArn(OwnershipVerificationCertificateArn): {
      assert std.isString(OwnershipVerificationCertificateArn) : 'OwnershipVerificationCertificateArn must be a string',
      Properties+::: { OwnershipVerificationCertificateArn: OwnershipVerificationCertificateArn },
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
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withSecurityPolicy': d.fn('`withSecurityPolicy` SecurityPolicy ', [d.arg('SecurityPolicy', d.T.string)]),
    withSecurityPolicy(SecurityPolicy): {
      assert std.isString(SecurityPolicy) : 'SecurityPolicy must be a string',
      Properties+::: { SecurityPolicy: SecurityPolicy },
    },
    '#withDistributionHostedZoneId': d.fn('`withDistributionHostedZoneId` DistributionHostedZoneId ', [d.arg('DistributionHostedZoneId', d.T.string)]),
    withDistributionHostedZoneId(DistributionHostedZoneId): {
      assert std.isString(DistributionHostedZoneId) : 'DistributionHostedZoneId must be a string',
      Properties+::: { DistributionHostedZoneId: DistributionHostedZoneId },
    },
    '#withEndpointConfiguration': d.fn('`withEndpointConfiguration` EndpointConfiguration ', [d.arg('EndpointConfiguration', d.T.object)]),
    withEndpointConfiguration(EndpointConfiguration): {
      assert std.isObject(EndpointConfiguration) : 'EndpointConfiguration must be a object',
      Properties+::: { EndpointConfiguration: EndpointConfiguration },
    },
    '#withDistributionDomainName': d.fn('`withDistributionDomainName` DistributionDomainName ', [d.arg('DistributionDomainName', d.T.string)]),
    withDistributionDomainName(DistributionDomainName): {
      assert std.isString(DistributionDomainName) : 'DistributionDomainName must be a string',
      Properties+::: { DistributionDomainName: DistributionDomainName },
    },
    '#withRegionalCertificateArn': d.fn('`withRegionalCertificateArn` RegionalCertificateArn ', [d.arg('RegionalCertificateArn', d.T.string)]),
    withRegionalCertificateArn(RegionalCertificateArn): {
      assert std.isString(RegionalCertificateArn) : 'RegionalCertificateArn must be a string',
      Properties+::: { RegionalCertificateArn: RegionalCertificateArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCertificateArn': d.fn('`withCertificateArn` CertificateArn ', [d.arg('CertificateArn', d.T.string)]),
    withCertificateArn(CertificateArn): {
      assert std.isString(CertificateArn) : 'CertificateArn must be a string',
      Properties+::: { CertificateArn: CertificateArn },
    },
  },
  DomainNameAccessAssociation: {
    '#': d.pkg(
      name='DomainNameAccessAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='Resource Type definition for AWS::ApiGateway::DomainNameAccessAssociation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::DomainNameAccessAssociation Resource
        * DomainNameArn The amazon resource name (ARN) of the domain name resource.
        * AccessAssociationSource The source of the domain name access association resource.
        * AccessAssociationSourceType The source type of the domain name access association resource.
      |||,
      args=[
        d.arg('DomainNameArn', 'd.T.string'),
        d.arg('AccessAssociationSource', 'd.T.string'),
        d.arg('AccessAssociationSourceType', 'd.T.string'),
      ]
    ),
    new(
      DomainNameArn,
      AccessAssociationSource,
      AccessAssociationSourceType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainNameArn) : 'DomainNameArn must be a string',
        DomainNameArn: DomainNameArn,
        assert std.isString(AccessAssociationSource) : 'AccessAssociationSource must be a string',
        AccessAssociationSource: AccessAssociationSource,
        assert std.isString(AccessAssociationSourceType) : 'AccessAssociationSourceType must be a string',
        assert AccessAssociationSourceType == 'VPCE' : "AccessAssociationSourceType must be either 'VPCE'",
        AccessAssociationSourceType: AccessAssociationSourceType,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::DomainNameAccessAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDomainNameAccessAssociationArn': d.fn('`withDomainNameAccessAssociationArn` DomainNameAccessAssociationArn ', [d.arg('DomainNameAccessAssociationArn', d.T.string)]),
    withDomainNameAccessAssociationArn(DomainNameAccessAssociationArn): {
      assert std.isString(DomainNameAccessAssociationArn) : 'DomainNameAccessAssociationArn must be a string',
      Properties+::: { DomainNameAccessAssociationArn: DomainNameAccessAssociationArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DomainNameV2: {
    '#': d.pkg(
      name='DomainNameV2',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='Resource Type definition for AWS::ApiGateway::DomainNameV2.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::DomainNameV2 Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ApiGateway::DomainNameV2',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateArn': d.fn('`withCertificateArn` CertificateArn ', [d.arg('CertificateArn', d.T.string)]),
    withCertificateArn(CertificateArn): {
      assert std.isString(CertificateArn) : 'CertificateArn must be a string',
      Properties+::: { CertificateArn: CertificateArn },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withEndpointConfiguration': d.fn('`withEndpointConfiguration` EndpointConfiguration ', [d.arg('EndpointConfiguration', d.T.object)]),
    withEndpointConfiguration(EndpointConfiguration): {
      assert std.isObject(EndpointConfiguration) : 'EndpointConfiguration must be a object',
      Properties+::: { EndpointConfiguration: EndpointConfiguration },
    },
    '#withSecurityPolicy': d.fn('`withSecurityPolicy` SecurityPolicy ', [d.arg('SecurityPolicy', d.T.string)]),
    withSecurityPolicy(SecurityPolicy): {
      assert std.isString(SecurityPolicy) : 'SecurityPolicy must be a string',
      Properties+::: { SecurityPolicy: SecurityPolicy },
    },
    '#withPolicy': d.fn('`withPolicy` Policy ', [d.arg('Policy')]),
    withPolicy(Policy): {
      // Type: object,string
      Properties+::: { Policy: Policy },
    },
    '#withManagementPolicy': d.fn('`withManagementPolicy` ManagementPolicy ', [d.arg('ManagementPolicy')]),
    withManagementPolicy(ManagementPolicy): {
      // Type: object,string
      Properties+::: { ManagementPolicy: ManagementPolicy },
    },
    '#withDomainNameId': d.fn('`withDomainNameId` DomainNameId ', [d.arg('DomainNameId', d.T.string)]),
    withDomainNameId(DomainNameId): {
      assert std.isString(DomainNameId) : 'DomainNameId must be a string',
      Properties+::: { DomainNameId: DomainNameId },
    },
    '#withDomainNameArn': d.fn('`withDomainNameArn` DomainNameArn ', [d.arg('DomainNameArn', d.T.string)]),
    withDomainNameArn(DomainNameArn): {
      assert std.isString(DomainNameArn) : 'DomainNameArn must be a string',
      Properties+::: { DomainNameArn: DomainNameArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  GatewayResponse: {
    '#': d.pkg(
      name='GatewayResponse',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::GatewayResponse resource creates a gateway response for your API. For more information, see [API Gateway Responses](https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html#api-gateway-gatewayResponse-definition) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::GatewayResponse Resource
        * ResponseType 
        * RestApiId 
      |||,
      args=[
        d.arg('ResponseType', 'd.T.string'),
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      ResponseType,
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResponseType) : 'ResponseType must be a string',
        ResponseType: ResponseType,
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::GatewayResponse',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withStatusCode': d.fn('`withStatusCode` StatusCode ', [d.arg('StatusCode', d.T.string)]),
    withStatusCode(StatusCode): {
      assert std.isString(StatusCode) : 'StatusCode must be a string',
      Properties+::: { StatusCode: StatusCode },
    },
    '#withResponseParameters': d.fn('`withResponseParameters` ResponseParameters ', [d.arg('ResponseParameters', d.T.object)]),
    withResponseParameters(ResponseParameters): {
      assert std.isObject(ResponseParameters) : 'ResponseParameters must be a object',
      Properties+::: { ResponseParameters: ResponseParameters },
    },
    '#withResponseTemplates': d.fn('`withResponseTemplates` ResponseTemplates ', [d.arg('ResponseTemplates', d.T.object)]),
    withResponseTemplates(ResponseTemplates): {
      assert std.isObject(ResponseTemplates) : 'ResponseTemplates must be a object',
      Properties+::: { ResponseTemplates: ResponseTemplates },
    },
  },
  Method: {
    '#': d.pkg(
      name='Method',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::Method resource creates API Gateway methods that define the parameters and body that clients must send in their requests.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::Method Resource
        * RestApiId 
        * ResourceId 
        * HttpMethod 
      |||,
      args=[
        d.arg('RestApiId', 'd.T.string'),
        d.arg('ResourceId', 'd.T.string'),
        d.arg('HttpMethod', 'd.T.string'),
      ]
    ),
    new(
      RestApiId,
      ResourceId,
      HttpMethod,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
        assert std.isString(ResourceId) : 'ResourceId must be a string',
        ResourceId: ResourceId,
        assert std.isString(HttpMethod) : 'HttpMethod must be a string',
        HttpMethod: HttpMethod,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::Method',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIntegration': d.fn('`withIntegration` Integration ', [d.arg('Integration', d.T.object)]),
    withIntegration(Integration): {
      assert std.isObject(Integration) : 'Integration must be a object',
      Properties+::: { Integration: Integration },
    },
    '#withOperationName': d.fn('`withOperationName` OperationName ', [d.arg('OperationName', d.T.string)]),
    withOperationName(OperationName): {
      assert std.isString(OperationName) : 'OperationName must be a string',
      Properties+::: { OperationName: OperationName },
    },
    '#withRequestModels': d.fn('`withRequestModels` RequestModels ', [d.arg('RequestModels', d.T.object)]),
    withRequestModels(RequestModels): {
      assert std.isObject(RequestModels) : 'RequestModels must be a object',
      Properties+::: { RequestModels: RequestModels },
    },
    '#withAuthorizationScopes': d.fn('`withAuthorizationScopes` AuthorizationScopes ', [d.arg('AuthorizationScopes', d.T.array)]),
    withAuthorizationScopes(AuthorizationScopes): {
      assert std.isArray(AuthorizationScopes) : 'AuthorizationScopes must be a array',
      Properties+::: { AuthorizationScopes: AuthorizationScopes },
    },
    '#withRequestValidatorId': d.fn('`withRequestValidatorId` RequestValidatorId ', [d.arg('RequestValidatorId', d.T.string)]),
    withRequestValidatorId(RequestValidatorId): {
      assert std.isString(RequestValidatorId) : 'RequestValidatorId must be a string',
      Properties+::: { RequestValidatorId: RequestValidatorId },
    },
    '#withRequestParameters': d.fn('`withRequestParameters` RequestParameters ', [d.arg('RequestParameters', d.T.object)]),
    withRequestParameters(RequestParameters): {
      assert std.isObject(RequestParameters) : 'RequestParameters must be a object',
      Properties+::: { RequestParameters: RequestParameters },
    },
    '#withMethodResponses': d.fn('`withMethodResponses` MethodResponses ', [d.arg('MethodResponses', d.T.array)]),
    withMethodResponses(MethodResponses): {
      assert std.isArray(MethodResponses) : 'MethodResponses must be a array',
      Properties+::: { MethodResponses: MethodResponses },
    },
    '#withAuthorizerId': d.fn('`withAuthorizerId` AuthorizerId ', [d.arg('AuthorizerId', d.T.string)]),
    withAuthorizerId(AuthorizerId): {
      assert std.isString(AuthorizerId) : 'AuthorizerId must be a string',
      Properties+::: { AuthorizerId: AuthorizerId },
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
  },
  Model: {
    '#': d.pkg(
      name='Model',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::Model resource defines the structure of a request or response payload for an API method.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::Model Resource
        * RestApiId 
      |||,
      args=[
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::Model',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContentType': d.fn('`withContentType` ContentType ', [d.arg('ContentType', d.T.string)]),
    withContentType(ContentType): {
      assert std.isString(ContentType) : 'ContentType must be a string',
      Properties+::: { ContentType: ContentType },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withSchema': d.fn('`withSchema` Schema ', [d.arg('Schema')]),
    withSchema(Schema): {
      // Type: object,string
      Properties+::: { Schema: Schema },
    },
  },
  RequestValidator: {
    '#': d.pkg(
      name='RequestValidator',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::RequestValidator resource sets up basic validation rules for incoming requests to your API. For more information, see [Enable Basic Request Validation for an API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html) in the *API Gateway Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::RequestValidator Resource
        * RestApiId 
      |||,
      args=[
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::RequestValidator',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRequestValidatorId': d.fn('`withRequestValidatorId` RequestValidatorId ', [d.arg('RequestValidatorId', d.T.string)]),
    withRequestValidatorId(RequestValidatorId): {
      assert std.isString(RequestValidatorId) : 'RequestValidatorId must be a string',
      Properties+::: { RequestValidatorId: RequestValidatorId },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withValidateRequestBody': d.fn('`withValidateRequestBody` ValidateRequestBody ', [d.arg('ValidateRequestBody', d.T.boolean)]),
    withValidateRequestBody(ValidateRequestBody): {
      assert std.isBoolean(ValidateRequestBody) : 'ValidateRequestBody must be a boolean',
      Properties+::: { ValidateRequestBody: ValidateRequestBody },
    },
    '#withValidateRequestParameters': d.fn('`withValidateRequestParameters` ValidateRequestParameters ', [d.arg('ValidateRequestParameters', d.T.boolean)]),
    withValidateRequestParameters(ValidateRequestParameters): {
      assert std.isBoolean(ValidateRequestParameters) : 'ValidateRequestParameters must be a boolean',
      Properties+::: { ValidateRequestParameters: ValidateRequestParameters },
    },
  },
  Resource: {
    '#': d.pkg(
      name='Resource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::Resource resource creates a resource in an API.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::Resource Resource
        * ParentId 
        * PathPart 
        * RestApiId 
      |||,
      args=[
        d.arg('ParentId', 'd.T.string'),
        d.arg('PathPart', 'd.T.string'),
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      ParentId,
      PathPart,
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ParentId) : 'ParentId must be a string',
        ParentId: ParentId,
        assert std.isString(PathPart) : 'PathPart must be a string',
        PathPart: PathPart,
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::Resource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResourceId': d.fn('`withResourceId` ResourceId ', [d.arg('ResourceId', d.T.string)]),
    withResourceId(ResourceId): {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      Properties+::: { ResourceId: ResourceId },
    },
  },
  RestApi: {
    '#': d.pkg(
      name='RestApi',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::RestApi resource creates a REST API. For more information, see [restapi:create](https://docs.aws.amazon.com/apigateway/latest/api/API_CreateRestApi.html) in the *Amazon API Gateway REST API Reference*. On January 1, 2016, the Swagger Specification was donated to the [OpenAPI initiative](https://docs.aws.amazon.com/https://www.openapis.org/), becoming the foundation of the OpenAPI Specification.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::RestApi Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ApiGateway::RestApi',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicy': d.fn('`withPolicy` Policy ', [d.arg('Policy')]),
    withPolicy(Policy): {
      // Type: object,string
      Properties+::: { Policy: Policy },
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
    '#withMinimumCompressionSize': d.fn('`withMinimumCompressionSize` MinimumCompressionSize ', [d.arg('MinimumCompressionSize', d.T.integer)]),
    withMinimumCompressionSize(MinimumCompressionSize): {
      assert std.isNumber(MinimumCompressionSize) : 'MinimumCompressionSize must be a integer',
      Properties+::: { MinimumCompressionSize: MinimumCompressionSize },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters')]),
    withParameters(Parameters): {
      // Type: object,string
      Properties+::: { Parameters: Parameters },
    },
    '#withCloneFrom': d.fn('`withCloneFrom` CloneFrom ', [d.arg('CloneFrom', d.T.string)]),
    withCloneFrom(CloneFrom): {
      assert std.isString(CloneFrom) : 'CloneFrom must be a string',
      Properties+::: { CloneFrom: CloneFrom },
    },
    '#withMode': d.fn('`withMode` Mode ', [d.arg('Mode', d.T.string)]),
    withMode(Mode): {
      assert std.isString(Mode) : 'Mode must be a string',
      Properties+::: { Mode: Mode },
    },
    '#withRestApiId': d.fn('`withRestApiId` RestApiId ', [d.arg('RestApiId', d.T.string)]),
    withRestApiId(RestApiId): {
      assert std.isString(RestApiId) : 'RestApiId must be a string',
      Properties+::: { RestApiId: RestApiId },
    },
    '#withDisableExecuteApiEndpoint': d.fn('`withDisableExecuteApiEndpoint` DisableExecuteApiEndpoint ', [d.arg('DisableExecuteApiEndpoint', d.T.boolean)]),
    withDisableExecuteApiEndpoint(DisableExecuteApiEndpoint): {
      assert std.isBoolean(DisableExecuteApiEndpoint) : 'DisableExecuteApiEndpoint must be a boolean',
      Properties+::: { DisableExecuteApiEndpoint: DisableExecuteApiEndpoint },
    },
    '#withFailOnWarnings': d.fn('`withFailOnWarnings` FailOnWarnings ', [d.arg('FailOnWarnings', d.T.boolean)]),
    withFailOnWarnings(FailOnWarnings): {
      assert std.isBoolean(FailOnWarnings) : 'FailOnWarnings must be a boolean',
      Properties+::: { FailOnWarnings: FailOnWarnings },
    },
    '#withBinaryMediaTypes': d.fn('`withBinaryMediaTypes` BinaryMediaTypes ', [d.arg('BinaryMediaTypes', d.T.array)]),
    withBinaryMediaTypes(BinaryMediaTypes): {
      assert std.isArray(BinaryMediaTypes) : 'BinaryMediaTypes must be a array',
      Properties+::: { BinaryMediaTypes: BinaryMediaTypes },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withRootResourceId': d.fn('`withRootResourceId` RootResourceId ', [d.arg('RootResourceId', d.T.string)]),
    withRootResourceId(RootResourceId): {
      assert std.isString(RootResourceId) : 'RootResourceId must be a string',
      Properties+::: { RootResourceId: RootResourceId },
    },
    '#withApiKeySourceType': d.fn('`withApiKeySourceType` ApiKeySourceType ', [d.arg('ApiKeySourceType', d.T.string)]),
    withApiKeySourceType(ApiKeySourceType): {
      assert std.isString(ApiKeySourceType) : 'ApiKeySourceType must be a string',
      Properties+::: { ApiKeySourceType: ApiKeySourceType },
    },
    '#withEndpointConfiguration': d.fn('`withEndpointConfiguration` EndpointConfiguration ', [d.arg('EndpointConfiguration', d.T.object)]),
    withEndpointConfiguration(EndpointConfiguration): {
      assert std.isObject(EndpointConfiguration) : 'EndpointConfiguration must be a object',
      Properties+::: { EndpointConfiguration: EndpointConfiguration },
    },
    '#withBody': d.fn('`withBody` Body ', [d.arg('Body')]),
    withBody(Body): {
      // Type: object,string
      Properties+::: { Body: Body },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Stage: {
    '#': d.pkg(
      name='Stage',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::Stage resource creates a stage for a deployment.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::Stage Resource
        * RestApiId 
      |||,
      args=[
        d.arg('RestApiId', 'd.T.string'),
      ]
    ),
    new(
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::Stage',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessLogSetting': d.fn('`withAccessLogSetting` AccessLogSetting ', [d.arg('AccessLogSetting', d.T.object)]),
    withAccessLogSetting(AccessLogSetting): {
      assert std.isObject(AccessLogSetting) : 'AccessLogSetting must be a object',
      Properties+::: { AccessLogSetting: AccessLogSetting },
    },
    '#withCacheClusterEnabled': d.fn('`withCacheClusterEnabled` CacheClusterEnabled ', [d.arg('CacheClusterEnabled', d.T.boolean)]),
    withCacheClusterEnabled(CacheClusterEnabled): {
      assert std.isBoolean(CacheClusterEnabled) : 'CacheClusterEnabled must be a boolean',
      Properties+::: { CacheClusterEnabled: CacheClusterEnabled },
    },
    '#withCacheClusterSize': d.fn('`withCacheClusterSize` CacheClusterSize ', [d.arg('CacheClusterSize', d.T.string)]),
    withCacheClusterSize(CacheClusterSize): {
      assert std.isString(CacheClusterSize) : 'CacheClusterSize must be a string',
      Properties+::: { CacheClusterSize: CacheClusterSize },
    },
    '#withCanarySetting': d.fn('`withCanarySetting` CanarySetting ', [d.arg('CanarySetting', d.T.object)]),
    withCanarySetting(CanarySetting): {
      assert std.isObject(CanarySetting) : 'CanarySetting must be a object',
      Properties+::: { CanarySetting: CanarySetting },
    },
    '#withClientCertificateId': d.fn('`withClientCertificateId` ClientCertificateId ', [d.arg('ClientCertificateId', d.T.string)]),
    withClientCertificateId(ClientCertificateId): {
      assert std.isString(ClientCertificateId) : 'ClientCertificateId must be a string',
      Properties+::: { ClientCertificateId: ClientCertificateId },
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
    '#withDocumentationVersion': d.fn('`withDocumentationVersion` DocumentationVersion ', [d.arg('DocumentationVersion', d.T.string)]),
    withDocumentationVersion(DocumentationVersion): {
      assert std.isString(DocumentationVersion) : 'DocumentationVersion must be a string',
      Properties+::: { DocumentationVersion: DocumentationVersion },
    },
    '#withMethodSettings': d.fn('`withMethodSettings` MethodSettings ', [d.arg('MethodSettings', d.T.array)]),
    withMethodSettings(MethodSettings): {
      assert std.isArray(MethodSettings) : 'MethodSettings must be a array',
      Properties+::: { MethodSettings: MethodSettings },
    },
    '#withStageName': d.fn('`withStageName` StageName ', [d.arg('StageName', d.T.string)]),
    withStageName(StageName): {
      assert std.isString(StageName) : 'StageName must be a string',
      Properties+::: { StageName: StageName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTracingEnabled': d.fn('`withTracingEnabled` TracingEnabled ', [d.arg('TracingEnabled', d.T.boolean)]),
    withTracingEnabled(TracingEnabled): {
      assert std.isBoolean(TracingEnabled) : 'TracingEnabled must be a boolean',
      Properties+::: { TracingEnabled: TracingEnabled },
    },
    '#withVariables': d.fn('`withVariables` Variables ', [d.arg('Variables', d.T.object)]),
    withVariables(Variables): {
      assert std.isObject(Variables) : 'Variables must be a object',
      Properties+::: { Variables: Variables },
    },
  },
  UsagePlan: {
    '#': d.pkg(
      name='UsagePlan',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::UsagePlan resource creates a usage plan for deployed APIs. A usage plan sets a target for the throttling and quota limits on individual client API keys. For more information, see [Creating and Using API Usage Plans in Amazon API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html) in the *API Gateway Developer Guide*. In some cases clients can exceed the targets that you set. Don’t rely on usage plans to control costs. Consider using [](https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html) to monitor costs and [](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html) to manage API requests.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::UsagePlan Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ApiGateway::UsagePlan',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withApiStages': d.fn('`withApiStages` ApiStages ', [d.arg('ApiStages', d.T.array)]),
    withApiStages(ApiStages): {
      assert std.isArray(ApiStages) : 'ApiStages must be a array',
      Properties+::: { ApiStages: ApiStages },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withQuota': d.fn('`withQuota` Quota ', [d.arg('Quota', d.T.object)]),
    withQuota(Quota): {
      assert std.isObject(Quota) : 'Quota must be a object',
      Properties+::: { Quota: Quota },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withThrottle': d.fn('`withThrottle` Throttle ', [d.arg('Throttle', d.T.object)]),
    withThrottle(Throttle): {
      assert std.isObject(Throttle) : 'Throttle must be a object',
      Properties+::: { Throttle: Throttle },
    },
    '#withUsagePlanName': d.fn('`withUsagePlanName` UsagePlanName ', [d.arg('UsagePlanName', d.T.string)]),
    withUsagePlanName(UsagePlanName): {
      assert std.isString(UsagePlanName) : 'UsagePlanName must be a string',
      Properties+::: { UsagePlanName: UsagePlanName },
    },
  },
  UsagePlanKey: {
    '#': d.pkg(
      name='UsagePlanKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::UsagePlanKey resource associates an API key with a usage plan. This association determines which users the usage plan is applied to.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::UsagePlanKey Resource
        * KeyType 
        * UsagePlanId The Id of the UsagePlan resource representing the usage plan containing the UsagePlanKey resource representing a plan customer.
        * KeyId The Id of the UsagePlanKey resource.
      |||,
      args=[
        d.arg('KeyType', 'd.T.string'),
        d.arg('UsagePlanId', 'd.T.string'),
        d.arg('KeyId', 'd.T.string'),
      ]
    ),
    new(
      KeyType,
      UsagePlanId,
      KeyId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(KeyType) : 'KeyType must be a string',
        assert KeyType == 'API_KEY' : "KeyType must be either 'API_KEY'",
        KeyType: KeyType,
        assert std.isString(UsagePlanId) : 'UsagePlanId must be a string',
        UsagePlanId: UsagePlanId,
        assert std.isString(KeyId) : 'KeyId must be a string',
        KeyId: KeyId,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::UsagePlanKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  VpcLink: {
    '#': d.pkg(
      name='VpcLink',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApiGateway.libsonnet',
      help='The AWS::ApiGateway::VpcLink resource creates an API Gateway VPC link for a REST API to access resources in an Amazon Virtual Private Cloud (VPC). For more information, see [vpclink:create](https://docs.aws.amazon.com/apigateway/latest/api/API_CreateVpcLink.html) in the Amazon API Gateway REST API Reference.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApiGateway::VpcLink Resource
        * Name 
        * TargetArns 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('TargetArns', 'd.T.array'),
      ]
    ),
    new(
      Name,
      TargetArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(TargetArns) : 'TargetArns must be a array',
        TargetArns: TargetArns,
      },
      DependsOn:: [],
      Type: 'AWS::ApiGateway::VpcLink',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVpcLinkId': d.fn('`withVpcLinkId` VpcLinkId ', [d.arg('VpcLinkId', d.T.string)]),
    withVpcLinkId(VpcLinkId): {
      assert std.isString(VpcLinkId) : 'VpcLinkId must be a string',
      Properties+::: { VpcLinkId: VpcLinkId },
    },
  },
}
