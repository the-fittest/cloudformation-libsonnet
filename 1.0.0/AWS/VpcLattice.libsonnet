local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessLogSubscription: {
    '#': d.pkg(
      name='AccessLogSubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and Amazon Kinesis Data Firehose. The service network owner can use the access logs to audit the services in the network. The service network owner will only see access logs from clients and services that are associated with their service network. Access log entries represent traffic originated from VPCs associated with that network.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::AccessLogSubscription Resource
        * DestinationArn 
      |||,
      args=[
        d.arg('DestinationArn', 'd.T.string'),
      ]
    ),
    new(
      DestinationArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DestinationArn) : 'DestinationArn must be a string',
        DestinationArn: DestinationArn,
      },
      DependsOn:: [],
      Type: 'AWS::VpcLattice::AccessLogSubscription',
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
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
    '#withResourceId': d.fn('`withResourceId` ResourceId ', [d.arg('ResourceId', d.T.string)]),
    withResourceId(ResourceId): {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      Properties+::: { ResourceId: ResourceId },
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
    '#withServiceNetworkLogType': d.fn('`withServiceNetworkLogType` ServiceNetworkLogType ', [d.arg('ServiceNetworkLogType', d.T.string)]),
    withServiceNetworkLogType(ServiceNetworkLogType): {
      assert std.isString(ServiceNetworkLogType) : 'ServiceNetworkLogType must be a string',
      assert ServiceNetworkLogType == 'SERVICE' || ServiceNetworkLogType == 'RESOURCE' : "ServiceNetworkLogType must be either 'SERVICE' or 'RESOURCE'",
      Properties+::: { ServiceNetworkLogType: ServiceNetworkLogType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  AuthPolicy: {
    '#': d.pkg(
      name='AuthPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='Creates or updates the auth policy.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::AuthPolicy Resource
        * ResourceIdentifier 
        * Policy 
      |||,
      args=[
        d.arg('ResourceIdentifier', 'd.T.string'),
        d.arg('Policy', 'd.T.object'),
      ]
    ),
    new(
      ResourceIdentifier,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
        ResourceIdentifier: ResourceIdentifier,
        assert std.isObject(Policy) : 'Policy must be a object',
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::VpcLattice::AuthPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'ACTIVE' || State == 'INACTIVE' : "State must be either 'ACTIVE' or 'INACTIVE'",
      Properties+::: { State: State },
    },
  },
  Listener: {
    '#': d.pkg(
      name='Listener',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='Creates a listener for a service. Before you start using your Amazon VPC Lattice service, you must add one or more listeners. A listener is a process that checks for connection requests to your services.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::Listener Resource
        * DefaultAction 
        * Protocol 
      |||,
      args=[
        d.arg('DefaultAction', 'd.T.object'),
        d.arg('Protocol', 'd.T.string'),
      ]
    ),
    new(
      DefaultAction,
      Protocol,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DefaultAction) : 'DefaultAction must be a object',
        DefaultAction: DefaultAction,
        assert std.isString(Protocol) : 'Protocol must be a string',
        assert Protocol == 'HTTP' || Protocol == 'HTTPS' || Protocol == 'TLS_PASSTHROUGH' : "Protocol must be either 'HTTP' or 'HTTPS' or 'TLS_PASSTHROUGH'",
        Protocol: Protocol,
      },
      DependsOn:: [],
      Type: 'AWS::VpcLattice::Listener',
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
    '#withServiceArn': d.fn('`withServiceArn` ServiceArn ', [d.arg('ServiceArn', d.T.string)]),
    withServiceArn(ServiceArn): {
      assert std.isString(ServiceArn) : 'ServiceArn must be a string',
      Properties+::: { ServiceArn: ServiceArn },
    },
    '#withServiceId': d.fn('`withServiceId` ServiceId ', [d.arg('ServiceId', d.T.string)]),
    withServiceId(ServiceId): {
      assert std.isString(ServiceId) : 'ServiceId must be a string',
      Properties+::: { ServiceId: ServiceId },
    },
    '#withServiceIdentifier': d.fn('`withServiceIdentifier` ServiceIdentifier ', [d.arg('ServiceIdentifier', d.T.string)]),
    withServiceIdentifier(ServiceIdentifier): {
      assert std.isString(ServiceIdentifier) : 'ServiceIdentifier must be a string',
      Properties+::: { ServiceIdentifier: ServiceIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='Retrieves information about the resource policy. The resource policy is an IAM policy created by AWS RAM on behalf of the resource owner when they share a resource.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::ResourcePolicy Resource
        * ResourceArn 
        * Policy 
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('Policy', 'd.T.object'),
      ]
    ),
    new(
      ResourceArn,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        assert std.isObject(Policy) : 'Policy must be a object',
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::VpcLattice::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Rule: {
    '#': d.pkg(
      name='Rule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='Creates a listener rule. Each listener has a default rule for checking connection requests, but you can define additional rules. Each rule consists of a priority, one or more actions, and one or more conditions.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::Rule Resource
        * Action 
        * Match 
        * Priority 
      |||,
      args=[
        d.arg('Action', 'd.T.object'),
        d.arg('Match', 'd.T.object'),
        d.arg('Priority', 'd.T.integer'),
      ]
    ),
    new(
      Action,
      Match,
      Priority,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Action) : 'Action must be a object',
        Action: Action,
        assert std.isObject(Match) : 'Match must be a object',
        Match: Match,
        assert std.isNumber(Priority) : 'Priority must be a integer',
        Priority: Priority,
      },
      DependsOn:: [],
      Type: 'AWS::VpcLattice::Rule',
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
    '#withListenerIdentifier': d.fn('`withListenerIdentifier` ListenerIdentifier ', [d.arg('ListenerIdentifier', d.T.string)]),
    withListenerIdentifier(ListenerIdentifier): {
      assert std.isString(ListenerIdentifier) : 'ListenerIdentifier must be a string',
      Properties+::: { ListenerIdentifier: ListenerIdentifier },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withServiceIdentifier': d.fn('`withServiceIdentifier` ServiceIdentifier ', [d.arg('ServiceIdentifier', d.T.string)]),
    withServiceIdentifier(ServiceIdentifier): {
      assert std.isString(ServiceIdentifier) : 'ServiceIdentifier must be a string',
      Properties+::: { ServiceIdentifier: ServiceIdentifier },
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='A service is any software application that can run on instances containers, or serverless functions within an account or virtual private cloud (VPC).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::Service Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::VpcLattice::Service',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAuthType': d.fn('`withAuthType` AuthType ', [d.arg('AuthType', d.T.string)]),
    withAuthType(AuthType): {
      assert std.isString(AuthType) : 'AuthType must be a string',
      assert AuthType == 'NONE' || AuthType == 'AWS_IAM' : "AuthType must be either 'NONE' or 'AWS_IAM'",
      Properties+::: { AuthType: AuthType },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDnsEntry': d.fn('`withDnsEntry` DnsEntry ', [d.arg('DnsEntry', d.T.object)]),
    withDnsEntry(DnsEntry): {
      assert std.isObject(DnsEntry) : 'DnsEntry must be a object',
      Properties+::: { DnsEntry: DnsEntry },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ACTIVE' || Status == 'CREATE_IN_PROGRESS' || Status == 'DELETE_IN_PROGRESS' || Status == 'CREATE_FAILED' || Status == 'DELETE_FAILED' : "Status must be either 'ACTIVE' or 'CREATE_IN_PROGRESS' or 'DELETE_IN_PROGRESS' or 'CREATE_FAILED' or 'DELETE_FAILED'",
      Properties+::: { Status: Status },
    },
    '#withCertificateArn': d.fn('`withCertificateArn` CertificateArn ', [d.arg('CertificateArn', d.T.string)]),
    withCertificateArn(CertificateArn): {
      assert std.isString(CertificateArn) : 'CertificateArn must be a string',
      Properties+::: { CertificateArn: CertificateArn },
    },
    '#withCustomDomainName': d.fn('`withCustomDomainName` CustomDomainName ', [d.arg('CustomDomainName', d.T.string)]),
    withCustomDomainName(CustomDomainName): {
      assert std.isString(CustomDomainName) : 'CustomDomainName must be a string',
      Properties+::: { CustomDomainName: CustomDomainName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ServiceNetwork: {
    '#': d.pkg(
      name='ServiceNetwork',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='A service network is a logical boundary for a collection of services. You can associate services and VPCs with a service network.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::ServiceNetwork Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::VpcLattice::ServiceNetwork',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withAuthType': d.fn('`withAuthType` AuthType ', [d.arg('AuthType', d.T.string)]),
    withAuthType(AuthType): {
      assert std.isString(AuthType) : 'AuthType must be a string',
      assert AuthType == 'NONE' || AuthType == 'AWS_IAM' : "AuthType must be either 'NONE' or 'AWS_IAM'",
      Properties+::: { AuthType: AuthType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSharingConfig': d.fn('`withSharingConfig` SharingConfig ', [d.arg('SharingConfig', d.T.object)]),
    withSharingConfig(SharingConfig): {
      assert std.isObject(SharingConfig) : 'SharingConfig must be a object',
      Properties+::: { SharingConfig: SharingConfig },
    },
  },
  ServiceNetworkServiceAssociation: {
    '#': d.pkg(
      name='ServiceNetworkServiceAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='Associates a service with a service network.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::ServiceNetworkServiceAssociation Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::VpcLattice::ServiceNetworkServiceAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDnsEntry': d.fn('`withDnsEntry` DnsEntry ', [d.arg('DnsEntry', d.T.object)]),
    withDnsEntry(DnsEntry): {
      assert std.isObject(DnsEntry) : 'DnsEntry must be a object',
      Properties+::: { DnsEntry: DnsEntry },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withServiceNetworkArn': d.fn('`withServiceNetworkArn` ServiceNetworkArn ', [d.arg('ServiceNetworkArn', d.T.string)]),
    withServiceNetworkArn(ServiceNetworkArn): {
      assert std.isString(ServiceNetworkArn) : 'ServiceNetworkArn must be a string',
      Properties+::: { ServiceNetworkArn: ServiceNetworkArn },
    },
    '#withServiceNetworkId': d.fn('`withServiceNetworkId` ServiceNetworkId ', [d.arg('ServiceNetworkId', d.T.string)]),
    withServiceNetworkId(ServiceNetworkId): {
      assert std.isString(ServiceNetworkId) : 'ServiceNetworkId must be a string',
      Properties+::: { ServiceNetworkId: ServiceNetworkId },
    },
    '#withServiceNetworkIdentifier': d.fn('`withServiceNetworkIdentifier` ServiceNetworkIdentifier ', [d.arg('ServiceNetworkIdentifier', d.T.string)]),
    withServiceNetworkIdentifier(ServiceNetworkIdentifier): {
      assert std.isString(ServiceNetworkIdentifier) : 'ServiceNetworkIdentifier must be a string',
      Properties+::: { ServiceNetworkIdentifier: ServiceNetworkIdentifier },
    },
    '#withServiceNetworkName': d.fn('`withServiceNetworkName` ServiceNetworkName ', [d.arg('ServiceNetworkName', d.T.string)]),
    withServiceNetworkName(ServiceNetworkName): {
      assert std.isString(ServiceNetworkName) : 'ServiceNetworkName must be a string',
      Properties+::: { ServiceNetworkName: ServiceNetworkName },
    },
    '#withServiceArn': d.fn('`withServiceArn` ServiceArn ', [d.arg('ServiceArn', d.T.string)]),
    withServiceArn(ServiceArn): {
      assert std.isString(ServiceArn) : 'ServiceArn must be a string',
      Properties+::: { ServiceArn: ServiceArn },
    },
    '#withServiceId': d.fn('`withServiceId` ServiceId ', [d.arg('ServiceId', d.T.string)]),
    withServiceId(ServiceId): {
      assert std.isString(ServiceId) : 'ServiceId must be a string',
      Properties+::: { ServiceId: ServiceId },
    },
    '#withServiceIdentifier': d.fn('`withServiceIdentifier` ServiceIdentifier ', [d.arg('ServiceIdentifier', d.T.string)]),
    withServiceIdentifier(ServiceIdentifier): {
      assert std.isString(ServiceIdentifier) : 'ServiceIdentifier must be a string',
      Properties+::: { ServiceIdentifier: ServiceIdentifier },
    },
    '#withServiceName': d.fn('`withServiceName` ServiceName ', [d.arg('ServiceName', d.T.string)]),
    withServiceName(ServiceName): {
      assert std.isString(ServiceName) : 'ServiceName must be a string',
      Properties+::: { ServiceName: ServiceName },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATE_IN_PROGRESS' || Status == 'ACTIVE' || Status == 'DELETE_IN_PROGRESS' || Status == 'CREATE_FAILED' || Status == 'DELETE_FAILED' : "Status must be either 'CREATE_IN_PROGRESS' or 'ACTIVE' or 'DELETE_IN_PROGRESS' or 'CREATE_FAILED' or 'DELETE_FAILED'",
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ServiceNetworkVpcAssociation: {
    '#': d.pkg(
      name='ServiceNetworkVpcAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='Associates a VPC with a service network.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::ServiceNetworkVpcAssociation Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::VpcLattice::ServiceNetworkVpcAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withServiceNetworkArn': d.fn('`withServiceNetworkArn` ServiceNetworkArn ', [d.arg('ServiceNetworkArn', d.T.string)]),
    withServiceNetworkArn(ServiceNetworkArn): {
      assert std.isString(ServiceNetworkArn) : 'ServiceNetworkArn must be a string',
      Properties+::: { ServiceNetworkArn: ServiceNetworkArn },
    },
    '#withServiceNetworkId': d.fn('`withServiceNetworkId` ServiceNetworkId ', [d.arg('ServiceNetworkId', d.T.string)]),
    withServiceNetworkId(ServiceNetworkId): {
      assert std.isString(ServiceNetworkId) : 'ServiceNetworkId must be a string',
      Properties+::: { ServiceNetworkId: ServiceNetworkId },
    },
    '#withServiceNetworkIdentifier': d.fn('`withServiceNetworkIdentifier` ServiceNetworkIdentifier ', [d.arg('ServiceNetworkIdentifier', d.T.string)]),
    withServiceNetworkIdentifier(ServiceNetworkIdentifier): {
      assert std.isString(ServiceNetworkIdentifier) : 'ServiceNetworkIdentifier must be a string',
      Properties+::: { ServiceNetworkIdentifier: ServiceNetworkIdentifier },
    },
    '#withServiceNetworkName': d.fn('`withServiceNetworkName` ServiceNetworkName ', [d.arg('ServiceNetworkName', d.T.string)]),
    withServiceNetworkName(ServiceNetworkName): {
      assert std.isString(ServiceNetworkName) : 'ServiceNetworkName must be a string',
      Properties+::: { ServiceNetworkName: ServiceNetworkName },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATE_IN_PROGRESS' || Status == 'ACTIVE' || Status == 'UPDATE_IN_PROGRESS' || Status == 'DELETE_IN_PROGRESS' || Status == 'CREATE_FAILED' || Status == 'DELETE_FAILED' : "Status must be either 'CREATE_IN_PROGRESS' or 'ACTIVE' or 'UPDATE_IN_PROGRESS' or 'DELETE_IN_PROGRESS' or 'CREATE_FAILED' or 'DELETE_FAILED'",
      Properties+::: { Status: Status },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
    '#withVpcIdentifier': d.fn('`withVpcIdentifier` VpcIdentifier ', [d.arg('VpcIdentifier', d.T.string)]),
    withVpcIdentifier(VpcIdentifier): {
      assert std.isString(VpcIdentifier) : 'VpcIdentifier must be a string',
      Properties+::: { VpcIdentifier: VpcIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TargetGroup: {
    '#': d.pkg(
      name='TargetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VpcLattice.libsonnet',
      help='A target group is a collection of targets, or compute resources, that run your application or service. A target group can only be used by a single service.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VpcLattice::TargetGroup Resource
        * Type 
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
        assert Type == 'IP' || Type == 'LAMBDA' || Type == 'INSTANCE' || Type == 'ALB' : "Type must be either 'IP' or 'LAMBDA' or 'INSTANCE' or 'ALB'",
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::VpcLattice::TargetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withConfig': d.fn('`withConfig` Config ', [d.arg('Config', d.T.object)]),
    withConfig(Config): {
      assert std.isObject(Config) : 'Config must be a object',
      Properties+::: { Config: Config },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATE_IN_PROGRESS' || Status == 'ACTIVE' || Status == 'DELETE_IN_PROGRESS' || Status == 'CREATE_FAILED' || Status == 'DELETE_FAILED' : "Status must be either 'CREATE_IN_PROGRESS' or 'ACTIVE' or 'DELETE_IN_PROGRESS' or 'CREATE_FAILED' or 'DELETE_FAILED'",
      Properties+::: { Status: Status },
    },
    '#withTargets': d.fn('`withTargets` Targets ', [d.arg('Targets', d.T.array)]),
    withTargets(Targets): {
      assert std.isArray(Targets) : 'Targets must be a array',
      Properties+::: { Targets: Targets },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
