local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CapacityReservation: {
    '#': d.pkg(
      name='CapacityReservation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::CapacityReservation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::CapacityReservation Resource
        * InstanceCount 
        * AvailabilityZone 
        * InstancePlatform 
        * InstanceType 
      |||,
      args=[
        d.arg('InstanceCount', 'd.T.integer'),
        d.arg('AvailabilityZone', 'd.T.string'),
        d.arg('InstancePlatform', 'd.T.string'),
        d.arg('InstanceType', 'd.T.string'),
      ]
    ),
    new(
      InstanceCount,
      AvailabilityZone,
      InstancePlatform,
      InstanceType,
    ): {
      local base = self,
      Properties: {
        assert std.isNumber(InstanceCount) : 'InstanceCount must be a integer',
        InstanceCount: InstanceCount,
        assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
        AvailabilityZone: AvailabilityZone,
        assert std.isString(InstancePlatform) : 'InstancePlatform must be a string',
        InstancePlatform: InstancePlatform,
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::CapacityReservation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTenancy': d.fn('`withTenancy` Tenancy ', [d.arg('Tenancy', d.T.string)]),
    withTenancy(Tenancy): {
      assert std.isString(Tenancy) : 'Tenancy must be a string',
      Properties+::: { Tenancy: Tenancy },
    },
    '#withEndDateType': d.fn('`withEndDateType` EndDateType ', [d.arg('EndDateType', d.T.string)]),
    withEndDateType(EndDateType): {
      assert std.isString(EndDateType) : 'EndDateType must be a string',
      Properties+::: { EndDateType: EndDateType },
    },
    '#withTagSpecifications': d.fn('`withTagSpecifications` TagSpecifications ', [d.arg('TagSpecifications', d.T.array)]),
    withTagSpecifications(TagSpecifications): {
      assert std.isArray(TagSpecifications) : 'TagSpecifications must be a array',
      Properties+::: { TagSpecifications: TagSpecifications },
    },
    '#withTotalInstanceCount': d.fn('`withTotalInstanceCount` TotalInstanceCount ', [d.arg('TotalInstanceCount', d.T.integer)]),
    withTotalInstanceCount(TotalInstanceCount): {
      assert std.isNumber(TotalInstanceCount) : 'TotalInstanceCount must be a integer',
      Properties+::: { TotalInstanceCount: TotalInstanceCount },
    },
    '#withEndDate': d.fn('`withEndDate` EndDate ', [d.arg('EndDate', d.T.string)]),
    withEndDate(EndDate): {
      assert std.isString(EndDate) : 'EndDate must be a string',
      Properties+::: { EndDate: EndDate },
    },
    '#withEbsOptimized': d.fn('`withEbsOptimized` EbsOptimized ', [d.arg('EbsOptimized', d.T.boolean)]),
    withEbsOptimized(EbsOptimized): {
      assert std.isBoolean(EbsOptimized) : 'EbsOptimized must be a boolean',
      Properties+::: { EbsOptimized: EbsOptimized },
    },
    '#withOutPostArn': d.fn('`withOutPostArn` OutPostArn ', [d.arg('OutPostArn', d.T.string)]),
    withOutPostArn(OutPostArn): {
      assert std.isString(OutPostArn) : 'OutPostArn must be a string',
      Properties+::: { OutPostArn: OutPostArn },
    },
    '#withPlacementGroupArn': d.fn('`withPlacementGroupArn` PlacementGroupArn ', [d.arg('PlacementGroupArn', d.T.string)]),
    withPlacementGroupArn(PlacementGroupArn): {
      assert std.isString(PlacementGroupArn) : 'PlacementGroupArn must be a string',
      Properties+::: { PlacementGroupArn: PlacementGroupArn },
    },
    '#withAvailableInstanceCount': d.fn('`withAvailableInstanceCount` AvailableInstanceCount ', [d.arg('AvailableInstanceCount', d.T.integer)]),
    withAvailableInstanceCount(AvailableInstanceCount): {
      assert std.isNumber(AvailableInstanceCount) : 'AvailableInstanceCount must be a integer',
      Properties+::: { AvailableInstanceCount: AvailableInstanceCount },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEphemeralStorage': d.fn('`withEphemeralStorage` EphemeralStorage ', [d.arg('EphemeralStorage', d.T.boolean)]),
    withEphemeralStorage(EphemeralStorage): {
      assert std.isBoolean(EphemeralStorage) : 'EphemeralStorage must be a boolean',
      Properties+::: { EphemeralStorage: EphemeralStorage },
    },
    '#withInstanceMatchCriteria': d.fn('`withInstanceMatchCriteria` InstanceMatchCriteria ', [d.arg('InstanceMatchCriteria', d.T.string)]),
    withInstanceMatchCriteria(InstanceMatchCriteria): {
      assert std.isString(InstanceMatchCriteria) : 'InstanceMatchCriteria must be a string',
      Properties+::: { InstanceMatchCriteria: InstanceMatchCriteria },
    },
    '#withUnusedReservationBillingOwnerId': d.fn('`withUnusedReservationBillingOwnerId` UnusedReservationBillingOwnerId ', [d.arg('UnusedReservationBillingOwnerId', d.T.string)]),
    withUnusedReservationBillingOwnerId(UnusedReservationBillingOwnerId): {
      assert std.isString(UnusedReservationBillingOwnerId) : 'UnusedReservationBillingOwnerId must be a string',
      Properties+::: { UnusedReservationBillingOwnerId: UnusedReservationBillingOwnerId },
    },
  },
  CapacityReservationFleet: {
    '#': d.pkg(
      name='CapacityReservationFleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::CapacityReservationFleet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::CapacityReservationFleet Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::CapacityReservationFleet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAllocationStrategy': d.fn('`withAllocationStrategy` AllocationStrategy ', [d.arg('AllocationStrategy', d.T.string)]),
    withAllocationStrategy(AllocationStrategy): {
      assert std.isString(AllocationStrategy) : 'AllocationStrategy must be a string',
      Properties+::: { AllocationStrategy: AllocationStrategy },
    },
    '#withTagSpecifications': d.fn('`withTagSpecifications` TagSpecifications ', [d.arg('TagSpecifications', d.T.array)]),
    withTagSpecifications(TagSpecifications): {
      assert std.isArray(TagSpecifications) : 'TagSpecifications must be a array',
      Properties+::: { TagSpecifications: TagSpecifications },
    },
    '#withInstanceTypeSpecifications': d.fn('`withInstanceTypeSpecifications` InstanceTypeSpecifications ', [d.arg('InstanceTypeSpecifications', d.T.array)]),
    withInstanceTypeSpecifications(InstanceTypeSpecifications): {
      assert std.isArray(InstanceTypeSpecifications) : 'InstanceTypeSpecifications must be a array',
      Properties+::: { InstanceTypeSpecifications: InstanceTypeSpecifications },
    },
    '#withTotalTargetCapacity': d.fn('`withTotalTargetCapacity` TotalTargetCapacity ', [d.arg('TotalTargetCapacity', d.T.integer)]),
    withTotalTargetCapacity(TotalTargetCapacity): {
      assert std.isNumber(TotalTargetCapacity) : 'TotalTargetCapacity must be a integer',
      Properties+::: { TotalTargetCapacity: TotalTargetCapacity },
    },
    '#withEndDate': d.fn('`withEndDate` EndDate ', [d.arg('EndDate', d.T.string)]),
    withEndDate(EndDate): {
      assert std.isString(EndDate) : 'EndDate must be a string',
      Properties+::: { EndDate: EndDate },
    },
    '#withInstanceMatchCriteria': d.fn('`withInstanceMatchCriteria` InstanceMatchCriteria ', [d.arg('InstanceMatchCriteria', d.T.string)]),
    withInstanceMatchCriteria(InstanceMatchCriteria): {
      assert std.isString(InstanceMatchCriteria) : 'InstanceMatchCriteria must be a string',
      assert InstanceMatchCriteria == 'open' : "InstanceMatchCriteria must be either 'open'",
      Properties+::: { InstanceMatchCriteria: InstanceMatchCriteria },
    },
    '#withCapacityReservationFleetId': d.fn('`withCapacityReservationFleetId` CapacityReservationFleetId ', [d.arg('CapacityReservationFleetId', d.T.string)]),
    withCapacityReservationFleetId(CapacityReservationFleetId): {
      assert std.isString(CapacityReservationFleetId) : 'CapacityReservationFleetId must be a string',
      Properties+::: { CapacityReservationFleetId: CapacityReservationFleetId },
    },
    '#withTenancy': d.fn('`withTenancy` Tenancy ', [d.arg('Tenancy', d.T.string)]),
    withTenancy(Tenancy): {
      assert std.isString(Tenancy) : 'Tenancy must be a string',
      assert Tenancy == 'default' : "Tenancy must be either 'default'",
      Properties+::: { Tenancy: Tenancy },
    },
    '#withRemoveEndDate': d.fn('`withRemoveEndDate` RemoveEndDate ', [d.arg('RemoveEndDate', d.T.boolean)]),
    withRemoveEndDate(RemoveEndDate): {
      assert std.isBoolean(RemoveEndDate) : 'RemoveEndDate must be a boolean',
      Properties+::: { RemoveEndDate: RemoveEndDate },
    },
    '#withNoRemoveEndDate': d.fn('`withNoRemoveEndDate` NoRemoveEndDate ', [d.arg('NoRemoveEndDate', d.T.boolean)]),
    withNoRemoveEndDate(NoRemoveEndDate): {
      assert std.isBoolean(NoRemoveEndDate) : 'NoRemoveEndDate must be a boolean',
      Properties+::: { NoRemoveEndDate: NoRemoveEndDate },
    },
  },
  CarrierGateway: {
    '#': d.pkg(
      name='CarrierGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::CarrierGateway Resource
        * VpcId The ID of the VPC.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::CarrierGateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCarrierGatewayId': d.fn('`withCarrierGatewayId` CarrierGatewayId ', [d.arg('CarrierGatewayId', d.T.string)]),
    withCarrierGatewayId(CarrierGatewayId): {
      assert std.isString(CarrierGatewayId) : 'CarrierGatewayId must be a string',
      Properties+::: { CarrierGatewayId: CarrierGatewayId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ClientVpnAuthorizationRule: {
    '#': d.pkg(
      name='ClientVpnAuthorizationRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::ClientVpnAuthorizationRule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::ClientVpnAuthorizationRule Resource
        * ClientVpnEndpointId 
        * TargetNetworkCidr 
      |||,
      args=[
        d.arg('ClientVpnEndpointId', 'd.T.string'),
        d.arg('TargetNetworkCidr', 'd.T.string'),
      ]
    ),
    new(
      ClientVpnEndpointId,
      TargetNetworkCidr,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClientVpnEndpointId) : 'ClientVpnEndpointId must be a string',
        ClientVpnEndpointId: ClientVpnEndpointId,
        assert std.isString(TargetNetworkCidr) : 'TargetNetworkCidr must be a string',
        TargetNetworkCidr: TargetNetworkCidr,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::ClientVpnAuthorizationRule',
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
    '#withAccessGroupId': d.fn('`withAccessGroupId` AccessGroupId ', [d.arg('AccessGroupId', d.T.string)]),
    withAccessGroupId(AccessGroupId): {
      assert std.isString(AccessGroupId) : 'AccessGroupId must be a string',
      Properties+::: { AccessGroupId: AccessGroupId },
    },
    '#withAuthorizeAllGroups': d.fn('`withAuthorizeAllGroups` AuthorizeAllGroups ', [d.arg('AuthorizeAllGroups', d.T.boolean)]),
    withAuthorizeAllGroups(AuthorizeAllGroups): {
      assert std.isBoolean(AuthorizeAllGroups) : 'AuthorizeAllGroups must be a boolean',
      Properties+::: { AuthorizeAllGroups: AuthorizeAllGroups },
    },
  },
  ClientVpnEndpoint: {
    '#': d.pkg(
      name='ClientVpnEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::ClientVpnEndpoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::ClientVpnEndpoint Resource
        * ClientCidrBlock 
        * ConnectionLogOptions 
        * AuthenticationOptions 
        * ServerCertificateArn 
      |||,
      args=[
        d.arg('ClientCidrBlock', 'd.T.string'),
        d.arg('ConnectionLogOptions', 'd.T.object'),
        d.arg('AuthenticationOptions', 'd.T.array'),
        d.arg('ServerCertificateArn', 'd.T.string'),
      ]
    ),
    new(
      ClientCidrBlock,
      ConnectionLogOptions,
      AuthenticationOptions,
      ServerCertificateArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClientCidrBlock) : 'ClientCidrBlock must be a string',
        ClientCidrBlock: ClientCidrBlock,
        assert std.isObject(ConnectionLogOptions) : 'ConnectionLogOptions must be a object',
        ConnectionLogOptions: ConnectionLogOptions,
        assert std.isArray(AuthenticationOptions) : 'AuthenticationOptions must be a array',
        AuthenticationOptions: AuthenticationOptions,
        assert std.isString(ServerCertificateArn) : 'ServerCertificateArn must be a string',
        ServerCertificateArn: ServerCertificateArn,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::ClientVpnEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClientConnectOptions': d.fn('`withClientConnectOptions` ClientConnectOptions ', [d.arg('ClientConnectOptions', d.T.object)]),
    withClientConnectOptions(ClientConnectOptions): {
      assert std.isObject(ClientConnectOptions) : 'ClientConnectOptions must be a object',
      Properties+::: { ClientConnectOptions: ClientConnectOptions },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTagSpecifications': d.fn('`withTagSpecifications` TagSpecifications ', [d.arg('TagSpecifications', d.T.array)]),
    withTagSpecifications(TagSpecifications): {
      assert std.isArray(TagSpecifications) : 'TagSpecifications must be a array',
      Properties+::: { TagSpecifications: TagSpecifications },
    },
    '#withSessionTimeoutHours': d.fn('`withSessionTimeoutHours` SessionTimeoutHours ', [d.arg('SessionTimeoutHours', d.T.integer)]),
    withSessionTimeoutHours(SessionTimeoutHours): {
      assert std.isNumber(SessionTimeoutHours) : 'SessionTimeoutHours must be a integer',
      Properties+::: { SessionTimeoutHours: SessionTimeoutHours },
    },
    '#withDnsServers': d.fn('`withDnsServers` DnsServers ', [d.arg('DnsServers', d.T.array)]),
    withDnsServers(DnsServers): {
      assert std.isArray(DnsServers) : 'DnsServers must be a array',
      Properties+::: { DnsServers: DnsServers },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withSplitTunnel': d.fn('`withSplitTunnel` SplitTunnel ', [d.arg('SplitTunnel', d.T.boolean)]),
    withSplitTunnel(SplitTunnel): {
      assert std.isBoolean(SplitTunnel) : 'SplitTunnel must be a boolean',
      Properties+::: { SplitTunnel: SplitTunnel },
    },
    '#withClientLoginBannerOptions': d.fn('`withClientLoginBannerOptions` ClientLoginBannerOptions ', [d.arg('ClientLoginBannerOptions', d.T.object)]),
    withClientLoginBannerOptions(ClientLoginBannerOptions): {
      assert std.isObject(ClientLoginBannerOptions) : 'ClientLoginBannerOptions must be a object',
      Properties+::: { ClientLoginBannerOptions: ClientLoginBannerOptions },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withSelfServicePortal': d.fn('`withSelfServicePortal` SelfServicePortal ', [d.arg('SelfServicePortal', d.T.string)]),
    withSelfServicePortal(SelfServicePortal): {
      assert std.isString(SelfServicePortal) : 'SelfServicePortal must be a string',
      Properties+::: { SelfServicePortal: SelfServicePortal },
    },
    '#withTransportProtocol': d.fn('`withTransportProtocol` TransportProtocol ', [d.arg('TransportProtocol', d.T.string)]),
    withTransportProtocol(TransportProtocol): {
      assert std.isString(TransportProtocol) : 'TransportProtocol must be a string',
      Properties+::: { TransportProtocol: TransportProtocol },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withVpnPort': d.fn('`withVpnPort` VpnPort ', [d.arg('VpnPort', d.T.integer)]),
    withVpnPort(VpnPort): {
      assert std.isNumber(VpnPort) : 'VpnPort must be a integer',
      Properties+::: { VpnPort: VpnPort },
    },
  },
  ClientVpnRoute: {
    '#': d.pkg(
      name='ClientVpnRoute',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::ClientVpnRoute',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::ClientVpnRoute Resource
        * ClientVpnEndpointId 
        * TargetVpcSubnetId 
        * DestinationCidrBlock 
      |||,
      args=[
        d.arg('ClientVpnEndpointId', 'd.T.string'),
        d.arg('TargetVpcSubnetId', 'd.T.string'),
        d.arg('DestinationCidrBlock', 'd.T.string'),
      ]
    ),
    new(
      ClientVpnEndpointId,
      TargetVpcSubnetId,
      DestinationCidrBlock,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClientVpnEndpointId) : 'ClientVpnEndpointId must be a string',
        ClientVpnEndpointId: ClientVpnEndpointId,
        assert std.isString(TargetVpcSubnetId) : 'TargetVpcSubnetId must be a string',
        TargetVpcSubnetId: TargetVpcSubnetId,
        assert std.isString(DestinationCidrBlock) : 'DestinationCidrBlock must be a string',
        DestinationCidrBlock: DestinationCidrBlock,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::ClientVpnRoute',
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
  },
  ClientVpnTargetNetworkAssociation: {
    '#': d.pkg(
      name='ClientVpnTargetNetworkAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::ClientVpnTargetNetworkAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::ClientVpnTargetNetworkAssociation Resource
        * ClientVpnEndpointId 
        * SubnetId 
      |||,
      args=[
        d.arg('ClientVpnEndpointId', 'd.T.string'),
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      ClientVpnEndpointId,
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClientVpnEndpointId) : 'ClientVpnEndpointId must be a string',
        ClientVpnEndpointId: ClientVpnEndpointId,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::ClientVpnTargetNetworkAssociation',
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
  CustomerGateway: {
    '#': d.pkg(
      name='CustomerGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a customer gateway.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::CustomerGateway Resource
        * IpAddress IPv4 address for the customer gateway devices outside interface. The address must be static. If OutsideIpAddressType in your VPN connection options is set to PrivateIpv4, you can use an RFC6598 or RFC1918 private IPv4 address. If OutsideIpAddressType is set to PublicIpv4, you can use a public IPv4 address.
        * Type The type of VPN connection that this customer gateway supports (ipsec.1).
      |||,
      args=[
        d.arg('IpAddress', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      IpAddress,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpAddress) : 'IpAddress must be a string',
        IpAddress: IpAddress,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::CustomerGateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCustomerGatewayId': d.fn('`withCustomerGatewayId` CustomerGatewayId ', [d.arg('CustomerGatewayId', d.T.string)]),
    withCustomerGatewayId(CustomerGatewayId): {
      assert std.isString(CustomerGatewayId) : 'CustomerGatewayId must be a string',
      Properties+::: { CustomerGatewayId: CustomerGatewayId },
    },
    '#withBgpAsnExtended': d.fn('`withBgpAsnExtended` BgpAsnExtended ', [d.arg('BgpAsnExtended', d.T.integer)]),
    withBgpAsnExtended(BgpAsnExtended): {
      // Type: number
      Properties+::: { BgpAsnExtended: BgpAsnExtended },
    },
    '#withBgpAsn': d.fn('`withBgpAsn` BgpAsn ', [d.arg('BgpAsn', d.T.integer)]),
    withBgpAsn(BgpAsn): {
      assert std.isNumber(BgpAsn) : 'BgpAsn must be a integer',
      Properties+::: { BgpAsn: BgpAsn },
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
    '#withDeviceName': d.fn('`withDeviceName` DeviceName ', [d.arg('DeviceName', d.T.string)]),
    withDeviceName(DeviceName): {
      assert std.isString(DeviceName) : 'DeviceName must be a string',
      Properties+::: { DeviceName: DeviceName },
    },
  },
  DHCPOptions: {
    '#': d.pkg(
      name='DHCPOptions',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::DHCPOptions',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::DHCPOptions Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::DHCPOptions',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDhcpOptionsId': d.fn('`withDhcpOptionsId` DhcpOptionsId ', [d.arg('DhcpOptionsId', d.T.string)]),
    withDhcpOptionsId(DhcpOptionsId): {
      assert std.isString(DhcpOptionsId) : 'DhcpOptionsId must be a string',
      Properties+::: { DhcpOptionsId: DhcpOptionsId },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withDomainNameServers': d.fn('`withDomainNameServers` DomainNameServers ', [d.arg('DomainNameServers', d.T.array)]),
    withDomainNameServers(DomainNameServers): {
      assert std.isArray(DomainNameServers) : 'DomainNameServers must be a array',
      Properties+::: { DomainNameServers: DomainNameServers },
    },
    '#withNetbiosNameServers': d.fn('`withNetbiosNameServers` NetbiosNameServers ', [d.arg('NetbiosNameServers', d.T.array)]),
    withNetbiosNameServers(NetbiosNameServers): {
      assert std.isArray(NetbiosNameServers) : 'NetbiosNameServers must be a array',
      Properties+::: { NetbiosNameServers: NetbiosNameServers },
    },
    '#withNetbiosNodeType': d.fn('`withNetbiosNodeType` NetbiosNodeType ', [d.arg('NetbiosNodeType', d.T.integer)]),
    withNetbiosNodeType(NetbiosNodeType): {
      assert std.isNumber(NetbiosNodeType) : 'NetbiosNodeType must be a integer',
      Properties+::: { NetbiosNodeType: NetbiosNodeType },
    },
    '#withNtpServers': d.fn('`withNtpServers` NtpServers ', [d.arg('NtpServers', d.T.array)]),
    withNtpServers(NtpServers): {
      assert std.isArray(NtpServers) : 'NtpServers must be a array',
      Properties+::: { NtpServers: NtpServers },
    },
    '#withIpv6AddressPreferredLeaseTime': d.fn('`withIpv6AddressPreferredLeaseTime` Ipv6AddressPreferredLeaseTime ', [d.arg('Ipv6AddressPreferredLeaseTime', d.T.integer)]),
    withIpv6AddressPreferredLeaseTime(Ipv6AddressPreferredLeaseTime): {
      assert std.isNumber(Ipv6AddressPreferredLeaseTime) : 'Ipv6AddressPreferredLeaseTime must be a integer',
      Properties+::: { Ipv6AddressPreferredLeaseTime: Ipv6AddressPreferredLeaseTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EC2Fleet: {
    '#': d.pkg(
      name='EC2Fleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::EC2Fleet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::EC2Fleet Resource
        * TargetCapacitySpecification 
        * LaunchTemplateConfigs 
      |||,
      args=[
        d.arg('TargetCapacitySpecification', 'd.T.object'),
        d.arg('LaunchTemplateConfigs', 'd.T.array'),
      ]
    ),
    new(
      TargetCapacitySpecification,
      LaunchTemplateConfigs,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(TargetCapacitySpecification) : 'TargetCapacitySpecification must be a object',
        TargetCapacitySpecification: TargetCapacitySpecification,
        assert std.isArray(LaunchTemplateConfigs) : 'LaunchTemplateConfigs must be a array',
        LaunchTemplateConfigs: LaunchTemplateConfigs,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::EC2Fleet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContext': d.fn('`withContext` Context ', [d.arg('Context', d.T.string)]),
    withContext(Context): {
      assert std.isString(Context) : 'Context must be a string',
      Properties+::: { Context: Context },
    },
    '#withOnDemandOptions': d.fn('`withOnDemandOptions` OnDemandOptions ', [d.arg('OnDemandOptions', d.T.object)]),
    withOnDemandOptions(OnDemandOptions): {
      assert std.isObject(OnDemandOptions) : 'OnDemandOptions must be a object',
      Properties+::: { OnDemandOptions: OnDemandOptions },
    },
    '#withExcessCapacityTerminationPolicy': d.fn('`withExcessCapacityTerminationPolicy` ExcessCapacityTerminationPolicy ', [d.arg('ExcessCapacityTerminationPolicy', d.T.string)]),
    withExcessCapacityTerminationPolicy(ExcessCapacityTerminationPolicy): {
      assert std.isString(ExcessCapacityTerminationPolicy) : 'ExcessCapacityTerminationPolicy must be a string',
      assert ExcessCapacityTerminationPolicy == 'termination' || ExcessCapacityTerminationPolicy == 'no-termination' : "ExcessCapacityTerminationPolicy must be either 'termination' or 'no-termination'",
      Properties+::: { ExcessCapacityTerminationPolicy: ExcessCapacityTerminationPolicy },
    },
    '#withTagSpecifications': d.fn('`withTagSpecifications` TagSpecifications ', [d.arg('TagSpecifications', d.T.array)]),
    withTagSpecifications(TagSpecifications): {
      assert std.isArray(TagSpecifications) : 'TagSpecifications must be a array',
      Properties+::: { TagSpecifications: TagSpecifications },
    },
    '#withSpotOptions': d.fn('`withSpotOptions` SpotOptions ', [d.arg('SpotOptions', d.T.object)]),
    withSpotOptions(SpotOptions): {
      assert std.isObject(SpotOptions) : 'SpotOptions must be a object',
      Properties+::: { SpotOptions: SpotOptions },
    },
    '#withTerminateInstancesWithExpiration': d.fn('`withTerminateInstancesWithExpiration` TerminateInstancesWithExpiration ', [d.arg('TerminateInstancesWithExpiration', d.T.boolean)]),
    withTerminateInstancesWithExpiration(TerminateInstancesWithExpiration): {
      assert std.isBoolean(TerminateInstancesWithExpiration) : 'TerminateInstancesWithExpiration must be a boolean',
      Properties+::: { TerminateInstancesWithExpiration: TerminateInstancesWithExpiration },
    },
    '#withValidUntil': d.fn('`withValidUntil` ValidUntil ', [d.arg('ValidUntil', d.T.string)]),
    withValidUntil(ValidUntil): {
      assert std.isString(ValidUntil) : 'ValidUntil must be a string',
      Properties+::: { ValidUntil: ValidUntil },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'maintain' || Type == 'request' || Type == 'instant' : "Type must be either 'maintain' or 'request' or 'instant'",
      Properties+::: { Type: Type },
    },
    '#withFleetId': d.fn('`withFleetId` FleetId ', [d.arg('FleetId', d.T.string)]),
    withFleetId(FleetId): {
      assert std.isString(FleetId) : 'FleetId must be a string',
      Properties+::: { FleetId: FleetId },
    },
    '#withValidFrom': d.fn('`withValidFrom` ValidFrom ', [d.arg('ValidFrom', d.T.string)]),
    withValidFrom(ValidFrom): {
      assert std.isString(ValidFrom) : 'ValidFrom must be a string',
      Properties+::: { ValidFrom: ValidFrom },
    },
    '#withReplaceUnhealthyInstances': d.fn('`withReplaceUnhealthyInstances` ReplaceUnhealthyInstances ', [d.arg('ReplaceUnhealthyInstances', d.T.boolean)]),
    withReplaceUnhealthyInstances(ReplaceUnhealthyInstances): {
      assert std.isBoolean(ReplaceUnhealthyInstances) : 'ReplaceUnhealthyInstances must be a boolean',
      Properties+::: { ReplaceUnhealthyInstances: ReplaceUnhealthyInstances },
    },
  },
  EgressOnlyInternetGateway: {
    '#': d.pkg(
      name='EgressOnlyInternetGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::EgressOnlyInternetGateway',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::EgressOnlyInternetGateway Resource
        * VpcId The ID of the VPC for which to create the egress-only internet gateway.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::EgressOnlyInternetGateway',
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
  EIP: {
    '#': d.pkg(
      name='EIP',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies an Elastic IP (EIP) address and can, optionally, associate it with an Amazon EC2 instance. You can allocate an Elastic IP address from an address pool owned by AWS or from an address pool created from a public IPv4 address range that you have brought to AWS for use with your AWS resources using bring your own IP addresses (BYOIP). For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in the *Amazon EC2 User Guide*. For more information, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon EC2 User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::EIP Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::EIP',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPublicIp': d.fn('`withPublicIp` PublicIp ', [d.arg('PublicIp', d.T.string)]),
    withPublicIp(PublicIp): {
      assert std.isString(PublicIp) : 'PublicIp must be a string',
      Properties+::: { PublicIp: PublicIp },
    },
    '#withAllocationId': d.fn('`withAllocationId` AllocationId ', [d.arg('AllocationId', d.T.string)]),
    withAllocationId(AllocationId): {
      assert std.isString(AllocationId) : 'AllocationId must be a string',
      Properties+::: { AllocationId: AllocationId },
    },
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      Properties+::: { Domain: Domain },
    },
    '#withNetworkBorderGroup': d.fn('`withNetworkBorderGroup` NetworkBorderGroup ', [d.arg('NetworkBorderGroup', d.T.string)]),
    withNetworkBorderGroup(NetworkBorderGroup): {
      assert std.isString(NetworkBorderGroup) : 'NetworkBorderGroup must be a string',
      Properties+::: { NetworkBorderGroup: NetworkBorderGroup },
    },
    '#withTransferAddress': d.fn('`withTransferAddress` TransferAddress ', [d.arg('TransferAddress', d.T.string)]),
    withTransferAddress(TransferAddress): {
      assert std.isString(TransferAddress) : 'TransferAddress must be a string',
      Properties+::: { TransferAddress: TransferAddress },
    },
    '#withInstanceId': d.fn('`withInstanceId` InstanceId ', [d.arg('InstanceId', d.T.string)]),
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: { InstanceId: InstanceId },
    },
    '#withPublicIpv4Pool': d.fn('`withPublicIpv4Pool` PublicIpv4Pool ', [d.arg('PublicIpv4Pool', d.T.string)]),
    withPublicIpv4Pool(PublicIpv4Pool): {
      assert std.isString(PublicIpv4Pool) : 'PublicIpv4Pool must be a string',
      Properties+::: { PublicIpv4Pool: PublicIpv4Pool },
    },
    '#withIpamPoolId': d.fn('`withIpamPoolId` IpamPoolId ', [d.arg('IpamPoolId', d.T.string)]),
    withIpamPoolId(IpamPoolId): {
      assert std.isString(IpamPoolId) : 'IpamPoolId must be a string',
      Properties+::: { IpamPoolId: IpamPoolId },
    },
    '#withAddress': d.fn('`withAddress` Address ', [d.arg('Address', d.T.string)]),
    withAddress(Address): {
      assert std.isString(Address) : 'Address must be a string',
      Properties+::: { Address: Address },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EIPAssociation: {
    '#': d.pkg(
      name='EIPAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Associates an Elastic IP address with an instance or a network interface. Before you can use an Elastic IP address, you must allocate it to your account. For more information about working with Elastic IP addresses, see [Elastic IP address concepts and rules](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#vpc-eip-overview). You must specify AllocationId and either InstanceId, NetworkInterfaceId, or PrivateIpAddress.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::EIPAssociation Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::EIPAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAllocationId': d.fn('`withAllocationId` AllocationId ', [d.arg('AllocationId', d.T.string)]),
    withAllocationId(AllocationId): {
      assert std.isString(AllocationId) : 'AllocationId must be a string',
      Properties+::: { AllocationId: AllocationId },
    },
    '#withNetworkInterfaceId': d.fn('`withNetworkInterfaceId` NetworkInterfaceId ', [d.arg('NetworkInterfaceId', d.T.string)]),
    withNetworkInterfaceId(NetworkInterfaceId): {
      assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
      Properties+::: { NetworkInterfaceId: NetworkInterfaceId },
    },
    '#withInstanceId': d.fn('`withInstanceId` InstanceId ', [d.arg('InstanceId', d.T.string)]),
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: { InstanceId: InstanceId },
    },
    '#withPrivateIpAddress': d.fn('`withPrivateIpAddress` PrivateIpAddress ', [d.arg('PrivateIpAddress', d.T.string)]),
    withPrivateIpAddress(PrivateIpAddress): {
      assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
      Properties+::: { PrivateIpAddress: PrivateIpAddress },
    },
    '#withEIP': d.fn('`withEIP` EIP ', [d.arg('EIP', d.T.string)]),
    withEIP(EIP): {
      assert std.isString(EIP) : 'EIP must be a string',
      Properties+::: { EIP: EIP },
    },
  },
  EnclaveCertificateIamRoleAssociation: {
    '#': d.pkg(
      name='EnclaveCertificateIamRoleAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Associates an AWS Identity and Access Management (IAM) role with an AWS Certificate Manager (ACM) certificate. This association is based on Amazon Resource Names and it enables the certificate to be used by the ACM for Nitro Enclaves application inside an enclave.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::EnclaveCertificateIamRoleAssociation Resource
        * CertificateArn The Amazon Resource Name (ARN) of the ACM certificate with which to associate the IAM role.
        * RoleArn The Amazon Resource Name (ARN) of the IAM role to associate with the ACM certificate. You can associate up to 16 IAM roles with an ACM certificate.
      |||,
      args=[
        d.arg('CertificateArn', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      CertificateArn,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CertificateArn) : 'CertificateArn must be a string',
        CertificateArn: CertificateArn,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::EnclaveCertificateIamRoleAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateS3BucketName': d.fn('`withCertificateS3BucketName` CertificateS3BucketName ', [d.arg('CertificateS3BucketName', d.T.string)]),
    withCertificateS3BucketName(CertificateS3BucketName): {
      assert std.isString(CertificateS3BucketName) : 'CertificateS3BucketName must be a string',
      Properties+::: { CertificateS3BucketName: CertificateS3BucketName },
    },
    '#withCertificateS3ObjectKey': d.fn('`withCertificateS3ObjectKey` CertificateS3ObjectKey ', [d.arg('CertificateS3ObjectKey', d.T.string)]),
    withCertificateS3ObjectKey(CertificateS3ObjectKey): {
      assert std.isString(CertificateS3ObjectKey) : 'CertificateS3ObjectKey must be a string',
      Properties+::: { CertificateS3ObjectKey: CertificateS3ObjectKey },
    },
    '#withEncryptionKmsKeyId': d.fn('`withEncryptionKmsKeyId` EncryptionKmsKeyId ', [d.arg('EncryptionKmsKeyId', d.T.string)]),
    withEncryptionKmsKeyId(EncryptionKmsKeyId): {
      assert std.isString(EncryptionKmsKeyId) : 'EncryptionKmsKeyId must be a string',
      Properties+::: { EncryptionKmsKeyId: EncryptionKmsKeyId },
    },
  },
  FlowLog: {
    '#': d.pkg(
      name='FlowLog',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a VPC flow log, which enables you to capture IP traffic for a specific network interface, subnet, or VPC.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::FlowLog Resource
        * ResourceType The type of resource for which to create the flow log. For example, if you specified a VPC ID for the ResourceId property, specify VPC for this property.
        * ResourceId The ID of the subnet, network interface, or VPC for which you want to create a flow log.
      |||,
      args=[
        d.arg('ResourceType', 'd.T.string'),
        d.arg('ResourceId', 'd.T.string'),
      ]
    ),
    new(
      ResourceType,
      ResourceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        assert ResourceType == 'NetworkInterface' || ResourceType == 'Subnet' || ResourceType == 'VPC' || ResourceType == 'TransitGateway' || ResourceType == 'TransitGatewayAttachment' : "ResourceType must be either 'NetworkInterface' or 'Subnet' or 'VPC' or 'TransitGateway' or 'TransitGatewayAttachment'",
        ResourceType: ResourceType,
        assert std.isString(ResourceId) : 'ResourceId must be a string',
        ResourceId: ResourceId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::FlowLog',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDeliverCrossAccountRole': d.fn('`withDeliverCrossAccountRole` DeliverCrossAccountRole ', [d.arg('DeliverCrossAccountRole', d.T.string)]),
    withDeliverCrossAccountRole(DeliverCrossAccountRole): {
      assert std.isString(DeliverCrossAccountRole) : 'DeliverCrossAccountRole must be a string',
      Properties+::: { DeliverCrossAccountRole: DeliverCrossAccountRole },
    },
    '#withDeliverLogsPermissionArn': d.fn('`withDeliverLogsPermissionArn` DeliverLogsPermissionArn ', [d.arg('DeliverLogsPermissionArn', d.T.string)]),
    withDeliverLogsPermissionArn(DeliverLogsPermissionArn): {
      assert std.isString(DeliverLogsPermissionArn) : 'DeliverLogsPermissionArn must be a string',
      Properties+::: { DeliverLogsPermissionArn: DeliverLogsPermissionArn },
    },
    '#withLogDestination': d.fn('`withLogDestination` LogDestination ', [d.arg('LogDestination', d.T.string)]),
    withLogDestination(LogDestination): {
      assert std.isString(LogDestination) : 'LogDestination must be a string',
      Properties+::: { LogDestination: LogDestination },
    },
    '#withLogDestinationType': d.fn('`withLogDestinationType` LogDestinationType ', [d.arg('LogDestinationType', d.T.string)]),
    withLogDestinationType(LogDestinationType): {
      assert std.isString(LogDestinationType) : 'LogDestinationType must be a string',
      assert LogDestinationType == 'cloud-watch-logs' || LogDestinationType == 's3' || LogDestinationType == 'kinesis-data-firehose' : "LogDestinationType must be either 'cloud-watch-logs' or 's3' or 'kinesis-data-firehose'",
      Properties+::: { LogDestinationType: LogDestinationType },
    },
    '#withLogFormat': d.fn('`withLogFormat` LogFormat ', [d.arg('LogFormat', d.T.string)]),
    withLogFormat(LogFormat): {
      assert std.isString(LogFormat) : 'LogFormat must be a string',
      Properties+::: { LogFormat: LogFormat },
    },
    '#withLogGroupName': d.fn('`withLogGroupName` LogGroupName ', [d.arg('LogGroupName', d.T.string)]),
    withLogGroupName(LogGroupName): {
      assert std.isString(LogGroupName) : 'LogGroupName must be a string',
      Properties+::: { LogGroupName: LogGroupName },
    },
    '#withMaxAggregationInterval': d.fn('`withMaxAggregationInterval` MaxAggregationInterval ', [d.arg('MaxAggregationInterval', d.T.integer)]),
    withMaxAggregationInterval(MaxAggregationInterval): {
      assert std.isNumber(MaxAggregationInterval) : 'MaxAggregationInterval must be a integer',
      Properties+::: { MaxAggregationInterval: MaxAggregationInterval },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrafficType': d.fn('`withTrafficType` TrafficType ', [d.arg('TrafficType', d.T.string)]),
    withTrafficType(TrafficType): {
      assert std.isString(TrafficType) : 'TrafficType must be a string',
      assert TrafficType == 'ACCEPT' || TrafficType == 'ALL' || TrafficType == 'REJECT' : "TrafficType must be either 'ACCEPT' or 'ALL' or 'REJECT'",
      Properties+::: { TrafficType: TrafficType },
    },
    '#withDestinationOptions': d.fn('`withDestinationOptions` DestinationOptions ', [d.arg('DestinationOptions', d.T.object)]),
    withDestinationOptions(DestinationOptions): {
      assert std.isObject(DestinationOptions) : 'DestinationOptions must be a object',
      Properties+::: { DestinationOptions: DestinationOptions },
    },
  },
  GatewayRouteTableAssociation: {
    '#': d.pkg(
      name='GatewayRouteTableAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Associates a gateway with a route table. The gateway and route table must be in the same VPC. This association causes the incoming traffic to the gateway to be routed according to the routes in the route table.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::GatewayRouteTableAssociation Resource
        * RouteTableId The ID of the route table.
        * GatewayId The ID of the gateway.
      |||,
      args=[
        d.arg('RouteTableId', 'd.T.string'),
        d.arg('GatewayId', 'd.T.string'),
      ]
    ),
    new(
      RouteTableId,
      GatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RouteTableId) : 'RouteTableId must be a string',
        RouteTableId: RouteTableId,
        assert std.isString(GatewayId) : 'GatewayId must be a string',
        GatewayId: GatewayId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::GatewayRouteTableAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociationId': d.fn('`withAssociationId` AssociationId ', [d.arg('AssociationId', d.T.string)]),
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: { AssociationId: AssociationId },
    },
  },
  Host: {
    '#': d.pkg(
      name='Host',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::Host',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::Host Resource
        * AvailabilityZone The Availability Zone in which to allocate the Dedicated Host.
      |||,
      args=[
        d.arg('AvailabilityZone', 'd.T.string'),
      ]
    ),
    new(
      AvailabilityZone,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
        AvailabilityZone: AvailabilityZone,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::Host',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withHostId': d.fn('`withHostId` HostId ', [d.arg('HostId', d.T.string)]),
    withHostId(HostId): {
      assert std.isString(HostId) : 'HostId must be a string',
      Properties+::: { HostId: HostId },
    },
    '#withAutoPlacement': d.fn('`withAutoPlacement` AutoPlacement ', [d.arg('AutoPlacement', d.T.string)]),
    withAutoPlacement(AutoPlacement): {
      assert std.isString(AutoPlacement) : 'AutoPlacement must be a string',
      Properties+::: { AutoPlacement: AutoPlacement },
    },
    '#withHostRecovery': d.fn('`withHostRecovery` HostRecovery ', [d.arg('HostRecovery', d.T.string)]),
    withHostRecovery(HostRecovery): {
      assert std.isString(HostRecovery) : 'HostRecovery must be a string',
      Properties+::: { HostRecovery: HostRecovery },
    },
    '#withInstanceType': d.fn('`withInstanceType` InstanceType ', [d.arg('InstanceType', d.T.string)]),
    withInstanceType(InstanceType): {
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      Properties+::: { InstanceType: InstanceType },
    },
    '#withInstanceFamily': d.fn('`withInstanceFamily` InstanceFamily ', [d.arg('InstanceFamily', d.T.string)]),
    withInstanceFamily(InstanceFamily): {
      assert std.isString(InstanceFamily) : 'InstanceFamily must be a string',
      Properties+::: { InstanceFamily: InstanceFamily },
    },
    '#withOutpostArn': d.fn('`withOutpostArn` OutpostArn ', [d.arg('OutpostArn', d.T.string)]),
    withOutpostArn(OutpostArn): {
      assert std.isString(OutpostArn) : 'OutpostArn must be a string',
      Properties+::: { OutpostArn: OutpostArn },
    },
    '#withHostMaintenance': d.fn('`withHostMaintenance` HostMaintenance ', [d.arg('HostMaintenance', d.T.string)]),
    withHostMaintenance(HostMaintenance): {
      assert std.isString(HostMaintenance) : 'HostMaintenance must be a string',
      Properties+::: { HostMaintenance: HostMaintenance },
    },
    '#withAssetId': d.fn('`withAssetId` AssetId ', [d.arg('AssetId', d.T.string)]),
    withAssetId(AssetId): {
      assert std.isString(AssetId) : 'AssetId must be a string',
      Properties+::: { AssetId: AssetId },
    },
  },
  Instance: {
    '#': d.pkg(
      name='Instance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::Instance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::Instance Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::Instance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTenancy': d.fn('`withTenancy` Tenancy ', [d.arg('Tenancy', d.T.string)]),
    withTenancy(Tenancy): {
      assert std.isString(Tenancy) : 'Tenancy must be a string',
      Properties+::: { Tenancy: Tenancy },
    },
    '#withSecurityGroups': d.fn('`withSecurityGroups` SecurityGroups ', [d.arg('SecurityGroups', d.T.array)]),
    withSecurityGroups(SecurityGroups): {
      assert std.isArray(SecurityGroups) : 'SecurityGroups must be a array',
      Properties+::: { SecurityGroups: SecurityGroups },
    },
    '#withPrivateDnsName': d.fn('`withPrivateDnsName` PrivateDnsName ', [d.arg('PrivateDnsName', d.T.string)]),
    withPrivateDnsName(PrivateDnsName): {
      assert std.isString(PrivateDnsName) : 'PrivateDnsName must be a string',
      Properties+::: { PrivateDnsName: PrivateDnsName },
    },
    '#withPrivateIpAddress': d.fn('`withPrivateIpAddress` PrivateIpAddress ', [d.arg('PrivateIpAddress', d.T.string)]),
    withPrivateIpAddress(PrivateIpAddress): {
      assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
      Properties+::: { PrivateIpAddress: PrivateIpAddress },
    },
    '#withUserData': d.fn('`withUserData` UserData ', [d.arg('UserData', d.T.string)]),
    withUserData(UserData): {
      assert std.isString(UserData) : 'UserData must be a string',
      Properties+::: { UserData: UserData },
    },
    '#withBlockDeviceMappings': d.fn('`withBlockDeviceMappings` BlockDeviceMappings ', [d.arg('BlockDeviceMappings', d.T.array)]),
    withBlockDeviceMappings(BlockDeviceMappings): {
      assert std.isArray(BlockDeviceMappings) : 'BlockDeviceMappings must be a array',
      Properties+::: { BlockDeviceMappings: BlockDeviceMappings },
    },
    '#withIamInstanceProfile': d.fn('`withIamInstanceProfile` IamInstanceProfile ', [d.arg('IamInstanceProfile', d.T.string)]),
    withIamInstanceProfile(IamInstanceProfile): {
      assert std.isString(IamInstanceProfile) : 'IamInstanceProfile must be a string',
      Properties+::: { IamInstanceProfile: IamInstanceProfile },
    },
    '#withIpv6Addresses': d.fn('`withIpv6Addresses` Ipv6Addresses ', [d.arg('Ipv6Addresses', d.T.array)]),
    withIpv6Addresses(Ipv6Addresses): {
      assert std.isArray(Ipv6Addresses) : 'Ipv6Addresses must be a array',
      Properties+::: { Ipv6Addresses: Ipv6Addresses },
    },
    '#withKernelId': d.fn('`withKernelId` KernelId ', [d.arg('KernelId', d.T.string)]),
    withKernelId(KernelId): {
      assert std.isString(KernelId) : 'KernelId must be a string',
      Properties+::: { KernelId: KernelId },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withEbsOptimized': d.fn('`withEbsOptimized` EbsOptimized ', [d.arg('EbsOptimized', d.T.boolean)]),
    withEbsOptimized(EbsOptimized): {
      assert std.isBoolean(EbsOptimized) : 'EbsOptimized must be a boolean',
      Properties+::: { EbsOptimized: EbsOptimized },
    },
    '#withPropagateTagsToVolumeOnCreation': d.fn('`withPropagateTagsToVolumeOnCreation` PropagateTagsToVolumeOnCreation ', [d.arg('PropagateTagsToVolumeOnCreation', d.T.boolean)]),
    withPropagateTagsToVolumeOnCreation(PropagateTagsToVolumeOnCreation): {
      assert std.isBoolean(PropagateTagsToVolumeOnCreation) : 'PropagateTagsToVolumeOnCreation must be a boolean',
      Properties+::: { PropagateTagsToVolumeOnCreation: PropagateTagsToVolumeOnCreation },
    },
    '#withElasticGpuSpecifications': d.fn('`withElasticGpuSpecifications` ElasticGpuSpecifications ', [d.arg('ElasticGpuSpecifications', d.T.array)]),
    withElasticGpuSpecifications(ElasticGpuSpecifications): {
      assert std.isArray(ElasticGpuSpecifications) : 'ElasticGpuSpecifications must be a array',
      Properties+::: { ElasticGpuSpecifications: ElasticGpuSpecifications },
    },
    '#withElasticInferenceAccelerators': d.fn('`withElasticInferenceAccelerators` ElasticInferenceAccelerators ', [d.arg('ElasticInferenceAccelerators', d.T.array)]),
    withElasticInferenceAccelerators(ElasticInferenceAccelerators): {
      assert std.isArray(ElasticInferenceAccelerators) : 'ElasticInferenceAccelerators must be a array',
      Properties+::: { ElasticInferenceAccelerators: ElasticInferenceAccelerators },
    },
    '#withVolumes': d.fn('`withVolumes` Volumes ', [d.arg('Volumes', d.T.array)]),
    withVolumes(Volumes): {
      assert std.isArray(Volumes) : 'Volumes must be a array',
      Properties+::: { Volumes: Volumes },
    },
    '#withPrivateIp': d.fn('`withPrivateIp` PrivateIp ', [d.arg('PrivateIp', d.T.string)]),
    withPrivateIp(PrivateIp): {
      assert std.isString(PrivateIp) : 'PrivateIp must be a string',
      Properties+::: { PrivateIp: PrivateIp },
    },
    '#withIpv6AddressCount': d.fn('`withIpv6AddressCount` Ipv6AddressCount ', [d.arg('Ipv6AddressCount', d.T.integer)]),
    withIpv6AddressCount(Ipv6AddressCount): {
      assert std.isNumber(Ipv6AddressCount) : 'Ipv6AddressCount must be a integer',
      Properties+::: { Ipv6AddressCount: Ipv6AddressCount },
    },
    '#withLaunchTemplate': d.fn('`withLaunchTemplate` LaunchTemplate ', [d.arg('LaunchTemplate', d.T.object)]),
    withLaunchTemplate(LaunchTemplate): {
      assert std.isObject(LaunchTemplate) : 'LaunchTemplate must be a object',
      Properties+::: { LaunchTemplate: LaunchTemplate },
    },
    '#withEnclaveOptions': d.fn('`withEnclaveOptions` EnclaveOptions ', [d.arg('EnclaveOptions', d.T.object)]),
    withEnclaveOptions(EnclaveOptions): {
      assert std.isObject(EnclaveOptions) : 'EnclaveOptions must be a object',
      Properties+::: { EnclaveOptions: EnclaveOptions },
    },
    '#withNetworkInterfaces': d.fn('`withNetworkInterfaces` NetworkInterfaces ', [d.arg('NetworkInterfaces', d.T.array)]),
    withNetworkInterfaces(NetworkInterfaces): {
      assert std.isArray(NetworkInterfaces) : 'NetworkInterfaces must be a array',
      Properties+::: { NetworkInterfaces: NetworkInterfaces },
    },
    '#withImageId': d.fn('`withImageId` ImageId ', [d.arg('ImageId', d.T.string)]),
    withImageId(ImageId): {
      assert std.isString(ImageId) : 'ImageId must be a string',
      Properties+::: { ImageId: ImageId },
    },
    '#withInstanceType': d.fn('`withInstanceType` InstanceType ', [d.arg('InstanceType', d.T.string)]),
    withInstanceType(InstanceType): {
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      Properties+::: { InstanceType: InstanceType },
    },
    '#withMonitoring': d.fn('`withMonitoring` Monitoring ', [d.arg('Monitoring', d.T.boolean)]),
    withMonitoring(Monitoring): {
      assert std.isBoolean(Monitoring) : 'Monitoring must be a boolean',
      Properties+::: { Monitoring: Monitoring },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAdditionalInfo': d.fn('`withAdditionalInfo` AdditionalInfo ', [d.arg('AdditionalInfo', d.T.string)]),
    withAdditionalInfo(AdditionalInfo): {
      assert std.isString(AdditionalInfo) : 'AdditionalInfo must be a string',
      Properties+::: { AdditionalInfo: AdditionalInfo },
    },
    '#withHibernationOptions': d.fn('`withHibernationOptions` HibernationOptions ', [d.arg('HibernationOptions', d.T.object)]),
    withHibernationOptions(HibernationOptions): {
      assert std.isObject(HibernationOptions) : 'HibernationOptions must be a object',
      Properties+::: { HibernationOptions: HibernationOptions },
    },
    '#withLicenseSpecifications': d.fn('`withLicenseSpecifications` LicenseSpecifications ', [d.arg('LicenseSpecifications', d.T.array)]),
    withLicenseSpecifications(LicenseSpecifications): {
      assert std.isArray(LicenseSpecifications) : 'LicenseSpecifications must be a array',
      Properties+::: { LicenseSpecifications: LicenseSpecifications },
    },
    '#withInstanceId': d.fn('`withInstanceId` InstanceId ', [d.arg('InstanceId', d.T.string)]),
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: { InstanceId: InstanceId },
    },
    '#withPublicIp': d.fn('`withPublicIp` PublicIp ', [d.arg('PublicIp', d.T.string)]),
    withPublicIp(PublicIp): {
      assert std.isString(PublicIp) : 'PublicIp must be a string',
      Properties+::: { PublicIp: PublicIp },
    },
    '#withInstanceInitiatedShutdownBehavior': d.fn('`withInstanceInitiatedShutdownBehavior` InstanceInitiatedShutdownBehavior ', [d.arg('InstanceInitiatedShutdownBehavior', d.T.string)]),
    withInstanceInitiatedShutdownBehavior(InstanceInitiatedShutdownBehavior): {
      assert std.isString(InstanceInitiatedShutdownBehavior) : 'InstanceInitiatedShutdownBehavior must be a string',
      Properties+::: { InstanceInitiatedShutdownBehavior: InstanceInitiatedShutdownBehavior },
    },
    '#withCpuOptions': d.fn('`withCpuOptions` CpuOptions ', [d.arg('CpuOptions', d.T.object)]),
    withCpuOptions(CpuOptions): {
      assert std.isObject(CpuOptions) : 'CpuOptions must be a object',
      Properties+::: { CpuOptions: CpuOptions },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withPrivateDnsNameOptions': d.fn('`withPrivateDnsNameOptions` PrivateDnsNameOptions ', [d.arg('PrivateDnsNameOptions', d.T.object)]),
    withPrivateDnsNameOptions(PrivateDnsNameOptions): {
      assert std.isObject(PrivateDnsNameOptions) : 'PrivateDnsNameOptions must be a object',
      Properties+::: { PrivateDnsNameOptions: PrivateDnsNameOptions },
    },
    '#withHostId': d.fn('`withHostId` HostId ', [d.arg('HostId', d.T.string)]),
    withHostId(HostId): {
      assert std.isString(HostId) : 'HostId must be a string',
      Properties+::: { HostId: HostId },
    },
    '#withHostResourceGroupArn': d.fn('`withHostResourceGroupArn` HostResourceGroupArn ', [d.arg('HostResourceGroupArn', d.T.string)]),
    withHostResourceGroupArn(HostResourceGroupArn): {
      assert std.isString(HostResourceGroupArn) : 'HostResourceGroupArn must be a string',
      Properties+::: { HostResourceGroupArn: HostResourceGroupArn },
    },
    '#withPublicDnsName': d.fn('`withPublicDnsName` PublicDnsName ', [d.arg('PublicDnsName', d.T.string)]),
    withPublicDnsName(PublicDnsName): {
      assert std.isString(PublicDnsName) : 'PublicDnsName must be a string',
      Properties+::: { PublicDnsName: PublicDnsName },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withDisableApiTermination': d.fn('`withDisableApiTermination` DisableApiTermination ', [d.arg('DisableApiTermination', d.T.boolean)]),
    withDisableApiTermination(DisableApiTermination): {
      assert std.isBoolean(DisableApiTermination) : 'DisableApiTermination must be a boolean',
      Properties+::: { DisableApiTermination: DisableApiTermination },
    },
    '#withKeyName': d.fn('`withKeyName` KeyName ', [d.arg('KeyName', d.T.string)]),
    withKeyName(KeyName): {
      assert std.isString(KeyName) : 'KeyName must be a string',
      Properties+::: { KeyName: KeyName },
    },
    '#withRamdiskId': d.fn('`withRamdiskId` RamdiskId ', [d.arg('RamdiskId', d.T.string)]),
    withRamdiskId(RamdiskId): {
      assert std.isString(RamdiskId) : 'RamdiskId must be a string',
      Properties+::: { RamdiskId: RamdiskId },
    },
    '#withSourceDestCheck': d.fn('`withSourceDestCheck` SourceDestCheck ', [d.arg('SourceDestCheck', d.T.boolean)]),
    withSourceDestCheck(SourceDestCheck): {
      assert std.isBoolean(SourceDestCheck) : 'SourceDestCheck must be a boolean',
      Properties+::: { SourceDestCheck: SourceDestCheck },
    },
    '#withPlacementGroupName': d.fn('`withPlacementGroupName` PlacementGroupName ', [d.arg('PlacementGroupName', d.T.string)]),
    withPlacementGroupName(PlacementGroupName): {
      assert std.isString(PlacementGroupName) : 'PlacementGroupName must be a string',
      Properties+::: { PlacementGroupName: PlacementGroupName },
    },
    '#withSsmAssociations': d.fn('`withSsmAssociations` SsmAssociations ', [d.arg('SsmAssociations', d.T.array)]),
    withSsmAssociations(SsmAssociations): {
      assert std.isArray(SsmAssociations) : 'SsmAssociations must be a array',
      Properties+::: { SsmAssociations: SsmAssociations },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.object)]),
    withState(State): {
      assert std.isObject(State) : 'State must be a object',
      Properties+::: { State: State },
    },
    '#withAffinity': d.fn('`withAffinity` Affinity ', [d.arg('Affinity', d.T.string)]),
    withAffinity(Affinity): {
      assert std.isString(Affinity) : 'Affinity must be a string',
      assert Affinity == 'default' || Affinity == 'host' : "Affinity must be either 'default' or 'host'",
      Properties+::: { Affinity: Affinity },
    },
    '#withCreditSpecification': d.fn('`withCreditSpecification` CreditSpecification ', [d.arg('CreditSpecification', d.T.object)]),
    withCreditSpecification(CreditSpecification): {
      assert std.isObject(CreditSpecification) : 'CreditSpecification must be a object',
      Properties+::: { CreditSpecification: CreditSpecification },
    },
  },
  InstanceConnectEndpoint: {
    '#': d.pkg(
      name='InstanceConnectEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::InstanceConnectEndpoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::InstanceConnectEndpoint Resource
        * SubnetId The subnet id of the instance connect endpoint
      |||,
      args=[
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::InstanceConnectEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withClientToken': d.fn('`withClientToken` ClientToken ', [d.arg('ClientToken', d.T.string)]),
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: { ClientToken: ClientToken },
    },
    '#withPreserveClientIp': d.fn('`withPreserveClientIp` PreserveClientIp ', [d.arg('PreserveClientIp', d.T.boolean)]),
    withPreserveClientIp(PreserveClientIp): {
      assert std.isBoolean(PreserveClientIp) : 'PreserveClientIp must be a boolean',
      Properties+::: { PreserveClientIp: PreserveClientIp },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
  },
  InternetGateway: {
    '#': d.pkg(
      name='InternetGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Allocates an internet gateway for use with a VPC. After creating the Internet gateway, you then attach it to a VPC.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::InternetGateway Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::InternetGateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInternetGatewayId': d.fn('`withInternetGatewayId` InternetGatewayId ', [d.arg('InternetGatewayId', d.T.string)]),
    withInternetGatewayId(InternetGatewayId): {
      assert std.isString(InternetGatewayId) : 'InternetGatewayId must be a string',
      Properties+::: { InternetGatewayId: InternetGatewayId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IPAM: {
    '#': d.pkg(
      name='IPAM',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Schema of AWS::EC2::IPAM Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::IPAM Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::EC2::IPAM',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpamId': d.fn('`withIpamId` IpamId ', [d.arg('IpamId', d.T.string)]),
    withIpamId(IpamId): {
      assert std.isString(IpamId) : 'IpamId must be a string',
      Properties+::: { IpamId: IpamId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDefaultResourceDiscoveryId': d.fn('`withDefaultResourceDiscoveryId` DefaultResourceDiscoveryId ', [d.arg('DefaultResourceDiscoveryId', d.T.string)]),
    withDefaultResourceDiscoveryId(DefaultResourceDiscoveryId): {
      assert std.isString(DefaultResourceDiscoveryId) : 'DefaultResourceDiscoveryId must be a string',
      Properties+::: { DefaultResourceDiscoveryId: DefaultResourceDiscoveryId },
    },
    '#withDefaultResourceDiscoveryAssociationId': d.fn('`withDefaultResourceDiscoveryAssociationId` DefaultResourceDiscoveryAssociationId ', [d.arg('DefaultResourceDiscoveryAssociationId', d.T.string)]),
    withDefaultResourceDiscoveryAssociationId(DefaultResourceDiscoveryAssociationId): {
      assert std.isString(DefaultResourceDiscoveryAssociationId) : 'DefaultResourceDiscoveryAssociationId must be a string',
      Properties+::: { DefaultResourceDiscoveryAssociationId: DefaultResourceDiscoveryAssociationId },
    },
    '#withResourceDiscoveryAssociationCount': d.fn('`withResourceDiscoveryAssociationCount` ResourceDiscoveryAssociationCount ', [d.arg('ResourceDiscoveryAssociationCount', d.T.integer)]),
    withResourceDiscoveryAssociationCount(ResourceDiscoveryAssociationCount): {
      assert std.isNumber(ResourceDiscoveryAssociationCount) : 'ResourceDiscoveryAssociationCount must be a integer',
      Properties+::: { ResourceDiscoveryAssociationCount: ResourceDiscoveryAssociationCount },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPublicDefaultScopeId': d.fn('`withPublicDefaultScopeId` PublicDefaultScopeId ', [d.arg('PublicDefaultScopeId', d.T.string)]),
    withPublicDefaultScopeId(PublicDefaultScopeId): {
      assert std.isString(PublicDefaultScopeId) : 'PublicDefaultScopeId must be a string',
      Properties+::: { PublicDefaultScopeId: PublicDefaultScopeId },
    },
    '#withPrivateDefaultScopeId': d.fn('`withPrivateDefaultScopeId` PrivateDefaultScopeId ', [d.arg('PrivateDefaultScopeId', d.T.string)]),
    withPrivateDefaultScopeId(PrivateDefaultScopeId): {
      assert std.isString(PrivateDefaultScopeId) : 'PrivateDefaultScopeId must be a string',
      Properties+::: { PrivateDefaultScopeId: PrivateDefaultScopeId },
    },
    '#withScopeCount': d.fn('`withScopeCount` ScopeCount ', [d.arg('ScopeCount', d.T.integer)]),
    withScopeCount(ScopeCount): {
      assert std.isNumber(ScopeCount) : 'ScopeCount must be a integer',
      Properties+::: { ScopeCount: ScopeCount },
    },
    '#withOperatingRegions': d.fn('`withOperatingRegions` OperatingRegions ', [d.arg('OperatingRegions', d.T.array)]),
    withOperatingRegions(OperatingRegions): {
      assert std.isArray(OperatingRegions) : 'OperatingRegions must be a array',
      Properties+::: { OperatingRegions: OperatingRegions },
    },
    '#withTier': d.fn('`withTier` Tier ', [d.arg('Tier', d.T.string)]),
    withTier(Tier): {
      assert std.isString(Tier) : 'Tier must be a string',
      assert Tier == 'free' || Tier == 'advanced' : "Tier must be either 'free' or 'advanced'",
      Properties+::: { Tier: Tier },
    },
    '#withEnablePrivateGua': d.fn('`withEnablePrivateGua` EnablePrivateGua ', [d.arg('EnablePrivateGua', d.T.boolean)]),
    withEnablePrivateGua(EnablePrivateGua): {
      assert std.isBoolean(EnablePrivateGua) : 'EnablePrivateGua must be a boolean',
      Properties+::: { EnablePrivateGua: EnablePrivateGua },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IPAMAllocation: {
    '#': d.pkg(
      name='IPAMAllocation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Schema of AWS::EC2::IPAMAllocation Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::IPAMAllocation Resource
        * IpamPoolId Id of the IPAM Pool.
      |||,
      args=[
        d.arg('IpamPoolId', 'd.T.string'),
      ]
    ),
    new(
      IpamPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpamPoolId) : 'IpamPoolId must be a string',
        IpamPoolId: IpamPoolId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::IPAMAllocation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpamPoolAllocationId': d.fn('`withIpamPoolAllocationId` IpamPoolAllocationId ', [d.arg('IpamPoolAllocationId', d.T.string)]),
    withIpamPoolAllocationId(IpamPoolAllocationId): {
      assert std.isString(IpamPoolAllocationId) : 'IpamPoolAllocationId must be a string',
      Properties+::: { IpamPoolAllocationId: IpamPoolAllocationId },
    },
    '#withCidr': d.fn('`withCidr` Cidr ', [d.arg('Cidr', d.T.string)]),
    withCidr(Cidr): {
      assert std.isString(Cidr) : 'Cidr must be a string',
      Properties+::: { Cidr: Cidr },
    },
    '#withNetmaskLength': d.fn('`withNetmaskLength` NetmaskLength ', [d.arg('NetmaskLength', d.T.integer)]),
    withNetmaskLength(NetmaskLength): {
      assert std.isNumber(NetmaskLength) : 'NetmaskLength must be a integer',
      Properties+::: { NetmaskLength: NetmaskLength },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  IPAMPool: {
    '#': d.pkg(
      name='IPAMPool',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Schema of AWS::EC2::IPAMPool Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::IPAMPool Resource
        * IpamScopeId The Id of the scope this pool is a part of.
        * AddressFamily The address family of the address space in this pool. Either IPv4 or IPv6.
      |||,
      args=[
        d.arg('IpamScopeId', 'd.T.string'),
        d.arg('AddressFamily', 'd.T.string'),
      ]
    ),
    new(
      IpamScopeId,
      AddressFamily,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpamScopeId) : 'IpamScopeId must be a string',
        IpamScopeId: IpamScopeId,
        assert std.isString(AddressFamily) : 'AddressFamily must be a string',
        AddressFamily: AddressFamily,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::IPAMPool',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpamPoolId': d.fn('`withIpamPoolId` IpamPoolId ', [d.arg('IpamPoolId', d.T.string)]),
    withIpamPoolId(IpamPoolId): {
      assert std.isString(IpamPoolId) : 'IpamPoolId must be a string',
      Properties+::: { IpamPoolId: IpamPoolId },
    },
    '#withAllocationMinNetmaskLength': d.fn('`withAllocationMinNetmaskLength` AllocationMinNetmaskLength ', [d.arg('AllocationMinNetmaskLength', d.T.integer)]),
    withAllocationMinNetmaskLength(AllocationMinNetmaskLength): {
      assert std.isNumber(AllocationMinNetmaskLength) : 'AllocationMinNetmaskLength must be a integer',
      Properties+::: { AllocationMinNetmaskLength: AllocationMinNetmaskLength },
    },
    '#withAllocationDefaultNetmaskLength': d.fn('`withAllocationDefaultNetmaskLength` AllocationDefaultNetmaskLength ', [d.arg('AllocationDefaultNetmaskLength', d.T.integer)]),
    withAllocationDefaultNetmaskLength(AllocationDefaultNetmaskLength): {
      assert std.isNumber(AllocationDefaultNetmaskLength) : 'AllocationDefaultNetmaskLength must be a integer',
      Properties+::: { AllocationDefaultNetmaskLength: AllocationDefaultNetmaskLength },
    },
    '#withAllocationMaxNetmaskLength': d.fn('`withAllocationMaxNetmaskLength` AllocationMaxNetmaskLength ', [d.arg('AllocationMaxNetmaskLength', d.T.integer)]),
    withAllocationMaxNetmaskLength(AllocationMaxNetmaskLength): {
      assert std.isNumber(AllocationMaxNetmaskLength) : 'AllocationMaxNetmaskLength must be a integer',
      Properties+::: { AllocationMaxNetmaskLength: AllocationMaxNetmaskLength },
    },
    '#withAllocationResourceTags': d.fn('`withAllocationResourceTags` AllocationResourceTags ', [d.arg('AllocationResourceTags', d.T.array)]),
    withAllocationResourceTags(AllocationResourceTags): {
      assert std.isArray(AllocationResourceTags) : 'AllocationResourceTags must be a array',
      Properties+::: { AllocationResourceTags: AllocationResourceTags },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAutoImport': d.fn('`withAutoImport` AutoImport ', [d.arg('AutoImport', d.T.boolean)]),
    withAutoImport(AutoImport): {
      assert std.isBoolean(AutoImport) : 'AutoImport must be a boolean',
      Properties+::: { AutoImport: AutoImport },
    },
    '#withAwsService': d.fn('`withAwsService` AwsService ', [d.arg('AwsService', d.T.string)]),
    withAwsService(AwsService): {
      assert std.isString(AwsService) : 'AwsService must be a string',
      assert AwsService == 'ec2' : "AwsService must be either 'ec2'",
      Properties+::: { AwsService: AwsService },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withIpamScopeArn': d.fn('`withIpamScopeArn` IpamScopeArn ', [d.arg('IpamScopeArn', d.T.string)]),
    withIpamScopeArn(IpamScopeArn): {
      assert std.isString(IpamScopeArn) : 'IpamScopeArn must be a string',
      Properties+::: { IpamScopeArn: IpamScopeArn },
    },
    '#withIpamScopeType': d.fn('`withIpamScopeType` IpamScopeType ', [d.arg('IpamScopeType', d.T.string)]),
    withIpamScopeType(IpamScopeType): {
      assert std.isString(IpamScopeType) : 'IpamScopeType must be a string',
      assert IpamScopeType == 'public' || IpamScopeType == 'private' : "IpamScopeType must be either 'public' or 'private'",
      Properties+::: { IpamScopeType: IpamScopeType },
    },
    '#withIpamArn': d.fn('`withIpamArn` IpamArn ', [d.arg('IpamArn', d.T.string)]),
    withIpamArn(IpamArn): {
      assert std.isString(IpamArn) : 'IpamArn must be a string',
      Properties+::: { IpamArn: IpamArn },
    },
    '#withLocale': d.fn('`withLocale` Locale ', [d.arg('Locale', d.T.string)]),
    withLocale(Locale): {
      assert std.isString(Locale) : 'Locale must be a string',
      Properties+::: { Locale: Locale },
    },
    '#withPoolDepth': d.fn('`withPoolDepth` PoolDepth ', [d.arg('PoolDepth', d.T.integer)]),
    withPoolDepth(PoolDepth): {
      assert std.isNumber(PoolDepth) : 'PoolDepth must be a integer',
      Properties+::: { PoolDepth: PoolDepth },
    },
    '#withProvisionedCidrs': d.fn('`withProvisionedCidrs` ProvisionedCidrs ', [d.arg('ProvisionedCidrs', d.T.array)]),
    withProvisionedCidrs(ProvisionedCidrs): {
      assert std.isArray(ProvisionedCidrs) : 'ProvisionedCidrs must be a array',
      Properties+::: { ProvisionedCidrs: ProvisionedCidrs },
    },
    '#withPublicIpSource': d.fn('`withPublicIpSource` PublicIpSource ', [d.arg('PublicIpSource', d.T.string)]),
    withPublicIpSource(PublicIpSource): {
      assert std.isString(PublicIpSource) : 'PublicIpSource must be a string',
      assert PublicIpSource == 'byoip' || PublicIpSource == 'amazon' : "PublicIpSource must be either 'byoip' or 'amazon'",
      Properties+::: { PublicIpSource: PublicIpSource },
    },
    '#withPubliclyAdvertisable': d.fn('`withPubliclyAdvertisable` PubliclyAdvertisable ', [d.arg('PubliclyAdvertisable', d.T.boolean)]),
    withPubliclyAdvertisable(PubliclyAdvertisable): {
      assert std.isBoolean(PubliclyAdvertisable) : 'PubliclyAdvertisable must be a boolean',
      Properties+::: { PubliclyAdvertisable: PubliclyAdvertisable },
    },
    '#withSourceIpamPoolId': d.fn('`withSourceIpamPoolId` SourceIpamPoolId ', [d.arg('SourceIpamPoolId', d.T.string)]),
    withSourceIpamPoolId(SourceIpamPoolId): {
      assert std.isString(SourceIpamPoolId) : 'SourceIpamPoolId must be a string',
      Properties+::: { SourceIpamPoolId: SourceIpamPoolId },
    },
    '#withSourceResource': d.fn('`withSourceResource` SourceResource ', [d.arg('SourceResource', d.T.object)]),
    withSourceResource(SourceResource): {
      assert std.isObject(SourceResource) : 'SourceResource must be a object',
      Properties+::: { SourceResource: SourceResource },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'create-in-progress' || State == 'create-complete' || State == 'modify-in-progress' || State == 'modify-complete' || State == 'delete-in-progress' || State == 'delete-complete' : "State must be either 'create-in-progress' or 'create-complete' or 'modify-in-progress' or 'modify-complete' or 'delete-in-progress' or 'delete-complete'",
      Properties+::: { State: State },
    },
    '#withStateMessage': d.fn('`withStateMessage` StateMessage ', [d.arg('StateMessage', d.T.string)]),
    withStateMessage(StateMessage): {
      assert std.isString(StateMessage) : 'StateMessage must be a string',
      Properties+::: { StateMessage: StateMessage },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IPAMPoolCidr: {
    '#': d.pkg(
      name='IPAMPoolCidr',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Schema of AWS::EC2::IPAMPoolCidr Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::IPAMPoolCidr Resource
        * IpamPoolId Id of the IPAM Pool.
      |||,
      args=[
        d.arg('IpamPoolId', 'd.T.string'),
      ]
    ),
    new(
      IpamPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpamPoolId) : 'IpamPoolId must be a string',
        IpamPoolId: IpamPoolId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::IPAMPoolCidr',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpamPoolCidrId': d.fn('`withIpamPoolCidrId` IpamPoolCidrId ', [d.arg('IpamPoolCidrId', d.T.string)]),
    withIpamPoolCidrId(IpamPoolCidrId): {
      assert std.isString(IpamPoolCidrId) : 'IpamPoolCidrId must be a string',
      Properties+::: { IpamPoolCidrId: IpamPoolCidrId },
    },
    '#withCidr': d.fn('`withCidr` Cidr ', [d.arg('Cidr', d.T.string)]),
    withCidr(Cidr): {
      assert std.isString(Cidr) : 'Cidr must be a string',
      Properties+::: { Cidr: Cidr },
    },
    '#withNetmaskLength': d.fn('`withNetmaskLength` NetmaskLength ', [d.arg('NetmaskLength', d.T.integer)]),
    withNetmaskLength(NetmaskLength): {
      assert std.isNumber(NetmaskLength) : 'NetmaskLength must be a integer',
      Properties+::: { NetmaskLength: NetmaskLength },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
  },
  IPAMResourceDiscovery: {
    '#': d.pkg(
      name='IPAMResourceDiscovery',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Schema of AWS::EC2::IPAMResourceDiscovery Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::IPAMResourceDiscovery Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::EC2::IPAMResourceDiscovery',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpamResourceDiscoveryId': d.fn('`withIpamResourceDiscoveryId` IpamResourceDiscoveryId ', [d.arg('IpamResourceDiscoveryId', d.T.string)]),
    withIpamResourceDiscoveryId(IpamResourceDiscoveryId): {
      assert std.isString(IpamResourceDiscoveryId) : 'IpamResourceDiscoveryId must be a string',
      Properties+::: { IpamResourceDiscoveryId: IpamResourceDiscoveryId },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withOperatingRegions': d.fn('`withOperatingRegions` OperatingRegions ', [d.arg('OperatingRegions', d.T.array)]),
    withOperatingRegions(OperatingRegions): {
      assert std.isArray(OperatingRegions) : 'OperatingRegions must be a array',
      Properties+::: { OperatingRegions: OperatingRegions },
    },
    '#withIpamResourceDiscoveryRegion': d.fn('`withIpamResourceDiscoveryRegion` IpamResourceDiscoveryRegion ', [d.arg('IpamResourceDiscoveryRegion', d.T.string)]),
    withIpamResourceDiscoveryRegion(IpamResourceDiscoveryRegion): {
      assert std.isString(IpamResourceDiscoveryRegion) : 'IpamResourceDiscoveryRegion must be a string',
      Properties+::: { IpamResourceDiscoveryRegion: IpamResourceDiscoveryRegion },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withIsDefault': d.fn('`withIsDefault` IsDefault ', [d.arg('IsDefault', d.T.boolean)]),
    withIsDefault(IsDefault): {
      assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
      Properties+::: { IsDefault: IsDefault },
    },
    '#withIpamResourceDiscoveryArn': d.fn('`withIpamResourceDiscoveryArn` IpamResourceDiscoveryArn ', [d.arg('IpamResourceDiscoveryArn', d.T.string)]),
    withIpamResourceDiscoveryArn(IpamResourceDiscoveryArn): {
      assert std.isString(IpamResourceDiscoveryArn) : 'IpamResourceDiscoveryArn must be a string',
      Properties+::: { IpamResourceDiscoveryArn: IpamResourceDiscoveryArn },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IPAMResourceDiscoveryAssociation: {
    '#': d.pkg(
      name='IPAMResourceDiscoveryAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Schema of AWS::EC2::IPAMResourceDiscoveryAssociation Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::IPAMResourceDiscoveryAssociation Resource
        * IpamId The Id of the IPAM this Resource Discovery is associated to.
        * IpamResourceDiscoveryId The Amazon Resource Name (ARN) of the IPAM Resource Discovery Association.
      |||,
      args=[
        d.arg('IpamId', 'd.T.string'),
        d.arg('IpamResourceDiscoveryId', 'd.T.string'),
      ]
    ),
    new(
      IpamId,
      IpamResourceDiscoveryId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpamId) : 'IpamId must be a string',
        IpamId: IpamId,
        assert std.isString(IpamResourceDiscoveryId) : 'IpamResourceDiscoveryId must be a string',
        IpamResourceDiscoveryId: IpamResourceDiscoveryId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::IPAMResourceDiscoveryAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpamArn': d.fn('`withIpamArn` IpamArn ', [d.arg('IpamArn', d.T.string)]),
    withIpamArn(IpamArn): {
      assert std.isString(IpamArn) : 'IpamArn must be a string',
      Properties+::: { IpamArn: IpamArn },
    },
    '#withIpamRegion': d.fn('`withIpamRegion` IpamRegion ', [d.arg('IpamRegion', d.T.string)]),
    withIpamRegion(IpamRegion): {
      assert std.isString(IpamRegion) : 'IpamRegion must be a string',
      Properties+::: { IpamRegion: IpamRegion },
    },
    '#withIpamResourceDiscoveryAssociationId': d.fn('`withIpamResourceDiscoveryAssociationId` IpamResourceDiscoveryAssociationId ', [d.arg('IpamResourceDiscoveryAssociationId', d.T.string)]),
    withIpamResourceDiscoveryAssociationId(IpamResourceDiscoveryAssociationId): {
      assert std.isString(IpamResourceDiscoveryAssociationId) : 'IpamResourceDiscoveryAssociationId must be a string',
      Properties+::: { IpamResourceDiscoveryAssociationId: IpamResourceDiscoveryAssociationId },
    },
    '#withIpamResourceDiscoveryAssociationArn': d.fn('`withIpamResourceDiscoveryAssociationArn` IpamResourceDiscoveryAssociationArn ', [d.arg('IpamResourceDiscoveryAssociationArn', d.T.string)]),
    withIpamResourceDiscoveryAssociationArn(IpamResourceDiscoveryAssociationArn): {
      assert std.isString(IpamResourceDiscoveryAssociationArn) : 'IpamResourceDiscoveryAssociationArn must be a string',
      Properties+::: { IpamResourceDiscoveryAssociationArn: IpamResourceDiscoveryAssociationArn },
    },
    '#withIsDefault': d.fn('`withIsDefault` IsDefault ', [d.arg('IsDefault', d.T.boolean)]),
    withIsDefault(IsDefault): {
      assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
      Properties+::: { IsDefault: IsDefault },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withResourceDiscoveryStatus': d.fn('`withResourceDiscoveryStatus` ResourceDiscoveryStatus ', [d.arg('ResourceDiscoveryStatus', d.T.string)]),
    withResourceDiscoveryStatus(ResourceDiscoveryStatus): {
      assert std.isString(ResourceDiscoveryStatus) : 'ResourceDiscoveryStatus must be a string',
      Properties+::: { ResourceDiscoveryStatus: ResourceDiscoveryStatus },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IPAMScope: {
    '#': d.pkg(
      name='IPAMScope',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Schema of AWS::EC2::IPAMScope Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::IPAMScope Resource
        * IpamId The Id of the IPAM this scope is a part of.
      |||,
      args=[
        d.arg('IpamId', 'd.T.string'),
      ]
    ),
    new(
      IpamId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpamId) : 'IpamId must be a string',
        IpamId: IpamId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::IPAMScope',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIpamScopeId': d.fn('`withIpamScopeId` IpamScopeId ', [d.arg('IpamScopeId', d.T.string)]),
    withIpamScopeId(IpamScopeId): {
      assert std.isString(IpamScopeId) : 'IpamScopeId must be a string',
      Properties+::: { IpamScopeId: IpamScopeId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withIpamArn': d.fn('`withIpamArn` IpamArn ', [d.arg('IpamArn', d.T.string)]),
    withIpamArn(IpamArn): {
      assert std.isString(IpamArn) : 'IpamArn must be a string',
      Properties+::: { IpamArn: IpamArn },
    },
    '#withIpamScopeType': d.fn('`withIpamScopeType` IpamScopeType ', [d.arg('IpamScopeType', d.T.string)]),
    withIpamScopeType(IpamScopeType): {
      assert std.isString(IpamScopeType) : 'IpamScopeType must be a string',
      assert IpamScopeType == 'public' || IpamScopeType == 'private' : "IpamScopeType must be either 'public' or 'private'",
      Properties+::: { IpamScopeType: IpamScopeType },
    },
    '#withIsDefault': d.fn('`withIsDefault` IsDefault ', [d.arg('IsDefault', d.T.boolean)]),
    withIsDefault(IsDefault): {
      assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
      Properties+::: { IsDefault: IsDefault },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPoolCount': d.fn('`withPoolCount` PoolCount ', [d.arg('PoolCount', d.T.integer)]),
    withPoolCount(PoolCount): {
      assert std.isNumber(PoolCount) : 'PoolCount must be a integer',
      Properties+::: { PoolCount: PoolCount },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  KeyPair: {
    '#': d.pkg(
      name='KeyPair',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a key pair for use with an EC2long instance as follows:+To import an existing key pair, include the PublicKeyMaterial property.+To create a new key pair, omit the PublicKeyMaterial property. When you import an existing key pair, you specify the public key material for the key. We assume that you have the private key material for the key. CFNlong does not create or return the private key material when you import a key pair. When you create a new key pair, the private key is saved to SYSlong Parameter Store, using a parameter with the following name: /ec2/keypair/{key_pair_id}. For more information about retrieving private key, and the required permissions, see [Create a key pair using](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-key-pairs.html#create-key-pair-cloudformation) in the *User Guide*. When CFN deletes a key pair that was created or imported by a stack, it also deletes the parameter that was used to store the private key material in Parameter Store.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::KeyPair Resource
        * KeyName A unique name for the key pair. Constraints: Up to 255 ASCII characters
      |||,
      args=[
        d.arg('KeyName', 'd.T.string'),
      ]
    ),
    new(
      KeyName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(KeyName) : 'KeyName must be a string',
        KeyName: KeyName,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::KeyPair',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withKeyType': d.fn('`withKeyType` KeyType ', [d.arg('KeyType', d.T.string)]),
    withKeyType(KeyType): {
      assert std.isString(KeyType) : 'KeyType must be a string',
      assert KeyType == 'rsa' || KeyType == 'ed25519' : "KeyType must be either 'rsa' or 'ed25519'",
      Properties+::: { KeyType: KeyType },
    },
    '#withKeyFormat': d.fn('`withKeyFormat` KeyFormat ', [d.arg('KeyFormat', d.T.string)]),
    withKeyFormat(KeyFormat): {
      assert std.isString(KeyFormat) : 'KeyFormat must be a string',
      assert KeyFormat == 'pem' || KeyFormat == 'ppk' : "KeyFormat must be either 'pem' or 'ppk'",
      Properties+::: { KeyFormat: KeyFormat },
    },
    '#withPublicKeyMaterial': d.fn('`withPublicKeyMaterial` PublicKeyMaterial ', [d.arg('PublicKeyMaterial', d.T.string)]),
    withPublicKeyMaterial(PublicKeyMaterial): {
      assert std.isString(PublicKeyMaterial) : 'PublicKeyMaterial must be a string',
      Properties+::: { PublicKeyMaterial: PublicKeyMaterial },
    },
    '#withKeyFingerprint': d.fn('`withKeyFingerprint` KeyFingerprint ', [d.arg('KeyFingerprint', d.T.string)]),
    withKeyFingerprint(KeyFingerprint): {
      assert std.isString(KeyFingerprint) : 'KeyFingerprint must be a string',
      Properties+::: { KeyFingerprint: KeyFingerprint },
    },
    '#withKeyPairId': d.fn('`withKeyPairId` KeyPairId ', [d.arg('KeyPairId', d.T.string)]),
    withKeyPairId(KeyPairId): {
      assert std.isString(KeyPairId) : 'KeyPairId must be a string',
      Properties+::: { KeyPairId: KeyPairId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  LaunchTemplate: {
    '#': d.pkg(
      name='LaunchTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies the properties for creating a launch template. The minimum required properties for specifying a launch template are as follows:+You must specify at least one property for the launch template data.+You can optionally specify a name for the launch template. If you do not specify a name, CFN creates a name for you. A launch template can contain some or all of the configuration information to launch an instance. When you launch an instance using a launch template, instance properties that are not specified in the launch template use default values, except the ImageId property, which has no default value. If you do not specify an AMI ID for the launch template ImageId property, you must specify an AMI ID for the instance ImageId property. For more information, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the *Amazon EC2 User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::LaunchTemplate Resource
        * LaunchTemplateData The information for the launch template.
      |||,
      args=[
        d.arg('LaunchTemplateData', 'd.T.object'),
      ]
    ),
    new(
      LaunchTemplateData,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(LaunchTemplateData) : 'LaunchTemplateData must be a object',
        LaunchTemplateData: LaunchTemplateData,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::LaunchTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLaunchTemplateName': d.fn('`withLaunchTemplateName` LaunchTemplateName ', [d.arg('LaunchTemplateName', d.T.string)]),
    withLaunchTemplateName(LaunchTemplateName): {
      assert std.isString(LaunchTemplateName) : 'LaunchTemplateName must be a string',
      Properties+::: { LaunchTemplateName: LaunchTemplateName },
    },
    '#withVersionDescription': d.fn('`withVersionDescription` VersionDescription ', [d.arg('VersionDescription', d.T.string)]),
    withVersionDescription(VersionDescription): {
      assert std.isString(VersionDescription) : 'VersionDescription must be a string',
      Properties+::: { VersionDescription: VersionDescription },
    },
    '#withTagSpecifications': d.fn('`withTagSpecifications` TagSpecifications ', [d.arg('TagSpecifications', d.T.array)]),
    withTagSpecifications(TagSpecifications): {
      assert std.isArray(TagSpecifications) : 'TagSpecifications must be a array',
      Properties+::: { TagSpecifications: TagSpecifications },
    },
    '#withLatestVersionNumber': d.fn('`withLatestVersionNumber` LatestVersionNumber ', [d.arg('LatestVersionNumber', d.T.string)]),
    withLatestVersionNumber(LatestVersionNumber): {
      assert std.isString(LatestVersionNumber) : 'LatestVersionNumber must be a string',
      Properties+::: { LatestVersionNumber: LatestVersionNumber },
    },
    '#withLaunchTemplateId': d.fn('`withLaunchTemplateId` LaunchTemplateId ', [d.arg('LaunchTemplateId', d.T.string)]),
    withLaunchTemplateId(LaunchTemplateId): {
      assert std.isString(LaunchTemplateId) : 'LaunchTemplateId must be a string',
      Properties+::: { LaunchTemplateId: LaunchTemplateId },
    },
    '#withDefaultVersionNumber': d.fn('`withDefaultVersionNumber` DefaultVersionNumber ', [d.arg('DefaultVersionNumber', d.T.string)]),
    withDefaultVersionNumber(DefaultVersionNumber): {
      assert std.isString(DefaultVersionNumber) : 'DefaultVersionNumber must be a string',
      Properties+::: { DefaultVersionNumber: DefaultVersionNumber },
    },
  },
  LocalGatewayRoute: {
    '#': d.pkg(
      name='LocalGatewayRoute',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Describes a route for a local gateway route table.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::LocalGatewayRoute Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::LocalGatewayRoute',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDestinationCidrBlock': d.fn('`withDestinationCidrBlock` DestinationCidrBlock ', [d.arg('DestinationCidrBlock', d.T.string)]),
    withDestinationCidrBlock(DestinationCidrBlock): {
      assert std.isString(DestinationCidrBlock) : 'DestinationCidrBlock must be a string',
      Properties+::: { DestinationCidrBlock: DestinationCidrBlock },
    },
    '#withLocalGatewayRouteTableId': d.fn('`withLocalGatewayRouteTableId` LocalGatewayRouteTableId ', [d.arg('LocalGatewayRouteTableId', d.T.string)]),
    withLocalGatewayRouteTableId(LocalGatewayRouteTableId): {
      assert std.isString(LocalGatewayRouteTableId) : 'LocalGatewayRouteTableId must be a string',
      Properties+::: { LocalGatewayRouteTableId: LocalGatewayRouteTableId },
    },
    '#withLocalGatewayVirtualInterfaceGroupId': d.fn('`withLocalGatewayVirtualInterfaceGroupId` LocalGatewayVirtualInterfaceGroupId ', [d.arg('LocalGatewayVirtualInterfaceGroupId', d.T.string)]),
    withLocalGatewayVirtualInterfaceGroupId(LocalGatewayVirtualInterfaceGroupId): {
      assert std.isString(LocalGatewayVirtualInterfaceGroupId) : 'LocalGatewayVirtualInterfaceGroupId must be a string',
      Properties+::: { LocalGatewayVirtualInterfaceGroupId: LocalGatewayVirtualInterfaceGroupId },
    },
    '#withNetworkInterfaceId': d.fn('`withNetworkInterfaceId` NetworkInterfaceId ', [d.arg('NetworkInterfaceId', d.T.string)]),
    withNetworkInterfaceId(NetworkInterfaceId): {
      assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
      Properties+::: { NetworkInterfaceId: NetworkInterfaceId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
  },
  LocalGatewayRouteTable: {
    '#': d.pkg(
      name='LocalGatewayRouteTable',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Describes a route table for a local gateway.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::LocalGatewayRouteTable Resource
        * LocalGatewayId The ID of the local gateway.
      |||,
      args=[
        d.arg('LocalGatewayId', 'd.T.string'),
      ]
    ),
    new(
      LocalGatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LocalGatewayId) : 'LocalGatewayId must be a string',
        LocalGatewayId: LocalGatewayId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::LocalGatewayRouteTable',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLocalGatewayRouteTableId': d.fn('`withLocalGatewayRouteTableId` LocalGatewayRouteTableId ', [d.arg('LocalGatewayRouteTableId', d.T.string)]),
    withLocalGatewayRouteTableId(LocalGatewayRouteTableId): {
      assert std.isString(LocalGatewayRouteTableId) : 'LocalGatewayRouteTableId must be a string',
      Properties+::: { LocalGatewayRouteTableId: LocalGatewayRouteTableId },
    },
    '#withLocalGatewayRouteTableArn': d.fn('`withLocalGatewayRouteTableArn` LocalGatewayRouteTableArn ', [d.arg('LocalGatewayRouteTableArn', d.T.string)]),
    withLocalGatewayRouteTableArn(LocalGatewayRouteTableArn): {
      assert std.isString(LocalGatewayRouteTableArn) : 'LocalGatewayRouteTableArn must be a string',
      Properties+::: { LocalGatewayRouteTableArn: LocalGatewayRouteTableArn },
    },
    '#withOutpostArn': d.fn('`withOutpostArn` OutpostArn ', [d.arg('OutpostArn', d.T.string)]),
    withOutpostArn(OutpostArn): {
      assert std.isString(OutpostArn) : 'OutpostArn must be a string',
      Properties+::: { OutpostArn: OutpostArn },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withMode': d.fn('`withMode` Mode ', [d.arg('Mode', d.T.string)]),
    withMode(Mode): {
      assert std.isString(Mode) : 'Mode must be a string',
      Properties+::: { Mode: Mode },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  LocalGatewayRouteTableVirtualInterfaceGroupAssociation: {
    '#': d.pkg(
      name='LocalGatewayRouteTableVirtualInterfaceGroupAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Describes a local gateway route table virtual interface group association for a local gateway.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation Resource
        * LocalGatewayRouteTableId The ID of the local gateway route table.
        * LocalGatewayVirtualInterfaceGroupId The ID of the local gateway route table virtual interface group.
      |||,
      args=[
        d.arg('LocalGatewayRouteTableId', 'd.T.string'),
        d.arg('LocalGatewayVirtualInterfaceGroupId', 'd.T.string'),
      ]
    ),
    new(
      LocalGatewayRouteTableId,
      LocalGatewayVirtualInterfaceGroupId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LocalGatewayRouteTableId) : 'LocalGatewayRouteTableId must be a string',
        LocalGatewayRouteTableId: LocalGatewayRouteTableId,
        assert std.isString(LocalGatewayVirtualInterfaceGroupId) : 'LocalGatewayVirtualInterfaceGroupId must be a string',
        LocalGatewayVirtualInterfaceGroupId: LocalGatewayVirtualInterfaceGroupId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLocalGatewayRouteTableVirtualInterfaceGroupAssociationId': d.fn('`withLocalGatewayRouteTableVirtualInterfaceGroupAssociationId` LocalGatewayRouteTableVirtualInterfaceGroupAssociationId ', [d.arg('LocalGatewayRouteTableVirtualInterfaceGroupAssociationId', d.T.string)]),
    withLocalGatewayRouteTableVirtualInterfaceGroupAssociationId(LocalGatewayRouteTableVirtualInterfaceGroupAssociationId): {
      assert std.isString(LocalGatewayRouteTableVirtualInterfaceGroupAssociationId) : 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId must be a string',
      Properties+::: { LocalGatewayRouteTableVirtualInterfaceGroupAssociationId: LocalGatewayRouteTableVirtualInterfaceGroupAssociationId },
    },
    '#withLocalGatewayId': d.fn('`withLocalGatewayId` LocalGatewayId ', [d.arg('LocalGatewayId', d.T.string)]),
    withLocalGatewayId(LocalGatewayId): {
      assert std.isString(LocalGatewayId) : 'LocalGatewayId must be a string',
      Properties+::: { LocalGatewayId: LocalGatewayId },
    },
    '#withLocalGatewayRouteTableArn': d.fn('`withLocalGatewayRouteTableArn` LocalGatewayRouteTableArn ', [d.arg('LocalGatewayRouteTableArn', d.T.string)]),
    withLocalGatewayRouteTableArn(LocalGatewayRouteTableArn): {
      assert std.isString(LocalGatewayRouteTableArn) : 'LocalGatewayRouteTableArn must be a string',
      Properties+::: { LocalGatewayRouteTableArn: LocalGatewayRouteTableArn },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  LocalGatewayRouteTableVPCAssociation: {
    '#': d.pkg(
      name='LocalGatewayRouteTableVPCAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Describes an association between a local gateway route table and a VPC.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::LocalGatewayRouteTableVPCAssociation Resource
        * LocalGatewayRouteTableId The ID of the local gateway route table.
        * VpcId The ID of the VPC.
      |||,
      args=[
        d.arg('LocalGatewayRouteTableId', 'd.T.string'),
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      LocalGatewayRouteTableId,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LocalGatewayRouteTableId) : 'LocalGatewayRouteTableId must be a string',
        LocalGatewayRouteTableId: LocalGatewayRouteTableId,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::LocalGatewayRouteTableVPCAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLocalGatewayId': d.fn('`withLocalGatewayId` LocalGatewayId ', [d.arg('LocalGatewayId', d.T.string)]),
    withLocalGatewayId(LocalGatewayId): {
      assert std.isString(LocalGatewayId) : 'LocalGatewayId must be a string',
      Properties+::: { LocalGatewayId: LocalGatewayId },
    },
    '#withLocalGatewayRouteTableVpcAssociationId': d.fn('`withLocalGatewayRouteTableVpcAssociationId` LocalGatewayRouteTableVpcAssociationId ', [d.arg('LocalGatewayRouteTableVpcAssociationId', d.T.string)]),
    withLocalGatewayRouteTableVpcAssociationId(LocalGatewayRouteTableVpcAssociationId): {
      assert std.isString(LocalGatewayRouteTableVpcAssociationId) : 'LocalGatewayRouteTableVpcAssociationId must be a string',
      Properties+::: { LocalGatewayRouteTableVpcAssociationId: LocalGatewayRouteTableVpcAssociationId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  NatGateway: {
    '#': d.pkg(
      name='NatGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a network address translation (NAT) gateway in the specified subnet. You can create either a public NAT gateway or a private NAT gateway. The default is a public NAT gateway. If you create a public NAT gateway, you must specify an elastic IP address. With a NAT gateway, instances in a private subnet can connect to the internet, other AWS services, or an on-premises network using the IP address of the NAT gateway. For more information, see [NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html) in the *Amazon VPC User Guide*. If you add a default route (AWS::EC2::Route resource) that points to a NAT gateway, specify the NAT gateway ID for the routes NatGatewayId property.When you associate an Elastic IP address or secondary Elastic IP address with a public NAT gateway, the network border group of the Elastic IP address must match the network border group of the Availability Zone (AZ) that the public NAT gateway is in. Otherwise, the NAT gateway fails to launch. You can see the network border group for the AZ by viewing the details of the subnet. Similarly, you can view the network border group for the Elastic IP address by viewing its details. For more information, see [Allocate an Elastic IP address](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#allocate-eip) in the *Amazon VPC User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NatGateway Resource
        * SubnetId The ID of the subnet in which the NAT gateway is located.
      |||,
      args=[
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NatGateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSecondaryAllocationIds': d.fn('`withSecondaryAllocationIds` SecondaryAllocationIds ', [d.arg('SecondaryAllocationIds', d.T.array)]),
    withSecondaryAllocationIds(SecondaryAllocationIds): {
      assert std.isArray(SecondaryAllocationIds) : 'SecondaryAllocationIds must be a array',
      Properties+::: { SecondaryAllocationIds: SecondaryAllocationIds },
    },
    '#withPrivateIpAddress': d.fn('`withPrivateIpAddress` PrivateIpAddress ', [d.arg('PrivateIpAddress', d.T.string)]),
    withPrivateIpAddress(PrivateIpAddress): {
      assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
      Properties+::: { PrivateIpAddress: PrivateIpAddress },
    },
    '#withConnectivityType': d.fn('`withConnectivityType` ConnectivityType ', [d.arg('ConnectivityType', d.T.string)]),
    withConnectivityType(ConnectivityType): {
      assert std.isString(ConnectivityType) : 'ConnectivityType must be a string',
      Properties+::: { ConnectivityType: ConnectivityType },
    },
    '#withSecondaryPrivateIpAddresses': d.fn('`withSecondaryPrivateIpAddresses` SecondaryPrivateIpAddresses ', [d.arg('SecondaryPrivateIpAddresses', d.T.array)]),
    withSecondaryPrivateIpAddresses(SecondaryPrivateIpAddresses): {
      assert std.isArray(SecondaryPrivateIpAddresses) : 'SecondaryPrivateIpAddresses must be a array',
      Properties+::: { SecondaryPrivateIpAddresses: SecondaryPrivateIpAddresses },
    },
    '#withSecondaryPrivateIpAddressCount': d.fn('`withSecondaryPrivateIpAddressCount` SecondaryPrivateIpAddressCount ', [d.arg('SecondaryPrivateIpAddressCount', d.T.integer)]),
    withSecondaryPrivateIpAddressCount(SecondaryPrivateIpAddressCount): {
      assert std.isNumber(SecondaryPrivateIpAddressCount) : 'SecondaryPrivateIpAddressCount must be a integer',
      Properties+::: { SecondaryPrivateIpAddressCount: SecondaryPrivateIpAddressCount },
    },
    '#withAllocationId': d.fn('`withAllocationId` AllocationId ', [d.arg('AllocationId', d.T.string)]),
    withAllocationId(AllocationId): {
      assert std.isString(AllocationId) : 'AllocationId must be a string',
      Properties+::: { AllocationId: AllocationId },
    },
    '#withNatGatewayId': d.fn('`withNatGatewayId` NatGatewayId ', [d.arg('NatGatewayId', d.T.string)]),
    withNatGatewayId(NatGatewayId): {
      assert std.isString(NatGatewayId) : 'NatGatewayId must be a string',
      Properties+::: { NatGatewayId: NatGatewayId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withMaxDrainDurationSeconds': d.fn('`withMaxDrainDurationSeconds` MaxDrainDurationSeconds ', [d.arg('MaxDrainDurationSeconds', d.T.integer)]),
    withMaxDrainDurationSeconds(MaxDrainDurationSeconds): {
      assert std.isNumber(MaxDrainDurationSeconds) : 'MaxDrainDurationSeconds must be a integer',
      Properties+::: { MaxDrainDurationSeconds: MaxDrainDurationSeconds },
    },
  },
  NetworkAcl: {
    '#': d.pkg(
      name='NetworkAcl',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a network ACL for your VPC.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkAcl Resource
        * VpcId The ID of the VPC for the network ACL.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkAcl',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  NetworkAclEntry: {
    '#': d.pkg(
      name='NetworkAclEntry',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::NetworkAclEntry',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkAclEntry Resource
        * NetworkAclId The ID of the network ACL
        * RuleAction Indicates whether to allow or deny the traffic that matches the rule
        * RuleNumber Rule number to assign to the entry, such as 100. ACL entries are processed in ascending order by rule number. Entries cant use the same rule number unless one is an egress rule and the other is an ingress rule
        * Protocol The protocol number. A value of &#34;-1&#34; means all protocols. If you specify &#34;-1&#34; or a protocol number other than &#34;6&#34; (TCP), &#34;17&#34; (UDP), or &#34;1&#34; (ICMP), traffic on all ports is allowed, regardless of any ports or ICMP types or codes that you specify. If you specify protocol &#34;58&#34; (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and codes allowed, regardless of any that you specify. If you specify protocol &#34;58&#34; (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP type and code
      |||,
      args=[
        d.arg('NetworkAclId', 'd.T.string'),
        d.arg('RuleAction', 'd.T.string'),
        d.arg('RuleNumber', 'd.T.integer'),
        d.arg('Protocol', 'd.T.integer'),
      ]
    ),
    new(
      NetworkAclId,
      RuleAction,
      RuleNumber,
      Protocol,
    ): {
      local base = self,
      Properties: {
        assert std.isString(NetworkAclId) : 'NetworkAclId must be a string',
        NetworkAclId: NetworkAclId,
        assert std.isString(RuleAction) : 'RuleAction must be a string',
        RuleAction: RuleAction,
        assert std.isNumber(RuleNumber) : 'RuleNumber must be a integer',
        RuleNumber: RuleNumber,
        assert std.isNumber(Protocol) : 'Protocol must be a integer',
        Protocol: Protocol,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkAclEntry',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPortRange': d.fn('`withPortRange` PortRange ', [d.arg('PortRange', d.T.object)]),
    withPortRange(PortRange): {
      assert std.isObject(PortRange) : 'PortRange must be a object',
      Properties+::: { PortRange: PortRange },
    },
    '#withCidrBlock': d.fn('`withCidrBlock` CidrBlock ', [d.arg('CidrBlock', d.T.string)]),
    withCidrBlock(CidrBlock): {
      assert std.isString(CidrBlock) : 'CidrBlock must be a string',
      Properties+::: { CidrBlock: CidrBlock },
    },
    '#withEgress': d.fn('`withEgress` Egress ', [d.arg('Egress', d.T.boolean)]),
    withEgress(Egress): {
      assert std.isBoolean(Egress) : 'Egress must be a boolean',
      Properties+::: { Egress: Egress },
    },
    '#withIpv6CidrBlock': d.fn('`withIpv6CidrBlock` Ipv6CidrBlock ', [d.arg('Ipv6CidrBlock', d.T.string)]),
    withIpv6CidrBlock(Ipv6CidrBlock): {
      assert std.isString(Ipv6CidrBlock) : 'Ipv6CidrBlock must be a string',
      Properties+::: { Ipv6CidrBlock: Ipv6CidrBlock },
    },
    '#withIcmp': d.fn('`withIcmp` Icmp ', [d.arg('Icmp', d.T.object)]),
    withIcmp(Icmp): {
      assert std.isObject(Icmp) : 'Icmp must be a object',
      Properties+::: { Icmp: Icmp },
    },
  },
  NetworkInsightsAccessScope: {
    '#': d.pkg(
      name='NetworkInsightsAccessScope',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource schema for AWS::EC2::NetworkInsightsAccessScope',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkInsightsAccessScope Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkInsightsAccessScope',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withNetworkInsightsAccessScopeId': d.fn('`withNetworkInsightsAccessScopeId` NetworkInsightsAccessScopeId ', [d.arg('NetworkInsightsAccessScopeId', d.T.string)]),
    withNetworkInsightsAccessScopeId(NetworkInsightsAccessScopeId): {
      assert std.isString(NetworkInsightsAccessScopeId) : 'NetworkInsightsAccessScopeId must be a string',
      Properties+::: { NetworkInsightsAccessScopeId: NetworkInsightsAccessScopeId },
    },
    '#withNetworkInsightsAccessScopeArn': d.fn('`withNetworkInsightsAccessScopeArn` NetworkInsightsAccessScopeArn ', [d.arg('NetworkInsightsAccessScopeArn', d.T.string)]),
    withNetworkInsightsAccessScopeArn(NetworkInsightsAccessScopeArn): {
      assert std.isString(NetworkInsightsAccessScopeArn) : 'NetworkInsightsAccessScopeArn must be a string',
      Properties+::: { NetworkInsightsAccessScopeArn: NetworkInsightsAccessScopeArn },
    },
    '#withCreatedDate': d.fn('`withCreatedDate` CreatedDate ', [d.arg('CreatedDate', d.T.string)]),
    withCreatedDate(CreatedDate): {
      assert std.isString(CreatedDate) : 'CreatedDate must be a string',
      Properties+::: { CreatedDate: CreatedDate },
    },
    '#withUpdatedDate': d.fn('`withUpdatedDate` UpdatedDate ', [d.arg('UpdatedDate', d.T.string)]),
    withUpdatedDate(UpdatedDate): {
      assert std.isString(UpdatedDate) : 'UpdatedDate must be a string',
      Properties+::: { UpdatedDate: UpdatedDate },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withMatchPaths': d.fn('`withMatchPaths` MatchPaths ', [d.arg('MatchPaths', d.T.array)]),
    withMatchPaths(MatchPaths): {
      assert std.isArray(MatchPaths) : 'MatchPaths must be a array',
      Properties+::: { MatchPaths: MatchPaths },
    },
    '#withExcludePaths': d.fn('`withExcludePaths` ExcludePaths ', [d.arg('ExcludePaths', d.T.array)]),
    withExcludePaths(ExcludePaths): {
      assert std.isArray(ExcludePaths) : 'ExcludePaths must be a array',
      Properties+::: { ExcludePaths: ExcludePaths },
    },
  },
  NetworkInsightsAccessScopeAnalysis: {
    '#': d.pkg(
      name='NetworkInsightsAccessScopeAnalysis',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource schema for AWS::EC2::NetworkInsightsAccessScopeAnalysis',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkInsightsAccessScopeAnalysis Resource
        * NetworkInsightsAccessScopeId 
      |||,
      args=[
        d.arg('NetworkInsightsAccessScopeId', 'd.T.string'),
      ]
    ),
    new(
      NetworkInsightsAccessScopeId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(NetworkInsightsAccessScopeId) : 'NetworkInsightsAccessScopeId must be a string',
        NetworkInsightsAccessScopeId: NetworkInsightsAccessScopeId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkInsightsAccessScopeAnalysis',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withNetworkInsightsAccessScopeAnalysisId': d.fn('`withNetworkInsightsAccessScopeAnalysisId` NetworkInsightsAccessScopeAnalysisId ', [d.arg('NetworkInsightsAccessScopeAnalysisId', d.T.string)]),
    withNetworkInsightsAccessScopeAnalysisId(NetworkInsightsAccessScopeAnalysisId): {
      assert std.isString(NetworkInsightsAccessScopeAnalysisId) : 'NetworkInsightsAccessScopeAnalysisId must be a string',
      Properties+::: { NetworkInsightsAccessScopeAnalysisId: NetworkInsightsAccessScopeAnalysisId },
    },
    '#withNetworkInsightsAccessScopeAnalysisArn': d.fn('`withNetworkInsightsAccessScopeAnalysisArn` NetworkInsightsAccessScopeAnalysisArn ', [d.arg('NetworkInsightsAccessScopeAnalysisArn', d.T.string)]),
    withNetworkInsightsAccessScopeAnalysisArn(NetworkInsightsAccessScopeAnalysisArn): {
      assert std.isString(NetworkInsightsAccessScopeAnalysisArn) : 'NetworkInsightsAccessScopeAnalysisArn must be a string',
      Properties+::: { NetworkInsightsAccessScopeAnalysisArn: NetworkInsightsAccessScopeAnalysisArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'running' || Status == 'failed' || Status == 'succeeded' : "Status must be either 'running' or 'failed' or 'succeeded'",
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withStartDate': d.fn('`withStartDate` StartDate ', [d.arg('StartDate', d.T.string)]),
    withStartDate(StartDate): {
      assert std.isString(StartDate) : 'StartDate must be a string',
      Properties+::: { StartDate: StartDate },
    },
    '#withEndDate': d.fn('`withEndDate` EndDate ', [d.arg('EndDate', d.T.string)]),
    withEndDate(EndDate): {
      assert std.isString(EndDate) : 'EndDate must be a string',
      Properties+::: { EndDate: EndDate },
    },
    '#withFindingsFound': d.fn('`withFindingsFound` FindingsFound ', [d.arg('FindingsFound', d.T.string)]),
    withFindingsFound(FindingsFound): {
      assert std.isString(FindingsFound) : 'FindingsFound must be a string',
      assert FindingsFound == 'true' || FindingsFound == 'false' || FindingsFound == 'unknown' : "FindingsFound must be either 'true' or 'false' or 'unknown'",
      Properties+::: { FindingsFound: FindingsFound },
    },
    '#withAnalyzedEniCount': d.fn('`withAnalyzedEniCount` AnalyzedEniCount ', [d.arg('AnalyzedEniCount', d.T.integer)]),
    withAnalyzedEniCount(AnalyzedEniCount): {
      assert std.isNumber(AnalyzedEniCount) : 'AnalyzedEniCount must be a integer',
      Properties+::: { AnalyzedEniCount: AnalyzedEniCount },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  NetworkInsightsAnalysis: {
    '#': d.pkg(
      name='NetworkInsightsAnalysis',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource schema for AWS::EC2::NetworkInsightsAnalysis',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkInsightsAnalysis Resource
        * NetworkInsightsPathId 
      |||,
      args=[
        d.arg('NetworkInsightsPathId', 'd.T.string'),
      ]
    ),
    new(
      NetworkInsightsPathId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(NetworkInsightsPathId) : 'NetworkInsightsPathId must be a string',
        NetworkInsightsPathId: NetworkInsightsPathId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkInsightsAnalysis',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'running' || Status == 'failed' || Status == 'succeeded' : "Status must be either 'running' or 'failed' or 'succeeded'",
      Properties+::: { Status: Status },
    },
    '#withReturnPathComponents': d.fn('`withReturnPathComponents` ReturnPathComponents ', [d.arg('ReturnPathComponents', d.T.array)]),
    withReturnPathComponents(ReturnPathComponents): {
      assert std.isArray(ReturnPathComponents) : 'ReturnPathComponents must be a array',
      Properties+::: { ReturnPathComponents: ReturnPathComponents },
    },
    '#withNetworkInsightsAnalysisId': d.fn('`withNetworkInsightsAnalysisId` NetworkInsightsAnalysisId ', [d.arg('NetworkInsightsAnalysisId', d.T.string)]),
    withNetworkInsightsAnalysisId(NetworkInsightsAnalysisId): {
      assert std.isString(NetworkInsightsAnalysisId) : 'NetworkInsightsAnalysisId must be a string',
      Properties+::: { NetworkInsightsAnalysisId: NetworkInsightsAnalysisId },
    },
    '#withNetworkPathFound': d.fn('`withNetworkPathFound` NetworkPathFound ', [d.arg('NetworkPathFound', d.T.boolean)]),
    withNetworkPathFound(NetworkPathFound): {
      assert std.isBoolean(NetworkPathFound) : 'NetworkPathFound must be a boolean',
      Properties+::: { NetworkPathFound: NetworkPathFound },
    },
    '#withSuggestedAccounts': d.fn('`withSuggestedAccounts` SuggestedAccounts ', [d.arg('SuggestedAccounts', d.T.array)]),
    withSuggestedAccounts(SuggestedAccounts): {
      assert std.isArray(SuggestedAccounts) : 'SuggestedAccounts must be a array',
      Properties+::: { SuggestedAccounts: SuggestedAccounts },
    },
    '#withFilterInArns': d.fn('`withFilterInArns` FilterInArns ', [d.arg('FilterInArns', d.T.array)]),
    withFilterInArns(FilterInArns): {
      assert std.isArray(FilterInArns) : 'FilterInArns must be a array',
      Properties+::: { FilterInArns: FilterInArns },
    },
    '#withNetworkInsightsAnalysisArn': d.fn('`withNetworkInsightsAnalysisArn` NetworkInsightsAnalysisArn ', [d.arg('NetworkInsightsAnalysisArn', d.T.string)]),
    withNetworkInsightsAnalysisArn(NetworkInsightsAnalysisArn): {
      assert std.isString(NetworkInsightsAnalysisArn) : 'NetworkInsightsAnalysisArn must be a string',
      Properties+::: { NetworkInsightsAnalysisArn: NetworkInsightsAnalysisArn },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withStartDate': d.fn('`withStartDate` StartDate ', [d.arg('StartDate', d.T.string)]),
    withStartDate(StartDate): {
      assert std.isString(StartDate) : 'StartDate must be a string',
      Properties+::: { StartDate: StartDate },
    },
    '#withAlternatePathHints': d.fn('`withAlternatePathHints` AlternatePathHints ', [d.arg('AlternatePathHints', d.T.array)]),
    withAlternatePathHints(AlternatePathHints): {
      assert std.isArray(AlternatePathHints) : 'AlternatePathHints must be a array',
      Properties+::: { AlternatePathHints: AlternatePathHints },
    },
    '#withExplanations': d.fn('`withExplanations` Explanations ', [d.arg('Explanations', d.T.array)]),
    withExplanations(Explanations): {
      assert std.isArray(Explanations) : 'Explanations must be a array',
      Properties+::: { Explanations: Explanations },
    },
    '#withForwardPathComponents': d.fn('`withForwardPathComponents` ForwardPathComponents ', [d.arg('ForwardPathComponents', d.T.array)]),
    withForwardPathComponents(ForwardPathComponents): {
      assert std.isArray(ForwardPathComponents) : 'ForwardPathComponents must be a array',
      Properties+::: { ForwardPathComponents: ForwardPathComponents },
    },
    '#withAdditionalAccounts': d.fn('`withAdditionalAccounts` AdditionalAccounts ', [d.arg('AdditionalAccounts', d.T.array)]),
    withAdditionalAccounts(AdditionalAccounts): {
      assert std.isArray(AdditionalAccounts) : 'AdditionalAccounts must be a array',
      Properties+::: { AdditionalAccounts: AdditionalAccounts },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  NetworkInsightsPath: {
    '#': d.pkg(
      name='NetworkInsightsPath',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource schema for AWS::EC2::NetworkInsightsPath',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkInsightsPath Resource
        * Protocol 
        * Source 
      |||,
      args=[
        d.arg('Protocol', 'd.T.string'),
        d.arg('Source', 'd.T.string'),
      ]
    ),
    new(
      Protocol,
      Source,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Protocol) : 'Protocol must be a string',
        Protocol: Protocol,
        assert std.isString(Source) : 'Source must be a string',
        Source: Source,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkInsightsPath',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withNetworkInsightsPathId': d.fn('`withNetworkInsightsPathId` NetworkInsightsPathId ', [d.arg('NetworkInsightsPathId', d.T.string)]),
    withNetworkInsightsPathId(NetworkInsightsPathId): {
      assert std.isString(NetworkInsightsPathId) : 'NetworkInsightsPathId must be a string',
      Properties+::: { NetworkInsightsPathId: NetworkInsightsPathId },
    },
    '#withNetworkInsightsPathArn': d.fn('`withNetworkInsightsPathArn` NetworkInsightsPathArn ', [d.arg('NetworkInsightsPathArn', d.T.string)]),
    withNetworkInsightsPathArn(NetworkInsightsPathArn): {
      assert std.isString(NetworkInsightsPathArn) : 'NetworkInsightsPathArn must be a string',
      Properties+::: { NetworkInsightsPathArn: NetworkInsightsPathArn },
    },
    '#withCreatedDate': d.fn('`withCreatedDate` CreatedDate ', [d.arg('CreatedDate', d.T.string)]),
    withCreatedDate(CreatedDate): {
      assert std.isString(CreatedDate) : 'CreatedDate must be a string',
      Properties+::: { CreatedDate: CreatedDate },
    },
    '#withSourceIp': d.fn('`withSourceIp` SourceIp ', [d.arg('SourceIp', d.T.string)]),
    withSourceIp(SourceIp): {
      assert std.isString(SourceIp) : 'SourceIp must be a string',
      Properties+::: { SourceIp: SourceIp },
    },
    '#withFilterAtSource': d.fn('`withFilterAtSource` FilterAtSource ', [d.arg('FilterAtSource', d.T.object)]),
    withFilterAtSource(FilterAtSource): {
      assert std.isObject(FilterAtSource) : 'FilterAtSource must be a object',
      Properties+::: { FilterAtSource: FilterAtSource },
    },
    '#withFilterAtDestination': d.fn('`withFilterAtDestination` FilterAtDestination ', [d.arg('FilterAtDestination', d.T.object)]),
    withFilterAtDestination(FilterAtDestination): {
      assert std.isObject(FilterAtDestination) : 'FilterAtDestination must be a object',
      Properties+::: { FilterAtDestination: FilterAtDestination },
    },
    '#withDestinationIp': d.fn('`withDestinationIp` DestinationIp ', [d.arg('DestinationIp', d.T.string)]),
    withDestinationIp(DestinationIp): {
      assert std.isString(DestinationIp) : 'DestinationIp must be a string',
      Properties+::: { DestinationIp: DestinationIp },
    },
    '#withDestination': d.fn('`withDestination` Destination ', [d.arg('Destination', d.T.string)]),
    withDestination(Destination): {
      assert std.isString(Destination) : 'Destination must be a string',
      Properties+::: { Destination: Destination },
    },
    '#withSourceArn': d.fn('`withSourceArn` SourceArn ', [d.arg('SourceArn', d.T.string)]),
    withSourceArn(SourceArn): {
      assert std.isString(SourceArn) : 'SourceArn must be a string',
      Properties+::: { SourceArn: SourceArn },
    },
    '#withDestinationArn': d.fn('`withDestinationArn` DestinationArn ', [d.arg('DestinationArn', d.T.string)]),
    withDestinationArn(DestinationArn): {
      assert std.isString(DestinationArn) : 'DestinationArn must be a string',
      Properties+::: { DestinationArn: DestinationArn },
    },
    '#withDestinationPort': d.fn('`withDestinationPort` DestinationPort ', [d.arg('DestinationPort', d.T.integer)]),
    withDestinationPort(DestinationPort): {
      assert std.isNumber(DestinationPort) : 'DestinationPort must be a integer',
      Properties+::: { DestinationPort: DestinationPort },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  NetworkInterface: {
    '#': d.pkg(
      name='NetworkInterface',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::NetworkInterface resource creates network interface',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkInterface Resource
        * SubnetId The ID of the subnet to associate with the network interface.
      |||,
      args=[
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkInterface',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPrivateIpAddress': d.fn('`withPrivateIpAddress` PrivateIpAddress ', [d.arg('PrivateIpAddress', d.T.string)]),
    withPrivateIpAddress(PrivateIpAddress): {
      assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
      Properties+::: { PrivateIpAddress: PrivateIpAddress },
    },
    '#withPrivateIpAddresses': d.fn('`withPrivateIpAddresses` PrivateIpAddresses ', [d.arg('PrivateIpAddresses', d.T.array)]),
    withPrivateIpAddresses(PrivateIpAddresses): {
      assert std.isArray(PrivateIpAddresses) : 'PrivateIpAddresses must be a array',
      Properties+::: { PrivateIpAddresses: PrivateIpAddresses },
    },
    '#withSecondaryPrivateIpAddressCount': d.fn('`withSecondaryPrivateIpAddressCount` SecondaryPrivateIpAddressCount ', [d.arg('SecondaryPrivateIpAddressCount', d.T.integer)]),
    withSecondaryPrivateIpAddressCount(SecondaryPrivateIpAddressCount): {
      assert std.isNumber(SecondaryPrivateIpAddressCount) : 'SecondaryPrivateIpAddressCount must be a integer',
      Properties+::: { SecondaryPrivateIpAddressCount: SecondaryPrivateIpAddressCount },
    },
    '#withPrimaryPrivateIpAddress': d.fn('`withPrimaryPrivateIpAddress` PrimaryPrivateIpAddress ', [d.arg('PrimaryPrivateIpAddress', d.T.string)]),
    withPrimaryPrivateIpAddress(PrimaryPrivateIpAddress): {
      assert std.isString(PrimaryPrivateIpAddress) : 'PrimaryPrivateIpAddress must be a string',
      Properties+::: { PrimaryPrivateIpAddress: PrimaryPrivateIpAddress },
    },
    '#withIpv4Prefixes': d.fn('`withIpv4Prefixes` Ipv4Prefixes ', [d.arg('Ipv4Prefixes', d.T.array)]),
    withIpv4Prefixes(Ipv4Prefixes): {
      assert std.isArray(Ipv4Prefixes) : 'Ipv4Prefixes must be a array',
      Properties+::: { Ipv4Prefixes: Ipv4Prefixes },
    },
    '#withIpv4PrefixCount': d.fn('`withIpv4PrefixCount` Ipv4PrefixCount ', [d.arg('Ipv4PrefixCount', d.T.integer)]),
    withIpv4PrefixCount(Ipv4PrefixCount): {
      assert std.isNumber(Ipv4PrefixCount) : 'Ipv4PrefixCount must be a integer',
      Properties+::: { Ipv4PrefixCount: Ipv4PrefixCount },
    },
    '#withGroupSet': d.fn('`withGroupSet` GroupSet ', [d.arg('GroupSet', d.T.array)]),
    withGroupSet(GroupSet): {
      assert std.isArray(GroupSet) : 'GroupSet must be a array',
      Properties+::: { GroupSet: GroupSet },
    },
    '#withIpv6Addresses': d.fn('`withIpv6Addresses` Ipv6Addresses ', [d.arg('Ipv6Addresses', d.T.array)]),
    withIpv6Addresses(Ipv6Addresses): {
      assert std.isArray(Ipv6Addresses) : 'Ipv6Addresses must be a array',
      Properties+::: { Ipv6Addresses: Ipv6Addresses },
    },
    '#withIpv6Prefixes': d.fn('`withIpv6Prefixes` Ipv6Prefixes ', [d.arg('Ipv6Prefixes', d.T.array)]),
    withIpv6Prefixes(Ipv6Prefixes): {
      assert std.isArray(Ipv6Prefixes) : 'Ipv6Prefixes must be a array',
      Properties+::: { Ipv6Prefixes: Ipv6Prefixes },
    },
    '#withIpv6PrefixCount': d.fn('`withIpv6PrefixCount` Ipv6PrefixCount ', [d.arg('Ipv6PrefixCount', d.T.integer)]),
    withIpv6PrefixCount(Ipv6PrefixCount): {
      assert std.isNumber(Ipv6PrefixCount) : 'Ipv6PrefixCount must be a integer',
      Properties+::: { Ipv6PrefixCount: Ipv6PrefixCount },
    },
    '#withSourceDestCheck': d.fn('`withSourceDestCheck` SourceDestCheck ', [d.arg('SourceDestCheck', d.T.boolean)]),
    withSourceDestCheck(SourceDestCheck): {
      assert std.isBoolean(SourceDestCheck) : 'SourceDestCheck must be a boolean',
      Properties+::: { SourceDestCheck: SourceDestCheck },
    },
    '#withInterfaceType': d.fn('`withInterfaceType` InterfaceType ', [d.arg('InterfaceType', d.T.string)]),
    withInterfaceType(InterfaceType): {
      assert std.isString(InterfaceType) : 'InterfaceType must be a string',
      Properties+::: { InterfaceType: InterfaceType },
    },
    '#withSecondaryPrivateIpAddresses': d.fn('`withSecondaryPrivateIpAddresses` SecondaryPrivateIpAddresses ', [d.arg('SecondaryPrivateIpAddresses', d.T.array)]),
    withSecondaryPrivateIpAddresses(SecondaryPrivateIpAddresses): {
      assert std.isArray(SecondaryPrivateIpAddresses) : 'SecondaryPrivateIpAddresses must be a array',
      Properties+::: { SecondaryPrivateIpAddresses: SecondaryPrivateIpAddresses },
    },
    '#withIpv6AddressCount': d.fn('`withIpv6AddressCount` Ipv6AddressCount ', [d.arg('Ipv6AddressCount', d.T.integer)]),
    withIpv6AddressCount(Ipv6AddressCount): {
      assert std.isNumber(Ipv6AddressCount) : 'Ipv6AddressCount must be a integer',
      Properties+::: { Ipv6AddressCount: Ipv6AddressCount },
    },
    '#withEnablePrimaryIpv6': d.fn('`withEnablePrimaryIpv6` EnablePrimaryIpv6 ', [d.arg('EnablePrimaryIpv6', d.T.boolean)]),
    withEnablePrimaryIpv6(EnablePrimaryIpv6): {
      assert std.isBoolean(EnablePrimaryIpv6) : 'EnablePrimaryIpv6 must be a boolean',
      Properties+::: { EnablePrimaryIpv6: EnablePrimaryIpv6 },
    },
    '#withPrimaryIpv6Address': d.fn('`withPrimaryIpv6Address` PrimaryIpv6Address ', [d.arg('PrimaryIpv6Address', d.T.string)]),
    withPrimaryIpv6Address(PrimaryIpv6Address): {
      assert std.isString(PrimaryIpv6Address) : 'PrimaryIpv6Address must be a string',
      Properties+::: { PrimaryIpv6Address: PrimaryIpv6Address },
    },
    '#withConnectionTrackingSpecification': d.fn('`withConnectionTrackingSpecification` ConnectionTrackingSpecification ', [d.arg('ConnectionTrackingSpecification', d.T.object)]),
    withConnectionTrackingSpecification(ConnectionTrackingSpecification): {
      assert std.isObject(ConnectionTrackingSpecification) : 'ConnectionTrackingSpecification must be a object',
      Properties+::: { ConnectionTrackingSpecification: ConnectionTrackingSpecification },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
  },
  NetworkInterfaceAttachment: {
    '#': d.pkg(
      name='NetworkInterfaceAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Attaches an elastic network interface (ENI) to an Amazon EC2 instance. You can use this resource type to attach additional network interfaces to an instance without interruption.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkInterfaceAttachment Resource
        * DeviceIndex The network interfaces position in the attachment order. For example, the first attached network interface has a DeviceIndex of 0.
        * InstanceId The ID of the instance to which you will attach the ENI.
        * NetworkInterfaceId The ID of the ENI that you want to attach.
      |||,
      args=[
        d.arg('DeviceIndex', 'd.T.string'),
        d.arg('InstanceId', 'd.T.string'),
        d.arg('NetworkInterfaceId', 'd.T.string'),
      ]
    ),
    new(
      DeviceIndex,
      InstanceId,
      NetworkInterfaceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DeviceIndex) : 'DeviceIndex must be a string',
        DeviceIndex: DeviceIndex,
        assert std.isString(InstanceId) : 'InstanceId must be a string',
        InstanceId: InstanceId,
        assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
        NetworkInterfaceId: NetworkInterfaceId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkInterfaceAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAttachmentId': d.fn('`withAttachmentId` AttachmentId ', [d.arg('AttachmentId', d.T.string)]),
    withAttachmentId(AttachmentId): {
      assert std.isString(AttachmentId) : 'AttachmentId must be a string',
      Properties+::: { AttachmentId: AttachmentId },
    },
    '#withDeleteOnTermination': d.fn('`withDeleteOnTermination` DeleteOnTermination ', [d.arg('DeleteOnTermination', d.T.boolean)]),
    withDeleteOnTermination(DeleteOnTermination): {
      assert std.isBoolean(DeleteOnTermination) : 'DeleteOnTermination must be a boolean',
      Properties+::: { DeleteOnTermination: DeleteOnTermination },
    },
    '#withEnaSrdSpecification': d.fn('`withEnaSrdSpecification` EnaSrdSpecification ', [d.arg('EnaSrdSpecification', d.T.object)]),
    withEnaSrdSpecification(EnaSrdSpecification): {
      assert std.isObject(EnaSrdSpecification) : 'EnaSrdSpecification must be a object',
      Properties+::: { EnaSrdSpecification: EnaSrdSpecification },
    },
  },
  NetworkInterfacePermission: {
    '#': d.pkg(
      name='NetworkInterfacePermission',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::NetworkInterfacePermission',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkInterfacePermission Resource
        * AwsAccountId 
        * NetworkInterfaceId 
        * Permission 
      |||,
      args=[
        d.arg('AwsAccountId', 'd.T.string'),
        d.arg('NetworkInterfaceId', 'd.T.string'),
        d.arg('Permission', 'd.T.string'),
      ]
    ),
    new(
      AwsAccountId,
      NetworkInterfaceId,
      Permission,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
        AwsAccountId: AwsAccountId,
        assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
        NetworkInterfaceId: NetworkInterfaceId,
        assert std.isString(Permission) : 'Permission must be a string',
        Permission: Permission,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkInterfacePermission',
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
  NetworkPerformanceMetricSubscription: {
    '#': d.pkg(
      name='NetworkPerformanceMetricSubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::NetworkPerformanceMetricSubscription',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::NetworkPerformanceMetricSubscription Resource
        * Source The starting Region or Availability Zone for metric to subscribe to.
        * Destination The target Region or Availability Zone for the metric to subscribe to.
        * Metric The metric type to subscribe to.
        * Statistic The statistic to subscribe to.
      |||,
      args=[
        d.arg('Source', 'd.T.string'),
        d.arg('Destination', 'd.T.string'),
        d.arg('Metric', 'd.T.string'),
        d.arg('Statistic', 'd.T.string'),
      ]
    ),
    new(
      Source,
      Destination,
      Metric,
      Statistic,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Source) : 'Source must be a string',
        Source: Source,
        assert std.isString(Destination) : 'Destination must be a string',
        Destination: Destination,
        assert std.isString(Metric) : 'Metric must be a string',
        Metric: Metric,
        assert std.isString(Statistic) : 'Statistic must be a string',
        Statistic: Statistic,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::NetworkPerformanceMetricSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  PlacementGroup: {
    '#': d.pkg(
      name='PlacementGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::PlacementGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::PlacementGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::PlacementGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStrategy': d.fn('`withStrategy` Strategy ', [d.arg('Strategy', d.T.string)]),
    withStrategy(Strategy): {
      assert std.isString(Strategy) : 'Strategy must be a string',
      Properties+::: { Strategy: Strategy },
    },
    '#withGroupName': d.fn('`withGroupName` GroupName ', [d.arg('GroupName', d.T.string)]),
    withGroupName(GroupName): {
      assert std.isString(GroupName) : 'GroupName must be a string',
      Properties+::: { GroupName: GroupName },
    },
    '#withSpreadLevel': d.fn('`withSpreadLevel` SpreadLevel ', [d.arg('SpreadLevel', d.T.string)]),
    withSpreadLevel(SpreadLevel): {
      assert std.isString(SpreadLevel) : 'SpreadLevel must be a string',
      Properties+::: { SpreadLevel: SpreadLevel },
    },
    '#withPartitionCount': d.fn('`withPartitionCount` PartitionCount ', [d.arg('PartitionCount', d.T.integer)]),
    withPartitionCount(PartitionCount): {
      assert std.isNumber(PartitionCount) : 'PartitionCount must be a integer',
      Properties+::: { PartitionCount: PartitionCount },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PrefixList: {
    '#': d.pkg(
      name='PrefixList',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource schema of AWS::EC2::PrefixList Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::PrefixList Resource
        * PrefixListName Name of Prefix List.
        * AddressFamily Ip Version of Prefix List.
      |||,
      args=[
        d.arg('PrefixListName', 'd.T.string'),
        d.arg('AddressFamily', 'd.T.string'),
      ]
    ),
    new(
      PrefixListName,
      AddressFamily,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PrefixListName) : 'PrefixListName must be a string',
        PrefixListName: PrefixListName,
        assert std.isString(AddressFamily) : 'AddressFamily must be a string',
        assert AddressFamily == 'IPv4' || AddressFamily == 'IPv6' : "AddressFamily must be either 'IPv4' or 'IPv6'",
        AddressFamily: AddressFamily,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::PrefixList',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPrefixListId': d.fn('`withPrefixListId` PrefixListId ', [d.arg('PrefixListId', d.T.string)]),
    withPrefixListId(PrefixListId): {
      assert std.isString(PrefixListId) : 'PrefixListId must be a string',
      Properties+::: { PrefixListId: PrefixListId },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withMaxEntries': d.fn('`withMaxEntries` MaxEntries ', [d.arg('MaxEntries', d.T.integer)]),
    withMaxEntries(MaxEntries): {
      assert std.isNumber(MaxEntries) : 'MaxEntries must be a integer',
      Properties+::: { MaxEntries: MaxEntries },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.integer)]),
    withVersion(Version): {
      assert std.isNumber(Version) : 'Version must be a integer',
      Properties+::: { Version: Version },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEntries': d.fn('`withEntries` Entries ', [d.arg('Entries', d.T.array)]),
    withEntries(Entries): {
      assert std.isArray(Entries) : 'Entries must be a array',
      Properties+::: { Entries: Entries },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Route: {
    '#': d.pkg(
      name='Route',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a route in a route table. For more information, see [Routes](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html#route-table-routes) in the *Amazon VPC User Guide*. You must specify either a destination CIDR block or prefix list ID. You must also specify exactly one of the resources as the target. If you create a route that references a transit gateway in the same template where you create the transit gateway, you must declare a dependency on the transit gateway attachment. The route table cannot use the transit gateway until it has successfully attached to the VPC. Add a [DependsOn Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html) in the AWS::EC2::Route resource to explicitly declare a dependency on the AWS::EC2::TransitGatewayAttachment resource.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::Route Resource
        * RouteTableId The ID of the route table for the route.
      |||,
      args=[
        d.arg('RouteTableId', 'd.T.string'),
      ]
    ),
    new(
      RouteTableId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RouteTableId) : 'RouteTableId must be a string',
        RouteTableId: RouteTableId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::Route',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCarrierGatewayId': d.fn('`withCarrierGatewayId` CarrierGatewayId ', [d.arg('CarrierGatewayId', d.T.string)]),
    withCarrierGatewayId(CarrierGatewayId): {
      assert std.isString(CarrierGatewayId) : 'CarrierGatewayId must be a string',
      Properties+::: { CarrierGatewayId: CarrierGatewayId },
    },
    '#withCidrBlock': d.fn('`withCidrBlock` CidrBlock ', [d.arg('CidrBlock', d.T.string)]),
    withCidrBlock(CidrBlock): {
      assert std.isString(CidrBlock) : 'CidrBlock must be a string',
      Properties+::: { CidrBlock: CidrBlock },
    },
    '#withCoreNetworkArn': d.fn('`withCoreNetworkArn` CoreNetworkArn ', [d.arg('CoreNetworkArn', d.T.string)]),
    withCoreNetworkArn(CoreNetworkArn): {
      assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
      Properties+::: { CoreNetworkArn: CoreNetworkArn },
    },
    '#withDestinationCidrBlock': d.fn('`withDestinationCidrBlock` DestinationCidrBlock ', [d.arg('DestinationCidrBlock', d.T.string)]),
    withDestinationCidrBlock(DestinationCidrBlock): {
      assert std.isString(DestinationCidrBlock) : 'DestinationCidrBlock must be a string',
      Properties+::: { DestinationCidrBlock: DestinationCidrBlock },
    },
    '#withDestinationIpv6CidrBlock': d.fn('`withDestinationIpv6CidrBlock` DestinationIpv6CidrBlock ', [d.arg('DestinationIpv6CidrBlock', d.T.string)]),
    withDestinationIpv6CidrBlock(DestinationIpv6CidrBlock): {
      assert std.isString(DestinationIpv6CidrBlock) : 'DestinationIpv6CidrBlock must be a string',
      Properties+::: { DestinationIpv6CidrBlock: DestinationIpv6CidrBlock },
    },
    '#withDestinationPrefixListId': d.fn('`withDestinationPrefixListId` DestinationPrefixListId ', [d.arg('DestinationPrefixListId', d.T.string)]),
    withDestinationPrefixListId(DestinationPrefixListId): {
      assert std.isString(DestinationPrefixListId) : 'DestinationPrefixListId must be a string',
      Properties+::: { DestinationPrefixListId: DestinationPrefixListId },
    },
    '#withEgressOnlyInternetGatewayId': d.fn('`withEgressOnlyInternetGatewayId` EgressOnlyInternetGatewayId ', [d.arg('EgressOnlyInternetGatewayId', d.T.string)]),
    withEgressOnlyInternetGatewayId(EgressOnlyInternetGatewayId): {
      assert std.isString(EgressOnlyInternetGatewayId) : 'EgressOnlyInternetGatewayId must be a string',
      Properties+::: { EgressOnlyInternetGatewayId: EgressOnlyInternetGatewayId },
    },
    '#withGatewayId': d.fn('`withGatewayId` GatewayId ', [d.arg('GatewayId', d.T.string)]),
    withGatewayId(GatewayId): {
      assert std.isString(GatewayId) : 'GatewayId must be a string',
      Properties+::: { GatewayId: GatewayId },
    },
    '#withInstanceId': d.fn('`withInstanceId` InstanceId ', [d.arg('InstanceId', d.T.string)]),
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: { InstanceId: InstanceId },
    },
    '#withLocalGatewayId': d.fn('`withLocalGatewayId` LocalGatewayId ', [d.arg('LocalGatewayId', d.T.string)]),
    withLocalGatewayId(LocalGatewayId): {
      assert std.isString(LocalGatewayId) : 'LocalGatewayId must be a string',
      Properties+::: { LocalGatewayId: LocalGatewayId },
    },
    '#withNatGatewayId': d.fn('`withNatGatewayId` NatGatewayId ', [d.arg('NatGatewayId', d.T.string)]),
    withNatGatewayId(NatGatewayId): {
      assert std.isString(NatGatewayId) : 'NatGatewayId must be a string',
      Properties+::: { NatGatewayId: NatGatewayId },
    },
    '#withNetworkInterfaceId': d.fn('`withNetworkInterfaceId` NetworkInterfaceId ', [d.arg('NetworkInterfaceId', d.T.string)]),
    withNetworkInterfaceId(NetworkInterfaceId): {
      assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
      Properties+::: { NetworkInterfaceId: NetworkInterfaceId },
    },
    '#withTransitGatewayId': d.fn('`withTransitGatewayId` TransitGatewayId ', [d.arg('TransitGatewayId', d.T.string)]),
    withTransitGatewayId(TransitGatewayId): {
      assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
      Properties+::: { TransitGatewayId: TransitGatewayId },
    },
    '#withVpcEndpointId': d.fn('`withVpcEndpointId` VpcEndpointId ', [d.arg('VpcEndpointId', d.T.string)]),
    withVpcEndpointId(VpcEndpointId): {
      assert std.isString(VpcEndpointId) : 'VpcEndpointId must be a string',
      Properties+::: { VpcEndpointId: VpcEndpointId },
    },
    '#withVpcPeeringConnectionId': d.fn('`withVpcPeeringConnectionId` VpcPeeringConnectionId ', [d.arg('VpcPeeringConnectionId', d.T.string)]),
    withVpcPeeringConnectionId(VpcPeeringConnectionId): {
      assert std.isString(VpcPeeringConnectionId) : 'VpcPeeringConnectionId must be a string',
      Properties+::: { VpcPeeringConnectionId: VpcPeeringConnectionId },
    },
  },
  RouteTable: {
    '#': d.pkg(
      name='RouteTable',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet. For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the *Amazon VPC User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::RouteTable Resource
        * VpcId The ID of the VPC.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::RouteTable',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRouteTableId': d.fn('`withRouteTableId` RouteTableId ', [d.arg('RouteTableId', d.T.string)]),
    withRouteTableId(RouteTableId): {
      assert std.isString(RouteTableId) : 'RouteTableId must be a string',
      Properties+::: { RouteTableId: RouteTableId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  SecurityGroup: {
    '#': d.pkg(
      name='SecurityGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::SecurityGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SecurityGroup Resource
        * GroupDescription A description for the security group.
      |||,
      args=[
        d.arg('GroupDescription', 'd.T.string'),
      ]
    ),
    new(
      GroupDescription,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GroupDescription) : 'GroupDescription must be a string',
        GroupDescription: GroupDescription,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SecurityGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withGroupName': d.fn('`withGroupName` GroupName ', [d.arg('GroupName', d.T.string)]),
    withGroupName(GroupName): {
      assert std.isString(GroupName) : 'GroupName must be a string',
      Properties+::: { GroupName: GroupName },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSecurityGroupIngress': d.fn('`withSecurityGroupIngress` SecurityGroupIngress ', [d.arg('SecurityGroupIngress', d.T.array)]),
    withSecurityGroupIngress(SecurityGroupIngress): {
      assert std.isArray(SecurityGroupIngress) : 'SecurityGroupIngress must be a array',
      Properties+::: { SecurityGroupIngress: SecurityGroupIngress },
    },
    '#withSecurityGroupEgress': d.fn('`withSecurityGroupEgress` SecurityGroupEgress ', [d.arg('SecurityGroupEgress', d.T.array)]),
    withSecurityGroupEgress(SecurityGroupEgress): {
      assert std.isArray(SecurityGroupEgress) : 'SecurityGroupEgress must be a array',
      Properties+::: { SecurityGroupEgress: SecurityGroupEgress },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withGroupId': d.fn('`withGroupId` GroupId ', [d.arg('GroupId', d.T.string)]),
    withGroupId(GroupId): {
      assert std.isString(GroupId) : 'GroupId must be a string',
      Properties+::: { GroupId: GroupId },
    },
  },
  SecurityGroupEgress: {
    '#': d.pkg(
      name='SecurityGroupEgress',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Adds the specified outbound (egress) rule to a security group. An outbound rule permits instances to send traffic to the specified IPv4 or IPv6 address range, the IP addresses that are specified by a prefix list, or the instances that are associated with a destination security group. For more information, see [Security group rules](https://docs.aws.amazon.com/vpc/latest/userguide/security-group-rules.html). You must specify exactly one of the following destinations: an IPv4 address range, an IPv6 address range, a prefix list, or a security group. You must specify a protocol for each rule (for example, TCP). If the protocol is TCP or UDP, you must also specify a port or port range. If the protocol is ICMP or ICMPv6, you must also specify the ICMP/ICMPv6 type and code. To specify all types or all codes, use -1. Rule changes are propagated to instances associated with the security group as quickly as possible. However, a small delay might occur.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SecurityGroupEgress Resource
        * IpProtocol The IP protocol name (tcp, udp, icmp, icmpv6) or number (see [Protocol Numbers](https://docs.aws.amazon.com/http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). Use -1 to specify all protocols. When authorizing security group rules, specifying -1 or a protocol number other than tcp, udp, icmp, or icmpv6 allows traffic on all ports, regardless of any port range you specify. For tcp, udp, and icmp, you must specify a port range. For icmpv6, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.
        * GroupId The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
      |||,
      args=[
        d.arg('IpProtocol', 'd.T.string'),
        d.arg('GroupId', 'd.T.string'),
      ]
    ),
    new(
      IpProtocol,
      GroupId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpProtocol) : 'IpProtocol must be a string',
        IpProtocol: IpProtocol,
        assert std.isString(GroupId) : 'GroupId must be a string',
        GroupId: GroupId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SecurityGroupEgress',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCidrIp': d.fn('`withCidrIp` CidrIp ', [d.arg('CidrIp', d.T.string)]),
    withCidrIp(CidrIp): {
      assert std.isString(CidrIp) : 'CidrIp must be a string',
      Properties+::: { CidrIp: CidrIp },
    },
    '#withCidrIpv6': d.fn('`withCidrIpv6` CidrIpv6 ', [d.arg('CidrIpv6', d.T.string)]),
    withCidrIpv6(CidrIpv6): {
      assert std.isString(CidrIpv6) : 'CidrIpv6 must be a string',
      Properties+::: { CidrIpv6: CidrIpv6 },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFromPort': d.fn('`withFromPort` FromPort ', [d.arg('FromPort', d.T.integer)]),
    withFromPort(FromPort): {
      assert std.isNumber(FromPort) : 'FromPort must be a integer',
      Properties+::: { FromPort: FromPort },
    },
    '#withToPort': d.fn('`withToPort` ToPort ', [d.arg('ToPort', d.T.integer)]),
    withToPort(ToPort): {
      assert std.isNumber(ToPort) : 'ToPort must be a integer',
      Properties+::: { ToPort: ToPort },
    },
    '#withDestinationSecurityGroupId': d.fn('`withDestinationSecurityGroupId` DestinationSecurityGroupId ', [d.arg('DestinationSecurityGroupId', d.T.string)]),
    withDestinationSecurityGroupId(DestinationSecurityGroupId): {
      assert std.isString(DestinationSecurityGroupId) : 'DestinationSecurityGroupId must be a string',
      Properties+::: { DestinationSecurityGroupId: DestinationSecurityGroupId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDestinationPrefixListId': d.fn('`withDestinationPrefixListId` DestinationPrefixListId ', [d.arg('DestinationPrefixListId', d.T.string)]),
    withDestinationPrefixListId(DestinationPrefixListId): {
      assert std.isString(DestinationPrefixListId) : 'DestinationPrefixListId must be a string',
      Properties+::: { DestinationPrefixListId: DestinationPrefixListId },
    },
  },
  SecurityGroupIngress: {
    '#': d.pkg(
      name='SecurityGroupIngress',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::SecurityGroupIngress',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SecurityGroupIngress Resource
        * IpProtocol The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers).[VPC only] Use -1 to specify all protocols. When authorizing security group rules, specifying -1 or a protocol number other than tcp, udp, icmp, or icmpv6 allows traffic on all ports, regardless of any port range you specify. For tcp, udp, and icmp, you must specify a port range. For icmpv6, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.
      |||,
      args=[
        d.arg('IpProtocol', 'd.T.string'),
      ]
    ),
    new(
      IpProtocol,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpProtocol) : 'IpProtocol must be a string',
        IpProtocol: IpProtocol,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SecurityGroupIngress',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withCidrIp': d.fn('`withCidrIp` CidrIp ', [d.arg('CidrIp', d.T.string)]),
    withCidrIp(CidrIp): {
      assert std.isString(CidrIp) : 'CidrIp must be a string',
      Properties+::: { CidrIp: CidrIp },
    },
    '#withCidrIpv6': d.fn('`withCidrIpv6` CidrIpv6 ', [d.arg('CidrIpv6', d.T.string)]),
    withCidrIpv6(CidrIpv6): {
      assert std.isString(CidrIpv6) : 'CidrIpv6 must be a string',
      Properties+::: { CidrIpv6: CidrIpv6 },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFromPort': d.fn('`withFromPort` FromPort ', [d.arg('FromPort', d.T.integer)]),
    withFromPort(FromPort): {
      assert std.isNumber(FromPort) : 'FromPort must be a integer',
      Properties+::: { FromPort: FromPort },
    },
    '#withGroupId': d.fn('`withGroupId` GroupId ', [d.arg('GroupId', d.T.string)]),
    withGroupId(GroupId): {
      assert std.isString(GroupId) : 'GroupId must be a string',
      Properties+::: { GroupId: GroupId },
    },
    '#withGroupName': d.fn('`withGroupName` GroupName ', [d.arg('GroupName', d.T.string)]),
    withGroupName(GroupName): {
      assert std.isString(GroupName) : 'GroupName must be a string',
      Properties+::: { GroupName: GroupName },
    },
    '#withSourcePrefixListId': d.fn('`withSourcePrefixListId` SourcePrefixListId ', [d.arg('SourcePrefixListId', d.T.string)]),
    withSourcePrefixListId(SourcePrefixListId): {
      assert std.isString(SourcePrefixListId) : 'SourcePrefixListId must be a string',
      Properties+::: { SourcePrefixListId: SourcePrefixListId },
    },
    '#withSourceSecurityGroupId': d.fn('`withSourceSecurityGroupId` SourceSecurityGroupId ', [d.arg('SourceSecurityGroupId', d.T.string)]),
    withSourceSecurityGroupId(SourceSecurityGroupId): {
      assert std.isString(SourceSecurityGroupId) : 'SourceSecurityGroupId must be a string',
      Properties+::: { SourceSecurityGroupId: SourceSecurityGroupId },
    },
    '#withSourceSecurityGroupName': d.fn('`withSourceSecurityGroupName` SourceSecurityGroupName ', [d.arg('SourceSecurityGroupName', d.T.string)]),
    withSourceSecurityGroupName(SourceSecurityGroupName): {
      assert std.isString(SourceSecurityGroupName) : 'SourceSecurityGroupName must be a string',
      Properties+::: { SourceSecurityGroupName: SourceSecurityGroupName },
    },
    '#withSourceSecurityGroupOwnerId': d.fn('`withSourceSecurityGroupOwnerId` SourceSecurityGroupOwnerId ', [d.arg('SourceSecurityGroupOwnerId', d.T.string)]),
    withSourceSecurityGroupOwnerId(SourceSecurityGroupOwnerId): {
      assert std.isString(SourceSecurityGroupOwnerId) : 'SourceSecurityGroupOwnerId must be a string',
      Properties+::: { SourceSecurityGroupOwnerId: SourceSecurityGroupOwnerId },
    },
    '#withToPort': d.fn('`withToPort` ToPort ', [d.arg('ToPort', d.T.integer)]),
    withToPort(ToPort): {
      assert std.isNumber(ToPort) : 'ToPort must be a integer',
      Properties+::: { ToPort: ToPort },
    },
  },
  SecurityGroupVpcAssociation: {
    '#': d.pkg(
      name='SecurityGroupVpcAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource type definition for the AWS::EC2::SecurityGroupVpcAssociation resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SecurityGroupVpcAssociation Resource
        * GroupId The group ID of the specified security group.
        * VpcId The ID of the VPC in the security group vpc association.
      |||,
      args=[
        d.arg('GroupId', 'd.T.string'),
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      GroupId,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GroupId) : 'GroupId must be a string',
        GroupId: GroupId,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SecurityGroupVpcAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVpcOwnerId': d.fn('`withVpcOwnerId` VpcOwnerId ', [d.arg('VpcOwnerId', d.T.string)]),
    withVpcOwnerId(VpcOwnerId): {
      assert std.isString(VpcOwnerId) : 'VpcOwnerId must be a string',
      Properties+::: { VpcOwnerId: VpcOwnerId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withStateReason': d.fn('`withStateReason` StateReason ', [d.arg('StateReason', d.T.string)]),
    withStateReason(StateReason): {
      assert std.isString(StateReason) : 'StateReason must be a string',
      Properties+::: { StateReason: StateReason },
    },
  },
  SnapshotBlockPublicAccess: {
    '#': d.pkg(
      name='SnapshotBlockPublicAccess',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::SnapshotBlockPublicAccess',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SnapshotBlockPublicAccess Resource
        * State The state of EBS Snapshot Block Public Access.
      |||,
      args=[
        d.arg('State', 'd.T.string'),
      ]
    ),
    new(
      State,
    ): {
      local base = self,
      Properties: {
        assert std.isString(State) : 'State must be a string',
        assert State == 'block-all-sharing' || State == 'block-new-sharing' : "State must be either 'block-all-sharing' or 'block-new-sharing'",
        State: State,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SnapshotBlockPublicAccess',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
  },
  SpotFleet: {
    '#': d.pkg(
      name='SpotFleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::SpotFleet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SpotFleet Resource
        * SpotFleetRequestConfigData 
      |||,
      args=[
        d.arg('SpotFleetRequestConfigData', 'd.T.object'),
      ]
    ),
    new(
      SpotFleetRequestConfigData,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(SpotFleetRequestConfigData) : 'SpotFleetRequestConfigData must be a object',
        SpotFleetRequestConfigData: SpotFleetRequestConfigData,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SpotFleet',
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
  Subnet: {
    '#': d.pkg(
      name='Subnet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a subnet for the specified VPC. For an IPv4 only subnet, specify an IPv4 CIDR block. If the VPC has an IPv6 CIDR block, you can create an IPv6 only subnet or a dual stack subnet instead. For an IPv6 only subnet, specify an IPv6 CIDR block. For a dual stack subnet, specify both an IPv4 CIDR block and an IPv6 CIDR block. For more information, see [Subnets for your VPC](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html) in the *Amazon VPC User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::Subnet Resource
        * VpcId The ID of the VPC the subnet is in. If you update this property, you must also update the CidrBlock property.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::Subnet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssignIpv6AddressOnCreation': d.fn('`withAssignIpv6AddressOnCreation` AssignIpv6AddressOnCreation ', [d.arg('AssignIpv6AddressOnCreation', d.T.boolean)]),
    withAssignIpv6AddressOnCreation(AssignIpv6AddressOnCreation): {
      assert std.isBoolean(AssignIpv6AddressOnCreation) : 'AssignIpv6AddressOnCreation must be a boolean',
      Properties+::: { AssignIpv6AddressOnCreation: AssignIpv6AddressOnCreation },
    },
    '#withMapPublicIpOnLaunch': d.fn('`withMapPublicIpOnLaunch` MapPublicIpOnLaunch ', [d.arg('MapPublicIpOnLaunch', d.T.boolean)]),
    withMapPublicIpOnLaunch(MapPublicIpOnLaunch): {
      assert std.isBoolean(MapPublicIpOnLaunch) : 'MapPublicIpOnLaunch must be a boolean',
      Properties+::: { MapPublicIpOnLaunch: MapPublicIpOnLaunch },
    },
    '#withEnableLniAtDeviceIndex': d.fn('`withEnableLniAtDeviceIndex` EnableLniAtDeviceIndex ', [d.arg('EnableLniAtDeviceIndex', d.T.integer)]),
    withEnableLniAtDeviceIndex(EnableLniAtDeviceIndex): {
      assert std.isNumber(EnableLniAtDeviceIndex) : 'EnableLniAtDeviceIndex must be a integer',
      Properties+::: { EnableLniAtDeviceIndex: EnableLniAtDeviceIndex },
    },
    '#withNetworkAclAssociationId': d.fn('`withNetworkAclAssociationId` NetworkAclAssociationId ', [d.arg('NetworkAclAssociationId', d.T.string)]),
    withNetworkAclAssociationId(NetworkAclAssociationId): {
      assert std.isString(NetworkAclAssociationId) : 'NetworkAclAssociationId must be a string',
      Properties+::: { NetworkAclAssociationId: NetworkAclAssociationId },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withAvailabilityZoneId': d.fn('`withAvailabilityZoneId` AvailabilityZoneId ', [d.arg('AvailabilityZoneId', d.T.string)]),
    withAvailabilityZoneId(AvailabilityZoneId): {
      assert std.isString(AvailabilityZoneId) : 'AvailabilityZoneId must be a string',
      Properties+::: { AvailabilityZoneId: AvailabilityZoneId },
    },
    '#withCidrBlock': d.fn('`withCidrBlock` CidrBlock ', [d.arg('CidrBlock', d.T.string)]),
    withCidrBlock(CidrBlock): {
      assert std.isString(CidrBlock) : 'CidrBlock must be a string',
      Properties+::: { CidrBlock: CidrBlock },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withIpv6CidrBlocks': d.fn('`withIpv6CidrBlocks` Ipv6CidrBlocks ', [d.arg('Ipv6CidrBlocks', d.T.array)]),
    withIpv6CidrBlocks(Ipv6CidrBlocks): {
      assert std.isArray(Ipv6CidrBlocks) : 'Ipv6CidrBlocks must be a array',
      Properties+::: { Ipv6CidrBlocks: Ipv6CidrBlocks },
    },
    '#withIpv6CidrBlock': d.fn('`withIpv6CidrBlock` Ipv6CidrBlock ', [d.arg('Ipv6CidrBlock', d.T.string)]),
    withIpv6CidrBlock(Ipv6CidrBlock): {
      assert std.isString(Ipv6CidrBlock) : 'Ipv6CidrBlock must be a string',
      Properties+::: { Ipv6CidrBlock: Ipv6CidrBlock },
    },
    '#withOutpostArn': d.fn('`withOutpostArn` OutpostArn ', [d.arg('OutpostArn', d.T.string)]),
    withOutpostArn(OutpostArn): {
      assert std.isString(OutpostArn) : 'OutpostArn must be a string',
      Properties+::: { OutpostArn: OutpostArn },
    },
    '#withIpv6Native': d.fn('`withIpv6Native` Ipv6Native ', [d.arg('Ipv6Native', d.T.boolean)]),
    withIpv6Native(Ipv6Native): {
      assert std.isBoolean(Ipv6Native) : 'Ipv6Native must be a boolean',
      Properties+::: { Ipv6Native: Ipv6Native },
    },
    '#withEnableDns64': d.fn('`withEnableDns64` EnableDns64 ', [d.arg('EnableDns64', d.T.boolean)]),
    withEnableDns64(EnableDns64): {
      assert std.isBoolean(EnableDns64) : 'EnableDns64 must be a boolean',
      Properties+::: { EnableDns64: EnableDns64 },
    },
    '#withPrivateDnsNameOptionsOnLaunch': d.fn('`withPrivateDnsNameOptionsOnLaunch` PrivateDnsNameOptionsOnLaunch ', [d.arg('PrivateDnsNameOptionsOnLaunch', d.T.object)]),
    withPrivateDnsNameOptionsOnLaunch(PrivateDnsNameOptionsOnLaunch): {
      assert std.isObject(PrivateDnsNameOptionsOnLaunch) : 'PrivateDnsNameOptionsOnLaunch must be a object',
      Properties+::: { PrivateDnsNameOptionsOnLaunch: PrivateDnsNameOptionsOnLaunch },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withIpv4IpamPoolId': d.fn('`withIpv4IpamPoolId` Ipv4IpamPoolId ', [d.arg('Ipv4IpamPoolId', d.T.string)]),
    withIpv4IpamPoolId(Ipv4IpamPoolId): {
      assert std.isString(Ipv4IpamPoolId) : 'Ipv4IpamPoolId must be a string',
      Properties+::: { Ipv4IpamPoolId: Ipv4IpamPoolId },
    },
    '#withIpv4NetmaskLength': d.fn('`withIpv4NetmaskLength` Ipv4NetmaskLength ', [d.arg('Ipv4NetmaskLength', d.T.integer)]),
    withIpv4NetmaskLength(Ipv4NetmaskLength): {
      assert std.isNumber(Ipv4NetmaskLength) : 'Ipv4NetmaskLength must be a integer',
      Properties+::: { Ipv4NetmaskLength: Ipv4NetmaskLength },
    },
    '#withIpv6IpamPoolId': d.fn('`withIpv6IpamPoolId` Ipv6IpamPoolId ', [d.arg('Ipv6IpamPoolId', d.T.string)]),
    withIpv6IpamPoolId(Ipv6IpamPoolId): {
      assert std.isString(Ipv6IpamPoolId) : 'Ipv6IpamPoolId must be a string',
      Properties+::: { Ipv6IpamPoolId: Ipv6IpamPoolId },
    },
    '#withIpv6NetmaskLength': d.fn('`withIpv6NetmaskLength` Ipv6NetmaskLength ', [d.arg('Ipv6NetmaskLength', d.T.integer)]),
    withIpv6NetmaskLength(Ipv6NetmaskLength): {
      assert std.isNumber(Ipv6NetmaskLength) : 'Ipv6NetmaskLength must be a integer',
      Properties+::: { Ipv6NetmaskLength: Ipv6NetmaskLength },
    },
  },
  SubnetCidrBlock: {
    '#': d.pkg(
      name='SubnetCidrBlock',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::SubnetCidrBlock resource creates association between subnet and IPv6 CIDR',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SubnetCidrBlock Resource
        * SubnetId The ID of the subnet
      |||,
      args=[
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SubnetCidrBlock',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIpv6CidrBlock': d.fn('`withIpv6CidrBlock` Ipv6CidrBlock ', [d.arg('Ipv6CidrBlock', d.T.string)]),
    withIpv6CidrBlock(Ipv6CidrBlock): {
      assert std.isString(Ipv6CidrBlock) : 'Ipv6CidrBlock must be a string',
      Properties+::: { Ipv6CidrBlock: Ipv6CidrBlock },
    },
    '#withIpv6IpamPoolId': d.fn('`withIpv6IpamPoolId` Ipv6IpamPoolId ', [d.arg('Ipv6IpamPoolId', d.T.string)]),
    withIpv6IpamPoolId(Ipv6IpamPoolId): {
      assert std.isString(Ipv6IpamPoolId) : 'Ipv6IpamPoolId must be a string',
      Properties+::: { Ipv6IpamPoolId: Ipv6IpamPoolId },
    },
    '#withIpv6NetmaskLength': d.fn('`withIpv6NetmaskLength` Ipv6NetmaskLength ', [d.arg('Ipv6NetmaskLength', d.T.integer)]),
    withIpv6NetmaskLength(Ipv6NetmaskLength): {
      assert std.isNumber(Ipv6NetmaskLength) : 'Ipv6NetmaskLength must be a integer',
      Properties+::: { Ipv6NetmaskLength: Ipv6NetmaskLength },
    },
    '#withIpv6AddressAttribute': d.fn('`withIpv6AddressAttribute` Ipv6AddressAttribute ', [d.arg('Ipv6AddressAttribute', d.T.string)]),
    withIpv6AddressAttribute(Ipv6AddressAttribute): {
      assert std.isString(Ipv6AddressAttribute) : 'Ipv6AddressAttribute must be a string',
      Properties+::: { Ipv6AddressAttribute: Ipv6AddressAttribute },
    },
    '#withIpSource': d.fn('`withIpSource` IpSource ', [d.arg('IpSource', d.T.string)]),
    withIpSource(IpSource): {
      assert std.isString(IpSource) : 'IpSource must be a string',
      Properties+::: { IpSource: IpSource },
    },
  },
  SubnetNetworkAclAssociation: {
    '#': d.pkg(
      name='SubnetNetworkAclAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::SubnetNetworkAclAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SubnetNetworkAclAssociation Resource
        * NetworkAclId The ID of the network ACL
        * SubnetId The ID of the subnet
      |||,
      args=[
        d.arg('NetworkAclId', 'd.T.string'),
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      NetworkAclId,
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(NetworkAclId) : 'NetworkAclId must be a string',
        NetworkAclId: NetworkAclId,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SubnetNetworkAclAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociationId': d.fn('`withAssociationId` AssociationId ', [d.arg('AssociationId', d.T.string)]),
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: { AssociationId: AssociationId },
    },
  },
  SubnetRouteTableAssociation: {
    '#': d.pkg(
      name='SubnetRouteTableAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Associates a subnet with a route table. The subnet and route table must be in the same VPC. This association causes traffic originating from the subnet to be routed according to the routes in the route table. A route table can be associated with multiple subnets. To create a route table, see [AWS::EC2::RouteTable](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routetable.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::SubnetRouteTableAssociation Resource
        * RouteTableId The ID of the route table. The physical ID changes when the route table ID is changed.
        * SubnetId The ID of the subnet.
      |||,
      args=[
        d.arg('RouteTableId', 'd.T.string'),
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      RouteTableId,
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RouteTableId) : 'RouteTableId must be a string',
        RouteTableId: RouteTableId,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::SubnetRouteTableAssociation',
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
  TrafficMirrorFilter: {
    '#': d.pkg(
      name='TrafficMirrorFilter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TrafficMirrorFilter',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TrafficMirrorFilter Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::TrafficMirrorFilter',
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
    '#withNetworkServices': d.fn('`withNetworkServices` NetworkServices ', [d.arg('NetworkServices', d.T.array)]),
    withNetworkServices(NetworkServices): {
      assert std.isArray(NetworkServices) : 'NetworkServices must be a array',
      Properties+::: { NetworkServices: NetworkServices },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TrafficMirrorFilterRule: {
    '#': d.pkg(
      name='TrafficMirrorFilterRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TrafficMirrorFilterRule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TrafficMirrorFilterRule Resource
        * RuleAction 
        * SourceCidrBlock 
        * RuleNumber 
        * DestinationCidrBlock 
        * TrafficMirrorFilterId 
        * TrafficDirection 
      |||,
      args=[
        d.arg('RuleAction', 'd.T.string'),
        d.arg('SourceCidrBlock', 'd.T.string'),
        d.arg('RuleNumber', 'd.T.integer'),
        d.arg('DestinationCidrBlock', 'd.T.string'),
        d.arg('TrafficMirrorFilterId', 'd.T.string'),
        d.arg('TrafficDirection', 'd.T.string'),
      ]
    ),
    new(
      RuleAction,
      SourceCidrBlock,
      RuleNumber,
      DestinationCidrBlock,
      TrafficMirrorFilterId,
      TrafficDirection,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RuleAction) : 'RuleAction must be a string',
        RuleAction: RuleAction,
        assert std.isString(SourceCidrBlock) : 'SourceCidrBlock must be a string',
        SourceCidrBlock: SourceCidrBlock,
        assert std.isNumber(RuleNumber) : 'RuleNumber must be a integer',
        RuleNumber: RuleNumber,
        assert std.isString(DestinationCidrBlock) : 'DestinationCidrBlock must be a string',
        DestinationCidrBlock: DestinationCidrBlock,
        assert std.isString(TrafficMirrorFilterId) : 'TrafficMirrorFilterId must be a string',
        TrafficMirrorFilterId: TrafficMirrorFilterId,
        assert std.isString(TrafficDirection) : 'TrafficDirection must be a string',
        TrafficDirection: TrafficDirection,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TrafficMirrorFilterRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDestinationPortRange': d.fn('`withDestinationPortRange` DestinationPortRange ', [d.arg('DestinationPortRange', d.T.object)]),
    withDestinationPortRange(DestinationPortRange): {
      assert std.isObject(DestinationPortRange) : 'DestinationPortRange must be a object',
      Properties+::: { DestinationPortRange: DestinationPortRange },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSourcePortRange': d.fn('`withSourcePortRange` SourcePortRange ', [d.arg('SourcePortRange', d.T.object)]),
    withSourcePortRange(SourcePortRange): {
      assert std.isObject(SourcePortRange) : 'SourcePortRange must be a object',
      Properties+::: { SourcePortRange: SourcePortRange },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withProtocol': d.fn('`withProtocol` Protocol ', [d.arg('Protocol', d.T.integer)]),
    withProtocol(Protocol): {
      assert std.isNumber(Protocol) : 'Protocol must be a integer',
      Properties+::: { Protocol: Protocol },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TrafficMirrorSession: {
    '#': d.pkg(
      name='TrafficMirrorSession',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TrafficMirrorSession',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TrafficMirrorSession Resource
        * TrafficMirrorTargetId 
        * NetworkInterfaceId 
        * TrafficMirrorFilterId 
        * SessionNumber 
      |||,
      args=[
        d.arg('TrafficMirrorTargetId', 'd.T.string'),
        d.arg('NetworkInterfaceId', 'd.T.string'),
        d.arg('TrafficMirrorFilterId', 'd.T.string'),
        d.arg('SessionNumber', 'd.T.integer'),
      ]
    ),
    new(
      TrafficMirrorTargetId,
      NetworkInterfaceId,
      TrafficMirrorFilterId,
      SessionNumber,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TrafficMirrorTargetId) : 'TrafficMirrorTargetId must be a string',
        TrafficMirrorTargetId: TrafficMirrorTargetId,
        assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
        NetworkInterfaceId: NetworkInterfaceId,
        assert std.isString(TrafficMirrorFilterId) : 'TrafficMirrorFilterId must be a string',
        TrafficMirrorFilterId: TrafficMirrorFilterId,
        assert std.isNumber(SessionNumber) : 'SessionNumber must be a integer',
        SessionNumber: SessionNumber,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TrafficMirrorSession',
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
    '#withVirtualNetworkId': d.fn('`withVirtualNetworkId` VirtualNetworkId ', [d.arg('VirtualNetworkId', d.T.integer)]),
    withVirtualNetworkId(VirtualNetworkId): {
      assert std.isNumber(VirtualNetworkId) : 'VirtualNetworkId must be a integer',
      Properties+::: { VirtualNetworkId: VirtualNetworkId },
    },
    '#withPacketLength': d.fn('`withPacketLength` PacketLength ', [d.arg('PacketLength', d.T.integer)]),
    withPacketLength(PacketLength): {
      assert std.isNumber(PacketLength) : 'PacketLength must be a integer',
      Properties+::: { PacketLength: PacketLength },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TrafficMirrorTarget: {
    '#': d.pkg(
      name='TrafficMirrorTarget',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TrafficMirrorTarget',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TrafficMirrorTarget Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::TrafficMirrorTarget',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withNetworkLoadBalancerArn': d.fn('`withNetworkLoadBalancerArn` NetworkLoadBalancerArn ', [d.arg('NetworkLoadBalancerArn', d.T.string)]),
    withNetworkLoadBalancerArn(NetworkLoadBalancerArn): {
      assert std.isString(NetworkLoadBalancerArn) : 'NetworkLoadBalancerArn must be a string',
      Properties+::: { NetworkLoadBalancerArn: NetworkLoadBalancerArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNetworkInterfaceId': d.fn('`withNetworkInterfaceId` NetworkInterfaceId ', [d.arg('NetworkInterfaceId', d.T.string)]),
    withNetworkInterfaceId(NetworkInterfaceId): {
      assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
      Properties+::: { NetworkInterfaceId: NetworkInterfaceId },
    },
    '#withGatewayLoadBalancerEndpointId': d.fn('`withGatewayLoadBalancerEndpointId` GatewayLoadBalancerEndpointId ', [d.arg('GatewayLoadBalancerEndpointId', d.T.string)]),
    withGatewayLoadBalancerEndpointId(GatewayLoadBalancerEndpointId): {
      assert std.isString(GatewayLoadBalancerEndpointId) : 'GatewayLoadBalancerEndpointId must be a string',
      Properties+::: { GatewayLoadBalancerEndpointId: GatewayLoadBalancerEndpointId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TransitGateway: {
    '#': d.pkg(
      name='TransitGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TransitGateway',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGateway Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDefaultRouteTablePropagation': d.fn('`withDefaultRouteTablePropagation` DefaultRouteTablePropagation ', [d.arg('DefaultRouteTablePropagation', d.T.string)]),
    withDefaultRouteTablePropagation(DefaultRouteTablePropagation): {
      assert std.isString(DefaultRouteTablePropagation) : 'DefaultRouteTablePropagation must be a string',
      Properties+::: { DefaultRouteTablePropagation: DefaultRouteTablePropagation },
    },
    '#withTransitGatewayArn': d.fn('`withTransitGatewayArn` TransitGatewayArn ', [d.arg('TransitGatewayArn', d.T.string)]),
    withTransitGatewayArn(TransitGatewayArn): {
      assert std.isString(TransitGatewayArn) : 'TransitGatewayArn must be a string',
      Properties+::: { TransitGatewayArn: TransitGatewayArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAutoAcceptSharedAttachments': d.fn('`withAutoAcceptSharedAttachments` AutoAcceptSharedAttachments ', [d.arg('AutoAcceptSharedAttachments', d.T.string)]),
    withAutoAcceptSharedAttachments(AutoAcceptSharedAttachments): {
      assert std.isString(AutoAcceptSharedAttachments) : 'AutoAcceptSharedAttachments must be a string',
      Properties+::: { AutoAcceptSharedAttachments: AutoAcceptSharedAttachments },
    },
    '#withDefaultRouteTableAssociation': d.fn('`withDefaultRouteTableAssociation` DefaultRouteTableAssociation ', [d.arg('DefaultRouteTableAssociation', d.T.string)]),
    withDefaultRouteTableAssociation(DefaultRouteTableAssociation): {
      assert std.isString(DefaultRouteTableAssociation) : 'DefaultRouteTableAssociation must be a string',
      Properties+::: { DefaultRouteTableAssociation: DefaultRouteTableAssociation },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withVpnEcmpSupport': d.fn('`withVpnEcmpSupport` VpnEcmpSupport ', [d.arg('VpnEcmpSupport', d.T.string)]),
    withVpnEcmpSupport(VpnEcmpSupport): {
      assert std.isString(VpnEcmpSupport) : 'VpnEcmpSupport must be a string',
      Properties+::: { VpnEcmpSupport: VpnEcmpSupport },
    },
    '#withDnsSupport': d.fn('`withDnsSupport` DnsSupport ', [d.arg('DnsSupport', d.T.string)]),
    withDnsSupport(DnsSupport): {
      assert std.isString(DnsSupport) : 'DnsSupport must be a string',
      Properties+::: { DnsSupport: DnsSupport },
    },
    '#withSecurityGroupReferencingSupport': d.fn('`withSecurityGroupReferencingSupport` SecurityGroupReferencingSupport ', [d.arg('SecurityGroupReferencingSupport', d.T.string)]),
    withSecurityGroupReferencingSupport(SecurityGroupReferencingSupport): {
      assert std.isString(SecurityGroupReferencingSupport) : 'SecurityGroupReferencingSupport must be a string',
      Properties+::: { SecurityGroupReferencingSupport: SecurityGroupReferencingSupport },
    },
    '#withMulticastSupport': d.fn('`withMulticastSupport` MulticastSupport ', [d.arg('MulticastSupport', d.T.string)]),
    withMulticastSupport(MulticastSupport): {
      assert std.isString(MulticastSupport) : 'MulticastSupport must be a string',
      Properties+::: { MulticastSupport: MulticastSupport },
    },
    '#withAmazonSideAsn': d.fn('`withAmazonSideAsn` AmazonSideAsn ', [d.arg('AmazonSideAsn', d.T.integer)]),
    withAmazonSideAsn(AmazonSideAsn): {
      assert std.isNumber(AmazonSideAsn) : 'AmazonSideAsn must be a integer',
      Properties+::: { AmazonSideAsn: AmazonSideAsn },
    },
    '#withTransitGatewayCidrBlocks': d.fn('`withTransitGatewayCidrBlocks` TransitGatewayCidrBlocks ', [d.arg('TransitGatewayCidrBlocks', d.T.array)]),
    withTransitGatewayCidrBlocks(TransitGatewayCidrBlocks): {
      assert std.isArray(TransitGatewayCidrBlocks) : 'TransitGatewayCidrBlocks must be a array',
      Properties+::: { TransitGatewayCidrBlocks: TransitGatewayCidrBlocks },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAssociationDefaultRouteTableId': d.fn('`withAssociationDefaultRouteTableId` AssociationDefaultRouteTableId ', [d.arg('AssociationDefaultRouteTableId', d.T.string)]),
    withAssociationDefaultRouteTableId(AssociationDefaultRouteTableId): {
      assert std.isString(AssociationDefaultRouteTableId) : 'AssociationDefaultRouteTableId must be a string',
      Properties+::: { AssociationDefaultRouteTableId: AssociationDefaultRouteTableId },
    },
    '#withPropagationDefaultRouteTableId': d.fn('`withPropagationDefaultRouteTableId` PropagationDefaultRouteTableId ', [d.arg('PropagationDefaultRouteTableId', d.T.string)]),
    withPropagationDefaultRouteTableId(PropagationDefaultRouteTableId): {
      assert std.isString(PropagationDefaultRouteTableId) : 'PropagationDefaultRouteTableId must be a string',
      Properties+::: { PropagationDefaultRouteTableId: PropagationDefaultRouteTableId },
    },
  },
  TransitGatewayAttachment: {
    '#': d.pkg(
      name='TransitGatewayAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TransitGatewayAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayAttachment Resource
        * VpcId 
        * SubnetIds 
        * TransitGatewayId 
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
        d.arg('TransitGatewayId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
      SubnetIds,
      TransitGatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
        assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
        TransitGatewayId: TransitGatewayId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOptions': d.fn('`withOptions` Options ', [d.arg('Options', d.T.object)]),
    withOptions(Options): {
      assert std.isObject(Options) : 'Options must be a object',
      Properties+::: { Options: Options },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TransitGatewayConnect: {
    '#': d.pkg(
      name='TransitGatewayConnect',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::TransitGatewayConnect type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayConnect Resource
        * TransportTransitGatewayAttachmentId The ID of the attachment from which the Connect attachment was created.
        * Options The Connect attachment options.
      |||,
      args=[
        d.arg('TransportTransitGatewayAttachmentId', 'd.T.string'),
        d.arg('Options', 'd.T.object'),
      ]
    ),
    new(
      TransportTransitGatewayAttachmentId,
      Options,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransportTransitGatewayAttachmentId) : 'TransportTransitGatewayAttachmentId must be a string',
        TransportTransitGatewayAttachmentId: TransportTransitGatewayAttachmentId,
        assert std.isObject(Options) : 'Options must be a object',
        Options: Options,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayConnect',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTransitGatewayAttachmentId': d.fn('`withTransitGatewayAttachmentId` TransitGatewayAttachmentId ', [d.arg('TransitGatewayAttachmentId', d.T.string)]),
    withTransitGatewayAttachmentId(TransitGatewayAttachmentId): {
      assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
      Properties+::: { TransitGatewayAttachmentId: TransitGatewayAttachmentId },
    },
    '#withTransitGatewayId': d.fn('`withTransitGatewayId` TransitGatewayId ', [d.arg('TransitGatewayId', d.T.string)]),
    withTransitGatewayId(TransitGatewayId): {
      assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
      Properties+::: { TransitGatewayId: TransitGatewayId },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TransitGatewayMulticastDomain: {
    '#': d.pkg(
      name='TransitGatewayMulticastDomain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::TransitGatewayMulticastDomain type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayMulticastDomain Resource
        * TransitGatewayId The ID of the transit gateway.
      |||,
      args=[
        d.arg('TransitGatewayId', 'd.T.string'),
      ]
    ),
    new(
      TransitGatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
        TransitGatewayId: TransitGatewayId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayMulticastDomain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTransitGatewayMulticastDomainId': d.fn('`withTransitGatewayMulticastDomainId` TransitGatewayMulticastDomainId ', [d.arg('TransitGatewayMulticastDomainId', d.T.string)]),
    withTransitGatewayMulticastDomainId(TransitGatewayMulticastDomainId): {
      assert std.isString(TransitGatewayMulticastDomainId) : 'TransitGatewayMulticastDomainId must be a string',
      Properties+::: { TransitGatewayMulticastDomainId: TransitGatewayMulticastDomainId },
    },
    '#withTransitGatewayMulticastDomainArn': d.fn('`withTransitGatewayMulticastDomainArn` TransitGatewayMulticastDomainArn ', [d.arg('TransitGatewayMulticastDomainArn', d.T.string)]),
    withTransitGatewayMulticastDomainArn(TransitGatewayMulticastDomainArn): {
      assert std.isString(TransitGatewayMulticastDomainArn) : 'TransitGatewayMulticastDomainArn must be a string',
      Properties+::: { TransitGatewayMulticastDomainArn: TransitGatewayMulticastDomainArn },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withOptions': d.fn('`withOptions` Options ', [d.arg('Options', d.T.object)]),
    withOptions(Options): {
      assert std.isObject(Options) : 'Options must be a object',
      Properties+::: { Options: Options },
    },
  },
  TransitGatewayMulticastDomainAssociation: {
    '#': d.pkg(
      name='TransitGatewayMulticastDomainAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::TransitGatewayMulticastDomainAssociation type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayMulticastDomainAssociation Resource
        * TransitGatewayMulticastDomainId The ID of the transit gateway multicast domain.
        * TransitGatewayAttachmentId The ID of the transit gateway attachment.
        * SubnetId The IDs of the subnets to associate with the transit gateway multicast domain.
      |||,
      args=[
        d.arg('TransitGatewayMulticastDomainId', 'd.T.string'),
        d.arg('TransitGatewayAttachmentId', 'd.T.string'),
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      TransitGatewayMulticastDomainId,
      TransitGatewayAttachmentId,
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayMulticastDomainId) : 'TransitGatewayMulticastDomainId must be a string',
        TransitGatewayMulticastDomainId: TransitGatewayMulticastDomainId,
        assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
        TransitGatewayAttachmentId: TransitGatewayAttachmentId,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayMulticastDomainAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResourceId': d.fn('`withResourceId` ResourceId ', [d.arg('ResourceId', d.T.string)]),
    withResourceId(ResourceId): {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      Properties+::: { ResourceId: ResourceId },
    },
    '#withResourceType': d.fn('`withResourceType` ResourceType ', [d.arg('ResourceType', d.T.string)]),
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      Properties+::: { ResourceType: ResourceType },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
  },
  TransitGatewayMulticastGroupMember: {
    '#': d.pkg(
      name='TransitGatewayMulticastGroupMember',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::TransitGatewayMulticastGroupMember registers and deregisters members and sources (network interfaces) with the transit gateway multicast group',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayMulticastGroupMember Resource
        * GroupIpAddress The IP address assigned to the transit gateway multicast group.
        * NetworkInterfaceId The ID of the transit gateway attachment.
        * TransitGatewayMulticastDomainId The ID of the transit gateway multicast domain.
      |||,
      args=[
        d.arg('GroupIpAddress', 'd.T.string'),
        d.arg('NetworkInterfaceId', 'd.T.string'),
        d.arg('TransitGatewayMulticastDomainId', 'd.T.string'),
      ]
    ),
    new(
      GroupIpAddress,
      NetworkInterfaceId,
      TransitGatewayMulticastDomainId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GroupIpAddress) : 'GroupIpAddress must be a string',
        GroupIpAddress: GroupIpAddress,
        assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
        NetworkInterfaceId: NetworkInterfaceId,
        assert std.isString(TransitGatewayMulticastDomainId) : 'TransitGatewayMulticastDomainId must be a string',
        TransitGatewayMulticastDomainId: TransitGatewayMulticastDomainId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayMulticastGroupMember',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTransitGatewayAttachmentId': d.fn('`withTransitGatewayAttachmentId` TransitGatewayAttachmentId ', [d.arg('TransitGatewayAttachmentId', d.T.string)]),
    withTransitGatewayAttachmentId(TransitGatewayAttachmentId): {
      assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
      Properties+::: { TransitGatewayAttachmentId: TransitGatewayAttachmentId },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withResourceId': d.fn('`withResourceId` ResourceId ', [d.arg('ResourceId', d.T.string)]),
    withResourceId(ResourceId): {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      Properties+::: { ResourceId: ResourceId },
    },
    '#withResourceType': d.fn('`withResourceType` ResourceType ', [d.arg('ResourceType', d.T.string)]),
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      Properties+::: { ResourceType: ResourceType },
    },
    '#withGroupMember': d.fn('`withGroupMember` GroupMember ', [d.arg('GroupMember', d.T.boolean)]),
    withGroupMember(GroupMember): {
      assert std.isBoolean(GroupMember) : 'GroupMember must be a boolean',
      Properties+::: { GroupMember: GroupMember },
    },
    '#withGroupSource': d.fn('`withGroupSource` GroupSource ', [d.arg('GroupSource', d.T.boolean)]),
    withGroupSource(GroupSource): {
      assert std.isBoolean(GroupSource) : 'GroupSource must be a boolean',
      Properties+::: { GroupSource: GroupSource },
    },
    '#withMemberType': d.fn('`withMemberType` MemberType ', [d.arg('MemberType', d.T.string)]),
    withMemberType(MemberType): {
      assert std.isString(MemberType) : 'MemberType must be a string',
      Properties+::: { MemberType: MemberType },
    },
  },
  TransitGatewayMulticastGroupSource: {
    '#': d.pkg(
      name='TransitGatewayMulticastGroupSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::TransitGatewayMulticastGroupSource registers and deregisters members and sources (network interfaces) with the transit gateway multicast group',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayMulticastGroupSource Resource
        * TransitGatewayMulticastDomainId The ID of the transit gateway multicast domain.
        * NetworkInterfaceId The ID of the transit gateway attachment.
        * GroupIpAddress The IP address assigned to the transit gateway multicast group.
      |||,
      args=[
        d.arg('TransitGatewayMulticastDomainId', 'd.T.string'),
        d.arg('NetworkInterfaceId', 'd.T.string'),
        d.arg('GroupIpAddress', 'd.T.string'),
      ]
    ),
    new(
      TransitGatewayMulticastDomainId,
      NetworkInterfaceId,
      GroupIpAddress,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayMulticastDomainId) : 'TransitGatewayMulticastDomainId must be a string',
        TransitGatewayMulticastDomainId: TransitGatewayMulticastDomainId,
        assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
        NetworkInterfaceId: NetworkInterfaceId,
        assert std.isString(GroupIpAddress) : 'GroupIpAddress must be a string',
        GroupIpAddress: GroupIpAddress,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayMulticastGroupSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTransitGatewayAttachmentId': d.fn('`withTransitGatewayAttachmentId` TransitGatewayAttachmentId ', [d.arg('TransitGatewayAttachmentId', d.T.string)]),
    withTransitGatewayAttachmentId(TransitGatewayAttachmentId): {
      assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
      Properties+::: { TransitGatewayAttachmentId: TransitGatewayAttachmentId },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withResourceId': d.fn('`withResourceId` ResourceId ', [d.arg('ResourceId', d.T.string)]),
    withResourceId(ResourceId): {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      Properties+::: { ResourceId: ResourceId },
    },
    '#withResourceType': d.fn('`withResourceType` ResourceType ', [d.arg('ResourceType', d.T.string)]),
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      Properties+::: { ResourceType: ResourceType },
    },
    '#withGroupMember': d.fn('`withGroupMember` GroupMember ', [d.arg('GroupMember', d.T.boolean)]),
    withGroupMember(GroupMember): {
      assert std.isBoolean(GroupMember) : 'GroupMember must be a boolean',
      Properties+::: { GroupMember: GroupMember },
    },
    '#withGroupSource': d.fn('`withGroupSource` GroupSource ', [d.arg('GroupSource', d.T.boolean)]),
    withGroupSource(GroupSource): {
      assert std.isBoolean(GroupSource) : 'GroupSource must be a boolean',
      Properties+::: { GroupSource: GroupSource },
    },
    '#withSourceType': d.fn('`withSourceType` SourceType ', [d.arg('SourceType', d.T.string)]),
    withSourceType(SourceType): {
      assert std.isString(SourceType) : 'SourceType must be a string',
      Properties+::: { SourceType: SourceType },
    },
  },
  TransitGatewayPeeringAttachment: {
    '#': d.pkg(
      name='TransitGatewayPeeringAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::TransitGatewayPeeringAttachment type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayPeeringAttachment Resource
        * TransitGatewayId The ID of the transit gateway.
        * PeerTransitGatewayId The ID of the peer transit gateway.
        * PeerAccountId The ID of the peer account
        * PeerRegion Peer Region
      |||,
      args=[
        d.arg('TransitGatewayId', 'd.T.string'),
        d.arg('PeerTransitGatewayId', 'd.T.string'),
        d.arg('PeerAccountId', 'd.T.string'),
        d.arg('PeerRegion', 'd.T.string'),
      ]
    ),
    new(
      TransitGatewayId,
      PeerTransitGatewayId,
      PeerAccountId,
      PeerRegion,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
        TransitGatewayId: TransitGatewayId,
        assert std.isString(PeerTransitGatewayId) : 'PeerTransitGatewayId must be a string',
        PeerTransitGatewayId: PeerTransitGatewayId,
        assert std.isString(PeerAccountId) : 'PeerAccountId must be a string',
        PeerAccountId: PeerAccountId,
        assert std.isString(PeerRegion) : 'PeerRegion must be a string',
        PeerRegion: PeerRegion,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayPeeringAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.object)]),
    withStatus(Status): {
      assert std.isObject(Status) : 'Status must be a object',
      Properties+::: { Status: Status },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTransitGatewayAttachmentId': d.fn('`withTransitGatewayAttachmentId` TransitGatewayAttachmentId ', [d.arg('TransitGatewayAttachmentId', d.T.string)]),
    withTransitGatewayAttachmentId(TransitGatewayAttachmentId): {
      assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
      Properties+::: { TransitGatewayAttachmentId: TransitGatewayAttachmentId },
    },
  },
  TransitGatewayRoute: {
    '#': d.pkg(
      name='TransitGatewayRoute',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TransitGatewayRoute',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayRoute Resource
        * TransitGatewayRouteTableId The ID of transit gateway route table.
        * DestinationCidrBlock The CIDR range used for destination matches. Routing decisions are based on the most specific match.
      |||,
      args=[
        d.arg('TransitGatewayRouteTableId', 'd.T.string'),
        d.arg('DestinationCidrBlock', 'd.T.string'),
      ]
    ),
    new(
      TransitGatewayRouteTableId,
      DestinationCidrBlock,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayRouteTableId) : 'TransitGatewayRouteTableId must be a string',
        TransitGatewayRouteTableId: TransitGatewayRouteTableId,
        assert std.isString(DestinationCidrBlock) : 'DestinationCidrBlock must be a string',
        DestinationCidrBlock: DestinationCidrBlock,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayRoute',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBlackhole': d.fn('`withBlackhole` Blackhole ', [d.arg('Blackhole', d.T.boolean)]),
    withBlackhole(Blackhole): {
      assert std.isBoolean(Blackhole) : 'Blackhole must be a boolean',
      Properties+::: { Blackhole: Blackhole },
    },
    '#withTransitGatewayAttachmentId': d.fn('`withTransitGatewayAttachmentId` TransitGatewayAttachmentId ', [d.arg('TransitGatewayAttachmentId', d.T.string)]),
    withTransitGatewayAttachmentId(TransitGatewayAttachmentId): {
      assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
      Properties+::: { TransitGatewayAttachmentId: TransitGatewayAttachmentId },
    },
  },
  TransitGatewayRouteTable: {
    '#': d.pkg(
      name='TransitGatewayRouteTable',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TransitGatewayRouteTable',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayRouteTable Resource
        * TransitGatewayId The ID of the transit gateway.
      |||,
      args=[
        d.arg('TransitGatewayId', 'd.T.string'),
      ]
    ),
    new(
      TransitGatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
        TransitGatewayId: TransitGatewayId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayRouteTable',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTransitGatewayRouteTableId': d.fn('`withTransitGatewayRouteTableId` TransitGatewayRouteTableId ', [d.arg('TransitGatewayRouteTableId', d.T.string)]),
    withTransitGatewayRouteTableId(TransitGatewayRouteTableId): {
      assert std.isString(TransitGatewayRouteTableId) : 'TransitGatewayRouteTableId must be a string',
      Properties+::: { TransitGatewayRouteTableId: TransitGatewayRouteTableId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TransitGatewayRouteTableAssociation: {
    '#': d.pkg(
      name='TransitGatewayRouteTableAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TransitGatewayRouteTableAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayRouteTableAssociation Resource
        * TransitGatewayRouteTableId The ID of transit gateway route table.
        * TransitGatewayAttachmentId The ID of transit gateway attachment.
      |||,
      args=[
        d.arg('TransitGatewayRouteTableId', 'd.T.string'),
        d.arg('TransitGatewayAttachmentId', 'd.T.string'),
      ]
    ),
    new(
      TransitGatewayRouteTableId,
      TransitGatewayAttachmentId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayRouteTableId) : 'TransitGatewayRouteTableId must be a string',
        TransitGatewayRouteTableId: TransitGatewayRouteTableId,
        assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
        TransitGatewayAttachmentId: TransitGatewayAttachmentId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayRouteTableAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  TransitGatewayRouteTablePropagation: {
    '#': d.pkg(
      name='TransitGatewayRouteTablePropagation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='AWS::EC2::TransitGatewayRouteTablePropagation Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayRouteTablePropagation Resource
        * TransitGatewayRouteTableId The ID of transit gateway route table.
        * TransitGatewayAttachmentId The ID of transit gateway attachment.
      |||,
      args=[
        d.arg('TransitGatewayRouteTableId', 'd.T.string'),
        d.arg('TransitGatewayAttachmentId', 'd.T.string'),
      ]
    ),
    new(
      TransitGatewayRouteTableId,
      TransitGatewayAttachmentId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TransitGatewayRouteTableId) : 'TransitGatewayRouteTableId must be a string',
        TransitGatewayRouteTableId: TransitGatewayRouteTableId,
        assert std.isString(TransitGatewayAttachmentId) : 'TransitGatewayAttachmentId must be a string',
        TransitGatewayAttachmentId: TransitGatewayAttachmentId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayRouteTablePropagation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  TransitGatewayVpcAttachment: {
    '#': d.pkg(
      name='TransitGatewayVpcAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::TransitGatewayVpcAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::TransitGatewayVpcAttachment Resource
        * SubnetIds 
        * VpcId 
        * TransitGatewayId 
      |||,
      args=[
        d.arg('SubnetIds', 'd.T.array'),
        d.arg('VpcId', 'd.T.string'),
        d.arg('TransitGatewayId', 'd.T.string'),
      ]
    ),
    new(
      SubnetIds,
      VpcId,
      TransitGatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
        TransitGatewayId: TransitGatewayId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::TransitGatewayVpcAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAddSubnetIds': d.fn('`withAddSubnetIds` AddSubnetIds ', [d.arg('AddSubnetIds', d.T.array)]),
    withAddSubnetIds(AddSubnetIds): {
      assert std.isArray(AddSubnetIds) : 'AddSubnetIds must be a array',
      Properties+::: { AddSubnetIds: AddSubnetIds },
    },
    '#withRemoveSubnetIds': d.fn('`withRemoveSubnetIds` RemoveSubnetIds ', [d.arg('RemoveSubnetIds', d.T.array)]),
    withRemoveSubnetIds(RemoveSubnetIds): {
      assert std.isArray(RemoveSubnetIds) : 'RemoveSubnetIds must be a array',
      Properties+::: { RemoveSubnetIds: RemoveSubnetIds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withOptions': d.fn('`withOptions` Options ', [d.arg('Options', d.T.object)]),
    withOptions(Options): {
      assert std.isObject(Options) : 'Options must be a object',
      Properties+::: { Options: Options },
    },
  },
  VerifiedAccessEndpoint: {
    '#': d.pkg(
      name='VerifiedAccessEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::VerifiedAccessEndpoint resource creates an AWS EC2 Verified Access Endpoint.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VerifiedAccessEndpoint Resource
        * ApplicationDomain The DNS name for users to reach your application.
        * AttachmentType The type of attachment used to provide connectivity between the AWS Verified Access endpoint and the application.
        * DomainCertificateArn The ARN of a public TLS/SSL certificate imported into or created with ACM.
        * EndpointType The type of AWS Verified Access endpoint. Incoming application requests will be sent to an IP address, load balancer or a network interface depending on the endpoint type specified.The type of AWS Verified Access endpoint. Incoming application requests will be sent to an IP address, load balancer or a network interface depending on the endpoint type specified.
        * VerifiedAccessGroupId The ID of the AWS Verified Access group.
        * EndpointDomainPrefix A custom identifier that gets prepended to a DNS name that is generated for the endpoint.
      |||,
      args=[
        d.arg('ApplicationDomain', 'd.T.string'),
        d.arg('AttachmentType', 'd.T.string'),
        d.arg('DomainCertificateArn', 'd.T.string'),
        d.arg('EndpointType', 'd.T.string'),
        d.arg('VerifiedAccessGroupId', 'd.T.string'),
        d.arg('EndpointDomainPrefix', 'd.T.string'),
      ]
    ),
    new(
      ApplicationDomain,
      AttachmentType,
      DomainCertificateArn,
      EndpointType,
      VerifiedAccessGroupId,
      EndpointDomainPrefix,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationDomain) : 'ApplicationDomain must be a string',
        ApplicationDomain: ApplicationDomain,
        assert std.isString(AttachmentType) : 'AttachmentType must be a string',
        AttachmentType: AttachmentType,
        assert std.isString(DomainCertificateArn) : 'DomainCertificateArn must be a string',
        DomainCertificateArn: DomainCertificateArn,
        assert std.isString(EndpointType) : 'EndpointType must be a string',
        EndpointType: EndpointType,
        assert std.isString(VerifiedAccessGroupId) : 'VerifiedAccessGroupId must be a string',
        VerifiedAccessGroupId: VerifiedAccessGroupId,
        assert std.isString(EndpointDomainPrefix) : 'EndpointDomainPrefix must be a string',
        EndpointDomainPrefix: EndpointDomainPrefix,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VerifiedAccessEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVerifiedAccessEndpointId': d.fn('`withVerifiedAccessEndpointId` VerifiedAccessEndpointId ', [d.arg('VerifiedAccessEndpointId', d.T.string)]),
    withVerifiedAccessEndpointId(VerifiedAccessEndpointId): {
      assert std.isString(VerifiedAccessEndpointId) : 'VerifiedAccessEndpointId must be a string',
      Properties+::: { VerifiedAccessEndpointId: VerifiedAccessEndpointId },
    },
    '#withVerifiedAccessInstanceId': d.fn('`withVerifiedAccessInstanceId` VerifiedAccessInstanceId ', [d.arg('VerifiedAccessInstanceId', d.T.string)]),
    withVerifiedAccessInstanceId(VerifiedAccessInstanceId): {
      assert std.isString(VerifiedAccessInstanceId) : 'VerifiedAccessInstanceId must be a string',
      Properties+::: { VerifiedAccessInstanceId: VerifiedAccessInstanceId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withNetworkInterfaceOptions': d.fn('`withNetworkInterfaceOptions` NetworkInterfaceOptions ', [d.arg('NetworkInterfaceOptions', d.T.object)]),
    withNetworkInterfaceOptions(NetworkInterfaceOptions): {
      assert std.isObject(NetworkInterfaceOptions) : 'NetworkInterfaceOptions must be a object',
      Properties+::: { NetworkInterfaceOptions: NetworkInterfaceOptions },
    },
    '#withLoadBalancerOptions': d.fn('`withLoadBalancerOptions` LoadBalancerOptions ', [d.arg('LoadBalancerOptions', d.T.object)]),
    withLoadBalancerOptions(LoadBalancerOptions): {
      assert std.isObject(LoadBalancerOptions) : 'LoadBalancerOptions must be a object',
      Properties+::: { LoadBalancerOptions: LoadBalancerOptions },
    },
    '#withEndpointDomain': d.fn('`withEndpointDomain` EndpointDomain ', [d.arg('EndpointDomain', d.T.string)]),
    withEndpointDomain(EndpointDomain): {
      assert std.isString(EndpointDomain) : 'EndpointDomain must be a string',
      Properties+::: { EndpointDomain: EndpointDomain },
    },
    '#withDeviceValidationDomain': d.fn('`withDeviceValidationDomain` DeviceValidationDomain ', [d.arg('DeviceValidationDomain', d.T.string)]),
    withDeviceValidationDomain(DeviceValidationDomain): {
      assert std.isString(DeviceValidationDomain) : 'DeviceValidationDomain must be a string',
      Properties+::: { DeviceValidationDomain: DeviceValidationDomain },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPolicyDocument': d.fn('`withPolicyDocument` PolicyDocument ', [d.arg('PolicyDocument', d.T.string)]),
    withPolicyDocument(PolicyDocument): {
      assert std.isString(PolicyDocument) : 'PolicyDocument must be a string',
      Properties+::: { PolicyDocument: PolicyDocument },
    },
    '#withPolicyEnabled': d.fn('`withPolicyEnabled` PolicyEnabled ', [d.arg('PolicyEnabled', d.T.boolean)]),
    withPolicyEnabled(PolicyEnabled): {
      assert std.isBoolean(PolicyEnabled) : 'PolicyEnabled must be a boolean',
      Properties+::: { PolicyEnabled: PolicyEnabled },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSseSpecification': d.fn('`withSseSpecification` SseSpecification ', [d.arg('SseSpecification', d.T.object)]),
    withSseSpecification(SseSpecification): {
      assert std.isObject(SseSpecification) : 'SseSpecification must be a object',
      Properties+::: { SseSpecification: SseSpecification },
    },
  },
  VerifiedAccessGroup: {
    '#': d.pkg(
      name='VerifiedAccessGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::VerifiedAccessGroup resource creates an AWS EC2 Verified Access Group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VerifiedAccessGroup Resource
        * VerifiedAccessInstanceId The ID of the AWS Verified Access instance.
      |||,
      args=[
        d.arg('VerifiedAccessInstanceId', 'd.T.string'),
      ]
    ),
    new(
      VerifiedAccessInstanceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VerifiedAccessInstanceId) : 'VerifiedAccessInstanceId must be a string',
        VerifiedAccessInstanceId: VerifiedAccessInstanceId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VerifiedAccessGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVerifiedAccessGroupId': d.fn('`withVerifiedAccessGroupId` VerifiedAccessGroupId ', [d.arg('VerifiedAccessGroupId', d.T.string)]),
    withVerifiedAccessGroupId(VerifiedAccessGroupId): {
      assert std.isString(VerifiedAccessGroupId) : 'VerifiedAccessGroupId must be a string',
      Properties+::: { VerifiedAccessGroupId: VerifiedAccessGroupId },
    },
    '#withVerifiedAccessGroupArn': d.fn('`withVerifiedAccessGroupArn` VerifiedAccessGroupArn ', [d.arg('VerifiedAccessGroupArn', d.T.string)]),
    withVerifiedAccessGroupArn(VerifiedAccessGroupArn): {
      assert std.isString(VerifiedAccessGroupArn) : 'VerifiedAccessGroupArn must be a string',
      Properties+::: { VerifiedAccessGroupArn: VerifiedAccessGroupArn },
    },
    '#withOwner': d.fn('`withOwner` Owner ', [d.arg('Owner', d.T.string)]),
    withOwner(Owner): {
      assert std.isString(Owner) : 'Owner must be a string',
      Properties+::: { Owner: Owner },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPolicyDocument': d.fn('`withPolicyDocument` PolicyDocument ', [d.arg('PolicyDocument', d.T.string)]),
    withPolicyDocument(PolicyDocument): {
      assert std.isString(PolicyDocument) : 'PolicyDocument must be a string',
      Properties+::: { PolicyDocument: PolicyDocument },
    },
    '#withPolicyEnabled': d.fn('`withPolicyEnabled` PolicyEnabled ', [d.arg('PolicyEnabled', d.T.boolean)]),
    withPolicyEnabled(PolicyEnabled): {
      assert std.isBoolean(PolicyEnabled) : 'PolicyEnabled must be a boolean',
      Properties+::: { PolicyEnabled: PolicyEnabled },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSseSpecification': d.fn('`withSseSpecification` SseSpecification ', [d.arg('SseSpecification', d.T.object)]),
    withSseSpecification(SseSpecification): {
      assert std.isObject(SseSpecification) : 'SseSpecification must be a object',
      Properties+::: { SseSpecification: SseSpecification },
    },
  },
  VerifiedAccessInstance: {
    '#': d.pkg(
      name='VerifiedAccessInstance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::VerifiedAccessInstance resource creates an AWS EC2 Verified Access Instance.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VerifiedAccessInstance Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::VerifiedAccessInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVerifiedAccessInstanceId': d.fn('`withVerifiedAccessInstanceId` VerifiedAccessInstanceId ', [d.arg('VerifiedAccessInstanceId', d.T.string)]),
    withVerifiedAccessInstanceId(VerifiedAccessInstanceId): {
      assert std.isString(VerifiedAccessInstanceId) : 'VerifiedAccessInstanceId must be a string',
      Properties+::: { VerifiedAccessInstanceId: VerifiedAccessInstanceId },
    },
    '#withVerifiedAccessTrustProviders': d.fn('`withVerifiedAccessTrustProviders` VerifiedAccessTrustProviders ', [d.arg('VerifiedAccessTrustProviders', d.T.array)]),
    withVerifiedAccessTrustProviders(VerifiedAccessTrustProviders): {
      assert std.isArray(VerifiedAccessTrustProviders) : 'VerifiedAccessTrustProviders must be a array',
      Properties+::: { VerifiedAccessTrustProviders: VerifiedAccessTrustProviders },
    },
    '#withVerifiedAccessTrustProviderIds': d.fn('`withVerifiedAccessTrustProviderIds` VerifiedAccessTrustProviderIds ', [d.arg('VerifiedAccessTrustProviderIds', d.T.array)]),
    withVerifiedAccessTrustProviderIds(VerifiedAccessTrustProviderIds): {
      assert std.isArray(VerifiedAccessTrustProviderIds) : 'VerifiedAccessTrustProviderIds must be a array',
      Properties+::: { VerifiedAccessTrustProviderIds: VerifiedAccessTrustProviderIds },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLoggingConfigurations': d.fn('`withLoggingConfigurations` LoggingConfigurations ', [d.arg('LoggingConfigurations', d.T.object)]),
    withLoggingConfigurations(LoggingConfigurations): {
      assert std.isObject(LoggingConfigurations) : 'LoggingConfigurations must be a object',
      Properties+::: { LoggingConfigurations: LoggingConfigurations },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withFipsEnabled': d.fn('`withFipsEnabled` FipsEnabled ', [d.arg('FipsEnabled', d.T.boolean)]),
    withFipsEnabled(FipsEnabled): {
      assert std.isBoolean(FipsEnabled) : 'FipsEnabled must be a boolean',
      Properties+::: { FipsEnabled: FipsEnabled },
    },
  },
  VerifiedAccessTrustProvider: {
    '#': d.pkg(
      name='VerifiedAccessTrustProvider',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='The AWS::EC2::VerifiedAccessTrustProvider type describes a verified access trust provider',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VerifiedAccessTrustProvider Resource
        * TrustProviderType Type of trust provider. Possible values: user|device
        * PolicyReferenceName The identifier to be used when working with policy rules.
      |||,
      args=[
        d.arg('TrustProviderType', 'd.T.string'),
        d.arg('PolicyReferenceName', 'd.T.string'),
      ]
    ),
    new(
      TrustProviderType,
      PolicyReferenceName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TrustProviderType) : 'TrustProviderType must be a string',
        TrustProviderType: TrustProviderType,
        assert std.isString(PolicyReferenceName) : 'PolicyReferenceName must be a string',
        PolicyReferenceName: PolicyReferenceName,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VerifiedAccessTrustProvider',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeviceTrustProviderType': d.fn('`withDeviceTrustProviderType` DeviceTrustProviderType ', [d.arg('DeviceTrustProviderType', d.T.string)]),
    withDeviceTrustProviderType(DeviceTrustProviderType): {
      assert std.isString(DeviceTrustProviderType) : 'DeviceTrustProviderType must be a string',
      Properties+::: { DeviceTrustProviderType: DeviceTrustProviderType },
    },
    '#withUserTrustProviderType': d.fn('`withUserTrustProviderType` UserTrustProviderType ', [d.arg('UserTrustProviderType', d.T.string)]),
    withUserTrustProviderType(UserTrustProviderType): {
      assert std.isString(UserTrustProviderType) : 'UserTrustProviderType must be a string',
      Properties+::: { UserTrustProviderType: UserTrustProviderType },
    },
    '#withOidcOptions': d.fn('`withOidcOptions` OidcOptions ', [d.arg('OidcOptions', d.T.object)]),
    withOidcOptions(OidcOptions): {
      assert std.isObject(OidcOptions) : 'OidcOptions must be a object',
      Properties+::: { OidcOptions: OidcOptions },
    },
    '#withDeviceOptions': d.fn('`withDeviceOptions` DeviceOptions ', [d.arg('DeviceOptions', d.T.object)]),
    withDeviceOptions(DeviceOptions): {
      assert std.isObject(DeviceOptions) : 'DeviceOptions must be a object',
      Properties+::: { DeviceOptions: DeviceOptions },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withVerifiedAccessTrustProviderId': d.fn('`withVerifiedAccessTrustProviderId` VerifiedAccessTrustProviderId ', [d.arg('VerifiedAccessTrustProviderId', d.T.string)]),
    withVerifiedAccessTrustProviderId(VerifiedAccessTrustProviderId): {
      assert std.isString(VerifiedAccessTrustProviderId) : 'VerifiedAccessTrustProviderId must be a string',
      Properties+::: { VerifiedAccessTrustProviderId: VerifiedAccessTrustProviderId },
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
    '#withSseSpecification': d.fn('`withSseSpecification` SseSpecification ', [d.arg('SseSpecification', d.T.object)]),
    withSseSpecification(SseSpecification): {
      assert std.isObject(SseSpecification) : 'SseSpecification must be a object',
      Properties+::: { SseSpecification: SseSpecification },
    },
  },
  Volume: {
    '#': d.pkg(
      name='Volume',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies an Amazon Elastic Block Store (Amazon EBS) volume. When you use CFNlong to update an Amazon EBS volume that modifies Iops, Size, or VolumeType, there is a cooldown period before another operation can occur. This can cause your stack to report being in UPDATE_IN_PROGRESS or UPDATE_ROLLBACK_IN_PROGRESS for long periods of time. Amazon EBS does not support sizing down an Amazon EBS volume. CFNlong does not attempt to modify an Amazon EBS volume to a smaller size on rollback. Some common scenarios when you might encounter a cooldown period for Amazon EBS include:+You successfully update an Amazon EBS volume and the update succeeds. When you attempt another update within the cooldown window, that update will be subject to a cooldown period.+You successfully update an Amazon EBS volume and the update succeeds but another change in your update-stack call fails. The rollback will be subject to a cooldown period. For more information, see [Requirements for EBS volume modifications](https://docs.aws.amazon.com/ebs/latest/userguide/modify-volume-requirements.html).*DeletionPolicy attribute*  To control how CFNlong handles the volume when the stack is deleted, set a deletion policy for your volume. You can choose to retain the volume, to delete the volume, or to create a snapshot of the volume. For more information, see [DeletionPolicy attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html).If you set a deletion policy that creates a snapshot, all tags on the volume are included in the snapshot.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::Volume Resource
        * AvailabilityZone The ID of the Availability Zone in which to create the volume. For example, us-east-1a.
      |||,
      args=[
        d.arg('AvailabilityZone', 'd.T.string'),
      ]
    ),
    new(
      AvailabilityZone,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
        AvailabilityZone: AvailabilityZone,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::Volume',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMultiAttachEnabled': d.fn('`withMultiAttachEnabled` MultiAttachEnabled ', [d.arg('MultiAttachEnabled', d.T.boolean)]),
    withMultiAttachEnabled(MultiAttachEnabled): {
      assert std.isBoolean(MultiAttachEnabled) : 'MultiAttachEnabled must be a boolean',
      Properties+::: { MultiAttachEnabled: MultiAttachEnabled },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withEncrypted': d.fn('`withEncrypted` Encrypted ', [d.arg('Encrypted', d.T.boolean)]),
    withEncrypted(Encrypted): {
      assert std.isBoolean(Encrypted) : 'Encrypted must be a boolean',
      Properties+::: { Encrypted: Encrypted },
    },
    '#withSize': d.fn('`withSize` Size ', [d.arg('Size', d.T.integer)]),
    withSize(Size): {
      assert std.isNumber(Size) : 'Size must be a integer',
      Properties+::: { Size: Size },
    },
    '#withAutoEnableIO': d.fn('`withAutoEnableIO` AutoEnableIO ', [d.arg('AutoEnableIO', d.T.boolean)]),
    withAutoEnableIO(AutoEnableIO): {
      assert std.isBoolean(AutoEnableIO) : 'AutoEnableIO must be a boolean',
      Properties+::: { AutoEnableIO: AutoEnableIO },
    },
    '#withOutpostArn': d.fn('`withOutpostArn` OutpostArn ', [d.arg('OutpostArn', d.T.string)]),
    withOutpostArn(OutpostArn): {
      assert std.isString(OutpostArn) : 'OutpostArn must be a string',
      Properties+::: { OutpostArn: OutpostArn },
    },
    '#withThroughput': d.fn('`withThroughput` Throughput ', [d.arg('Throughput', d.T.integer)]),
    withThroughput(Throughput): {
      assert std.isNumber(Throughput) : 'Throughput must be a integer',
      Properties+::: { Throughput: Throughput },
    },
    '#withIops': d.fn('`withIops` Iops ', [d.arg('Iops', d.T.integer)]),
    withIops(Iops): {
      assert std.isNumber(Iops) : 'Iops must be a integer',
      Properties+::: { Iops: Iops },
    },
    '#withSnapshotId': d.fn('`withSnapshotId` SnapshotId ', [d.arg('SnapshotId', d.T.string)]),
    withSnapshotId(SnapshotId): {
      assert std.isString(SnapshotId) : 'SnapshotId must be a string',
      Properties+::: { SnapshotId: SnapshotId },
    },
    '#withVolumeType': d.fn('`withVolumeType` VolumeType ', [d.arg('VolumeType', d.T.string)]),
    withVolumeType(VolumeType): {
      assert std.isString(VolumeType) : 'VolumeType must be a string',
      Properties+::: { VolumeType: VolumeType },
    },
    '#withVolumeId': d.fn('`withVolumeId` VolumeId ', [d.arg('VolumeId', d.T.string)]),
    withVolumeId(VolumeId): {
      assert std.isString(VolumeId) : 'VolumeId must be a string',
      Properties+::: { VolumeId: VolumeId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VolumeAttachment: {
    '#': d.pkg(
      name='VolumeAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Attaches an Amazon EBS volume to a running instance and exposes it to the instance with the specified device name. Before this resource can be deleted (and therefore the volume detached), you must first unmount the volume in the instance. Failure to do so results in the volume being stuck in the busy state while it is trying to detach, which could possibly damage the file system or the data it contains. If an Amazon EBS volume is the root device of an instance, it cannot be detached while the instance is in the &#34;running&#34; state. To detach the root volume, stop the instance first. If the root volume is detached from an instance with an MKT product code, then the product codes from that volume are no longer associated with the instance.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VolumeAttachment Resource
        * VolumeId The ID of the Amazon EBS volume. The volume and instance must be within the same Availability Zone. This value can be a reference to an [AWS::EC2::Volume](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html) resource, or it can be the volume ID of an existing Amazon EBS volume.
        * InstanceId The ID of the instance to which the volume attaches. This value can be a reference to an [AWS::EC2::Instance](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html) resource, or it can be the physical ID of an existing EC2 instance.
      |||,
      args=[
        d.arg('VolumeId', 'd.T.string'),
        d.arg('InstanceId', 'd.T.string'),
      ]
    ),
    new(
      VolumeId,
      InstanceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VolumeId) : 'VolumeId must be a string',
        VolumeId: VolumeId,
        assert std.isString(InstanceId) : 'InstanceId must be a string',
        InstanceId: InstanceId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VolumeAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDevice': d.fn('`withDevice` Device ', [d.arg('Device', d.T.string)]),
    withDevice(Device): {
      assert std.isString(Device) : 'Device must be a string',
      Properties+::: { Device: Device },
    },
  },
  VPC: {
    '#': d.pkg(
      name='VPC',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a virtual private cloud (VPC). To add an IPv6 CIDR block to the VPC, see [AWS::EC2::VPCCidrBlock](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html). For more information, see [Virtual private clouds (VPC)](https://docs.aws.amazon.com/vpc/latest/userguide/configure-your-vpc.html) in the *Amazon VPC User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPC Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::VPC',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withInstanceTenancy': d.fn('`withInstanceTenancy` InstanceTenancy ', [d.arg('InstanceTenancy', d.T.string)]),
    withInstanceTenancy(InstanceTenancy): {
      assert std.isString(InstanceTenancy) : 'InstanceTenancy must be a string',
      Properties+::: { InstanceTenancy: InstanceTenancy },
    },
    '#withIpv4NetmaskLength': d.fn('`withIpv4NetmaskLength` Ipv4NetmaskLength ', [d.arg('Ipv4NetmaskLength', d.T.integer)]),
    withIpv4NetmaskLength(Ipv4NetmaskLength): {
      assert std.isNumber(Ipv4NetmaskLength) : 'Ipv4NetmaskLength must be a integer',
      Properties+::: { Ipv4NetmaskLength: Ipv4NetmaskLength },
    },
    '#withCidrBlockAssociations': d.fn('`withCidrBlockAssociations` CidrBlockAssociations ', [d.arg('CidrBlockAssociations', d.T.array)]),
    withCidrBlockAssociations(CidrBlockAssociations): {
      assert std.isArray(CidrBlockAssociations) : 'CidrBlockAssociations must be a array',
      Properties+::: { CidrBlockAssociations: CidrBlockAssociations },
    },
    '#withCidrBlock': d.fn('`withCidrBlock` CidrBlock ', [d.arg('CidrBlock', d.T.string)]),
    withCidrBlock(CidrBlock): {
      assert std.isString(CidrBlock) : 'CidrBlock must be a string',
      Properties+::: { CidrBlock: CidrBlock },
    },
    '#withIpv4IpamPoolId': d.fn('`withIpv4IpamPoolId` Ipv4IpamPoolId ', [d.arg('Ipv4IpamPoolId', d.T.string)]),
    withIpv4IpamPoolId(Ipv4IpamPoolId): {
      assert std.isString(Ipv4IpamPoolId) : 'Ipv4IpamPoolId must be a string',
      Properties+::: { Ipv4IpamPoolId: Ipv4IpamPoolId },
    },
    '#withDefaultNetworkAcl': d.fn('`withDefaultNetworkAcl` DefaultNetworkAcl ', [d.arg('DefaultNetworkAcl', d.T.string)]),
    withDefaultNetworkAcl(DefaultNetworkAcl): {
      assert std.isString(DefaultNetworkAcl) : 'DefaultNetworkAcl must be a string',
      Properties+::: { DefaultNetworkAcl: DefaultNetworkAcl },
    },
    '#withEnableDnsSupport': d.fn('`withEnableDnsSupport` EnableDnsSupport ', [d.arg('EnableDnsSupport', d.T.boolean)]),
    withEnableDnsSupport(EnableDnsSupport): {
      assert std.isBoolean(EnableDnsSupport) : 'EnableDnsSupport must be a boolean',
      Properties+::: { EnableDnsSupport: EnableDnsSupport },
    },
    '#withIpv6CidrBlocks': d.fn('`withIpv6CidrBlocks` Ipv6CidrBlocks ', [d.arg('Ipv6CidrBlocks', d.T.array)]),
    withIpv6CidrBlocks(Ipv6CidrBlocks): {
      assert std.isArray(Ipv6CidrBlocks) : 'Ipv6CidrBlocks must be a array',
      Properties+::: { Ipv6CidrBlocks: Ipv6CidrBlocks },
    },
    '#withDefaultSecurityGroup': d.fn('`withDefaultSecurityGroup` DefaultSecurityGroup ', [d.arg('DefaultSecurityGroup', d.T.string)]),
    withDefaultSecurityGroup(DefaultSecurityGroup): {
      assert std.isString(DefaultSecurityGroup) : 'DefaultSecurityGroup must be a string',
      Properties+::: { DefaultSecurityGroup: DefaultSecurityGroup },
    },
    '#withEnableDnsHostnames': d.fn('`withEnableDnsHostnames` EnableDnsHostnames ', [d.arg('EnableDnsHostnames', d.T.boolean)]),
    withEnableDnsHostnames(EnableDnsHostnames): {
      assert std.isBoolean(EnableDnsHostnames) : 'EnableDnsHostnames must be a boolean',
      Properties+::: { EnableDnsHostnames: EnableDnsHostnames },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VPCBlockPublicAccessExclusion: {
    '#': d.pkg(
      name='VPCBlockPublicAccessExclusion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPCBlockPublicAccessExclusion.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCBlockPublicAccessExclusion Resource
        * InternetGatewayExclusionMode The desired Block Public Access Exclusion Mode for a specific VPC/Subnet.
      |||,
      args=[
        d.arg('InternetGatewayExclusionMode', 'd.T.string'),
      ]
    ),
    new(
      InternetGatewayExclusionMode,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InternetGatewayExclusionMode) : 'InternetGatewayExclusionMode must be a string',
        assert InternetGatewayExclusionMode == 'allow-bidirectional' || InternetGatewayExclusionMode == 'allow-egress' : "InternetGatewayExclusionMode must be either 'allow-bidirectional' or 'allow-egress'",
        InternetGatewayExclusionMode: InternetGatewayExclusionMode,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCBlockPublicAccessExclusion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withExclusionId': d.fn('`withExclusionId` ExclusionId ', [d.arg('ExclusionId', d.T.string)]),
    withExclusionId(ExclusionId): {
      assert std.isString(ExclusionId) : 'ExclusionId must be a string',
      Properties+::: { ExclusionId: ExclusionId },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VPCBlockPublicAccessOptions: {
    '#': d.pkg(
      name='VPCBlockPublicAccessOptions',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPCBlockPublicAccessOptions',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCBlockPublicAccessOptions Resource
        * InternetGatewayBlockMode The desired Block Public Access mode for Internet Gateways in your account. We do not allow to create in a off mode as this is the default value
      |||,
      args=[
        d.arg('InternetGatewayBlockMode', 'd.T.string'),
      ]
    ),
    new(
      InternetGatewayBlockMode,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InternetGatewayBlockMode) : 'InternetGatewayBlockMode must be a string',
        assert InternetGatewayBlockMode == 'block-bidirectional' || InternetGatewayBlockMode == 'block-ingress' : "InternetGatewayBlockMode must be either 'block-bidirectional' or 'block-ingress'",
        InternetGatewayBlockMode: InternetGatewayBlockMode,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCBlockPublicAccessOptions',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
  },
  VPCCidrBlock: {
    '#': d.pkg(
      name='VPCCidrBlock',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPCCidrBlock',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCCidrBlock Resource
        * VpcId The ID of the VPC.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCCidrBlock',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCidrBlock': d.fn('`withCidrBlock` CidrBlock ', [d.arg('CidrBlock', d.T.string)]),
    withCidrBlock(CidrBlock): {
      assert std.isString(CidrBlock) : 'CidrBlock must be a string',
      Properties+::: { CidrBlock: CidrBlock },
    },
    '#withIpv6Pool': d.fn('`withIpv6Pool` Ipv6Pool ', [d.arg('Ipv6Pool', d.T.string)]),
    withIpv6Pool(Ipv6Pool): {
      assert std.isString(Ipv6Pool) : 'Ipv6Pool must be a string',
      Properties+::: { Ipv6Pool: Ipv6Pool },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIpv6CidrBlock': d.fn('`withIpv6CidrBlock` Ipv6CidrBlock ', [d.arg('Ipv6CidrBlock', d.T.string)]),
    withIpv6CidrBlock(Ipv6CidrBlock): {
      assert std.isString(Ipv6CidrBlock) : 'Ipv6CidrBlock must be a string',
      Properties+::: { Ipv6CidrBlock: Ipv6CidrBlock },
    },
    '#withIpv4IpamPoolId': d.fn('`withIpv4IpamPoolId` Ipv4IpamPoolId ', [d.arg('Ipv4IpamPoolId', d.T.string)]),
    withIpv4IpamPoolId(Ipv4IpamPoolId): {
      assert std.isString(Ipv4IpamPoolId) : 'Ipv4IpamPoolId must be a string',
      Properties+::: { Ipv4IpamPoolId: Ipv4IpamPoolId },
    },
    '#withIpv4NetmaskLength': d.fn('`withIpv4NetmaskLength` Ipv4NetmaskLength ', [d.arg('Ipv4NetmaskLength', d.T.integer)]),
    withIpv4NetmaskLength(Ipv4NetmaskLength): {
      assert std.isNumber(Ipv4NetmaskLength) : 'Ipv4NetmaskLength must be a integer',
      Properties+::: { Ipv4NetmaskLength: Ipv4NetmaskLength },
    },
    '#withIpv6IpamPoolId': d.fn('`withIpv6IpamPoolId` Ipv6IpamPoolId ', [d.arg('Ipv6IpamPoolId', d.T.string)]),
    withIpv6IpamPoolId(Ipv6IpamPoolId): {
      assert std.isString(Ipv6IpamPoolId) : 'Ipv6IpamPoolId must be a string',
      Properties+::: { Ipv6IpamPoolId: Ipv6IpamPoolId },
    },
    '#withIpv6NetmaskLength': d.fn('`withIpv6NetmaskLength` Ipv6NetmaskLength ', [d.arg('Ipv6NetmaskLength', d.T.integer)]),
    withIpv6NetmaskLength(Ipv6NetmaskLength): {
      assert std.isNumber(Ipv6NetmaskLength) : 'Ipv6NetmaskLength must be a integer',
      Properties+::: { Ipv6NetmaskLength: Ipv6NetmaskLength },
    },
    '#withAmazonProvidedIpv6CidrBlock': d.fn('`withAmazonProvidedIpv6CidrBlock` AmazonProvidedIpv6CidrBlock ', [d.arg('AmazonProvidedIpv6CidrBlock', d.T.boolean)]),
    withAmazonProvidedIpv6CidrBlock(AmazonProvidedIpv6CidrBlock): {
      assert std.isBoolean(AmazonProvidedIpv6CidrBlock) : 'AmazonProvidedIpv6CidrBlock must be a boolean',
      Properties+::: { AmazonProvidedIpv6CidrBlock: AmazonProvidedIpv6CidrBlock },
    },
    '#withIpv6AddressAttribute': d.fn('`withIpv6AddressAttribute` Ipv6AddressAttribute ', [d.arg('Ipv6AddressAttribute', d.T.string)]),
    withIpv6AddressAttribute(Ipv6AddressAttribute): {
      assert std.isString(Ipv6AddressAttribute) : 'Ipv6AddressAttribute must be a string',
      Properties+::: { Ipv6AddressAttribute: Ipv6AddressAttribute },
    },
    '#withIpSource': d.fn('`withIpSource` IpSource ', [d.arg('IpSource', d.T.string)]),
    withIpSource(IpSource): {
      assert std.isString(IpSource) : 'IpSource must be a string',
      Properties+::: { IpSource: IpSource },
    },
  },
  VPCDHCPOptionsAssociation: {
    '#': d.pkg(
      name='VPCDHCPOptionsAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Associates a set of DHCP options with a VPC, or associates no DHCP options with the VPC.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCDHCPOptionsAssociation Resource
        * VpcId The ID of the VPC.
        * DhcpOptionsId The ID of the DHCP options set, or default to associate no DHCP options with the VPC.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
        d.arg('DhcpOptionsId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
      DhcpOptionsId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isString(DhcpOptionsId) : 'DhcpOptionsId must be a string',
        DhcpOptionsId: DhcpOptionsId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCDHCPOptionsAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  VPCEndpoint: {
    '#': d.pkg(
      name='VPCEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a VPC endpoint. A VPC endpoint provides a private connection between your VPC and an endpoint service. You can use an endpoint service provided by AWS, an MKT Partner, or another AWS accounts in your organization. For more information, see the [User Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/). An endpoint of type Interface establishes connections between the subnets in your VPC and an AWS-service, your own service, or a service hosted by another AWS-account. With an interface VPC endpoint, you specify the subnets in which to create the endpoint and the security groups to associate with the endpoint network interfaces. An endpoint of type gateway serves as a target for a route in your route table for traffic destined for S3 or DDB. You can specify an endpoint policy for the endpoint, which controls access to the service from your VPC. You can also specify the VPC route tables that use the endpoint. For more information about connectivity to S3, see [Why cant I connect to an S3 bucket using a gateway VPC endpoint?](https://docs.aws.amazon.com/premiumsupport/knowledge-center/connect-s3-vpc-endpoint)  An endpoint of type GatewayLoadBalancer provides private connectivity between your VPC and virtual appliances from a service provider.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCEndpoint Resource
        * VpcId The ID of the VPC.
        * ServiceName The name of the endpoint service.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
        d.arg('ServiceName', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
      ServiceName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isString(ServiceName) : 'ServiceName must be a string',
        ServiceName: ServiceName,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPrivateDnsEnabled': d.fn('`withPrivateDnsEnabled` PrivateDnsEnabled ', [d.arg('PrivateDnsEnabled', d.T.boolean)]),
    withPrivateDnsEnabled(PrivateDnsEnabled): {
      assert std.isBoolean(PrivateDnsEnabled) : 'PrivateDnsEnabled must be a boolean',
      Properties+::: { PrivateDnsEnabled: PrivateDnsEnabled },
    },
    '#withCreationTimestamp': d.fn('`withCreationTimestamp` CreationTimestamp ', [d.arg('CreationTimestamp', d.T.string)]),
    withCreationTimestamp(CreationTimestamp): {
      assert std.isString(CreationTimestamp) : 'CreationTimestamp must be a string',
      Properties+::: { CreationTimestamp: CreationTimestamp },
    },
    '#withRouteTableIds': d.fn('`withRouteTableIds` RouteTableIds ', [d.arg('RouteTableIds', d.T.array)]),
    withRouteTableIds(RouteTableIds): {
      assert std.isArray(RouteTableIds) : 'RouteTableIds must be a array',
      Properties+::: { RouteTableIds: RouteTableIds },
    },
    '#withPolicyDocument': d.fn('`withPolicyDocument` PolicyDocument ', [d.arg('PolicyDocument')]),
    withPolicyDocument(PolicyDocument): {
      // Type: string,object
      Properties+::: { PolicyDocument: PolicyDocument },
    },
    '#withVpcEndpointType': d.fn('`withVpcEndpointType` VpcEndpointType ', [d.arg('VpcEndpointType', d.T.string)]),
    withVpcEndpointType(VpcEndpointType): {
      assert std.isString(VpcEndpointType) : 'VpcEndpointType must be a string',
      assert VpcEndpointType == 'Interface' || VpcEndpointType == 'Gateway' || VpcEndpointType == 'GatewayLoadBalancer' : "VpcEndpointType must be either 'Interface' or 'Gateway' or 'GatewayLoadBalancer'",
      Properties+::: { VpcEndpointType: VpcEndpointType },
    },
    '#withNetworkInterfaceIds': d.fn('`withNetworkInterfaceIds` NetworkInterfaceIds ', [d.arg('NetworkInterfaceIds', d.T.array)]),
    withNetworkInterfaceIds(NetworkInterfaceIds): {
      assert std.isArray(NetworkInterfaceIds) : 'NetworkInterfaceIds must be a array',
      Properties+::: { NetworkInterfaceIds: NetworkInterfaceIds },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDnsEntries': d.fn('`withDnsEntries` DnsEntries ', [d.arg('DnsEntries', d.T.array)]),
    withDnsEntries(DnsEntries): {
      assert std.isArray(DnsEntries) : 'DnsEntries must be a array',
      Properties+::: { DnsEntries: DnsEntries },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withSubnetIds': d.fn('`withSubnetIds` SubnetIds ', [d.arg('SubnetIds', d.T.array)]),
    withSubnetIds(SubnetIds): {
      assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
      Properties+::: { SubnetIds: SubnetIds },
    },
  },
  VPCEndpointConnectionNotification: {
    '#': d.pkg(
      name='VPCEndpointConnectionNotification',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPCEndpointConnectionNotification',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCEndpointConnectionNotification Resource
        * ConnectionEvents The endpoint events for which to receive notifications.
        * ConnectionNotificationArn The ARN of the SNS topic for the notifications.
      |||,
      args=[
        d.arg('ConnectionEvents', 'd.T.array'),
        d.arg('ConnectionNotificationArn', 'd.T.string'),
      ]
    ),
    new(
      ConnectionEvents,
      ConnectionNotificationArn,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ConnectionEvents) : 'ConnectionEvents must be a array',
        ConnectionEvents: ConnectionEvents,
        assert std.isString(ConnectionNotificationArn) : 'ConnectionNotificationArn must be a string',
        ConnectionNotificationArn: ConnectionNotificationArn,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCEndpointConnectionNotification',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVPCEndpointId': d.fn('`withVPCEndpointId` VPCEndpointId ', [d.arg('VPCEndpointId', d.T.string)]),
    withVPCEndpointId(VPCEndpointId): {
      assert std.isString(VPCEndpointId) : 'VPCEndpointId must be a string',
      Properties+::: { VPCEndpointId: VPCEndpointId },
    },
    '#withVPCEndpointConnectionNotificationId': d.fn('`withVPCEndpointConnectionNotificationId` VPCEndpointConnectionNotificationId ', [d.arg('VPCEndpointConnectionNotificationId', d.T.string)]),
    withVPCEndpointConnectionNotificationId(VPCEndpointConnectionNotificationId): {
      assert std.isString(VPCEndpointConnectionNotificationId) : 'VPCEndpointConnectionNotificationId must be a string',
      Properties+::: { VPCEndpointConnectionNotificationId: VPCEndpointConnectionNotificationId },
    },
    '#withServiceId': d.fn('`withServiceId` ServiceId ', [d.arg('ServiceId', d.T.string)]),
    withServiceId(ServiceId): {
      assert std.isString(ServiceId) : 'ServiceId must be a string',
      Properties+::: { ServiceId: ServiceId },
    },
  },
  VPCEndpointService: {
    '#': d.pkg(
      name='VPCEndpointService',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPCEndpointService',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCEndpointService Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EC2::VPCEndpointService',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withNetworkLoadBalancerArns': d.fn('`withNetworkLoadBalancerArns` NetworkLoadBalancerArns ', [d.arg('NetworkLoadBalancerArns', d.T.array)]),
    withNetworkLoadBalancerArns(NetworkLoadBalancerArns): {
      assert std.isArray(NetworkLoadBalancerArns) : 'NetworkLoadBalancerArns must be a array',
      Properties+::: { NetworkLoadBalancerArns: NetworkLoadBalancerArns },
    },
    '#withContributorInsightsEnabled': d.fn('`withContributorInsightsEnabled` ContributorInsightsEnabled ', [d.arg('ContributorInsightsEnabled', d.T.boolean)]),
    withContributorInsightsEnabled(ContributorInsightsEnabled): {
      assert std.isBoolean(ContributorInsightsEnabled) : 'ContributorInsightsEnabled must be a boolean',
      Properties+::: { ContributorInsightsEnabled: ContributorInsightsEnabled },
    },
    '#withPayerResponsibility': d.fn('`withPayerResponsibility` PayerResponsibility ', [d.arg('PayerResponsibility', d.T.string)]),
    withPayerResponsibility(PayerResponsibility): {
      assert std.isString(PayerResponsibility) : 'PayerResponsibility must be a string',
      Properties+::: { PayerResponsibility: PayerResponsibility },
    },
    '#withServiceId': d.fn('`withServiceId` ServiceId ', [d.arg('ServiceId', d.T.string)]),
    withServiceId(ServiceId): {
      assert std.isString(ServiceId) : 'ServiceId must be a string',
      Properties+::: { ServiceId: ServiceId },
    },
    '#withAcceptanceRequired': d.fn('`withAcceptanceRequired` AcceptanceRequired ', [d.arg('AcceptanceRequired', d.T.boolean)]),
    withAcceptanceRequired(AcceptanceRequired): {
      assert std.isBoolean(AcceptanceRequired) : 'AcceptanceRequired must be a boolean',
      Properties+::: { AcceptanceRequired: AcceptanceRequired },
    },
    '#withGatewayLoadBalancerArns': d.fn('`withGatewayLoadBalancerArns` GatewayLoadBalancerArns ', [d.arg('GatewayLoadBalancerArns', d.T.array)]),
    withGatewayLoadBalancerArns(GatewayLoadBalancerArns): {
      assert std.isArray(GatewayLoadBalancerArns) : 'GatewayLoadBalancerArns must be a array',
      Properties+::: { GatewayLoadBalancerArns: GatewayLoadBalancerArns },
    },
  },
  VPCEndpointServicePermissions: {
    '#': d.pkg(
      name='VPCEndpointServicePermissions',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPCEndpointServicePermissions',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCEndpointServicePermissions Resource
        * ServiceId 
      |||,
      args=[
        d.arg('ServiceId', 'd.T.string'),
      ]
    ),
    new(
      ServiceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServiceId) : 'ServiceId must be a string',
        ServiceId: ServiceId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCEndpointServicePermissions',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAllowedPrincipals': d.fn('`withAllowedPrincipals` AllowedPrincipals ', [d.arg('AllowedPrincipals', d.T.array)]),
    withAllowedPrincipals(AllowedPrincipals): {
      assert std.isArray(AllowedPrincipals) : 'AllowedPrincipals must be a array',
      Properties+::: { AllowedPrincipals: AllowedPrincipals },
    },
  },
  VPCGatewayAttachment: {
    '#': d.pkg(
      name='VPCGatewayAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPCGatewayAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCGatewayAttachment Resource
        * VpcId The ID of the VPC.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCGatewayAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAttachmentType': d.fn('`withAttachmentType` AttachmentType ', [d.arg('AttachmentType', d.T.string)]),
    withAttachmentType(AttachmentType): {
      assert std.isString(AttachmentType) : 'AttachmentType must be a string',
      Properties+::: { AttachmentType: AttachmentType },
    },
    '#withInternetGatewayId': d.fn('`withInternetGatewayId` InternetGatewayId ', [d.arg('InternetGatewayId', d.T.string)]),
    withInternetGatewayId(InternetGatewayId): {
      assert std.isString(InternetGatewayId) : 'InternetGatewayId must be a string',
      Properties+::: { InternetGatewayId: InternetGatewayId },
    },
    '#withVpnGatewayId': d.fn('`withVpnGatewayId` VpnGatewayId ', [d.arg('VpnGatewayId', d.T.string)]),
    withVpnGatewayId(VpnGatewayId): {
      assert std.isString(VpnGatewayId) : 'VpnGatewayId must be a string',
      Properties+::: { VpnGatewayId: VpnGatewayId },
    },
  },
  VPCPeeringConnection: {
    '#': d.pkg(
      name='VPCPeeringConnection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPCPeeringConnection',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPCPeeringConnection Resource
        * VpcId The ID of the VPC.
        * PeerVpcId The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
      |||,
      args=[
        d.arg('VpcId', 'd.T.string'),
        d.arg('PeerVpcId', 'd.T.string'),
      ]
    ),
    new(
      VpcId,
      PeerVpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isString(PeerVpcId) : 'PeerVpcId must be a string',
        PeerVpcId: PeerVpcId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPCPeeringConnection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPeerRoleArn': d.fn('`withPeerRoleArn` PeerRoleArn ', [d.arg('PeerRoleArn', d.T.string)]),
    withPeerRoleArn(PeerRoleArn): {
      assert std.isString(PeerRoleArn) : 'PeerRoleArn must be a string',
      Properties+::: { PeerRoleArn: PeerRoleArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPeerRegion': d.fn('`withPeerRegion` PeerRegion ', [d.arg('PeerRegion', d.T.string)]),
    withPeerRegion(PeerRegion): {
      assert std.isString(PeerRegion) : 'PeerRegion must be a string',
      Properties+::: { PeerRegion: PeerRegion },
    },
    '#withPeerOwnerId': d.fn('`withPeerOwnerId` PeerOwnerId ', [d.arg('PeerOwnerId', d.T.string)]),
    withPeerOwnerId(PeerOwnerId): {
      assert std.isString(PeerOwnerId) : 'PeerOwnerId must be a string',
      Properties+::: { PeerOwnerId: PeerOwnerId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VPNConnection: {
    '#': d.pkg(
      name='VPNConnection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a VPN connection between a virtual private gateway and a VPN customer gateway or a transit gateway and a VPN customer gateway. To specify a VPN connection between a transit gateway and customer gateway, use the TransitGatewayId and CustomerGatewayId properties. To specify a VPN connection between a virtual private gateway and customer gateway, use the VpnGatewayId and CustomerGatewayId properties. For more information, see [](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPNConnection Resource
        * Type The type of VPN connection.
        * CustomerGatewayId The ID of the customer gateway at your end of the VPN connection.
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('CustomerGatewayId', 'd.T.string'),
      ]
    ),
    new(
      Type,
      CustomerGatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(CustomerGatewayId) : 'CustomerGatewayId must be a string',
        CustomerGatewayId: CustomerGatewayId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPNConnection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRemoteIpv6NetworkCidr': d.fn('`withRemoteIpv6NetworkCidr` RemoteIpv6NetworkCidr ', [d.arg('RemoteIpv6NetworkCidr', d.T.string)]),
    withRemoteIpv6NetworkCidr(RemoteIpv6NetworkCidr): {
      assert std.isString(RemoteIpv6NetworkCidr) : 'RemoteIpv6NetworkCidr must be a string',
      Properties+::: { RemoteIpv6NetworkCidr: RemoteIpv6NetworkCidr },
    },
    '#withRemoteIpv4NetworkCidr': d.fn('`withRemoteIpv4NetworkCidr` RemoteIpv4NetworkCidr ', [d.arg('RemoteIpv4NetworkCidr', d.T.string)]),
    withRemoteIpv4NetworkCidr(RemoteIpv4NetworkCidr): {
      assert std.isString(RemoteIpv4NetworkCidr) : 'RemoteIpv4NetworkCidr must be a string',
      Properties+::: { RemoteIpv4NetworkCidr: RemoteIpv4NetworkCidr },
    },
    '#withVpnTunnelOptionsSpecifications': d.fn('`withVpnTunnelOptionsSpecifications` VpnTunnelOptionsSpecifications ', [d.arg('VpnTunnelOptionsSpecifications', d.T.array)]),
    withVpnTunnelOptionsSpecifications(VpnTunnelOptionsSpecifications): {
      assert std.isArray(VpnTunnelOptionsSpecifications) : 'VpnTunnelOptionsSpecifications must be a array',
      Properties+::: { VpnTunnelOptionsSpecifications: VpnTunnelOptionsSpecifications },
    },
    '#withOutsideIpAddressType': d.fn('`withOutsideIpAddressType` OutsideIpAddressType ', [d.arg('OutsideIpAddressType', d.T.string)]),
    withOutsideIpAddressType(OutsideIpAddressType): {
      assert std.isString(OutsideIpAddressType) : 'OutsideIpAddressType must be a string',
      Properties+::: { OutsideIpAddressType: OutsideIpAddressType },
    },
    '#withStaticRoutesOnly': d.fn('`withStaticRoutesOnly` StaticRoutesOnly ', [d.arg('StaticRoutesOnly', d.T.boolean)]),
    withStaticRoutesOnly(StaticRoutesOnly): {
      assert std.isBoolean(StaticRoutesOnly) : 'StaticRoutesOnly must be a boolean',
      Properties+::: { StaticRoutesOnly: StaticRoutesOnly },
    },
    '#withEnableAcceleration': d.fn('`withEnableAcceleration` EnableAcceleration ', [d.arg('EnableAcceleration', d.T.boolean)]),
    withEnableAcceleration(EnableAcceleration): {
      assert std.isBoolean(EnableAcceleration) : 'EnableAcceleration must be a boolean',
      Properties+::: { EnableAcceleration: EnableAcceleration },
    },
    '#withTransitGatewayId': d.fn('`withTransitGatewayId` TransitGatewayId ', [d.arg('TransitGatewayId', d.T.string)]),
    withTransitGatewayId(TransitGatewayId): {
      assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
      Properties+::: { TransitGatewayId: TransitGatewayId },
    },
    '#withLocalIpv4NetworkCidr': d.fn('`withLocalIpv4NetworkCidr` LocalIpv4NetworkCidr ', [d.arg('LocalIpv4NetworkCidr', d.T.string)]),
    withLocalIpv4NetworkCidr(LocalIpv4NetworkCidr): {
      assert std.isString(LocalIpv4NetworkCidr) : 'LocalIpv4NetworkCidr must be a string',
      Properties+::: { LocalIpv4NetworkCidr: LocalIpv4NetworkCidr },
    },
    '#withVpnGatewayId': d.fn('`withVpnGatewayId` VpnGatewayId ', [d.arg('VpnGatewayId', d.T.string)]),
    withVpnGatewayId(VpnGatewayId): {
      assert std.isString(VpnGatewayId) : 'VpnGatewayId must be a string',
      Properties+::: { VpnGatewayId: VpnGatewayId },
    },
    '#withTransportTransitGatewayAttachmentId': d.fn('`withTransportTransitGatewayAttachmentId` TransportTransitGatewayAttachmentId ', [d.arg('TransportTransitGatewayAttachmentId', d.T.string)]),
    withTransportTransitGatewayAttachmentId(TransportTransitGatewayAttachmentId): {
      assert std.isString(TransportTransitGatewayAttachmentId) : 'TransportTransitGatewayAttachmentId must be a string',
      Properties+::: { TransportTransitGatewayAttachmentId: TransportTransitGatewayAttachmentId },
    },
    '#withLocalIpv6NetworkCidr': d.fn('`withLocalIpv6NetworkCidr` LocalIpv6NetworkCidr ', [d.arg('LocalIpv6NetworkCidr', d.T.string)]),
    withLocalIpv6NetworkCidr(LocalIpv6NetworkCidr): {
      assert std.isString(LocalIpv6NetworkCidr) : 'LocalIpv6NetworkCidr must be a string',
      Properties+::: { LocalIpv6NetworkCidr: LocalIpv6NetworkCidr },
    },
    '#withVpnConnectionId': d.fn('`withVpnConnectionId` VpnConnectionId ', [d.arg('VpnConnectionId', d.T.string)]),
    withVpnConnectionId(VpnConnectionId): {
      assert std.isString(VpnConnectionId) : 'VpnConnectionId must be a string',
      Properties+::: { VpnConnectionId: VpnConnectionId },
    },
    '#withTunnelInsideIpVersion': d.fn('`withTunnelInsideIpVersion` TunnelInsideIpVersion ', [d.arg('TunnelInsideIpVersion', d.T.string)]),
    withTunnelInsideIpVersion(TunnelInsideIpVersion): {
      assert std.isString(TunnelInsideIpVersion) : 'TunnelInsideIpVersion must be a string',
      Properties+::: { TunnelInsideIpVersion: TunnelInsideIpVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VPNConnectionRoute: {
    '#': d.pkg(
      name='VPNConnectionRoute',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a static route for a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway. For more information, see [](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPNConnectionRoute Resource
        * DestinationCidrBlock The CIDR block associated with the local subnet of the customer network.
        * VpnConnectionId The ID of the VPN connection.
      |||,
      args=[
        d.arg('DestinationCidrBlock', 'd.T.string'),
        d.arg('VpnConnectionId', 'd.T.string'),
      ]
    ),
    new(
      DestinationCidrBlock,
      VpnConnectionId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DestinationCidrBlock) : 'DestinationCidrBlock must be a string',
        DestinationCidrBlock: DestinationCidrBlock,
        assert std.isString(VpnConnectionId) : 'VpnConnectionId must be a string',
        VpnConnectionId: VpnConnectionId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPNConnectionRoute',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  VPNGateway: {
    '#': d.pkg(
      name='VPNGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Specifies a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself. For more information, see [](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPNGateway Resource
        * Type The type of VPN connection the virtual private gateway supports.
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPNGateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVPNGatewayId': d.fn('`withVPNGatewayId` VPNGatewayId ', [d.arg('VPNGatewayId', d.T.string)]),
    withVPNGatewayId(VPNGatewayId): {
      assert std.isString(VPNGatewayId) : 'VPNGatewayId must be a string',
      Properties+::: { VPNGatewayId: VPNGatewayId },
    },
    '#withAmazonSideAsn': d.fn('`withAmazonSideAsn` AmazonSideAsn ', [d.arg('AmazonSideAsn', d.T.integer)]),
    withAmazonSideAsn(AmazonSideAsn): {
      assert std.isNumber(AmazonSideAsn) : 'AmazonSideAsn must be a integer',
      Properties+::: { AmazonSideAsn: AmazonSideAsn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VPNGatewayRoutePropagation: {
    '#': d.pkg(
      name='VPNGatewayRoutePropagation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EC2.libsonnet',
      help='Resource Type definition for AWS::EC2::VPNGatewayRoutePropagation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EC2::VPNGatewayRoutePropagation Resource
        * RouteTableIds The ID of the route table. The routing table must be associated with the same VPC that the virtual private gateway is attached to
        * VpnGatewayId The ID of the virtual private gateway that is attached to a VPC. The virtual private gateway must be attached to the same VPC that the routing tables are associated with
      |||,
      args=[
        d.arg('RouteTableIds', 'd.T.array'),
        d.arg('VpnGatewayId', 'd.T.string'),
      ]
    ),
    new(
      RouteTableIds,
      VpnGatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(RouteTableIds) : 'RouteTableIds must be a array',
        RouteTableIds: RouteTableIds,
        assert std.isString(VpnGatewayId) : 'VpnGatewayId must be a string',
        VpnGatewayId: VpnGatewayId,
      },
      DependsOn:: [],
      Type: 'AWS::EC2::VPNGatewayRoutePropagation',
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
}
