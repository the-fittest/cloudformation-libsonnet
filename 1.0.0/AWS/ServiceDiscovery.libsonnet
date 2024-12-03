local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  HttpNamespace: {
    '#': d.pkg(
      name='HttpNamespace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceDiscovery.libsonnet',
      help='Resource Type definition for AWS::ServiceDiscovery::HttpNamespace',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceDiscovery::HttpNamespace Resource
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
      Type: 'AWS::ServiceDiscovery::HttpNamespace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Instance: {
    '#': d.pkg(
      name='Instance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceDiscovery.libsonnet',
      help='Resource Type definition for AWS::ServiceDiscovery::Instance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceDiscovery::Instance Resource
        * InstanceAttributes 
        * ServiceId 
      |||,
      args=[
        d.arg('InstanceAttributes', 'd.T.object'),
        d.arg('ServiceId', 'd.T.string'),
      ]
    ),
    new(
      InstanceAttributes,
      ServiceId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(InstanceAttributes) : 'InstanceAttributes must be a object',
        InstanceAttributes: InstanceAttributes,
        assert std.isString(ServiceId) : 'ServiceId must be a string',
        ServiceId: ServiceId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceDiscovery::Instance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInstanceId': d.fn('`withInstanceId` InstanceId ', [d.arg('InstanceId', d.T.string)]),
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: { InstanceId: InstanceId },
    },
  },
  PrivateDnsNamespace: {
    '#': d.pkg(
      name='PrivateDnsNamespace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceDiscovery.libsonnet',
      help='Resource Type definition for AWS::ServiceDiscovery::PrivateDnsNamespace',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceDiscovery::PrivateDnsNamespace Resource
        * Vpc 
        * Name 
      |||,
      args=[
        d.arg('Vpc', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Vpc,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Vpc) : 'Vpc must be a string',
        Vpc: Vpc,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceDiscovery::PrivateDnsNamespace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withHostedZoneId': d.fn('`withHostedZoneId` HostedZoneId ', [d.arg('HostedZoneId', d.T.string)]),
    withHostedZoneId(HostedZoneId): {
      assert std.isString(HostedZoneId) : 'HostedZoneId must be a string',
      Properties+::: { HostedZoneId: HostedZoneId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withProperties': d.fn('`withProperties` Properties ', [d.arg('Properties', d.T.object)]),
    withProperties(Properties): {
      assert std.isObject(Properties) : 'Properties must be a object',
      Properties+::: { Properties: Properties },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PublicDnsNamespace: {
    '#': d.pkg(
      name='PublicDnsNamespace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceDiscovery.libsonnet',
      help='Resource Type definition for AWS::ServiceDiscovery::PublicDnsNamespace',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceDiscovery::PublicDnsNamespace Resource
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
      Type: 'AWS::ServiceDiscovery::PublicDnsNamespace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withHostedZoneId': d.fn('`withHostedZoneId` HostedZoneId ', [d.arg('HostedZoneId', d.T.string)]),
    withHostedZoneId(HostedZoneId): {
      assert std.isString(HostedZoneId) : 'HostedZoneId must be a string',
      Properties+::: { HostedZoneId: HostedZoneId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withProperties': d.fn('`withProperties` Properties ', [d.arg('Properties', d.T.object)]),
    withProperties(Properties): {
      assert std.isObject(Properties) : 'Properties must be a object',
      Properties+::: { Properties: Properties },
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceDiscovery.libsonnet',
      help='Resource Type definition for AWS::ServiceDiscovery::Service',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceDiscovery::Service Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ServiceDiscovery::Service',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withHealthCheckCustomConfig': d.fn('`withHealthCheckCustomConfig` HealthCheckCustomConfig ', [d.arg('HealthCheckCustomConfig', d.T.object)]),
    withHealthCheckCustomConfig(HealthCheckCustomConfig): {
      assert std.isObject(HealthCheckCustomConfig) : 'HealthCheckCustomConfig must be a object',
      Properties+::: { HealthCheckCustomConfig: HealthCheckCustomConfig },
    },
    '#withDnsConfig': d.fn('`withDnsConfig` DnsConfig ', [d.arg('DnsConfig', d.T.object)]),
    withDnsConfig(DnsConfig): {
      assert std.isObject(DnsConfig) : 'DnsConfig must be a object',
      Properties+::: { DnsConfig: DnsConfig },
    },
    '#withServiceAttributes': d.fn('`withServiceAttributes` ServiceAttributes ', [d.arg('ServiceAttributes', d.T.object)]),
    withServiceAttributes(ServiceAttributes): {
      assert std.isObject(ServiceAttributes) : 'ServiceAttributes must be a object',
      Properties+::: { ServiceAttributes: ServiceAttributes },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNamespaceId': d.fn('`withNamespaceId` NamespaceId ', [d.arg('NamespaceId', d.T.string)]),
    withNamespaceId(NamespaceId): {
      assert std.isString(NamespaceId) : 'NamespaceId must be a string',
      Properties+::: { NamespaceId: NamespaceId },
    },
    '#withHealthCheckConfig': d.fn('`withHealthCheckConfig` HealthCheckConfig ', [d.arg('HealthCheckConfig', d.T.object)]),
    withHealthCheckConfig(HealthCheckConfig): {
      assert std.isObject(HealthCheckConfig) : 'HealthCheckConfig must be a object',
      Properties+::: { HealthCheckConfig: HealthCheckConfig },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
}
