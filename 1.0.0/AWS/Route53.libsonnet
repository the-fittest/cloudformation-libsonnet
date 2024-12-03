local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CidrCollection: {
    '#': d.pkg(
      name='CidrCollection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53.libsonnet',
      help='Resource schema for AWS::Route53::CidrCollection.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53::CidrCollection Resource
        * Name A unique name for the CIDR collection.
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
      Type: 'AWS::Route53::CidrCollection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withLocations': d.fn('`withLocations` Locations ', [d.arg('Locations', d.T.array)]),
    withLocations(Locations): {
      assert std.isArray(Locations) : 'Locations must be a array',
      Properties+::: { Locations: Locations },
    },
  },
  DNSSEC: {
    '#': d.pkg(
      name='DNSSEC',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53.libsonnet',
      help='Resource used to control (enable/disable) DNSSEC in a specific hosted zone.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53::DNSSEC Resource
        * HostedZoneId The unique string (ID) used to identify a hosted zone.
      |||,
      args=[
        d.arg('HostedZoneId', 'd.T.string'),
      ]
    ),
    new(
      HostedZoneId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(HostedZoneId) : 'HostedZoneId must be a string',
        HostedZoneId: HostedZoneId,
      },
      DependsOn:: [],
      Type: 'AWS::Route53::DNSSEC',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  HealthCheck: {
    '#': d.pkg(
      name='HealthCheck',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53.libsonnet',
      help='Resource schema for AWS::Route53::HealthCheck.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53::HealthCheck Resource
        * HealthCheckConfig A complex type that contains information about the health check.
      |||,
      args=[
        d.arg('HealthCheckConfig', 'd.T.object'),
      ]
    ),
    new(
      HealthCheckConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(HealthCheckConfig) : 'HealthCheckConfig must be a object',
        HealthCheckConfig: HealthCheckConfig,
      },
      DependsOn:: [],
      Type: 'AWS::Route53::HealthCheck',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withHealthCheckId': d.fn('`withHealthCheckId` HealthCheckId ', [d.arg('HealthCheckId', d.T.string)]),
    withHealthCheckId(HealthCheckId): {
      assert std.isString(HealthCheckId) : 'HealthCheckId must be a string',
      Properties+::: { HealthCheckId: HealthCheckId },
    },
    '#withHealthCheckTags': d.fn('`withHealthCheckTags` HealthCheckTags ', [d.arg('HealthCheckTags', d.T.array)]),
    withHealthCheckTags(HealthCheckTags): {
      assert std.isArray(HealthCheckTags) : 'HealthCheckTags must be a array',
      Properties+::: { HealthCheckTags: HealthCheckTags },
    },
  },
  HostedZone: {
    '#': d.pkg(
      name='HostedZone',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53.libsonnet',
      help='Creates a new public or private hosted zone. You create records in a public hosted zone to define how you want to route traffic on the internet for a domain, such as example.com, and its subdomains (apex.example.com, acme.example.com). You create records in a private hosted zone to define how you want to route traffic for a domain and its subdomains within one or more Amazon Virtual Private Clouds (Amazon VPCs). You cant convert a public hosted zone to a private hosted zone or vice versa. Instead, you must create a new hosted zone with the same name and create new resource record sets.For more information about charges for hosted zones, see [Amazon Route 53 Pricing](https://docs.aws.amazon.com/route53/pricing/). Note the following:+You cant create a hosted zone for a top-level domain (TLD) such as .com.+If your domain is registered with a registrar other than Route 53, you must update the name servers with your registrar to make Route 53 the DNS service for the domain. For more information, see [Migrating DNS Service for an Existing Domain to Amazon Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html) in the *Amazon Route 53 Developer Guide*.  When you submit a CreateHostedZone request, the initial status of the hosted zone is PENDING. For public hosted zones, this means that the NS and SOA records are not yet available on all Route 53 DNS servers. When the NS and SOA records are available, the status of the zone changes to INSYNC. The CreateHostedZone request requires the caller to have an ec2:DescribeVpcs permission.When creating private hosted zones, the Amazon VPC must belong to the same partition where the hosted zone is created. A partition is a group of AWS-Regions. Each AWS-account is scoped to one partition. The following are the supported partitions:+aws - AWS-Regions +aws-cn - China Regions+aws-us-gov - govcloud-us-region  For more information, see [Access Management](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *General Reference*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53::HostedZone Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Route53::HostedZone',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withHostedZoneConfig': d.fn('`withHostedZoneConfig` HostedZoneConfig ', [d.arg('HostedZoneConfig', d.T.object)]),
    withHostedZoneConfig(HostedZoneConfig): {
      assert std.isObject(HostedZoneConfig) : 'HostedZoneConfig must be a object',
      Properties+::: { HostedZoneConfig: HostedZoneConfig },
    },
    '#withHostedZoneTags': d.fn('`withHostedZoneTags` HostedZoneTags ', [d.arg('HostedZoneTags', d.T.array)]),
    withHostedZoneTags(HostedZoneTags): {
      assert std.isArray(HostedZoneTags) : 'HostedZoneTags must be a array',
      Properties+::: { HostedZoneTags: HostedZoneTags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withQueryLoggingConfig': d.fn('`withQueryLoggingConfig` QueryLoggingConfig ', [d.arg('QueryLoggingConfig', d.T.object)]),
    withQueryLoggingConfig(QueryLoggingConfig): {
      assert std.isObject(QueryLoggingConfig) : 'QueryLoggingConfig must be a object',
      Properties+::: { QueryLoggingConfig: QueryLoggingConfig },
    },
    '#withVPCs': d.fn('`withVPCs` VPCs ', [d.arg('VPCs', d.T.array)]),
    withVPCs(VPCs): {
      assert std.isArray(VPCs) : 'VPCs must be a array',
      Properties+::: { VPCs: VPCs },
    },
    '#withNameServers': d.fn('`withNameServers` NameServers ', [d.arg('NameServers', d.T.array)]),
    withNameServers(NameServers): {
      assert std.isArray(NameServers) : 'NameServers must be a array',
      Properties+::: { NameServers: NameServers },
    },
  },
  KeySigningKey: {
    '#': d.pkg(
      name='KeySigningKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53.libsonnet',
      help='Represents a key signing key (KSK) associated with a hosted zone. You can only have two KSKs per hosted zone.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53::KeySigningKey Resource
        * Status A string specifying the initial status of the key signing key (KSK). You can set the value to ACTIVE or INACTIVE.
        * HostedZoneId The unique string (ID) used to identify a hosted zone.
        * Name An alphanumeric string used to identify a key signing key (KSK). Name must be unique for each key signing key in the same hosted zone.
        * KeyManagementServiceArn The Amazon resource name (ARN) for a customer managed key (CMK) in AWS Key Management Service (KMS). The KeyManagementServiceArn must be unique for each key signing key (KSK) in a single hosted zone.
      |||,
      args=[
        d.arg('Status', 'd.T.string'),
        d.arg('HostedZoneId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('KeyManagementServiceArn', 'd.T.string'),
      ]
    ),
    new(
      Status,
      HostedZoneId,
      Name,
      KeyManagementServiceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Status) : 'Status must be a string',
        assert Status == 'ACTIVE' || Status == 'INACTIVE' : "Status must be either 'ACTIVE' or 'INACTIVE'",
        Status: Status,
        assert std.isString(HostedZoneId) : 'HostedZoneId must be a string',
        HostedZoneId: HostedZoneId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(KeyManagementServiceArn) : 'KeyManagementServiceArn must be a string',
        KeyManagementServiceArn: KeyManagementServiceArn,
      },
      DependsOn:: [],
      Type: 'AWS::Route53::KeySigningKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  RecordSet: {
    '#': d.pkg(
      name='RecordSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53.libsonnet',
      help='Resource Type definition for AWS::Route53::RecordSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53::RecordSet Resource
        * Type 
        * Name 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Type,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Route53::RecordSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withHealthCheckId': d.fn('`withHealthCheckId` HealthCheckId ', [d.arg('HealthCheckId', d.T.string)]),
    withHealthCheckId(HealthCheckId): {
      assert std.isString(HealthCheckId) : 'HealthCheckId must be a string',
      Properties+::: { HealthCheckId: HealthCheckId },
    },
    '#withAliasTarget': d.fn('`withAliasTarget` AliasTarget ', [d.arg('AliasTarget', d.T.object)]),
    withAliasTarget(AliasTarget): {
      assert std.isObject(AliasTarget) : 'AliasTarget must be a object',
      Properties+::: { AliasTarget: AliasTarget },
    },
    '#withComment': d.fn('`withComment` Comment ', [d.arg('Comment', d.T.string)]),
    withComment(Comment): {
      assert std.isString(Comment) : 'Comment must be a string',
      Properties+::: { Comment: Comment },
    },
    '#withHostedZoneName': d.fn('`withHostedZoneName` HostedZoneName ', [d.arg('HostedZoneName', d.T.string)]),
    withHostedZoneName(HostedZoneName): {
      assert std.isString(HostedZoneName) : 'HostedZoneName must be a string',
      Properties+::: { HostedZoneName: HostedZoneName },
    },
    '#withResourceRecords': d.fn('`withResourceRecords` ResourceRecords ', [d.arg('ResourceRecords', d.T.array)]),
    withResourceRecords(ResourceRecords): {
      assert std.isArray(ResourceRecords) : 'ResourceRecords must be a array',
      Properties+::: { ResourceRecords: ResourceRecords },
    },
    '#withHostedZoneId': d.fn('`withHostedZoneId` HostedZoneId ', [d.arg('HostedZoneId', d.T.string)]),
    withHostedZoneId(HostedZoneId): {
      assert std.isString(HostedZoneId) : 'HostedZoneId must be a string',
      Properties+::: { HostedZoneId: HostedZoneId },
    },
    '#withSetIdentifier': d.fn('`withSetIdentifier` SetIdentifier ', [d.arg('SetIdentifier', d.T.string)]),
    withSetIdentifier(SetIdentifier): {
      assert std.isString(SetIdentifier) : 'SetIdentifier must be a string',
      Properties+::: { SetIdentifier: SetIdentifier },
    },
    '#withTTL': d.fn('`withTTL` TTL ', [d.arg('TTL', d.T.string)]),
    withTTL(TTL): {
      assert std.isString(TTL) : 'TTL must be a string',
      Properties+::: { TTL: TTL },
    },
    '#withWeight': d.fn('`withWeight` Weight ', [d.arg('Weight', d.T.integer)]),
    withWeight(Weight): {
      assert std.isNumber(Weight) : 'Weight must be a integer',
      Properties+::: { Weight: Weight },
    },
    '#withCidrRoutingConfig': d.fn('`withCidrRoutingConfig` CidrRoutingConfig ', [d.arg('CidrRoutingConfig', d.T.object)]),
    withCidrRoutingConfig(CidrRoutingConfig): {
      assert std.isObject(CidrRoutingConfig) : 'CidrRoutingConfig must be a object',
      Properties+::: { CidrRoutingConfig: CidrRoutingConfig },
    },
    '#withFailover': d.fn('`withFailover` Failover ', [d.arg('Failover', d.T.string)]),
    withFailover(Failover): {
      assert std.isString(Failover) : 'Failover must be a string',
      Properties+::: { Failover: Failover },
    },
    '#withGeoProximityLocation': d.fn('`withGeoProximityLocation` GeoProximityLocation ', [d.arg('GeoProximityLocation', d.T.object)]),
    withGeoProximityLocation(GeoProximityLocation): {
      assert std.isObject(GeoProximityLocation) : 'GeoProximityLocation must be a object',
      Properties+::: { GeoProximityLocation: GeoProximityLocation },
    },
    '#withRegion': d.fn('`withRegion` Region ', [d.arg('Region', d.T.string)]),
    withRegion(Region): {
      assert std.isString(Region) : 'Region must be a string',
      Properties+::: { Region: Region },
    },
    '#withGeoLocation': d.fn('`withGeoLocation` GeoLocation ', [d.arg('GeoLocation', d.T.object)]),
    withGeoLocation(GeoLocation): {
      assert std.isObject(GeoLocation) : 'GeoLocation must be a object',
      Properties+::: { GeoLocation: GeoLocation },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withMultiValueAnswer': d.fn('`withMultiValueAnswer` MultiValueAnswer ', [d.arg('MultiValueAnswer', d.T.boolean)]),
    withMultiValueAnswer(MultiValueAnswer): {
      assert std.isBoolean(MultiValueAnswer) : 'MultiValueAnswer must be a boolean',
      Properties+::: { MultiValueAnswer: MultiValueAnswer },
    },
  },
  RecordSetGroup: {
    '#': d.pkg(
      name='RecordSetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53.libsonnet',
      help='Resource Type definition for AWS::Route53::RecordSetGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53::RecordSetGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Route53::RecordSetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withComment': d.fn('`withComment` Comment ', [d.arg('Comment', d.T.string)]),
    withComment(Comment): {
      assert std.isString(Comment) : 'Comment must be a string',
      Properties+::: { Comment: Comment },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withHostedZoneName': d.fn('`withHostedZoneName` HostedZoneName ', [d.arg('HostedZoneName', d.T.string)]),
    withHostedZoneName(HostedZoneName): {
      assert std.isString(HostedZoneName) : 'HostedZoneName must be a string',
      Properties+::: { HostedZoneName: HostedZoneName },
    },
    '#withRecordSets': d.fn('`withRecordSets` RecordSets ', [d.arg('RecordSets', d.T.array)]),
    withRecordSets(RecordSets): {
      assert std.isArray(RecordSets) : 'RecordSets must be a array',
      Properties+::: { RecordSets: RecordSets },
    },
    '#withHostedZoneId': d.fn('`withHostedZoneId` HostedZoneId ', [d.arg('HostedZoneId', d.T.string)]),
    withHostedZoneId(HostedZoneId): {
      assert std.isString(HostedZoneId) : 'HostedZoneId must be a string',
      Properties+::: { HostedZoneId: HostedZoneId },
    },
  },
}
