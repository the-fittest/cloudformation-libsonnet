local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Bridge: {
    '#': d.pkg(
      name='Bridge',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::Bridge',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::Bridge Resource
        * Name The name of the bridge.
        * PlacementArn The placement Amazon Resource Number (ARN) of the bridge.
        * Sources The sources on this bridge.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('PlacementArn', 'd.T.string'),
        d.arg('Sources', 'd.T.array'),
      ]
    ),
    new(
      Name,
      PlacementArn,
      Sources,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(PlacementArn) : 'PlacementArn must be a string',
        PlacementArn: PlacementArn,
        assert std.isArray(Sources) : 'Sources must be a array',
        Sources: Sources,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::Bridge',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBridgeArn': d.fn('`withBridgeArn` BridgeArn ', [d.arg('BridgeArn', d.T.string)]),
    withBridgeArn(BridgeArn): {
      assert std.isString(BridgeArn) : 'BridgeArn must be a string',
      Properties+::: { BridgeArn: BridgeArn },
    },
    '#withBridgeState': d.fn('`withBridgeState` BridgeState ', [d.arg('BridgeState', d.T.string)]),
    withBridgeState(BridgeState): {
      assert std.isString(BridgeState) : 'BridgeState must be a string',
      Properties+::: { BridgeState: BridgeState },
    },
    '#withSourceFailoverConfig': d.fn('`withSourceFailoverConfig` SourceFailoverConfig ', [d.arg('SourceFailoverConfig', d.T.object)]),
    withSourceFailoverConfig(SourceFailoverConfig): {
      assert std.isObject(SourceFailoverConfig) : 'SourceFailoverConfig must be a object',
      Properties+::: { SourceFailoverConfig: SourceFailoverConfig },
    },
    '#withOutputs': d.fn('`withOutputs` Outputs ', [d.arg('Outputs', d.T.array)]),
    withOutputs(Outputs): {
      assert std.isArray(Outputs) : 'Outputs must be a array',
      Properties+::: { Outputs: Outputs },
    },
    '#withIngressGatewayBridge': d.fn('`withIngressGatewayBridge` IngressGatewayBridge ', [d.arg('IngressGatewayBridge', d.T.object)]),
    withIngressGatewayBridge(IngressGatewayBridge): {
      assert std.isObject(IngressGatewayBridge) : 'IngressGatewayBridge must be a object',
      Properties+::: { IngressGatewayBridge: IngressGatewayBridge },
    },
    '#withEgressGatewayBridge': d.fn('`withEgressGatewayBridge` EgressGatewayBridge ', [d.arg('EgressGatewayBridge', d.T.object)]),
    withEgressGatewayBridge(EgressGatewayBridge): {
      assert std.isObject(EgressGatewayBridge) : 'EgressGatewayBridge must be a object',
      Properties+::: { EgressGatewayBridge: EgressGatewayBridge },
    },
  },
  BridgeOutput: {
    '#': d.pkg(
      name='BridgeOutput',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::BridgeOutput',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::BridgeOutput Resource
        * BridgeArn The Amazon Resource Number (ARN) of the bridge.
        * Name The network output name.
        * NetworkOutput The output of the bridge.
      |||,
      args=[
        d.arg('BridgeArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('NetworkOutput', 'd.T.object'),
      ]
    ),
    new(
      BridgeArn,
      Name,
      NetworkOutput,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BridgeArn) : 'BridgeArn must be a string',
        BridgeArn: BridgeArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(NetworkOutput) : 'NetworkOutput must be a object',
        NetworkOutput: NetworkOutput,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::BridgeOutput',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  BridgeSource: {
    '#': d.pkg(
      name='BridgeSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::BridgeSource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::BridgeSource Resource
        * Name The name of the source.
        * BridgeArn The Amazon Resource Number (ARN) of the bridge.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('BridgeArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      BridgeArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(BridgeArn) : 'BridgeArn must be a string',
        BridgeArn: BridgeArn,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::BridgeSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFlowSource': d.fn('`withFlowSource` FlowSource ', [d.arg('FlowSource', d.T.object)]),
    withFlowSource(FlowSource): {
      assert std.isObject(FlowSource) : 'FlowSource must be a object',
      Properties+::: { FlowSource: FlowSource },
    },
    '#withNetworkSource': d.fn('`withNetworkSource` NetworkSource ', [d.arg('NetworkSource', d.T.object)]),
    withNetworkSource(NetworkSource): {
      assert std.isObject(NetworkSource) : 'NetworkSource must be a object',
      Properties+::: { NetworkSource: NetworkSource },
    },
  },
  Flow: {
    '#': d.pkg(
      name='Flow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::Flow',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::Flow Resource
        * Name The name of the flow.
        * Source The source of the flow.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Source', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Source,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Source) : 'Source must be a object',
        Source: Source,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::Flow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFlowArn': d.fn('`withFlowArn` FlowArn ', [d.arg('FlowArn', d.T.string)]),
    withFlowArn(FlowArn): {
      assert std.isString(FlowArn) : 'FlowArn must be a string',
      Properties+::: { FlowArn: FlowArn },
    },
    '#withEgressIp': d.fn('`withEgressIp` EgressIp ', [d.arg('EgressIp', d.T.string)]),
    withEgressIp(EgressIp): {
      assert std.isString(EgressIp) : 'EgressIp must be a string',
      Properties+::: { EgressIp: EgressIp },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withFlowAvailabilityZone': d.fn('`withFlowAvailabilityZone` FlowAvailabilityZone ', [d.arg('FlowAvailabilityZone', d.T.string)]),
    withFlowAvailabilityZone(FlowAvailabilityZone): {
      assert std.isString(FlowAvailabilityZone) : 'FlowAvailabilityZone must be a string',
      Properties+::: { FlowAvailabilityZone: FlowAvailabilityZone },
    },
    '#withSourceFailoverConfig': d.fn('`withSourceFailoverConfig` SourceFailoverConfig ', [d.arg('SourceFailoverConfig', d.T.object)]),
    withSourceFailoverConfig(SourceFailoverConfig): {
      assert std.isObject(SourceFailoverConfig) : 'SourceFailoverConfig must be a object',
      Properties+::: { SourceFailoverConfig: SourceFailoverConfig },
    },
    '#withVpcInterfaces': d.fn('`withVpcInterfaces` VpcInterfaces ', [d.arg('VpcInterfaces', d.T.array)]),
    withVpcInterfaces(VpcInterfaces): {
      assert std.isArray(VpcInterfaces) : 'VpcInterfaces must be a array',
      Properties+::: { VpcInterfaces: VpcInterfaces },
    },
    '#withMediaStreams': d.fn('`withMediaStreams` MediaStreams ', [d.arg('MediaStreams', d.T.array)]),
    withMediaStreams(MediaStreams): {
      assert std.isArray(MediaStreams) : 'MediaStreams must be a array',
      Properties+::: { MediaStreams: MediaStreams },
    },
    '#withMaintenance': d.fn('`withMaintenance` Maintenance ', [d.arg('Maintenance', d.T.object)]),
    withMaintenance(Maintenance): {
      assert std.isObject(Maintenance) : 'Maintenance must be a object',
      Properties+::: { Maintenance: Maintenance },
    },
    '#withSourceMonitoringConfig': d.fn('`withSourceMonitoringConfig` SourceMonitoringConfig ', [d.arg('SourceMonitoringConfig', d.T.object)]),
    withSourceMonitoringConfig(SourceMonitoringConfig): {
      assert std.isObject(SourceMonitoringConfig) : 'SourceMonitoringConfig must be a object',
      Properties+::: { SourceMonitoringConfig: SourceMonitoringConfig },
    },
  },
  FlowEntitlement: {
    '#': d.pkg(
      name='FlowEntitlement',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::FlowEntitlement',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::FlowEntitlement Resource
        * FlowArn The ARN of the flow.
        * Name The name of the entitlement.
        * Subscribers The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source.
        * Description A description of the entitlement.
      |||,
      args=[
        d.arg('FlowArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Subscribers', 'd.T.array'),
        d.arg('Description', 'd.T.string'),
      ]
    ),
    new(
      FlowArn,
      Name,
      Subscribers,
      Description,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FlowArn) : 'FlowArn must be a string',
        FlowArn: FlowArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(Subscribers) : 'Subscribers must be a array',
        Subscribers: Subscribers,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::FlowEntitlement',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEntitlementArn': d.fn('`withEntitlementArn` EntitlementArn ', [d.arg('EntitlementArn', d.T.string)]),
    withEntitlementArn(EntitlementArn): {
      assert std.isString(EntitlementArn) : 'EntitlementArn must be a string',
      Properties+::: { EntitlementArn: EntitlementArn },
    },
    '#withDataTransferSubscriberFeePercent': d.fn('`withDataTransferSubscriberFeePercent` DataTransferSubscriberFeePercent ', [d.arg('DataTransferSubscriberFeePercent', d.T.integer)]),
    withDataTransferSubscriberFeePercent(DataTransferSubscriberFeePercent): {
      assert std.isNumber(DataTransferSubscriberFeePercent) : 'DataTransferSubscriberFeePercent must be a integer',
      Properties+::: { DataTransferSubscriberFeePercent: DataTransferSubscriberFeePercent },
    },
    '#withEncryption': d.fn('`withEncryption` Encryption ', [d.arg('Encryption', d.T.object)]),
    withEncryption(Encryption): {
      assert std.isObject(Encryption) : 'Encryption must be a object',
      Properties+::: { Encryption: Encryption },
    },
    '#withEntitlementStatus': d.fn('`withEntitlementStatus` EntitlementStatus ', [d.arg('EntitlementStatus', d.T.string)]),
    withEntitlementStatus(EntitlementStatus): {
      assert std.isString(EntitlementStatus) : 'EntitlementStatus must be a string',
      assert EntitlementStatus == 'ENABLED' || EntitlementStatus == 'DISABLED' : "EntitlementStatus must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { EntitlementStatus: EntitlementStatus },
    },
  },
  FlowOutput: {
    '#': d.pkg(
      name='FlowOutput',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::FlowOutput',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::FlowOutput Resource
        * FlowArn The Amazon Resource Name (ARN), a unique identifier for any AWS resource, of the flow.
        * Protocol The protocol that is used by the source or output.
      |||,
      args=[
        d.arg('FlowArn', 'd.T.string'),
        d.arg('Protocol', 'd.T.string'),
      ]
    ),
    new(
      FlowArn,
      Protocol,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FlowArn) : 'FlowArn must be a string',
        FlowArn: FlowArn,
        assert std.isString(Protocol) : 'Protocol must be a string',
        assert Protocol == 'zixi-push' || Protocol == 'rtp-fec' || Protocol == 'rtp' || Protocol == 'zixi-pull' || Protocol == 'rist' || Protocol == 'fujitsu-qos' || Protocol == 'srt-listener' || Protocol == 'srt-caller' || Protocol == 'st2110-jpegxs' || Protocol == 'cdi' : "Protocol must be either 'zixi-push' or 'rtp-fec' or 'rtp' or 'zixi-pull' or 'rist' or 'fujitsu-qos' or 'srt-listener' or 'srt-caller' or 'st2110-jpegxs' or 'cdi'",
        Protocol: Protocol,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::FlowOutput',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOutputArn': d.fn('`withOutputArn` OutputArn ', [d.arg('OutputArn', d.T.string)]),
    withOutputArn(OutputArn): {
      assert std.isString(OutputArn) : 'OutputArn must be a string',
      Properties+::: { OutputArn: OutputArn },
    },
    '#withCidrAllowList': d.fn('`withCidrAllowList` CidrAllowList ', [d.arg('CidrAllowList', d.T.array)]),
    withCidrAllowList(CidrAllowList): {
      assert std.isArray(CidrAllowList) : 'CidrAllowList must be a array',
      Properties+::: { CidrAllowList: CidrAllowList },
    },
    '#withEncryption': d.fn('`withEncryption` Encryption ', [d.arg('Encryption', d.T.object)]),
    withEncryption(Encryption): {
      assert std.isObject(Encryption) : 'Encryption must be a object',
      Properties+::: { Encryption: Encryption },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDestination': d.fn('`withDestination` Destination ', [d.arg('Destination', d.T.string)]),
    withDestination(Destination): {
      assert std.isString(Destination) : 'Destination must be a string',
      Properties+::: { Destination: Destination },
    },
    '#withMaxLatency': d.fn('`withMaxLatency` MaxLatency ', [d.arg('MaxLatency', d.T.integer)]),
    withMaxLatency(MaxLatency): {
      assert std.isNumber(MaxLatency) : 'MaxLatency must be a integer',
      Properties+::: { MaxLatency: MaxLatency },
    },
    '#withMinLatency': d.fn('`withMinLatency` MinLatency ', [d.arg('MinLatency', d.T.integer)]),
    withMinLatency(MinLatency): {
      assert std.isNumber(MinLatency) : 'MinLatency must be a integer',
      Properties+::: { MinLatency: MinLatency },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withRemoteId': d.fn('`withRemoteId` RemoteId ', [d.arg('RemoteId', d.T.string)]),
    withRemoteId(RemoteId): {
      assert std.isString(RemoteId) : 'RemoteId must be a string',
      Properties+::: { RemoteId: RemoteId },
    },
    '#withSmoothingLatency': d.fn('`withSmoothingLatency` SmoothingLatency ', [d.arg('SmoothingLatency', d.T.integer)]),
    withSmoothingLatency(SmoothingLatency): {
      assert std.isNumber(SmoothingLatency) : 'SmoothingLatency must be a integer',
      Properties+::: { SmoothingLatency: SmoothingLatency },
    },
    '#withStreamId': d.fn('`withStreamId` StreamId ', [d.arg('StreamId', d.T.string)]),
    withStreamId(StreamId): {
      assert std.isString(StreamId) : 'StreamId must be a string',
      Properties+::: { StreamId: StreamId },
    },
    '#withVpcInterfaceAttachment': d.fn('`withVpcInterfaceAttachment` VpcInterfaceAttachment ', [d.arg('VpcInterfaceAttachment', d.T.object)]),
    withVpcInterfaceAttachment(VpcInterfaceAttachment): {
      assert std.isObject(VpcInterfaceAttachment) : 'VpcInterfaceAttachment must be a object',
      Properties+::: { VpcInterfaceAttachment: VpcInterfaceAttachment },
    },
    '#withMediaStreamOutputConfigurations': d.fn('`withMediaStreamOutputConfigurations` MediaStreamOutputConfigurations ', [d.arg('MediaStreamOutputConfigurations', d.T.array)]),
    withMediaStreamOutputConfigurations(MediaStreamOutputConfigurations): {
      assert std.isArray(MediaStreamOutputConfigurations) : 'MediaStreamOutputConfigurations must be a array',
      Properties+::: { MediaStreamOutputConfigurations: MediaStreamOutputConfigurations },
    },
    '#withOutputStatus': d.fn('`withOutputStatus` OutputStatus ', [d.arg('OutputStatus', d.T.string)]),
    withOutputStatus(OutputStatus): {
      assert std.isString(OutputStatus) : 'OutputStatus must be a string',
      assert OutputStatus == 'ENABLED' || OutputStatus == 'DISABLED' : "OutputStatus must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { OutputStatus: OutputStatus },
    },
  },
  FlowSource: {
    '#': d.pkg(
      name='FlowSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::FlowSource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::FlowSource Resource
        * Name The name of the source.
        * Description A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Description,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::FlowSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFlowArn': d.fn('`withFlowArn` FlowArn ', [d.arg('FlowArn', d.T.string)]),
    withFlowArn(FlowArn): {
      assert std.isString(FlowArn) : 'FlowArn must be a string',
      Properties+::: { FlowArn: FlowArn },
    },
    '#withSourceArn': d.fn('`withSourceArn` SourceArn ', [d.arg('SourceArn', d.T.string)]),
    withSourceArn(SourceArn): {
      assert std.isString(SourceArn) : 'SourceArn must be a string',
      Properties+::: { SourceArn: SourceArn },
    },
    '#withDecryption': d.fn('`withDecryption` Decryption ', [d.arg('Decryption', d.T.object)]),
    withDecryption(Decryption): {
      assert std.isObject(Decryption) : 'Decryption must be a object',
      Properties+::: { Decryption: Decryption },
    },
    '#withEntitlementArn': d.fn('`withEntitlementArn` EntitlementArn ', [d.arg('EntitlementArn', d.T.string)]),
    withEntitlementArn(EntitlementArn): {
      assert std.isString(EntitlementArn) : 'EntitlementArn must be a string',
      Properties+::: { EntitlementArn: EntitlementArn },
    },
    '#withGatewayBridgeSource': d.fn('`withGatewayBridgeSource` GatewayBridgeSource ', [d.arg('GatewayBridgeSource', d.T.object)]),
    withGatewayBridgeSource(GatewayBridgeSource): {
      assert std.isObject(GatewayBridgeSource) : 'GatewayBridgeSource must be a object',
      Properties+::: { GatewayBridgeSource: GatewayBridgeSource },
    },
    '#withIngestIp': d.fn('`withIngestIp` IngestIp ', [d.arg('IngestIp', d.T.string)]),
    withIngestIp(IngestIp): {
      assert std.isString(IngestIp) : 'IngestIp must be a string',
      Properties+::: { IngestIp: IngestIp },
    },
    '#withIngestPort': d.fn('`withIngestPort` IngestPort ', [d.arg('IngestPort', d.T.integer)]),
    withIngestPort(IngestPort): {
      assert std.isNumber(IngestPort) : 'IngestPort must be a integer',
      Properties+::: { IngestPort: IngestPort },
    },
    '#withMaxBitrate': d.fn('`withMaxBitrate` MaxBitrate ', [d.arg('MaxBitrate', d.T.integer)]),
    withMaxBitrate(MaxBitrate): {
      assert std.isNumber(MaxBitrate) : 'MaxBitrate must be a integer',
      Properties+::: { MaxBitrate: MaxBitrate },
    },
    '#withMaxLatency': d.fn('`withMaxLatency` MaxLatency ', [d.arg('MaxLatency', d.T.integer)]),
    withMaxLatency(MaxLatency): {
      assert std.isNumber(MaxLatency) : 'MaxLatency must be a integer',
      Properties+::: { MaxLatency: MaxLatency },
    },
    '#withMinLatency': d.fn('`withMinLatency` MinLatency ', [d.arg('MinLatency', d.T.integer)]),
    withMinLatency(MinLatency): {
      assert std.isNumber(MinLatency) : 'MinLatency must be a integer',
      Properties+::: { MinLatency: MinLatency },
    },
    '#withProtocol': d.fn('`withProtocol` Protocol ', [d.arg('Protocol', d.T.string)]),
    withProtocol(Protocol): {
      assert std.isString(Protocol) : 'Protocol must be a string',
      assert Protocol == 'zixi-push' || Protocol == 'rtp-fec' || Protocol == 'rtp' || Protocol == 'rist' || Protocol == 'srt-listener' || Protocol == 'srt-caller' : "Protocol must be either 'zixi-push' or 'rtp-fec' or 'rtp' or 'rist' or 'srt-listener' or 'srt-caller'",
      Properties+::: { Protocol: Protocol },
    },
    '#withSenderIpAddress': d.fn('`withSenderIpAddress` SenderIpAddress ', [d.arg('SenderIpAddress', d.T.string)]),
    withSenderIpAddress(SenderIpAddress): {
      assert std.isString(SenderIpAddress) : 'SenderIpAddress must be a string',
      Properties+::: { SenderIpAddress: SenderIpAddress },
    },
    '#withSenderControlPort': d.fn('`withSenderControlPort` SenderControlPort ', [d.arg('SenderControlPort', d.T.integer)]),
    withSenderControlPort(SenderControlPort): {
      assert std.isNumber(SenderControlPort) : 'SenderControlPort must be a integer',
      Properties+::: { SenderControlPort: SenderControlPort },
    },
    '#withStreamId': d.fn('`withStreamId` StreamId ', [d.arg('StreamId', d.T.string)]),
    withStreamId(StreamId): {
      assert std.isString(StreamId) : 'StreamId must be a string',
      Properties+::: { StreamId: StreamId },
    },
    '#withSourceIngestPort': d.fn('`withSourceIngestPort` SourceIngestPort ', [d.arg('SourceIngestPort', d.T.string)]),
    withSourceIngestPort(SourceIngestPort): {
      assert std.isString(SourceIngestPort) : 'SourceIngestPort must be a string',
      Properties+::: { SourceIngestPort: SourceIngestPort },
    },
    '#withSourceListenerAddress': d.fn('`withSourceListenerAddress` SourceListenerAddress ', [d.arg('SourceListenerAddress', d.T.string)]),
    withSourceListenerAddress(SourceListenerAddress): {
      assert std.isString(SourceListenerAddress) : 'SourceListenerAddress must be a string',
      Properties+::: { SourceListenerAddress: SourceListenerAddress },
    },
    '#withSourceListenerPort': d.fn('`withSourceListenerPort` SourceListenerPort ', [d.arg('SourceListenerPort', d.T.integer)]),
    withSourceListenerPort(SourceListenerPort): {
      assert std.isNumber(SourceListenerPort) : 'SourceListenerPort must be a integer',
      Properties+::: { SourceListenerPort: SourceListenerPort },
    },
    '#withVpcInterfaceName': d.fn('`withVpcInterfaceName` VpcInterfaceName ', [d.arg('VpcInterfaceName', d.T.string)]),
    withVpcInterfaceName(VpcInterfaceName): {
      assert std.isString(VpcInterfaceName) : 'VpcInterfaceName must be a string',
      Properties+::: { VpcInterfaceName: VpcInterfaceName },
    },
    '#withWhitelistCidr': d.fn('`withWhitelistCidr` WhitelistCidr ', [d.arg('WhitelistCidr', d.T.string)]),
    withWhitelistCidr(WhitelistCidr): {
      assert std.isString(WhitelistCidr) : 'WhitelistCidr must be a string',
      Properties+::: { WhitelistCidr: WhitelistCidr },
    },
  },
  FlowVpcInterface: {
    '#': d.pkg(
      name='FlowVpcInterface',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::FlowVpcInterface',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::FlowVpcInterface Resource
        * FlowArn The Amazon Resource Name (ARN), a unique identifier for any AWS resource, of the flow.
        * Name Immutable and has to be a unique against other VpcInterfaces in this Flow.
        * RoleArn Role Arn MediaConnect can assume to create ENIs in customers account.
        * SubnetId Subnet must be in the AZ of the Flow
        * SecurityGroupIds Security Group IDs to be used on ENI.
      |||,
      args=[
        d.arg('FlowArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('SubnetId', 'd.T.string'),
        d.arg('SecurityGroupIds', 'd.T.array'),
      ]
    ),
    new(
      FlowArn,
      Name,
      RoleArn,
      SubnetId,
      SecurityGroupIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FlowArn) : 'FlowArn must be a string',
        FlowArn: FlowArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
        assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
        SecurityGroupIds: SecurityGroupIds,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::FlowVpcInterface',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withNetworkInterfaceIds': d.fn('`withNetworkInterfaceIds` NetworkInterfaceIds ', [d.arg('NetworkInterfaceIds', d.T.array)]),
    withNetworkInterfaceIds(NetworkInterfaceIds): {
      assert std.isArray(NetworkInterfaceIds) : 'NetworkInterfaceIds must be a array',
      Properties+::: { NetworkInterfaceIds: NetworkInterfaceIds },
    },
  },
  Gateway: {
    '#': d.pkg(
      name='Gateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaConnect.libsonnet',
      help='Resource schema for AWS::MediaConnect::Gateway',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaConnect::Gateway Resource
        * Name The name of the gateway. This name can not be modified after the gateway is created.
        * EgressCidrBlocks The range of IP addresses that contribute content or initiate output requests for flows communicating with this gateway. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
        * Networks The list of networks in the gateway.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('EgressCidrBlocks', 'd.T.array'),
        d.arg('Networks', 'd.T.array'),
      ]
    ),
    new(
      Name,
      EgressCidrBlocks,
      Networks,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(EgressCidrBlocks) : 'EgressCidrBlocks must be a array',
        EgressCidrBlocks: EgressCidrBlocks,
        assert std.isArray(Networks) : 'Networks must be a array',
        Networks: Networks,
      },
      DependsOn:: [],
      Type: 'AWS::MediaConnect::Gateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withGatewayArn': d.fn('`withGatewayArn` GatewayArn ', [d.arg('GatewayArn', d.T.string)]),
    withGatewayArn(GatewayArn): {
      assert std.isString(GatewayArn) : 'GatewayArn must be a string',
      Properties+::: { GatewayArn: GatewayArn },
    },
    '#withGatewayState': d.fn('`withGatewayState` GatewayState ', [d.arg('GatewayState', d.T.string)]),
    withGatewayState(GatewayState): {
      assert std.isString(GatewayState) : 'GatewayState must be a string',
      assert GatewayState == 'CREATING' || GatewayState == 'ACTIVE' || GatewayState == 'UPDATING' || GatewayState == 'ERROR' || GatewayState == 'DELETING' || GatewayState == 'DELETED' : "GatewayState must be either 'CREATING' or 'ACTIVE' or 'UPDATING' or 'ERROR' or 'DELETING' or 'DELETED'",
      Properties+::: { GatewayState: GatewayState },
    },
  },
}
