local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Accelerator: {
    '#': d.pkg(
      name='Accelerator',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GlobalAccelerator.libsonnet',
      help='Resource Type definition for AWS::GlobalAccelerator::Accelerator',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GlobalAccelerator::Accelerator Resource
        * Name Name of accelerator.
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
      Type: 'AWS::GlobalAccelerator::Accelerator',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpAddressType': d.fn('`withIpAddressType` IpAddressType ', [d.arg('IpAddressType', d.T.string)]),
    withIpAddressType(IpAddressType): {
      assert std.isString(IpAddressType) : 'IpAddressType must be a string',
      assert IpAddressType == 'IPV4' || IpAddressType == 'DUAL_STACK' : "IpAddressType must be either 'IPV4' or 'DUAL_STACK'",
      Properties+::: { IpAddressType: IpAddressType },
    },
    '#withIpAddresses': d.fn('`withIpAddresses` IpAddresses ', [d.arg('IpAddresses', d.T.array)]),
    withIpAddresses(IpAddresses): {
      assert std.isArray(IpAddresses) : 'IpAddresses must be a array',
      Properties+::: { IpAddresses: IpAddresses },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withDnsName': d.fn('`withDnsName` DnsName ', [d.arg('DnsName', d.T.string)]),
    withDnsName(DnsName): {
      assert std.isString(DnsName) : 'DnsName must be a string',
      Properties+::: { DnsName: DnsName },
    },
    '#withIpv4Addresses': d.fn('`withIpv4Addresses` Ipv4Addresses ', [d.arg('Ipv4Addresses', d.T.array)]),
    withIpv4Addresses(Ipv4Addresses): {
      assert std.isArray(Ipv4Addresses) : 'Ipv4Addresses must be a array',
      Properties+::: { Ipv4Addresses: Ipv4Addresses },
    },
    '#withIpv6Addresses': d.fn('`withIpv6Addresses` Ipv6Addresses ', [d.arg('Ipv6Addresses', d.T.array)]),
    withIpv6Addresses(Ipv6Addresses): {
      assert std.isArray(Ipv6Addresses) : 'Ipv6Addresses must be a array',
      Properties+::: { Ipv6Addresses: Ipv6Addresses },
    },
    '#withDualStackDnsName': d.fn('`withDualStackDnsName` DualStackDnsName ', [d.arg('DualStackDnsName', d.T.string)]),
    withDualStackDnsName(DualStackDnsName): {
      assert std.isString(DualStackDnsName) : 'DualStackDnsName must be a string',
      Properties+::: { DualStackDnsName: DualStackDnsName },
    },
    '#withAcceleratorArn': d.fn('`withAcceleratorArn` AcceleratorArn ', [d.arg('AcceleratorArn', d.T.string)]),
    withAcceleratorArn(AcceleratorArn): {
      assert std.isString(AcceleratorArn) : 'AcceleratorArn must be a string',
      Properties+::: { AcceleratorArn: AcceleratorArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  CrossAccountAttachment: {
    '#': d.pkg(
      name='CrossAccountAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GlobalAccelerator.libsonnet',
      help='Resource Type definition for AWS::GlobalAccelerator::CrossAccountAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GlobalAccelerator::CrossAccountAttachment Resource
        * Name The Friendly identifier of the attachment.
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
      Type: 'AWS::GlobalAccelerator::CrossAccountAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAttachmentArn': d.fn('`withAttachmentArn` AttachmentArn ', [d.arg('AttachmentArn', d.T.string)]),
    withAttachmentArn(AttachmentArn): {
      assert std.isString(AttachmentArn) : 'AttachmentArn must be a string',
      Properties+::: { AttachmentArn: AttachmentArn },
    },
    '#withPrincipals': d.fn('`withPrincipals` Principals ', [d.arg('Principals', d.T.array)]),
    withPrincipals(Principals): {
      assert std.isArray(Principals) : 'Principals must be a array',
      Properties+::: { Principals: Principals },
    },
    '#withResources': d.fn('`withResources` Resources ', [d.arg('Resources', d.T.array)]),
    withResources(Resources): {
      assert std.isArray(Resources) : 'Resources must be a array',
      Properties+::: { Resources: Resources },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EndpointGroup: {
    '#': d.pkg(
      name='EndpointGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GlobalAccelerator.libsonnet',
      help='Resource Type definition for AWS::GlobalAccelerator::EndpointGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GlobalAccelerator::EndpointGroup Resource
        * ListenerArn The Amazon Resource Name (ARN) of the listener
        * EndpointGroupRegion The name of the AWS Region where the endpoint group is located
      |||,
      args=[
        d.arg('ListenerArn', 'd.T.string'),
        d.arg('EndpointGroupRegion', 'd.T.string'),
      ]
    ),
    new(
      ListenerArn,
      EndpointGroupRegion,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ListenerArn) : 'ListenerArn must be a string',
        ListenerArn: ListenerArn,
        assert std.isString(EndpointGroupRegion) : 'EndpointGroupRegion must be a string',
        EndpointGroupRegion: EndpointGroupRegion,
      },
      DependsOn:: [],
      Type: 'AWS::GlobalAccelerator::EndpointGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEndpointConfigurations': d.fn('`withEndpointConfigurations` EndpointConfigurations ', [d.arg('EndpointConfigurations', d.T.array)]),
    withEndpointConfigurations(EndpointConfigurations): {
      assert std.isArray(EndpointConfigurations) : 'EndpointConfigurations must be a array',
      Properties+::: { EndpointConfigurations: EndpointConfigurations },
    },
    '#withTrafficDialPercentage': d.fn('`withTrafficDialPercentage` TrafficDialPercentage ', [d.arg('TrafficDialPercentage', d.T.integer)]),
    withTrafficDialPercentage(TrafficDialPercentage): {
      // Type: number
      Properties+::: { TrafficDialPercentage: TrafficDialPercentage },
    },
    '#withHealthCheckPort': d.fn('`withHealthCheckPort` HealthCheckPort ', [d.arg('HealthCheckPort', d.T.integer)]),
    withHealthCheckPort(HealthCheckPort): {
      assert std.isNumber(HealthCheckPort) : 'HealthCheckPort must be a integer',
      Properties+::: { HealthCheckPort: HealthCheckPort },
    },
    '#withHealthCheckProtocol': d.fn('`withHealthCheckProtocol` HealthCheckProtocol ', [d.arg('HealthCheckProtocol', d.T.string)]),
    withHealthCheckProtocol(HealthCheckProtocol): {
      assert std.isString(HealthCheckProtocol) : 'HealthCheckProtocol must be a string',
      assert HealthCheckProtocol == 'TCP' || HealthCheckProtocol == 'HTTP' || HealthCheckProtocol == 'HTTPS' : "HealthCheckProtocol must be either 'TCP' or 'HTTP' or 'HTTPS'",
      Properties+::: { HealthCheckProtocol: HealthCheckProtocol },
    },
    '#withHealthCheckPath': d.fn('`withHealthCheckPath` HealthCheckPath ', [d.arg('HealthCheckPath', d.T.string)]),
    withHealthCheckPath(HealthCheckPath): {
      assert std.isString(HealthCheckPath) : 'HealthCheckPath must be a string',
      Properties+::: { HealthCheckPath: HealthCheckPath },
    },
    '#withHealthCheckIntervalSeconds': d.fn('`withHealthCheckIntervalSeconds` HealthCheckIntervalSeconds ', [d.arg('HealthCheckIntervalSeconds', d.T.integer)]),
    withHealthCheckIntervalSeconds(HealthCheckIntervalSeconds): {
      assert std.isNumber(HealthCheckIntervalSeconds) : 'HealthCheckIntervalSeconds must be a integer',
      Properties+::: { HealthCheckIntervalSeconds: HealthCheckIntervalSeconds },
    },
    '#withThresholdCount': d.fn('`withThresholdCount` ThresholdCount ', [d.arg('ThresholdCount', d.T.integer)]),
    withThresholdCount(ThresholdCount): {
      assert std.isNumber(ThresholdCount) : 'ThresholdCount must be a integer',
      Properties+::: { ThresholdCount: ThresholdCount },
    },
    '#withEndpointGroupArn': d.fn('`withEndpointGroupArn` EndpointGroupArn ', [d.arg('EndpointGroupArn', d.T.string)]),
    withEndpointGroupArn(EndpointGroupArn): {
      assert std.isString(EndpointGroupArn) : 'EndpointGroupArn must be a string',
      Properties+::: { EndpointGroupArn: EndpointGroupArn },
    },
    '#withPortOverrides': d.fn('`withPortOverrides` PortOverrides ', [d.arg('PortOverrides', d.T.array)]),
    withPortOverrides(PortOverrides): {
      assert std.isArray(PortOverrides) : 'PortOverrides must be a array',
      Properties+::: { PortOverrides: PortOverrides },
    },
  },
  Listener: {
    '#': d.pkg(
      name='Listener',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GlobalAccelerator.libsonnet',
      help='Resource Type definition for AWS::GlobalAccelerator::Listener',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GlobalAccelerator::Listener Resource
        * AcceleratorArn The Amazon Resource Name (ARN) of the accelerator.
        * PortRanges 
        * Protocol The protocol for the listener.
      |||,
      args=[
        d.arg('AcceleratorArn', 'd.T.string'),
        d.arg('PortRanges', 'd.T.array'),
        d.arg('Protocol', 'd.T.string'),
      ]
    ),
    new(
      AcceleratorArn,
      PortRanges,
      Protocol,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AcceleratorArn) : 'AcceleratorArn must be a string',
        AcceleratorArn: AcceleratorArn,
        assert std.isArray(PortRanges) : 'PortRanges must be a array',
        PortRanges: PortRanges,
        assert std.isString(Protocol) : 'Protocol must be a string',
        assert Protocol == 'TCP' || Protocol == 'UDP' : "Protocol must be either 'TCP' or 'UDP'",
        Protocol: Protocol,
      },
      DependsOn:: [],
      Type: 'AWS::GlobalAccelerator::Listener',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withListenerArn': d.fn('`withListenerArn` ListenerArn ', [d.arg('ListenerArn', d.T.string)]),
    withListenerArn(ListenerArn): {
      assert std.isString(ListenerArn) : 'ListenerArn must be a string',
      Properties+::: { ListenerArn: ListenerArn },
    },
    '#withClientAffinity': d.fn('`withClientAffinity` ClientAffinity ', [d.arg('ClientAffinity', d.T.string)]),
    withClientAffinity(ClientAffinity): {
      assert std.isString(ClientAffinity) : 'ClientAffinity must be a string',
      assert ClientAffinity == 'NONE' || ClientAffinity == 'SOURCE_IP' : "ClientAffinity must be either 'NONE' or 'SOURCE_IP'",
      Properties+::: { ClientAffinity: ClientAffinity },
    },
  },
}
