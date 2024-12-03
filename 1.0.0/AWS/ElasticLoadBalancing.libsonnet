local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  LoadBalancer: {
    '#': d.pkg(
      name='LoadBalancer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticLoadBalancing.libsonnet',
      help='Resource Type definition for AWS::ElasticLoadBalancing::LoadBalancer',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticLoadBalancing::LoadBalancer Resource
        * Listeners 
      |||,
      args=[
        d.arg('Listeners', 'd.T.array'),
      ]
    ),
    new(
      Listeners,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Listeners) : 'Listeners must be a array',
        Listeners: Listeners,
      },
      DependsOn:: [],
      Type: 'AWS::ElasticLoadBalancing::LoadBalancer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSecurityGroups': d.fn('`withSecurityGroups` SecurityGroups ', [d.arg('SecurityGroups', d.T.array)]),
    withSecurityGroups(SecurityGroups): {
      assert std.isArray(SecurityGroups) : 'SecurityGroups must be a array',
      Properties+::: { SecurityGroups: SecurityGroups },
    },
    '#withConnectionDrainingPolicy': d.fn('`withConnectionDrainingPolicy` ConnectionDrainingPolicy ', [d.arg('ConnectionDrainingPolicy', d.T.object)]),
    withConnectionDrainingPolicy(ConnectionDrainingPolicy): {
      assert std.isObject(ConnectionDrainingPolicy) : 'ConnectionDrainingPolicy must be a object',
      Properties+::: { ConnectionDrainingPolicy: ConnectionDrainingPolicy },
    },
    '#withPolicies': d.fn('`withPolicies` Policies ', [d.arg('Policies', d.T.array)]),
    withPolicies(Policies): {
      assert std.isArray(Policies) : 'Policies must be a array',
      Properties+::: { Policies: Policies },
    },
    '#withScheme': d.fn('`withScheme` Scheme ', [d.arg('Scheme', d.T.string)]),
    withScheme(Scheme): {
      assert std.isString(Scheme) : 'Scheme must be a string',
      Properties+::: { Scheme: Scheme },
    },
    '#withAvailabilityZones': d.fn('`withAvailabilityZones` AvailabilityZones ', [d.arg('AvailabilityZones', d.T.array)]),
    withAvailabilityZones(AvailabilityZones): {
      assert std.isArray(AvailabilityZones) : 'AvailabilityZones must be a array',
      Properties+::: { AvailabilityZones: AvailabilityZones },
    },
    '#withSourceSecurityGroupOwnerAlias': d.fn('`withSourceSecurityGroupOwnerAlias` SourceSecurityGroupOwnerAlias ', [d.arg('SourceSecurityGroupOwnerAlias', d.T.string)]),
    withSourceSecurityGroupOwnerAlias(SourceSecurityGroupOwnerAlias): {
      assert std.isString(SourceSecurityGroupOwnerAlias) : 'SourceSecurityGroupOwnerAlias must be a string',
      Properties+::: { SourceSecurityGroupOwnerAlias: SourceSecurityGroupOwnerAlias },
    },
    '#withHealthCheck': d.fn('`withHealthCheck` HealthCheck ', [d.arg('HealthCheck', d.T.object)]),
    withHealthCheck(HealthCheck): {
      assert std.isObject(HealthCheck) : 'HealthCheck must be a object',
      Properties+::: { HealthCheck: HealthCheck },
    },
    '#withCanonicalHostedZoneNameID': d.fn('`withCanonicalHostedZoneNameID` CanonicalHostedZoneNameID ', [d.arg('CanonicalHostedZoneNameID', d.T.string)]),
    withCanonicalHostedZoneNameID(CanonicalHostedZoneNameID): {
      assert std.isString(CanonicalHostedZoneNameID) : 'CanonicalHostedZoneNameID must be a string',
      Properties+::: { CanonicalHostedZoneNameID: CanonicalHostedZoneNameID },
    },
    '#withCanonicalHostedZoneName': d.fn('`withCanonicalHostedZoneName` CanonicalHostedZoneName ', [d.arg('CanonicalHostedZoneName', d.T.string)]),
    withCanonicalHostedZoneName(CanonicalHostedZoneName): {
      assert std.isString(CanonicalHostedZoneName) : 'CanonicalHostedZoneName must be a string',
      Properties+::: { CanonicalHostedZoneName: CanonicalHostedZoneName },
    },
    '#withDNSName': d.fn('`withDNSName` DNSName ', [d.arg('DNSName', d.T.string)]),
    withDNSName(DNSName): {
      assert std.isString(DNSName) : 'DNSName must be a string',
      Properties+::: { DNSName: DNSName },
    },
    '#withAccessLoggingPolicy': d.fn('`withAccessLoggingPolicy` AccessLoggingPolicy ', [d.arg('AccessLoggingPolicy', d.T.object)]),
    withAccessLoggingPolicy(AccessLoggingPolicy): {
      assert std.isObject(AccessLoggingPolicy) : 'AccessLoggingPolicy must be a object',
      Properties+::: { AccessLoggingPolicy: AccessLoggingPolicy },
    },
    '#withInstances': d.fn('`withInstances` Instances ', [d.arg('Instances', d.T.array)]),
    withInstances(Instances): {
      assert std.isArray(Instances) : 'Instances must be a array',
      Properties+::: { Instances: Instances },
    },
    '#withLoadBalancerName': d.fn('`withLoadBalancerName` LoadBalancerName ', [d.arg('LoadBalancerName', d.T.string)]),
    withLoadBalancerName(LoadBalancerName): {
      assert std.isString(LoadBalancerName) : 'LoadBalancerName must be a string',
      Properties+::: { LoadBalancerName: LoadBalancerName },
    },
    '#withSubnets': d.fn('`withSubnets` Subnets ', [d.arg('Subnets', d.T.array)]),
    withSubnets(Subnets): {
      assert std.isArray(Subnets) : 'Subnets must be a array',
      Properties+::: { Subnets: Subnets },
    },
    '#withCrossZone': d.fn('`withCrossZone` CrossZone ', [d.arg('CrossZone', d.T.boolean)]),
    withCrossZone(CrossZone): {
      assert std.isBoolean(CrossZone) : 'CrossZone must be a boolean',
      Properties+::: { CrossZone: CrossZone },
    },
    '#withAppCookieStickinessPolicy': d.fn('`withAppCookieStickinessPolicy` AppCookieStickinessPolicy ', [d.arg('AppCookieStickinessPolicy', d.T.array)]),
    withAppCookieStickinessPolicy(AppCookieStickinessPolicy): {
      assert std.isArray(AppCookieStickinessPolicy) : 'AppCookieStickinessPolicy must be a array',
      Properties+::: { AppCookieStickinessPolicy: AppCookieStickinessPolicy },
    },
    '#withLBCookieStickinessPolicy': d.fn('`withLBCookieStickinessPolicy` LBCookieStickinessPolicy ', [d.arg('LBCookieStickinessPolicy', d.T.array)]),
    withLBCookieStickinessPolicy(LBCookieStickinessPolicy): {
      assert std.isArray(LBCookieStickinessPolicy) : 'LBCookieStickinessPolicy must be a array',
      Properties+::: { LBCookieStickinessPolicy: LBCookieStickinessPolicy },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSourceSecurityGroupGroupName': d.fn('`withSourceSecurityGroupGroupName` SourceSecurityGroupGroupName ', [d.arg('SourceSecurityGroupGroupName', d.T.string)]),
    withSourceSecurityGroupGroupName(SourceSecurityGroupGroupName): {
      assert std.isString(SourceSecurityGroupGroupName) : 'SourceSecurityGroupGroupName must be a string',
      Properties+::: { SourceSecurityGroupGroupName: SourceSecurityGroupGroupName },
    },
    '#withConnectionSettings': d.fn('`withConnectionSettings` ConnectionSettings ', [d.arg('ConnectionSettings', d.T.object)]),
    withConnectionSettings(ConnectionSettings): {
      assert std.isObject(ConnectionSettings) : 'ConnectionSettings must be a object',
      Properties+::: { ConnectionSettings: ConnectionSettings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
