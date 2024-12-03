local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Listener: {
    '#': d.pkg(
      name='Listener',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticLoadBalancingV2.libsonnet',
      help='Specifies a listener for an Application Load Balancer, Network Load Balancer, or Gateway Load Balancer.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticLoadBalancingV2::Listener Resource
        * LoadBalancerArn The Amazon Resource Name (ARN) of the load balancer.
        * DefaultActions The actions for the default rule. You cannot define a condition for a default rule. To create additional rules for an Application Load Balancer, use [AWS::ElasticLoadBalancingV2::ListenerRule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html).
      |||,
      args=[
        d.arg('LoadBalancerArn', 'd.T.string'),
        d.arg('DefaultActions', 'd.T.array'),
      ]
    ),
    new(
      LoadBalancerArn,
      DefaultActions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LoadBalancerArn) : 'LoadBalancerArn must be a string',
        LoadBalancerArn: LoadBalancerArn,
        assert std.isArray(DefaultActions) : 'DefaultActions must be a array',
        DefaultActions: DefaultActions,
      },
      DependsOn:: [],
      Type: 'AWS::ElasticLoadBalancingV2::Listener',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withListenerArn': d.fn('`withListenerArn` ListenerArn ', [d.arg('ListenerArn', d.T.string)]),
    withListenerArn(ListenerArn): {
      assert std.isString(ListenerArn) : 'ListenerArn must be a string',
      Properties+::: { ListenerArn: ListenerArn },
    },
    '#withMutualAuthentication': d.fn('`withMutualAuthentication` MutualAuthentication ', [d.arg('MutualAuthentication', d.T.object)]),
    withMutualAuthentication(MutualAuthentication): {
      assert std.isObject(MutualAuthentication) : 'MutualAuthentication must be a object',
      Properties+::: { MutualAuthentication: MutualAuthentication },
    },
    '#withListenerAttributes': d.fn('`withListenerAttributes` ListenerAttributes ', [d.arg('ListenerAttributes', d.T.array)]),
    withListenerAttributes(ListenerAttributes): {
      assert std.isArray(ListenerAttributes) : 'ListenerAttributes must be a array',
      Properties+::: { ListenerAttributes: ListenerAttributes },
    },
    '#withAlpnPolicy': d.fn('`withAlpnPolicy` AlpnPolicy ', [d.arg('AlpnPolicy', d.T.array)]),
    withAlpnPolicy(AlpnPolicy): {
      assert std.isArray(AlpnPolicy) : 'AlpnPolicy must be a array',
      Properties+::: { AlpnPolicy: AlpnPolicy },
    },
    '#withSslPolicy': d.fn('`withSslPolicy` SslPolicy ', [d.arg('SslPolicy', d.T.string)]),
    withSslPolicy(SslPolicy): {
      assert std.isString(SslPolicy) : 'SslPolicy must be a string',
      Properties+::: { SslPolicy: SslPolicy },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withCertificates': d.fn('`withCertificates` Certificates ', [d.arg('Certificates', d.T.array)]),
    withCertificates(Certificates): {
      assert std.isArray(Certificates) : 'Certificates must be a array',
      Properties+::: { Certificates: Certificates },
    },
    '#withProtocol': d.fn('`withProtocol` Protocol ', [d.arg('Protocol', d.T.string)]),
    withProtocol(Protocol): {
      assert std.isString(Protocol) : 'Protocol must be a string',
      Properties+::: { Protocol: Protocol },
    },
  },
  ListenerCertificate: {
    '#': d.pkg(
      name='ListenerCertificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticLoadBalancingV2.libsonnet',
      help='Resource Type definition for AWS::ElasticLoadBalancingV2::ListenerCertificate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticLoadBalancingV2::ListenerCertificate Resource
        * ListenerArn 
        * Certificates 
      |||,
      args=[
        d.arg('ListenerArn', 'd.T.string'),
        d.arg('Certificates', 'd.T.array'),
      ]
    ),
    new(
      ListenerArn,
      Certificates,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ListenerArn) : 'ListenerArn must be a string',
        ListenerArn: ListenerArn,
        assert std.isArray(Certificates) : 'Certificates must be a array',
        Certificates: Certificates,
      },
      DependsOn:: [],
      Type: 'AWS::ElasticLoadBalancingV2::ListenerCertificate',
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
  ListenerRule: {
    '#': d.pkg(
      name='ListenerRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticLoadBalancingV2.libsonnet',
      help='Specifies a listener rule. The listener must be associated with an Application Load Balancer. Each rule consists of a priority, one or more actions, and one or more conditions. For more information, see [Quotas for your Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html) in the *User Guide for Application Load Balancers*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticLoadBalancingV2::ListenerRule Resource
        * Actions The actions. The rule must include exactly one of the following types of actions: forward, fixed-response, or redirect, and it must be the last action to be performed. If the rule is for an HTTPS listener, it can also optionally include an authentication action.
        * Priority The rule priority. A listener cant have multiple rules with the same priority. If you try to reorder rules by updating their priorities, do not specify a new priority if an existing rule already uses this priority, as this can cause an error. If you need to reuse a priority with a different rule, you must remove it as a priority first, and then specify it in a subsequent update.
        * Conditions The conditions. The rule can optionally include up to one of each of the following conditions: http-request-method, host-header, path-pattern, and source-ip. A rule can also optionally include one or more of each of the following conditions: http-header and query-string.
      |||,
      args=[
        d.arg('Actions', 'd.T.array'),
        d.arg('Priority', 'd.T.integer'),
        d.arg('Conditions', 'd.T.array'),
      ]
    ),
    new(
      Actions,
      Priority,
      Conditions,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Actions) : 'Actions must be a array',
        Actions: Actions,
        assert std.isNumber(Priority) : 'Priority must be a integer',
        Priority: Priority,
        assert std.isArray(Conditions) : 'Conditions must be a array',
        Conditions: Conditions,
      },
      DependsOn:: [],
      Type: 'AWS::ElasticLoadBalancingV2::ListenerRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withListenerArn': d.fn('`withListenerArn` ListenerArn ', [d.arg('ListenerArn', d.T.string)]),
    withListenerArn(ListenerArn): {
      assert std.isString(ListenerArn) : 'ListenerArn must be a string',
      Properties+::: { ListenerArn: ListenerArn },
    },
    '#withRuleArn': d.fn('`withRuleArn` RuleArn ', [d.arg('RuleArn', d.T.string)]),
    withRuleArn(RuleArn): {
      assert std.isString(RuleArn) : 'RuleArn must be a string',
      Properties+::: { RuleArn: RuleArn },
    },
    '#withIsDefault': d.fn('`withIsDefault` IsDefault ', [d.arg('IsDefault', d.T.boolean)]),
    withIsDefault(IsDefault): {
      assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
      Properties+::: { IsDefault: IsDefault },
    },
  },
  LoadBalancer: {
    '#': d.pkg(
      name='LoadBalancer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticLoadBalancingV2.libsonnet',
      help='Specifies an Application Load Balancer, a Network Load Balancer, or a Gateway Load Balancer.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticLoadBalancingV2::LoadBalancer Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ElasticLoadBalancingV2::LoadBalancer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpAddressType': d.fn('`withIpAddressType` IpAddressType ', [d.arg('IpAddressType', d.T.string)]),
    withIpAddressType(IpAddressType): {
      assert std.isString(IpAddressType) : 'IpAddressType must be a string',
      Properties+::: { IpAddressType: IpAddressType },
    },
    '#withEnablePrefixForIpv6SourceNat': d.fn('`withEnablePrefixForIpv6SourceNat` EnablePrefixForIpv6SourceNat ', [d.arg('EnablePrefixForIpv6SourceNat', d.T.string)]),
    withEnablePrefixForIpv6SourceNat(EnablePrefixForIpv6SourceNat): {
      assert std.isString(EnablePrefixForIpv6SourceNat) : 'EnablePrefixForIpv6SourceNat must be a string',
      Properties+::: { EnablePrefixForIpv6SourceNat: EnablePrefixForIpv6SourceNat },
    },
    '#withSecurityGroups': d.fn('`withSecurityGroups` SecurityGroups ', [d.arg('SecurityGroups', d.T.array)]),
    withSecurityGroups(SecurityGroups): {
      assert std.isArray(SecurityGroups) : 'SecurityGroups must be a array',
      Properties+::: { SecurityGroups: SecurityGroups },
    },
    '#withLoadBalancerAttributes': d.fn('`withLoadBalancerAttributes` LoadBalancerAttributes ', [d.arg('LoadBalancerAttributes', d.T.array)]),
    withLoadBalancerAttributes(LoadBalancerAttributes): {
      assert std.isArray(LoadBalancerAttributes) : 'LoadBalancerAttributes must be a array',
      Properties+::: { LoadBalancerAttributes: LoadBalancerAttributes },
    },
    '#withMinimumLoadBalancerCapacity': d.fn('`withMinimumLoadBalancerCapacity` MinimumLoadBalancerCapacity ', [d.arg('MinimumLoadBalancerCapacity', d.T.object)]),
    withMinimumLoadBalancerCapacity(MinimumLoadBalancerCapacity): {
      assert std.isObject(MinimumLoadBalancerCapacity) : 'MinimumLoadBalancerCapacity must be a object',
      Properties+::: { MinimumLoadBalancerCapacity: MinimumLoadBalancerCapacity },
    },
    '#withScheme': d.fn('`withScheme` Scheme ', [d.arg('Scheme', d.T.string)]),
    withScheme(Scheme): {
      assert std.isString(Scheme) : 'Scheme must be a string',
      Properties+::: { Scheme: Scheme },
    },
    '#withDNSName': d.fn('`withDNSName` DNSName ', [d.arg('DNSName', d.T.string)]),
    withDNSName(DNSName): {
      assert std.isString(DNSName) : 'DNSName must be a string',
      Properties+::: { DNSName: DNSName },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withLoadBalancerName': d.fn('`withLoadBalancerName` LoadBalancerName ', [d.arg('LoadBalancerName', d.T.string)]),
    withLoadBalancerName(LoadBalancerName): {
      assert std.isString(LoadBalancerName) : 'LoadBalancerName must be a string',
      Properties+::: { LoadBalancerName: LoadBalancerName },
    },
    '#withLoadBalancerFullName': d.fn('`withLoadBalancerFullName` LoadBalancerFullName ', [d.arg('LoadBalancerFullName', d.T.string)]),
    withLoadBalancerFullName(LoadBalancerFullName): {
      assert std.isString(LoadBalancerFullName) : 'LoadBalancerFullName must be a string',
      Properties+::: { LoadBalancerFullName: LoadBalancerFullName },
    },
    '#withSubnets': d.fn('`withSubnets` Subnets ', [d.arg('Subnets', d.T.array)]),
    withSubnets(Subnets): {
      assert std.isArray(Subnets) : 'Subnets must be a array',
      Properties+::: { Subnets: Subnets },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withCanonicalHostedZoneID': d.fn('`withCanonicalHostedZoneID` CanonicalHostedZoneID ', [d.arg('CanonicalHostedZoneID', d.T.string)]),
    withCanonicalHostedZoneID(CanonicalHostedZoneID): {
      assert std.isString(CanonicalHostedZoneID) : 'CanonicalHostedZoneID must be a string',
      Properties+::: { CanonicalHostedZoneID: CanonicalHostedZoneID },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLoadBalancerArn': d.fn('`withLoadBalancerArn` LoadBalancerArn ', [d.arg('LoadBalancerArn', d.T.string)]),
    withLoadBalancerArn(LoadBalancerArn): {
      assert std.isString(LoadBalancerArn) : 'LoadBalancerArn must be a string',
      Properties+::: { LoadBalancerArn: LoadBalancerArn },
    },
    '#withSubnetMappings': d.fn('`withSubnetMappings` SubnetMappings ', [d.arg('SubnetMappings', d.T.array)]),
    withSubnetMappings(SubnetMappings): {
      assert std.isArray(SubnetMappings) : 'SubnetMappings must be a array',
      Properties+::: { SubnetMappings: SubnetMappings },
    },
    '#withEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic': d.fn('`withEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic` EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic ', [d.arg('EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic', d.T.string)]),
    withEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic(EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic): {
      assert std.isString(EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic) : 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic must be a string',
      Properties+::: { EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic: EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic },
    },
  },
  TargetGroup: {
    '#': d.pkg(
      name='TargetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticLoadBalancingV2.libsonnet',
      help='Resource Type definition for AWS::ElasticLoadBalancingV2::TargetGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticLoadBalancingV2::TargetGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ElasticLoadBalancingV2::TargetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpAddressType': d.fn('`withIpAddressType` IpAddressType ', [d.arg('IpAddressType', d.T.string)]),
    withIpAddressType(IpAddressType): {
      assert std.isString(IpAddressType) : 'IpAddressType must be a string',
      Properties+::: { IpAddressType: IpAddressType },
    },
    '#withHealthCheckIntervalSeconds': d.fn('`withHealthCheckIntervalSeconds` HealthCheckIntervalSeconds ', [d.arg('HealthCheckIntervalSeconds', d.T.integer)]),
    withHealthCheckIntervalSeconds(HealthCheckIntervalSeconds): {
      assert std.isNumber(HealthCheckIntervalSeconds) : 'HealthCheckIntervalSeconds must be a integer',
      Properties+::: { HealthCheckIntervalSeconds: HealthCheckIntervalSeconds },
    },
    '#withLoadBalancerArns': d.fn('`withLoadBalancerArns` LoadBalancerArns ', [d.arg('LoadBalancerArns', d.T.array)]),
    withLoadBalancerArns(LoadBalancerArns): {
      assert std.isArray(LoadBalancerArns) : 'LoadBalancerArns must be a array',
      Properties+::: { LoadBalancerArns: LoadBalancerArns },
    },
    '#withMatcher': d.fn('`withMatcher` Matcher ', [d.arg('Matcher', d.T.object)]),
    withMatcher(Matcher): {
      assert std.isObject(Matcher) : 'Matcher must be a object',
      Properties+::: { Matcher: Matcher },
    },
    '#withHealthCheckPath': d.fn('`withHealthCheckPath` HealthCheckPath ', [d.arg('HealthCheckPath', d.T.string)]),
    withHealthCheckPath(HealthCheckPath): {
      assert std.isString(HealthCheckPath) : 'HealthCheckPath must be a string',
      Properties+::: { HealthCheckPath: HealthCheckPath },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withTargets': d.fn('`withTargets` Targets ', [d.arg('Targets', d.T.array)]),
    withTargets(Targets): {
      assert std.isArray(Targets) : 'Targets must be a array',
      Properties+::: { Targets: Targets },
    },
    '#withHealthCheckEnabled': d.fn('`withHealthCheckEnabled` HealthCheckEnabled ', [d.arg('HealthCheckEnabled', d.T.boolean)]),
    withHealthCheckEnabled(HealthCheckEnabled): {
      assert std.isBoolean(HealthCheckEnabled) : 'HealthCheckEnabled must be a boolean',
      Properties+::: { HealthCheckEnabled: HealthCheckEnabled },
    },
    '#withProtocolVersion': d.fn('`withProtocolVersion` ProtocolVersion ', [d.arg('ProtocolVersion', d.T.string)]),
    withProtocolVersion(ProtocolVersion): {
      assert std.isString(ProtocolVersion) : 'ProtocolVersion must be a string',
      Properties+::: { ProtocolVersion: ProtocolVersion },
    },
    '#withUnhealthyThresholdCount': d.fn('`withUnhealthyThresholdCount` UnhealthyThresholdCount ', [d.arg('UnhealthyThresholdCount', d.T.integer)]),
    withUnhealthyThresholdCount(UnhealthyThresholdCount): {
      assert std.isNumber(UnhealthyThresholdCount) : 'UnhealthyThresholdCount must be a integer',
      Properties+::: { UnhealthyThresholdCount: UnhealthyThresholdCount },
    },
    '#withHealthCheckTimeoutSeconds': d.fn('`withHealthCheckTimeoutSeconds` HealthCheckTimeoutSeconds ', [d.arg('HealthCheckTimeoutSeconds', d.T.integer)]),
    withHealthCheckTimeoutSeconds(HealthCheckTimeoutSeconds): {
      assert std.isNumber(HealthCheckTimeoutSeconds) : 'HealthCheckTimeoutSeconds must be a integer',
      Properties+::: { HealthCheckTimeoutSeconds: HealthCheckTimeoutSeconds },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withTargetGroupFullName': d.fn('`withTargetGroupFullName` TargetGroupFullName ', [d.arg('TargetGroupFullName', d.T.string)]),
    withTargetGroupFullName(TargetGroupFullName): {
      assert std.isString(TargetGroupFullName) : 'TargetGroupFullName must be a string',
      Properties+::: { TargetGroupFullName: TargetGroupFullName },
    },
    '#withHealthyThresholdCount': d.fn('`withHealthyThresholdCount` HealthyThresholdCount ', [d.arg('HealthyThresholdCount', d.T.integer)]),
    withHealthyThresholdCount(HealthyThresholdCount): {
      assert std.isNumber(HealthyThresholdCount) : 'HealthyThresholdCount must be a integer',
      Properties+::: { HealthyThresholdCount: HealthyThresholdCount },
    },
    '#withHealthCheckProtocol': d.fn('`withHealthCheckProtocol` HealthCheckProtocol ', [d.arg('HealthCheckProtocol', d.T.string)]),
    withHealthCheckProtocol(HealthCheckProtocol): {
      assert std.isString(HealthCheckProtocol) : 'HealthCheckProtocol must be a string',
      Properties+::: { HealthCheckProtocol: HealthCheckProtocol },
    },
    '#withTargetGroupAttributes': d.fn('`withTargetGroupAttributes` TargetGroupAttributes ', [d.arg('TargetGroupAttributes', d.T.array)]),
    withTargetGroupAttributes(TargetGroupAttributes): {
      assert std.isArray(TargetGroupAttributes) : 'TargetGroupAttributes must be a array',
      Properties+::: { TargetGroupAttributes: TargetGroupAttributes },
    },
    '#withTargetType': d.fn('`withTargetType` TargetType ', [d.arg('TargetType', d.T.string)]),
    withTargetType(TargetType): {
      assert std.isString(TargetType) : 'TargetType must be a string',
      Properties+::: { TargetType: TargetType },
    },
    '#withHealthCheckPort': d.fn('`withHealthCheckPort` HealthCheckPort ', [d.arg('HealthCheckPort', d.T.string)]),
    withHealthCheckPort(HealthCheckPort): {
      assert std.isString(HealthCheckPort) : 'HealthCheckPort must be a string',
      Properties+::: { HealthCheckPort: HealthCheckPort },
    },
    '#withTargetGroupArn': d.fn('`withTargetGroupArn` TargetGroupArn ', [d.arg('TargetGroupArn', d.T.string)]),
    withTargetGroupArn(TargetGroupArn): {
      assert std.isString(TargetGroupArn) : 'TargetGroupArn must be a string',
      Properties+::: { TargetGroupArn: TargetGroupArn },
    },
    '#withProtocol': d.fn('`withProtocol` Protocol ', [d.arg('Protocol', d.T.string)]),
    withProtocol(Protocol): {
      assert std.isString(Protocol) : 'Protocol must be a string',
      Properties+::: { Protocol: Protocol },
    },
    '#withTargetGroupName': d.fn('`withTargetGroupName` TargetGroupName ', [d.arg('TargetGroupName', d.T.string)]),
    withTargetGroupName(TargetGroupName): {
      assert std.isString(TargetGroupName) : 'TargetGroupName must be a string',
      Properties+::: { TargetGroupName: TargetGroupName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TrustStore: {
    '#': d.pkg(
      name='TrustStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticLoadBalancingV2.libsonnet',
      help='Resource Type definition for AWS::ElasticLoadBalancingV2::TrustStore',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticLoadBalancingV2::TrustStore Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ElasticLoadBalancingV2::TrustStore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withCaCertificatesBundleS3Bucket': d.fn('`withCaCertificatesBundleS3Bucket` CaCertificatesBundleS3Bucket ', [d.arg('CaCertificatesBundleS3Bucket', d.T.string)]),
    withCaCertificatesBundleS3Bucket(CaCertificatesBundleS3Bucket): {
      assert std.isString(CaCertificatesBundleS3Bucket) : 'CaCertificatesBundleS3Bucket must be a string',
      Properties+::: { CaCertificatesBundleS3Bucket: CaCertificatesBundleS3Bucket },
    },
    '#withCaCertificatesBundleS3Key': d.fn('`withCaCertificatesBundleS3Key` CaCertificatesBundleS3Key ', [d.arg('CaCertificatesBundleS3Key', d.T.string)]),
    withCaCertificatesBundleS3Key(CaCertificatesBundleS3Key): {
      assert std.isString(CaCertificatesBundleS3Key) : 'CaCertificatesBundleS3Key must be a string',
      Properties+::: { CaCertificatesBundleS3Key: CaCertificatesBundleS3Key },
    },
    '#withCaCertificatesBundleS3ObjectVersion': d.fn('`withCaCertificatesBundleS3ObjectVersion` CaCertificatesBundleS3ObjectVersion ', [d.arg('CaCertificatesBundleS3ObjectVersion', d.T.string)]),
    withCaCertificatesBundleS3ObjectVersion(CaCertificatesBundleS3ObjectVersion): {
      assert std.isString(CaCertificatesBundleS3ObjectVersion) : 'CaCertificatesBundleS3ObjectVersion must be a string',
      Properties+::: { CaCertificatesBundleS3ObjectVersion: CaCertificatesBundleS3ObjectVersion },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withNumberOfCaCertificates': d.fn('`withNumberOfCaCertificates` NumberOfCaCertificates ', [d.arg('NumberOfCaCertificates', d.T.integer)]),
    withNumberOfCaCertificates(NumberOfCaCertificates): {
      assert std.isNumber(NumberOfCaCertificates) : 'NumberOfCaCertificates must be a integer',
      Properties+::: { NumberOfCaCertificates: NumberOfCaCertificates },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrustStoreArn': d.fn('`withTrustStoreArn` TrustStoreArn ', [d.arg('TrustStoreArn', d.T.string)]),
    withTrustStoreArn(TrustStoreArn): {
      assert std.isString(TrustStoreArn) : 'TrustStoreArn must be a string',
      Properties+::: { TrustStoreArn: TrustStoreArn },
    },
  },
  TrustStoreRevocation: {
    '#': d.pkg(
      name='TrustStoreRevocation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticLoadBalancingV2.libsonnet',
      help='Resource Type definition for AWS::ElasticLoadBalancingV2::TrustStoreRevocation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticLoadBalancingV2::TrustStoreRevocation Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ElasticLoadBalancingV2::TrustStoreRevocation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRevocationContents': d.fn('`withRevocationContents` RevocationContents ', [d.arg('RevocationContents', d.T.array)]),
    withRevocationContents(RevocationContents): {
      assert std.isArray(RevocationContents) : 'RevocationContents must be a array',
      Properties+::: { RevocationContents: RevocationContents },
    },
    '#withTrustStoreArn': d.fn('`withTrustStoreArn` TrustStoreArn ', [d.arg('TrustStoreArn', d.T.string)]),
    withTrustStoreArn(TrustStoreArn): {
      assert std.isString(TrustStoreArn) : 'TrustStoreArn must be a string',
      Properties+::: { TrustStoreArn: TrustStoreArn },
    },
    '#withRevocationId': d.fn('`withRevocationId` RevocationId ', [d.arg('RevocationId', d.T.integer)]),
    withRevocationId(RevocationId): {
      assert std.isNumber(RevocationId) : 'RevocationId must be a integer',
      Properties+::: { RevocationId: RevocationId },
    },
    '#withTrustStoreRevocations': d.fn('`withTrustStoreRevocations` TrustStoreRevocations ', [d.arg('TrustStoreRevocations', d.T.array)]),
    withTrustStoreRevocations(TrustStoreRevocations): {
      assert std.isArray(TrustStoreRevocations) : 'TrustStoreRevocations must be a array',
      Properties+::: { TrustStoreRevocations: TrustStoreRevocations },
    },
  },
}
