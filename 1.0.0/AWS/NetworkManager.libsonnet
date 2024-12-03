local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ConnectAttachment: {
    '#': d.pkg(
      name='ConnectAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='AWS::NetworkManager::ConnectAttachment Resource Type Definition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::ConnectAttachment Resource
        * CoreNetworkId ID of the CoreNetwork that the attachment will be attached to.
        * EdgeLocation Edge location of the attachment.
        * TransportAttachmentId Id of transport attachment
        * Options Protocol options for connect attachment
      |||,
      args=[
        d.arg('CoreNetworkId', 'd.T.string'),
        d.arg('EdgeLocation', 'd.T.string'),
        d.arg('TransportAttachmentId', 'd.T.string'),
        d.arg('Options', 'd.T.object'),
      ]
    ),
    new(
      CoreNetworkId,
      EdgeLocation,
      TransportAttachmentId,
      Options,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
        CoreNetworkId: CoreNetworkId,
        assert std.isString(EdgeLocation) : 'EdgeLocation must be a string',
        EdgeLocation: EdgeLocation,
        assert std.isString(TransportAttachmentId) : 'TransportAttachmentId must be a string',
        TransportAttachmentId: TransportAttachmentId,
        assert std.isObject(Options) : 'Options must be a object',
        Options: Options,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::ConnectAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCoreNetworkArn': d.fn('`withCoreNetworkArn` CoreNetworkArn ', [d.arg('CoreNetworkArn', d.T.string)]),
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: { CoreNetworkArn: CoreNetworkArn },
    },
    '#withAttachmentId': d.fn('`withAttachmentId` AttachmentId ', [d.arg('AttachmentId', d.T.string)]),
    withAttachmentId(AttachmentId): {
      assert std.isString(AttachmentId) : 'AttachmentId must be a string',
      Properties+::: { AttachmentId: AttachmentId },
    },
    '#withOwnerAccountId': d.fn('`withOwnerAccountId` OwnerAccountId ', [d.arg('OwnerAccountId', d.T.string)]),
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: { OwnerAccountId: OwnerAccountId },
    },
    '#withAttachmentType': d.fn('`withAttachmentType` AttachmentType ', [d.arg('AttachmentType', d.T.string)]),
    withAttachmentType(AttachmentType): {
      assert std.isString(AttachmentType) : 'AttachmentType must be a string',
      Properties+::: { AttachmentType: AttachmentType },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
    '#withAttachmentPolicyRuleNumber': d.fn('`withAttachmentPolicyRuleNumber` AttachmentPolicyRuleNumber ', [d.arg('AttachmentPolicyRuleNumber', d.T.integer)]),
    withAttachmentPolicyRuleNumber(AttachmentPolicyRuleNumber): {
      assert std.isNumber(AttachmentPolicyRuleNumber) : 'AttachmentPolicyRuleNumber must be a integer',
      Properties+::: { AttachmentPolicyRuleNumber: AttachmentPolicyRuleNumber },
    },
    '#withSegmentName': d.fn('`withSegmentName` SegmentName ', [d.arg('SegmentName', d.T.string)]),
    withSegmentName(SegmentName): {
      assert std.isString(SegmentName) : 'SegmentName must be a string',
      Properties+::: { SegmentName: SegmentName },
    },
    '#withProposedSegmentChange': d.fn('`withProposedSegmentChange` ProposedSegmentChange ', [d.arg('ProposedSegmentChange', d.T.object)]),
    withProposedSegmentChange(ProposedSegmentChange): {
      assert std.isObject(ProposedSegmentChange) : 'ProposedSegmentChange must be a object',
      Properties+::: { ProposedSegmentChange: ProposedSegmentChange },
    },
    '#withNetworkFunctionGroupName': d.fn('`withNetworkFunctionGroupName` NetworkFunctionGroupName ', [d.arg('NetworkFunctionGroupName', d.T.string)]),
    withNetworkFunctionGroupName(NetworkFunctionGroupName): {
      assert std.isString(NetworkFunctionGroupName) : 'NetworkFunctionGroupName must be a string',
      Properties+::: { NetworkFunctionGroupName: NetworkFunctionGroupName },
    },
    '#withProposedNetworkFunctionGroupChange': d.fn('`withProposedNetworkFunctionGroupChange` ProposedNetworkFunctionGroupChange ', [d.arg('ProposedNetworkFunctionGroupChange', d.T.object)]),
    withProposedNetworkFunctionGroupChange(ProposedNetworkFunctionGroupChange): {
      assert std.isObject(ProposedNetworkFunctionGroupChange) : 'ProposedNetworkFunctionGroupChange must be a object',
      Properties+::: { ProposedNetworkFunctionGroupChange: ProposedNetworkFunctionGroupChange },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
  },
  ConnectPeer: {
    '#': d.pkg(
      name='ConnectPeer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='AWS::NetworkManager::ConnectPeer Resource Type Definition.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::ConnectPeer Resource
        * ConnectAttachmentId The ID of the attachment to connect.
        * PeerAddress The IP address of the Connect peer.
      |||,
      args=[
        d.arg('ConnectAttachmentId', 'd.T.string'),
        d.arg('PeerAddress', 'd.T.string'),
      ]
    ),
    new(
      ConnectAttachmentId,
      PeerAddress,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectAttachmentId) : 'ConnectAttachmentId must be a string',
        ConnectAttachmentId: ConnectAttachmentId,
        assert std.isString(PeerAddress) : 'PeerAddress must be a string',
        PeerAddress: PeerAddress,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::ConnectPeer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCoreNetworkAddress': d.fn('`withCoreNetworkAddress` CoreNetworkAddress ', [d.arg('CoreNetworkAddress', d.T.string)]),
    withCoreNetworkAddress(CoreNetworkAddress): {
      assert std.isString(CoreNetworkAddress) : 'CoreNetworkAddress must be a string',
      Properties+::: { CoreNetworkAddress: CoreNetworkAddress },
    },
    '#withBgpOptions': d.fn('`withBgpOptions` BgpOptions ', [d.arg('BgpOptions', d.T.object)]),
    withBgpOptions(BgpOptions): {
      assert std.isObject(BgpOptions) : 'BgpOptions must be a object',
      Properties+::: { BgpOptions: BgpOptions },
    },
    '#withInsideCidrBlocks': d.fn('`withInsideCidrBlocks` InsideCidrBlocks ', [d.arg('InsideCidrBlocks', d.T.array)]),
    withInsideCidrBlocks(InsideCidrBlocks): {
      assert std.isArray(InsideCidrBlocks) : 'InsideCidrBlocks must be a array',
      Properties+::: { InsideCidrBlocks: InsideCidrBlocks },
    },
    '#withCoreNetworkId': d.fn('`withCoreNetworkId` CoreNetworkId ', [d.arg('CoreNetworkId', d.T.string)]),
    withCoreNetworkId(CoreNetworkId): {
      assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
      Properties+::: { CoreNetworkId: CoreNetworkId },
    },
    '#withConnectPeerId': d.fn('`withConnectPeerId` ConnectPeerId ', [d.arg('ConnectPeerId', d.T.string)]),
    withConnectPeerId(ConnectPeerId): {
      assert std.isString(ConnectPeerId) : 'ConnectPeerId must be a string',
      Properties+::: { ConnectPeerId: ConnectPeerId },
    },
    '#withEdgeLocation': d.fn('`withEdgeLocation` EdgeLocation ', [d.arg('EdgeLocation', d.T.string)]),
    withEdgeLocation(EdgeLocation): {
      assert std.isString(EdgeLocation) : 'EdgeLocation must be a string',
      Properties+::: { EdgeLocation: EdgeLocation },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration', d.T.object)]),
    withConfiguration(Configuration): {
      assert std.isObject(Configuration) : 'Configuration must be a object',
      Properties+::: { Configuration: Configuration },
    },
    '#withSubnetArn': d.fn('`withSubnetArn` SubnetArn ', [d.arg('SubnetArn', d.T.string)]),
    withSubnetArn(SubnetArn): {
      assert std.isString(SubnetArn) : 'SubnetArn must be a string',
      Properties+::: { SubnetArn: SubnetArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  CoreNetwork: {
    '#': d.pkg(
      name='CoreNetwork',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='AWS::NetworkManager::CoreNetwork Resource Type Definition.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::CoreNetwork Resource
        * GlobalNetworkId The ID of the global network that your core network is a part of.
      |||,
      args=[
        d.arg('GlobalNetworkId', 'd.T.string'),
      ]
    ),
    new(
      GlobalNetworkId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
        GlobalNetworkId: GlobalNetworkId,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::CoreNetwork',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCoreNetworkId': d.fn('`withCoreNetworkId` CoreNetworkId ', [d.arg('CoreNetworkId', d.T.string)]),
    withCoreNetworkId(CoreNetworkId): {
      assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
      Properties+::: { CoreNetworkId: CoreNetworkId },
    },
    '#withCoreNetworkArn': d.fn('`withCoreNetworkArn` CoreNetworkArn ', [d.arg('CoreNetworkArn', d.T.string)]),
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: { CoreNetworkArn: CoreNetworkArn },
    },
    '#withPolicyDocument': d.fn('`withPolicyDocument` PolicyDocument ', [d.arg('PolicyDocument', d.T.object)]),
    withPolicyDocument(PolicyDocument): {
      assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
      Properties+::: { PolicyDocument: PolicyDocument },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withSegments': d.fn('`withSegments` Segments ', [d.arg('Segments', d.T.array)]),
    withSegments(Segments): {
      assert std.isArray(Segments) : 'Segments must be a array',
      Properties+::: { Segments: Segments },
    },
    '#withNetworkFunctionGroups': d.fn('`withNetworkFunctionGroups` NetworkFunctionGroups ', [d.arg('NetworkFunctionGroups', d.T.array)]),
    withNetworkFunctionGroups(NetworkFunctionGroups): {
      assert std.isArray(NetworkFunctionGroups) : 'NetworkFunctionGroups must be a array',
      Properties+::: { NetworkFunctionGroups: NetworkFunctionGroups },
    },
    '#withEdges': d.fn('`withEdges` Edges ', [d.arg('Edges', d.T.array)]),
    withEdges(Edges): {
      assert std.isArray(Edges) : 'Edges must be a array',
      Properties+::: { Edges: Edges },
    },
    '#withOwnerAccount': d.fn('`withOwnerAccount` OwnerAccount ', [d.arg('OwnerAccount', d.T.string)]),
    withOwnerAccount(OwnerAccount): {
      assert std.isString(OwnerAccount) : 'OwnerAccount must be a string',
      Properties+::: { OwnerAccount: OwnerAccount },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  CustomerGatewayAssociation: {
    '#': d.pkg(
      name='CustomerGatewayAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='The AWS::NetworkManager::CustomerGatewayAssociation type associates a customer gateway with a device and optionally, with a link.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::CustomerGatewayAssociation Resource
        * GlobalNetworkId The ID of the global network.
        * CustomerGatewayArn The Amazon Resource Name (ARN) of the customer gateway.
        * DeviceId The ID of the device
      |||,
      args=[
        d.arg('GlobalNetworkId', 'd.T.string'),
        d.arg('CustomerGatewayArn', 'd.T.string'),
        d.arg('DeviceId', 'd.T.string'),
      ]
    ),
    new(
      GlobalNetworkId,
      CustomerGatewayArn,
      DeviceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
        GlobalNetworkId: GlobalNetworkId,
        assert std.isString(CustomerGatewayArn) : 'CustomerGatewayArn must be a string',
        CustomerGatewayArn: CustomerGatewayArn,
        assert std.isString(DeviceId) : 'DeviceId must be a string',
        DeviceId: DeviceId,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::CustomerGatewayAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLinkId': d.fn('`withLinkId` LinkId ', [d.arg('LinkId', d.T.string)]),
    withLinkId(LinkId): {
      assert std.isString(LinkId) : 'LinkId must be a string',
      Properties+::: { LinkId: LinkId },
    },
  },
  Device: {
    '#': d.pkg(
      name='Device',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='The AWS::NetworkManager::Device type describes a device.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::Device Resource
        * GlobalNetworkId The ID of the global network.
      |||,
      args=[
        d.arg('GlobalNetworkId', 'd.T.string'),
      ]
    ),
    new(
      GlobalNetworkId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
        GlobalNetworkId: GlobalNetworkId,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::Device',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeviceArn': d.fn('`withDeviceArn` DeviceArn ', [d.arg('DeviceArn', d.T.string)]),
    withDeviceArn(DeviceArn): {
      assert std.isString(DeviceArn) : 'DeviceArn must be a string',
      Properties+::: { DeviceArn: DeviceArn },
    },
    '#withDeviceId': d.fn('`withDeviceId` DeviceId ', [d.arg('DeviceId', d.T.string)]),
    withDeviceId(DeviceId): {
      assert std.isString(DeviceId) : 'DeviceId must be a string',
      Properties+::: { DeviceId: DeviceId },
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
    '#withAWSLocation': d.fn('`withAWSLocation` AWSLocation ', [d.arg('AWSLocation', d.T.object)]),
    withAWSLocation(AWSLocation): {
      assert std.isObject(AWSLocation) : 'AWSLocation must be a object',
      Properties+::: { AWSLocation: AWSLocation },
    },
    '#withLocation': d.fn('`withLocation` Location ', [d.arg('Location', d.T.object)]),
    withLocation(Location): {
      assert std.isObject(Location) : 'Location must be a object',
      Properties+::: { Location: Location },
    },
    '#withModel': d.fn('`withModel` Model ', [d.arg('Model', d.T.string)]),
    withModel(Model): {
      assert std.isString(Model) : 'Model must be a string',
      Properties+::: { Model: Model },
    },
    '#withSerialNumber': d.fn('`withSerialNumber` SerialNumber ', [d.arg('SerialNumber', d.T.string)]),
    withSerialNumber(SerialNumber): {
      assert std.isString(SerialNumber) : 'SerialNumber must be a string',
      Properties+::: { SerialNumber: SerialNumber },
    },
    '#withSiteId': d.fn('`withSiteId` SiteId ', [d.arg('SiteId', d.T.string)]),
    withSiteId(SiteId): {
      assert std.isString(SiteId) : 'SiteId must be a string',
      Properties+::: { SiteId: SiteId },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withVendor': d.fn('`withVendor` Vendor ', [d.arg('Vendor', d.T.string)]),
    withVendor(Vendor): {
      assert std.isString(Vendor) : 'Vendor must be a string',
      Properties+::: { Vendor: Vendor },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
  },
  GlobalNetwork: {
    '#': d.pkg(
      name='GlobalNetwork',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='The AWS::NetworkManager::GlobalNetwork type specifies a global network of the users account',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::GlobalNetwork Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::NetworkManager::GlobalNetwork',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
  },
  Link: {
    '#': d.pkg(
      name='Link',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='The AWS::NetworkManager::Link type describes a link.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::Link Resource
        * GlobalNetworkId The ID of the global network.
        * SiteId The ID of the site
        * Bandwidth The Bandwidth for the link.
      |||,
      args=[
        d.arg('GlobalNetworkId', 'd.T.string'),
        d.arg('SiteId', 'd.T.string'),
        d.arg('Bandwidth', 'd.T.object'),
      ]
    ),
    new(
      GlobalNetworkId,
      SiteId,
      Bandwidth,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
        GlobalNetworkId: GlobalNetworkId,
        assert std.isString(SiteId) : 'SiteId must be a string',
        SiteId: SiteId,
        assert std.isObject(Bandwidth) : 'Bandwidth must be a object',
        Bandwidth: Bandwidth,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::Link',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLinkArn': d.fn('`withLinkArn` LinkArn ', [d.arg('LinkArn', d.T.string)]),
    withLinkArn(LinkArn): {
      assert std.isString(LinkArn) : 'LinkArn must be a string',
      Properties+::: { LinkArn: LinkArn },
    },
    '#withLinkId': d.fn('`withLinkId` LinkId ', [d.arg('LinkId', d.T.string)]),
    withLinkId(LinkId): {
      assert std.isString(LinkId) : 'LinkId must be a string',
      Properties+::: { LinkId: LinkId },
    },
    '#withProvider': d.fn('`withProvider` Provider ', [d.arg('Provider', d.T.string)]),
    withProvider(Provider): {
      assert std.isString(Provider) : 'Provider must be a string',
      Properties+::: { Provider: Provider },
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
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
  },
  LinkAssociation: {
    '#': d.pkg(
      name='LinkAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='The AWS::NetworkManager::LinkAssociation type associates a link to a device. The device and link must be in the same global network and the same site.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::LinkAssociation Resource
        * GlobalNetworkId The ID of the global network.
        * DeviceId The ID of the device
        * LinkId The ID of the link
      |||,
      args=[
        d.arg('GlobalNetworkId', 'd.T.string'),
        d.arg('DeviceId', 'd.T.string'),
        d.arg('LinkId', 'd.T.string'),
      ]
    ),
    new(
      GlobalNetworkId,
      DeviceId,
      LinkId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
        GlobalNetworkId: GlobalNetworkId,
        assert std.isString(DeviceId) : 'DeviceId must be a string',
        DeviceId: DeviceId,
        assert std.isString(LinkId) : 'LinkId must be a string',
        LinkId: LinkId,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::LinkAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Site: {
    '#': d.pkg(
      name='Site',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='The AWS::NetworkManager::Site type describes a site.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::Site Resource
        * GlobalNetworkId The ID of the global network.
      |||,
      args=[
        d.arg('GlobalNetworkId', 'd.T.string'),
      ]
    ),
    new(
      GlobalNetworkId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
        GlobalNetworkId: GlobalNetworkId,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::Site',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSiteArn': d.fn('`withSiteArn` SiteArn ', [d.arg('SiteArn', d.T.string)]),
    withSiteArn(SiteArn): {
      assert std.isString(SiteArn) : 'SiteArn must be a string',
      Properties+::: { SiteArn: SiteArn },
    },
    '#withSiteId': d.fn('`withSiteId` SiteId ', [d.arg('SiteId', d.T.string)]),
    withSiteId(SiteId): {
      assert std.isString(SiteId) : 'SiteId must be a string',
      Properties+::: { SiteId: SiteId },
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
    '#withLocation': d.fn('`withLocation` Location ', [d.arg('Location', d.T.object)]),
    withLocation(Location): {
      assert std.isObject(Location) : 'Location must be a object',
      Properties+::: { Location: Location },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
  },
  SiteToSiteVpnAttachment: {
    '#': d.pkg(
      name='SiteToSiteVpnAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='AWS::NetworkManager::SiteToSiteVpnAttachment Resource Type definition.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::SiteToSiteVpnAttachment Resource
        * CoreNetworkId The ID of a core network where youre creating a site-to-site VPN attachment.
        * VpnConnectionArn The ARN of the site-to-site VPN attachment.
      |||,
      args=[
        d.arg('CoreNetworkId', 'd.T.string'),
        d.arg('VpnConnectionArn', 'd.T.string'),
      ]
    ),
    new(
      CoreNetworkId,
      VpnConnectionArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
        CoreNetworkId: CoreNetworkId,
        assert std.isString(VpnConnectionArn) : 'VpnConnectionArn must be a string',
        VpnConnectionArn: VpnConnectionArn,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::SiteToSiteVpnAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCoreNetworkArn': d.fn('`withCoreNetworkArn` CoreNetworkArn ', [d.arg('CoreNetworkArn', d.T.string)]),
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: { CoreNetworkArn: CoreNetworkArn },
    },
    '#withAttachmentId': d.fn('`withAttachmentId` AttachmentId ', [d.arg('AttachmentId', d.T.string)]),
    withAttachmentId(AttachmentId): {
      assert std.isString(AttachmentId) : 'AttachmentId must be a string',
      Properties+::: { AttachmentId: AttachmentId },
    },
    '#withOwnerAccountId': d.fn('`withOwnerAccountId` OwnerAccountId ', [d.arg('OwnerAccountId', d.T.string)]),
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: { OwnerAccountId: OwnerAccountId },
    },
    '#withAttachmentType': d.fn('`withAttachmentType` AttachmentType ', [d.arg('AttachmentType', d.T.string)]),
    withAttachmentType(AttachmentType): {
      assert std.isString(AttachmentType) : 'AttachmentType must be a string',
      Properties+::: { AttachmentType: AttachmentType },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withEdgeLocation': d.fn('`withEdgeLocation` EdgeLocation ', [d.arg('EdgeLocation', d.T.string)]),
    withEdgeLocation(EdgeLocation): {
      assert std.isString(EdgeLocation) : 'EdgeLocation must be a string',
      Properties+::: { EdgeLocation: EdgeLocation },
    },
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
    '#withAttachmentPolicyRuleNumber': d.fn('`withAttachmentPolicyRuleNumber` AttachmentPolicyRuleNumber ', [d.arg('AttachmentPolicyRuleNumber', d.T.integer)]),
    withAttachmentPolicyRuleNumber(AttachmentPolicyRuleNumber): {
      assert std.isNumber(AttachmentPolicyRuleNumber) : 'AttachmentPolicyRuleNumber must be a integer',
      Properties+::: { AttachmentPolicyRuleNumber: AttachmentPolicyRuleNumber },
    },
    '#withSegmentName': d.fn('`withSegmentName` SegmentName ', [d.arg('SegmentName', d.T.string)]),
    withSegmentName(SegmentName): {
      assert std.isString(SegmentName) : 'SegmentName must be a string',
      Properties+::: { SegmentName: SegmentName },
    },
    '#withProposedSegmentChange': d.fn('`withProposedSegmentChange` ProposedSegmentChange ', [d.arg('ProposedSegmentChange', d.T.object)]),
    withProposedSegmentChange(ProposedSegmentChange): {
      assert std.isObject(ProposedSegmentChange) : 'ProposedSegmentChange must be a object',
      Properties+::: { ProposedSegmentChange: ProposedSegmentChange },
    },
    '#withNetworkFunctionGroupName': d.fn('`withNetworkFunctionGroupName` NetworkFunctionGroupName ', [d.arg('NetworkFunctionGroupName', d.T.string)]),
    withNetworkFunctionGroupName(NetworkFunctionGroupName): {
      assert std.isString(NetworkFunctionGroupName) : 'NetworkFunctionGroupName must be a string',
      Properties+::: { NetworkFunctionGroupName: NetworkFunctionGroupName },
    },
    '#withProposedNetworkFunctionGroupChange': d.fn('`withProposedNetworkFunctionGroupChange` ProposedNetworkFunctionGroupChange ', [d.arg('ProposedNetworkFunctionGroupChange', d.T.object)]),
    withProposedNetworkFunctionGroupChange(ProposedNetworkFunctionGroupChange): {
      assert std.isObject(ProposedNetworkFunctionGroupChange) : 'ProposedNetworkFunctionGroupChange must be a object',
      Properties+::: { ProposedNetworkFunctionGroupChange: ProposedNetworkFunctionGroupChange },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
  },
  TransitGatewayPeering: {
    '#': d.pkg(
      name='TransitGatewayPeering',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='AWS::NetworkManager::TransitGatewayPeering Resoruce Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::TransitGatewayPeering Resource
        * CoreNetworkId The Id of the core network that you want to peer a transit gateway to.
        * TransitGatewayArn The ARN (Amazon Resource Name) of the transit gateway that you will peer to a core network
      |||,
      args=[
        d.arg('CoreNetworkId', 'd.T.string'),
        d.arg('TransitGatewayArn', 'd.T.string'),
      ]
    ),
    new(
      CoreNetworkId,
      TransitGatewayArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
        CoreNetworkId: CoreNetworkId,
        assert std.isString(TransitGatewayArn) : 'TransitGatewayArn must be a string',
        TransitGatewayArn: TransitGatewayArn,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::TransitGatewayPeering',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCoreNetworkArn': d.fn('`withCoreNetworkArn` CoreNetworkArn ', [d.arg('CoreNetworkArn', d.T.string)]),
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: { CoreNetworkArn: CoreNetworkArn },
    },
    '#withTransitGatewayPeeringAttachmentId': d.fn('`withTransitGatewayPeeringAttachmentId` TransitGatewayPeeringAttachmentId ', [d.arg('TransitGatewayPeeringAttachmentId', d.T.string)]),
    withTransitGatewayPeeringAttachmentId(TransitGatewayPeeringAttachmentId): {
      assert std.isString(TransitGatewayPeeringAttachmentId) : 'TransitGatewayPeeringAttachmentId must be a string',
      Properties+::: { TransitGatewayPeeringAttachmentId: TransitGatewayPeeringAttachmentId },
    },
    '#withPeeringId': d.fn('`withPeeringId` PeeringId ', [d.arg('PeeringId', d.T.string)]),
    withPeeringId(PeeringId): {
      assert std.isString(PeeringId) : 'PeeringId must be a string',
      Properties+::: { PeeringId: PeeringId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withEdgeLocation': d.fn('`withEdgeLocation` EdgeLocation ', [d.arg('EdgeLocation', d.T.string)]),
    withEdgeLocation(EdgeLocation): {
      assert std.isString(EdgeLocation) : 'EdgeLocation must be a string',
      Properties+::: { EdgeLocation: EdgeLocation },
    },
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
    '#withOwnerAccountId': d.fn('`withOwnerAccountId` OwnerAccountId ', [d.arg('OwnerAccountId', d.T.string)]),
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: { OwnerAccountId: OwnerAccountId },
    },
    '#withPeeringType': d.fn('`withPeeringType` PeeringType ', [d.arg('PeeringType', d.T.string)]),
    withPeeringType(PeeringType): {
      assert std.isString(PeeringType) : 'PeeringType must be a string',
      Properties+::: { PeeringType: PeeringType },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TransitGatewayRegistration: {
    '#': d.pkg(
      name='TransitGatewayRegistration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='The AWS::NetworkManager::TransitGatewayRegistration type registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::TransitGatewayRegistration Resource
        * GlobalNetworkId The ID of the global network.
        * TransitGatewayArn The Amazon Resource Name (ARN) of the transit gateway.
      |||,
      args=[
        d.arg('GlobalNetworkId', 'd.T.string'),
        d.arg('TransitGatewayArn', 'd.T.string'),
      ]
    ),
    new(
      GlobalNetworkId,
      TransitGatewayArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
        GlobalNetworkId: GlobalNetworkId,
        assert std.isString(TransitGatewayArn) : 'TransitGatewayArn must be a string',
        TransitGatewayArn: TransitGatewayArn,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::TransitGatewayRegistration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  TransitGatewayRouteTableAttachment: {
    '#': d.pkg(
      name='TransitGatewayRouteTableAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='AWS::NetworkManager::TransitGatewayRouteTableAttachment Resource Type definition.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::TransitGatewayRouteTableAttachment Resource
        * PeeringId The Id of peering between transit gateway and core network.
        * TransitGatewayRouteTableArn The Arn of transit gateway route table.
      |||,
      args=[
        d.arg('PeeringId', 'd.T.string'),
        d.arg('TransitGatewayRouteTableArn', 'd.T.string'),
      ]
    ),
    new(
      PeeringId,
      TransitGatewayRouteTableArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PeeringId) : 'PeeringId must be a string',
        PeeringId: PeeringId,
        assert std.isString(TransitGatewayRouteTableArn) : 'TransitGatewayRouteTableArn must be a string',
        TransitGatewayRouteTableArn: TransitGatewayRouteTableArn,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::TransitGatewayRouteTableAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCoreNetworkId': d.fn('`withCoreNetworkId` CoreNetworkId ', [d.arg('CoreNetworkId', d.T.string)]),
    withCoreNetworkId(CoreNetworkId): {
      assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
      Properties+::: { CoreNetworkId: CoreNetworkId },
    },
    '#withCoreNetworkArn': d.fn('`withCoreNetworkArn` CoreNetworkArn ', [d.arg('CoreNetworkArn', d.T.string)]),
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: { CoreNetworkArn: CoreNetworkArn },
    },
    '#withAttachmentId': d.fn('`withAttachmentId` AttachmentId ', [d.arg('AttachmentId', d.T.string)]),
    withAttachmentId(AttachmentId): {
      assert std.isString(AttachmentId) : 'AttachmentId must be a string',
      Properties+::: { AttachmentId: AttachmentId },
    },
    '#withOwnerAccountId': d.fn('`withOwnerAccountId` OwnerAccountId ', [d.arg('OwnerAccountId', d.T.string)]),
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: { OwnerAccountId: OwnerAccountId },
    },
    '#withAttachmentType': d.fn('`withAttachmentType` AttachmentType ', [d.arg('AttachmentType', d.T.string)]),
    withAttachmentType(AttachmentType): {
      assert std.isString(AttachmentType) : 'AttachmentType must be a string',
      Properties+::: { AttachmentType: AttachmentType },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withEdgeLocation': d.fn('`withEdgeLocation` EdgeLocation ', [d.arg('EdgeLocation', d.T.string)]),
    withEdgeLocation(EdgeLocation): {
      assert std.isString(EdgeLocation) : 'EdgeLocation must be a string',
      Properties+::: { EdgeLocation: EdgeLocation },
    },
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
    '#withAttachmentPolicyRuleNumber': d.fn('`withAttachmentPolicyRuleNumber` AttachmentPolicyRuleNumber ', [d.arg('AttachmentPolicyRuleNumber', d.T.integer)]),
    withAttachmentPolicyRuleNumber(AttachmentPolicyRuleNumber): {
      assert std.isNumber(AttachmentPolicyRuleNumber) : 'AttachmentPolicyRuleNumber must be a integer',
      Properties+::: { AttachmentPolicyRuleNumber: AttachmentPolicyRuleNumber },
    },
    '#withSegmentName': d.fn('`withSegmentName` SegmentName ', [d.arg('SegmentName', d.T.string)]),
    withSegmentName(SegmentName): {
      assert std.isString(SegmentName) : 'SegmentName must be a string',
      Properties+::: { SegmentName: SegmentName },
    },
    '#withProposedSegmentChange': d.fn('`withProposedSegmentChange` ProposedSegmentChange ', [d.arg('ProposedSegmentChange', d.T.object)]),
    withProposedSegmentChange(ProposedSegmentChange): {
      assert std.isObject(ProposedSegmentChange) : 'ProposedSegmentChange must be a object',
      Properties+::: { ProposedSegmentChange: ProposedSegmentChange },
    },
    '#withNetworkFunctionGroupName': d.fn('`withNetworkFunctionGroupName` NetworkFunctionGroupName ', [d.arg('NetworkFunctionGroupName', d.T.string)]),
    withNetworkFunctionGroupName(NetworkFunctionGroupName): {
      assert std.isString(NetworkFunctionGroupName) : 'NetworkFunctionGroupName must be a string',
      Properties+::: { NetworkFunctionGroupName: NetworkFunctionGroupName },
    },
    '#withProposedNetworkFunctionGroupChange': d.fn('`withProposedNetworkFunctionGroupChange` ProposedNetworkFunctionGroupChange ', [d.arg('ProposedNetworkFunctionGroupChange', d.T.object)]),
    withProposedNetworkFunctionGroupChange(ProposedNetworkFunctionGroupChange): {
      assert std.isObject(ProposedNetworkFunctionGroupChange) : 'ProposedNetworkFunctionGroupChange must be a object',
      Properties+::: { ProposedNetworkFunctionGroupChange: ProposedNetworkFunctionGroupChange },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VpcAttachment: {
    '#': d.pkg(
      name='VpcAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkManager.libsonnet',
      help='AWS::NetworkManager::VpcAttachment Resoruce Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkManager::VpcAttachment Resource
        * CoreNetworkId The ID of a core network for the VPC attachment.
        * VpcArn The ARN of the VPC.
        * SubnetArns Subnet Arn list
      |||,
      args=[
        d.arg('CoreNetworkId', 'd.T.string'),
        d.arg('VpcArn', 'd.T.string'),
        d.arg('SubnetArns', 'd.T.array'),
      ]
    ),
    new(
      CoreNetworkId,
      VpcArn,
      SubnetArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
        CoreNetworkId: CoreNetworkId,
        assert std.isString(VpcArn) : 'VpcArn must be a string',
        VpcArn: VpcArn,
        assert std.isArray(SubnetArns) : 'SubnetArns must be a array',
        SubnetArns: SubnetArns,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkManager::VpcAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCoreNetworkArn': d.fn('`withCoreNetworkArn` CoreNetworkArn ', [d.arg('CoreNetworkArn', d.T.string)]),
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: { CoreNetworkArn: CoreNetworkArn },
    },
    '#withAttachmentId': d.fn('`withAttachmentId` AttachmentId ', [d.arg('AttachmentId', d.T.string)]),
    withAttachmentId(AttachmentId): {
      assert std.isString(AttachmentId) : 'AttachmentId must be a string',
      Properties+::: { AttachmentId: AttachmentId },
    },
    '#withOwnerAccountId': d.fn('`withOwnerAccountId` OwnerAccountId ', [d.arg('OwnerAccountId', d.T.string)]),
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: { OwnerAccountId: OwnerAccountId },
    },
    '#withAttachmentType': d.fn('`withAttachmentType` AttachmentType ', [d.arg('AttachmentType', d.T.string)]),
    withAttachmentType(AttachmentType): {
      assert std.isString(AttachmentType) : 'AttachmentType must be a string',
      Properties+::: { AttachmentType: AttachmentType },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withEdgeLocation': d.fn('`withEdgeLocation` EdgeLocation ', [d.arg('EdgeLocation', d.T.string)]),
    withEdgeLocation(EdgeLocation): {
      assert std.isString(EdgeLocation) : 'EdgeLocation must be a string',
      Properties+::: { EdgeLocation: EdgeLocation },
    },
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
    '#withAttachmentPolicyRuleNumber': d.fn('`withAttachmentPolicyRuleNumber` AttachmentPolicyRuleNumber ', [d.arg('AttachmentPolicyRuleNumber', d.T.integer)]),
    withAttachmentPolicyRuleNumber(AttachmentPolicyRuleNumber): {
      assert std.isNumber(AttachmentPolicyRuleNumber) : 'AttachmentPolicyRuleNumber must be a integer',
      Properties+::: { AttachmentPolicyRuleNumber: AttachmentPolicyRuleNumber },
    },
    '#withSegmentName': d.fn('`withSegmentName` SegmentName ', [d.arg('SegmentName', d.T.string)]),
    withSegmentName(SegmentName): {
      assert std.isString(SegmentName) : 'SegmentName must be a string',
      Properties+::: { SegmentName: SegmentName },
    },
    '#withProposedSegmentChange': d.fn('`withProposedSegmentChange` ProposedSegmentChange ', [d.arg('ProposedSegmentChange', d.T.object)]),
    withProposedSegmentChange(ProposedSegmentChange): {
      assert std.isObject(ProposedSegmentChange) : 'ProposedSegmentChange must be a object',
      Properties+::: { ProposedSegmentChange: ProposedSegmentChange },
    },
    '#withNetworkFunctionGroupName': d.fn('`withNetworkFunctionGroupName` NetworkFunctionGroupName ', [d.arg('NetworkFunctionGroupName', d.T.string)]),
    withNetworkFunctionGroupName(NetworkFunctionGroupName): {
      assert std.isString(NetworkFunctionGroupName) : 'NetworkFunctionGroupName must be a string',
      Properties+::: { NetworkFunctionGroupName: NetworkFunctionGroupName },
    },
    '#withProposedNetworkFunctionGroupChange': d.fn('`withProposedNetworkFunctionGroupChange` ProposedNetworkFunctionGroupChange ', [d.arg('ProposedNetworkFunctionGroupChange', d.T.object)]),
    withProposedNetworkFunctionGroupChange(ProposedNetworkFunctionGroupChange): {
      assert std.isObject(ProposedNetworkFunctionGroupChange) : 'ProposedNetworkFunctionGroupChange must be a object',
      Properties+::: { ProposedNetworkFunctionGroupChange: ProposedNetworkFunctionGroupChange },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withOptions': d.fn('`withOptions` Options ', [d.arg('Options', d.T.object)]),
    withOptions(Options): {
      assert std.isObject(Options) : 'Options must be a object',
      Properties+::: { Options: Options },
    },
  },
}
