local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RefactorSpaces.libsonnet',
      help='Definition of AWS::RefactorSpaces::Application Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RefactorSpaces::Application Resource
        * EnvironmentIdentifier 
        * VpcId 
        * Name 
        * ProxyType 
      |||,
      args=[
        d.arg('EnvironmentIdentifier', 'd.T.string'),
        d.arg('VpcId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('ProxyType', 'd.T.string'),
      ]
    ),
    new(
      EnvironmentIdentifier,
      VpcId,
      Name,
      ProxyType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
        EnvironmentIdentifier: EnvironmentIdentifier,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ProxyType) : 'ProxyType must be a string',
        ProxyType: ProxyType,
      },
      DependsOn:: [],
      Type: 'AWS::RefactorSpaces::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApiGatewayProxy': d.fn('`withApiGatewayProxy` ApiGatewayProxy ', [d.arg('ApiGatewayProxy', d.T.object)]),
    withApiGatewayProxy(ApiGatewayProxy): {
      assert std.isObject(ApiGatewayProxy) : 'ApiGatewayProxy must be a object',
      Properties+::: { ApiGatewayProxy: ApiGatewayProxy },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withApiGatewayId': d.fn('`withApiGatewayId` ApiGatewayId ', [d.arg('ApiGatewayId', d.T.string)]),
    withApiGatewayId(ApiGatewayId): {
      assert std.isString(ApiGatewayId) : 'ApiGatewayId must be a string',
      Properties+::: { ApiGatewayId: ApiGatewayId },
    },
    '#withVpcLinkId': d.fn('`withVpcLinkId` VpcLinkId ', [d.arg('VpcLinkId', d.T.string)]),
    withVpcLinkId(VpcLinkId): {
      assert std.isString(VpcLinkId) : 'VpcLinkId must be a string',
      Properties+::: { VpcLinkId: VpcLinkId },
    },
    '#withNlbArn': d.fn('`withNlbArn` NlbArn ', [d.arg('NlbArn', d.T.string)]),
    withNlbArn(NlbArn): {
      assert std.isString(NlbArn) : 'NlbArn must be a string',
      Properties+::: { NlbArn: NlbArn },
    },
    '#withNlbName': d.fn('`withNlbName` NlbName ', [d.arg('NlbName', d.T.string)]),
    withNlbName(NlbName): {
      assert std.isString(NlbName) : 'NlbName must be a string',
      Properties+::: { NlbName: NlbName },
    },
    '#withApplicationIdentifier': d.fn('`withApplicationIdentifier` ApplicationIdentifier ', [d.arg('ApplicationIdentifier', d.T.string)]),
    withApplicationIdentifier(ApplicationIdentifier): {
      assert std.isString(ApplicationIdentifier) : 'ApplicationIdentifier must be a string',
      Properties+::: { ApplicationIdentifier: ApplicationIdentifier },
    },
    '#withStageName': d.fn('`withStageName` StageName ', [d.arg('StageName', d.T.string)]),
    withStageName(StageName): {
      assert std.isString(StageName) : 'StageName must be a string',
      Properties+::: { StageName: StageName },
    },
    '#withProxyUrl': d.fn('`withProxyUrl` ProxyUrl ', [d.arg('ProxyUrl', d.T.string)]),
    withProxyUrl(ProxyUrl): {
      assert std.isString(ProxyUrl) : 'ProxyUrl must be a string',
      Properties+::: { ProxyUrl: ProxyUrl },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Environment: {
    '#': d.pkg(
      name='Environment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RefactorSpaces.libsonnet',
      help='Definition of AWS::RefactorSpaces::Environment Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RefactorSpaces::Environment Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::RefactorSpaces::Environment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnvironmentIdentifier': d.fn('`withEnvironmentIdentifier` EnvironmentIdentifier ', [d.arg('EnvironmentIdentifier', d.T.string)]),
    withEnvironmentIdentifier(EnvironmentIdentifier): {
      assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
      Properties+::: { EnvironmentIdentifier: EnvironmentIdentifier },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withNetworkFabricType': d.fn('`withNetworkFabricType` NetworkFabricType ', [d.arg('NetworkFabricType', d.T.string)]),
    withNetworkFabricType(NetworkFabricType): {
      assert std.isString(NetworkFabricType) : 'NetworkFabricType must be a string',
      Properties+::: { NetworkFabricType: NetworkFabricType },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTransitGatewayId': d.fn('`withTransitGatewayId` TransitGatewayId ', [d.arg('TransitGatewayId', d.T.string)]),
    withTransitGatewayId(TransitGatewayId): {
      assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
      Properties+::: { TransitGatewayId: TransitGatewayId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Route: {
    '#': d.pkg(
      name='Route',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RefactorSpaces.libsonnet',
      help='Definition of AWS::RefactorSpaces::Route Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RefactorSpaces::Route Resource
        * EnvironmentIdentifier 
        * ApplicationIdentifier 
        * ServiceIdentifier 
        * RouteType 
      |||,
      args=[
        d.arg('EnvironmentIdentifier', 'd.T.string'),
        d.arg('ApplicationIdentifier', 'd.T.string'),
        d.arg('ServiceIdentifier', 'd.T.string'),
        d.arg('RouteType', 'd.T.string'),
      ]
    ),
    new(
      EnvironmentIdentifier,
      ApplicationIdentifier,
      ServiceIdentifier,
      RouteType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
        EnvironmentIdentifier: EnvironmentIdentifier,
        assert std.isString(ApplicationIdentifier) : 'ApplicationIdentifier must be a string',
        ApplicationIdentifier: ApplicationIdentifier,
        assert std.isString(ServiceIdentifier) : 'ServiceIdentifier must be a string',
        ServiceIdentifier: ServiceIdentifier,
        assert std.isString(RouteType) : 'RouteType must be a string',
        RouteType: RouteType,
      },
      DependsOn:: [],
      Type: 'AWS::RefactorSpaces::Route',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPathResourceToId': d.fn('`withPathResourceToId` PathResourceToId ', [d.arg('PathResourceToId', d.T.string)]),
    withPathResourceToId(PathResourceToId): {
      assert std.isString(PathResourceToId) : 'PathResourceToId must be a string',
      Properties+::: { PathResourceToId: PathResourceToId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRouteIdentifier': d.fn('`withRouteIdentifier` RouteIdentifier ', [d.arg('RouteIdentifier', d.T.string)]),
    withRouteIdentifier(RouteIdentifier): {
      assert std.isString(RouteIdentifier) : 'RouteIdentifier must be a string',
      Properties+::: { RouteIdentifier: RouteIdentifier },
    },
    '#withDefaultRoute': d.fn('`withDefaultRoute` DefaultRoute ', [d.arg('DefaultRoute', d.T.object)]),
    withDefaultRoute(DefaultRoute): {
      assert std.isObject(DefaultRoute) : 'DefaultRoute must be a object',
      Properties+::: { DefaultRoute: DefaultRoute },
    },
    '#withUriPathRoute': d.fn('`withUriPathRoute` UriPathRoute ', [d.arg('UriPathRoute', d.T.object)]),
    withUriPathRoute(UriPathRoute): {
      assert std.isObject(UriPathRoute) : 'UriPathRoute must be a object',
      Properties+::: { UriPathRoute: UriPathRoute },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Service: {
    '#': d.pkg(
      name='Service',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RefactorSpaces.libsonnet',
      help='Definition of AWS::RefactorSpaces::Service Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RefactorSpaces::Service Resource
        * EnvironmentIdentifier 
        * ApplicationIdentifier 
        * EndpointType 
        * Name 
      |||,
      args=[
        d.arg('EnvironmentIdentifier', 'd.T.string'),
        d.arg('ApplicationIdentifier', 'd.T.string'),
        d.arg('EndpointType', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      EnvironmentIdentifier,
      ApplicationIdentifier,
      EndpointType,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
        EnvironmentIdentifier: EnvironmentIdentifier,
        assert std.isString(ApplicationIdentifier) : 'ApplicationIdentifier must be a string',
        ApplicationIdentifier: ApplicationIdentifier,
        assert std.isString(EndpointType) : 'EndpointType must be a string',
        EndpointType: EndpointType,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::RefactorSpaces::Service',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLambdaEndpoint': d.fn('`withLambdaEndpoint` LambdaEndpoint ', [d.arg('LambdaEndpoint', d.T.object)]),
    withLambdaEndpoint(LambdaEndpoint): {
      assert std.isObject(LambdaEndpoint) : 'LambdaEndpoint must be a object',
      Properties+::: { LambdaEndpoint: LambdaEndpoint },
    },
    '#withServiceIdentifier': d.fn('`withServiceIdentifier` ServiceIdentifier ', [d.arg('ServiceIdentifier', d.T.string)]),
    withServiceIdentifier(ServiceIdentifier): {
      assert std.isString(ServiceIdentifier) : 'ServiceIdentifier must be a string',
      Properties+::: { ServiceIdentifier: ServiceIdentifier },
    },
    '#withUrlEndpoint': d.fn('`withUrlEndpoint` UrlEndpoint ', [d.arg('UrlEndpoint', d.T.object)]),
    withUrlEndpoint(UrlEndpoint): {
      assert std.isObject(UrlEndpoint) : 'UrlEndpoint must be a object',
      Properties+::: { UrlEndpoint: UrlEndpoint },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
