local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  FirewallDomainList: {
    '#': d.pkg(
      name='FirewallDomainList',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource schema for AWS::Route53Resolver::FirewallDomainList.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::FirewallDomainList Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::FirewallDomainList',
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDomainCount': d.fn('`withDomainCount` DomainCount ', [d.arg('DomainCount', d.T.integer)]),
    withDomainCount(DomainCount): {
      assert std.isNumber(DomainCount) : 'DomainCount must be a integer',
      Properties+::: { DomainCount: DomainCount },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'COMPLETE' || Status == 'DELETING' || Status == 'UPDATING' || Status == 'COMPLETE_IMPORT_FAILED' || Status == 'IMPORTING' || Status == 'INACTIVE_OWNER_ACCOUNT_CLOSED' : "Status must be either 'COMPLETE' or 'DELETING' or 'UPDATING' or 'COMPLETE_IMPORT_FAILED' or 'IMPORTING' or 'INACTIVE_OWNER_ACCOUNT_CLOSED'",
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withManagedOwnerName': d.fn('`withManagedOwnerName` ManagedOwnerName ', [d.arg('ManagedOwnerName', d.T.string)]),
    withManagedOwnerName(ManagedOwnerName): {
      assert std.isString(ManagedOwnerName) : 'ManagedOwnerName must be a string',
      Properties+::: { ManagedOwnerName: ManagedOwnerName },
    },
    '#withCreatorRequestId': d.fn('`withCreatorRequestId` CreatorRequestId ', [d.arg('CreatorRequestId', d.T.string)]),
    withCreatorRequestId(CreatorRequestId): {
      assert std.isString(CreatorRequestId) : 'CreatorRequestId must be a string',
      Properties+::: { CreatorRequestId: CreatorRequestId },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withModificationTime': d.fn('`withModificationTime` ModificationTime ', [d.arg('ModificationTime', d.T.string)]),
    withModificationTime(ModificationTime): {
      assert std.isString(ModificationTime) : 'ModificationTime must be a string',
      Properties+::: { ModificationTime: ModificationTime },
    },
    '#withDomains': d.fn('`withDomains` Domains ', [d.arg('Domains', d.T.array)]),
    withDomains(Domains): {
      assert std.isArray(Domains) : 'Domains must be a array',
      Properties+::: { Domains: Domains },
    },
    '#withDomainFileUrl': d.fn('`withDomainFileUrl` DomainFileUrl ', [d.arg('DomainFileUrl', d.T.string)]),
    withDomainFileUrl(DomainFileUrl): {
      assert std.isString(DomainFileUrl) : 'DomainFileUrl must be a string',
      Properties+::: { DomainFileUrl: DomainFileUrl },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  FirewallRuleGroup: {
    '#': d.pkg(
      name='FirewallRuleGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource schema for AWS::Route53Resolver::FirewallRuleGroup.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::FirewallRuleGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::FirewallRuleGroup',
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withRuleCount': d.fn('`withRuleCount` RuleCount ', [d.arg('RuleCount', d.T.integer)]),
    withRuleCount(RuleCount): {
      assert std.isNumber(RuleCount) : 'RuleCount must be a integer',
      Properties+::: { RuleCount: RuleCount },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'COMPLETE' || Status == 'DELETING' || Status == 'UPDATING' || Status == 'INACTIVE_OWNER_ACCOUNT_CLOSED' : "Status must be either 'COMPLETE' or 'DELETING' or 'UPDATING' or 'INACTIVE_OWNER_ACCOUNT_CLOSED'",
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withShareStatus': d.fn('`withShareStatus` ShareStatus ', [d.arg('ShareStatus', d.T.string)]),
    withShareStatus(ShareStatus): {
      assert std.isString(ShareStatus) : 'ShareStatus must be a string',
      assert ShareStatus == 'NOT_SHARED' || ShareStatus == 'SHARED_WITH_ME' || ShareStatus == 'SHARED_BY_ME' : "ShareStatus must be either 'NOT_SHARED' or 'SHARED_WITH_ME' or 'SHARED_BY_ME'",
      Properties+::: { ShareStatus: ShareStatus },
    },
    '#withCreatorRequestId': d.fn('`withCreatorRequestId` CreatorRequestId ', [d.arg('CreatorRequestId', d.T.string)]),
    withCreatorRequestId(CreatorRequestId): {
      assert std.isString(CreatorRequestId) : 'CreatorRequestId must be a string',
      Properties+::: { CreatorRequestId: CreatorRequestId },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withModificationTime': d.fn('`withModificationTime` ModificationTime ', [d.arg('ModificationTime', d.T.string)]),
    withModificationTime(ModificationTime): {
      assert std.isString(ModificationTime) : 'ModificationTime must be a string',
      Properties+::: { ModificationTime: ModificationTime },
    },
    '#withFirewallRules': d.fn('`withFirewallRules` FirewallRules ', [d.arg('FirewallRules', d.T.array)]),
    withFirewallRules(FirewallRules): {
      assert std.isArray(FirewallRules) : 'FirewallRules must be a array',
      Properties+::: { FirewallRules: FirewallRules },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  FirewallRuleGroupAssociation: {
    '#': d.pkg(
      name='FirewallRuleGroupAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource schema for AWS::Route53Resolver::FirewallRuleGroupAssociation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::FirewallRuleGroupAssociation Resource
        * FirewallRuleGroupId FirewallRuleGroupId
        * VpcId VpcId
        * Priority Priority
      |||,
      args=[
        d.arg('FirewallRuleGroupId', 'd.T.string'),
        d.arg('VpcId', 'd.T.string'),
        d.arg('Priority', 'd.T.integer'),
      ]
    ),
    new(
      FirewallRuleGroupId,
      VpcId,
      Priority,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FirewallRuleGroupId) : 'FirewallRuleGroupId must be a string',
        FirewallRuleGroupId: FirewallRuleGroupId,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isNumber(Priority) : 'Priority must be a integer',
        Priority: Priority,
      },
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::FirewallRuleGroupAssociation',
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withMutationProtection': d.fn('`withMutationProtection` MutationProtection ', [d.arg('MutationProtection', d.T.string)]),
    withMutationProtection(MutationProtection): {
      assert std.isString(MutationProtection) : 'MutationProtection must be a string',
      assert MutationProtection == 'ENABLED' || MutationProtection == 'DISABLED' : "MutationProtection must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { MutationProtection: MutationProtection },
    },
    '#withManagedOwnerName': d.fn('`withManagedOwnerName` ManagedOwnerName ', [d.arg('ManagedOwnerName', d.T.string)]),
    withManagedOwnerName(ManagedOwnerName): {
      assert std.isString(ManagedOwnerName) : 'ManagedOwnerName must be a string',
      Properties+::: { ManagedOwnerName: ManagedOwnerName },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'COMPLETE' || Status == 'DELETING' || Status == 'UPDATING' || Status == 'INACTIVE_OWNER_ACCOUNT_CLOSED' : "Status must be either 'COMPLETE' or 'DELETING' or 'UPDATING' or 'INACTIVE_OWNER_ACCOUNT_CLOSED'",
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withCreatorRequestId': d.fn('`withCreatorRequestId` CreatorRequestId ', [d.arg('CreatorRequestId', d.T.string)]),
    withCreatorRequestId(CreatorRequestId): {
      assert std.isString(CreatorRequestId) : 'CreatorRequestId must be a string',
      Properties+::: { CreatorRequestId: CreatorRequestId },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withModificationTime': d.fn('`withModificationTime` ModificationTime ', [d.arg('ModificationTime', d.T.string)]),
    withModificationTime(ModificationTime): {
      assert std.isString(ModificationTime) : 'ModificationTime must be a string',
      Properties+::: { ModificationTime: ModificationTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  OutpostResolver: {
    '#': d.pkg(
      name='OutpostResolver',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource schema for AWS::Route53Resolver::OutpostResolver.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::OutpostResolver Resource
        * OutpostArn The Outpost ARN.
        * PreferredInstanceType The OutpostResolver instance type.
        * Name The OutpostResolver name.
      |||,
      args=[
        d.arg('OutpostArn', 'd.T.string'),
        d.arg('PreferredInstanceType', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      OutpostArn,
      PreferredInstanceType,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(OutpostArn) : 'OutpostArn must be a string',
        OutpostArn: OutpostArn,
        assert std.isString(PreferredInstanceType) : 'PreferredInstanceType must be a string',
        PreferredInstanceType: PreferredInstanceType,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::OutpostResolver',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withCreatorRequestId': d.fn('`withCreatorRequestId` CreatorRequestId ', [d.arg('CreatorRequestId', d.T.string)]),
    withCreatorRequestId(CreatorRequestId): {
      assert std.isString(CreatorRequestId) : 'CreatorRequestId must be a string',
      Properties+::: { CreatorRequestId: CreatorRequestId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATING' || Status == 'OPERATIONAL' || Status == 'DELETING' || Status == 'UPDATING' || Status == 'ACTION_NEEDED' || Status == 'FAILED_CREATION' || Status == 'FAILED_DELETION' : "Status must be either 'CREATING' or 'OPERATIONAL' or 'DELETING' or 'UPDATING' or 'ACTION_NEEDED' or 'FAILED_CREATION' or 'FAILED_DELETION'",
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withInstanceCount': d.fn('`withInstanceCount` InstanceCount ', [d.arg('InstanceCount', d.T.integer)]),
    withInstanceCount(InstanceCount): {
      assert std.isNumber(InstanceCount) : 'InstanceCount must be a integer',
      Properties+::: { InstanceCount: InstanceCount },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withModificationTime': d.fn('`withModificationTime` ModificationTime ', [d.arg('ModificationTime', d.T.string)]),
    withModificationTime(ModificationTime): {
      assert std.isString(ModificationTime) : 'ModificationTime must be a string',
      Properties+::: { ModificationTime: ModificationTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResolverConfig: {
    '#': d.pkg(
      name='ResolverConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource schema for AWS::Route53Resolver::ResolverConfig.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::ResolverConfig Resource
        * ResourceId ResourceId
        * AutodefinedReverseFlag Represents the desired status of AutodefinedReverse. The only supported value on creation is DISABLE. Deletion of this resource will return AutodefinedReverse to its default value (ENABLED).
      |||,
      args=[
        d.arg('ResourceId', 'd.T.string'),
        d.arg('AutodefinedReverseFlag', 'd.T.string'),
      ]
    ),
    new(
      ResourceId,
      AutodefinedReverseFlag,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceId) : 'ResourceId must be a string',
        ResourceId: ResourceId,
        assert std.isString(AutodefinedReverseFlag) : 'AutodefinedReverseFlag must be a string',
        assert AutodefinedReverseFlag == 'DISABLE' : "AutodefinedReverseFlag must be either 'DISABLE'",
        AutodefinedReverseFlag: AutodefinedReverseFlag,
      },
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::ResolverConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withAutodefinedReverse': d.fn('`withAutodefinedReverse` AutodefinedReverse ', [d.arg('AutodefinedReverse', d.T.string)]),
    withAutodefinedReverse(AutodefinedReverse): {
      assert std.isString(AutodefinedReverse) : 'AutodefinedReverse must be a string',
      assert AutodefinedReverse == 'ENABLING' || AutodefinedReverse == 'ENABLED' || AutodefinedReverse == 'DISABLING' || AutodefinedReverse == 'DISABLED' : "AutodefinedReverse must be either 'ENABLING' or 'ENABLED' or 'DISABLING' or 'DISABLED'",
      Properties+::: { AutodefinedReverse: AutodefinedReverse },
    },
  },
  ResolverDNSSECConfig: {
    '#': d.pkg(
      name='ResolverDNSSECConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource schema for AWS::Route53Resolver::ResolverDNSSECConfig.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::ResolverDNSSECConfig Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::ResolverDNSSECConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withResourceId': d.fn('`withResourceId` ResourceId ', [d.arg('ResourceId', d.T.string)]),
    withResourceId(ResourceId): {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      Properties+::: { ResourceId: ResourceId },
    },
    '#withValidationStatus': d.fn('`withValidationStatus` ValidationStatus ', [d.arg('ValidationStatus', d.T.string)]),
    withValidationStatus(ValidationStatus): {
      assert std.isString(ValidationStatus) : 'ValidationStatus must be a string',
      assert ValidationStatus == 'ENABLING' || ValidationStatus == 'ENABLED' || ValidationStatus == 'DISABLING' || ValidationStatus == 'DISABLED' : "ValidationStatus must be either 'ENABLING' or 'ENABLED' or 'DISABLING' or 'DISABLED'",
      Properties+::: { ValidationStatus: ValidationStatus },
    },
  },
  ResolverEndpoint: {
    '#': d.pkg(
      name='ResolverEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource Type definition for AWS::Route53Resolver::ResolverEndpoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::ResolverEndpoint Resource
        * IpAddresses 
        * Direction 
        * SecurityGroupIds 
      |||,
      args=[
        d.arg('IpAddresses', 'd.T.array'),
        d.arg('Direction', 'd.T.string'),
        d.arg('SecurityGroupIds', 'd.T.array'),
      ]
    ),
    new(
      IpAddresses,
      Direction,
      SecurityGroupIds,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(IpAddresses) : 'IpAddresses must be a array',
        IpAddresses: IpAddresses,
        assert std.isString(Direction) : 'Direction must be a string',
        Direction: Direction,
        assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
        SecurityGroupIds: SecurityGroupIds,
      },
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::ResolverEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResolverEndpointId': d.fn('`withResolverEndpointId` ResolverEndpointId ', [d.arg('ResolverEndpointId', d.T.string)]),
    withResolverEndpointId(ResolverEndpointId): {
      assert std.isString(ResolverEndpointId) : 'ResolverEndpointId must be a string',
      Properties+::: { ResolverEndpointId: ResolverEndpointId },
    },
    '#withProtocols': d.fn('`withProtocols` Protocols ', [d.arg('Protocols', d.T.array)]),
    withProtocols(Protocols): {
      assert std.isArray(Protocols) : 'Protocols must be a array',
      Properties+::: { Protocols: Protocols },
    },
    '#withOutpostArn': d.fn('`withOutpostArn` OutpostArn ', [d.arg('OutpostArn', d.T.string)]),
    withOutpostArn(OutpostArn): {
      assert std.isString(OutpostArn) : 'OutpostArn must be a string',
      Properties+::: { OutpostArn: OutpostArn },
    },
    '#withResolverEndpointType': d.fn('`withResolverEndpointType` ResolverEndpointType ', [d.arg('ResolverEndpointType', d.T.string)]),
    withResolverEndpointType(ResolverEndpointType): {
      assert std.isString(ResolverEndpointType) : 'ResolverEndpointType must be a string',
      Properties+::: { ResolverEndpointType: ResolverEndpointType },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withIpAddressCount': d.fn('`withIpAddressCount` IpAddressCount ', [d.arg('IpAddressCount', d.T.string)]),
    withIpAddressCount(IpAddressCount): {
      assert std.isString(IpAddressCount) : 'IpAddressCount must be a string',
      Properties+::: { IpAddressCount: IpAddressCount },
    },
    '#withPreferredInstanceType': d.fn('`withPreferredInstanceType` PreferredInstanceType ', [d.arg('PreferredInstanceType', d.T.string)]),
    withPreferredInstanceType(PreferredInstanceType): {
      assert std.isString(PreferredInstanceType) : 'PreferredInstanceType must be a string',
      Properties+::: { PreferredInstanceType: PreferredInstanceType },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withHostVPCId': d.fn('`withHostVPCId` HostVPCId ', [d.arg('HostVPCId', d.T.string)]),
    withHostVPCId(HostVPCId): {
      assert std.isString(HostVPCId) : 'HostVPCId must be a string',
      Properties+::: { HostVPCId: HostVPCId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResolverQueryLoggingConfig: {
    '#': d.pkg(
      name='ResolverQueryLoggingConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource schema for AWS::Route53Resolver::ResolverQueryLoggingConfig.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::ResolverQueryLoggingConfig Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::ResolverQueryLoggingConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATING' || Status == 'CREATED' || Status == 'DELETING' || Status == 'FAILED' : "Status must be either 'CREATING' or 'CREATED' or 'DELETING' or 'FAILED'",
      Properties+::: { Status: Status },
    },
    '#withShareStatus': d.fn('`withShareStatus` ShareStatus ', [d.arg('ShareStatus', d.T.string)]),
    withShareStatus(ShareStatus): {
      assert std.isString(ShareStatus) : 'ShareStatus must be a string',
      assert ShareStatus == 'NOT_SHARED' || ShareStatus == 'SHARED_WITH_ME' || ShareStatus == 'SHARED_BY_ME' : "ShareStatus must be either 'NOT_SHARED' or 'SHARED_WITH_ME' or 'SHARED_BY_ME'",
      Properties+::: { ShareStatus: ShareStatus },
    },
    '#withAssociationCount': d.fn('`withAssociationCount` AssociationCount ', [d.arg('AssociationCount', d.T.integer)]),
    withAssociationCount(AssociationCount): {
      assert std.isNumber(AssociationCount) : 'AssociationCount must be a integer',
      Properties+::: { AssociationCount: AssociationCount },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withCreatorRequestId': d.fn('`withCreatorRequestId` CreatorRequestId ', [d.arg('CreatorRequestId', d.T.string)]),
    withCreatorRequestId(CreatorRequestId): {
      assert std.isString(CreatorRequestId) : 'CreatorRequestId must be a string',
      Properties+::: { CreatorRequestId: CreatorRequestId },
    },
    '#withDestinationArn': d.fn('`withDestinationArn` DestinationArn ', [d.arg('DestinationArn', d.T.string)]),
    withDestinationArn(DestinationArn): {
      assert std.isString(DestinationArn) : 'DestinationArn must be a string',
      Properties+::: { DestinationArn: DestinationArn },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
  },
  ResolverQueryLoggingConfigAssociation: {
    '#': d.pkg(
      name='ResolverQueryLoggingConfigAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource schema for AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withResolverQueryLogConfigId': d.fn('`withResolverQueryLogConfigId` ResolverQueryLogConfigId ', [d.arg('ResolverQueryLogConfigId', d.T.string)]),
    withResolverQueryLogConfigId(ResolverQueryLogConfigId): {
      assert std.isString(ResolverQueryLogConfigId) : 'ResolverQueryLogConfigId must be a string',
      Properties+::: { ResolverQueryLogConfigId: ResolverQueryLogConfigId },
    },
    '#withResourceId': d.fn('`withResourceId` ResourceId ', [d.arg('ResourceId', d.T.string)]),
    withResourceId(ResourceId): {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      Properties+::: { ResourceId: ResourceId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATING' || Status == 'ACTIVE' || Status == 'ACTION_NEEDED' || Status == 'DELETING' || Status == 'FAILED' || Status == 'OVERRIDDEN' : "Status must be either 'CREATING' or 'ACTIVE' or 'ACTION_NEEDED' or 'DELETING' or 'FAILED' or 'OVERRIDDEN'",
      Properties+::: { Status: Status },
    },
    '#withError': d.fn('`withError` Error ', [d.arg('Error', d.T.string)]),
    withError(Error): {
      assert std.isString(Error) : 'Error must be a string',
      assert Error == 'NONE' || Error == 'DESTINATION_NOT_FOUND' || Error == 'ACCESS_DENIED' : "Error must be either 'NONE' or 'DESTINATION_NOT_FOUND' or 'ACCESS_DENIED'",
      Properties+::: { Error: Error },
    },
    '#withErrorMessage': d.fn('`withErrorMessage` ErrorMessage ', [d.arg('ErrorMessage', d.T.string)]),
    withErrorMessage(ErrorMessage): {
      assert std.isString(ErrorMessage) : 'ErrorMessage must be a string',
      Properties+::: { ErrorMessage: ErrorMessage },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
  },
  ResolverRule: {
    '#': d.pkg(
      name='ResolverRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='Resource Type definition for AWS::Route53Resolver::ResolverRule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::ResolverRule Resource
        * RuleType When you want to forward DNS queries for specified domain name to resolvers on your network, specify FORWARD. When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for a subdomain of that domain, specify SYSTEM.
      |||,
      args=[
        d.arg('RuleType', 'd.T.string'),
      ]
    ),
    new(
      RuleType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RuleType) : 'RuleType must be a string',
        assert RuleType == 'FORWARD' || RuleType == 'SYSTEM' || RuleType == 'RECURSIVE' || RuleType == 'DELEGATE' : "RuleType must be either 'FORWARD' or 'SYSTEM' or 'RECURSIVE' or 'DELEGATE'",
        RuleType: RuleType,
      },
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::ResolverRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResolverEndpointId': d.fn('`withResolverEndpointId` ResolverEndpointId ', [d.arg('ResolverEndpointId', d.T.string)]),
    withResolverEndpointId(ResolverEndpointId): {
      assert std.isString(ResolverEndpointId) : 'ResolverEndpointId must be a string',
      Properties+::: { ResolverEndpointId: ResolverEndpointId },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withResolverRuleId': d.fn('`withResolverRuleId` ResolverRuleId ', [d.arg('ResolverRuleId', d.T.string)]),
    withResolverRuleId(ResolverRuleId): {
      assert std.isString(ResolverRuleId) : 'ResolverRuleId must be a string',
      Properties+::: { ResolverRuleId: ResolverRuleId },
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
    '#withTargetIps': d.fn('`withTargetIps` TargetIps ', [d.arg('TargetIps', d.T.array)]),
    withTargetIps(TargetIps): {
      assert std.isArray(TargetIps) : 'TargetIps must be a array',
      Properties+::: { TargetIps: TargetIps },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  ResolverRuleAssociation: {
    '#': d.pkg(
      name='ResolverRuleAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Resolver.libsonnet',
      help='In the response to an [AssociateResolverRule](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html), [DisassociateResolverRule](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html), or [ListResolverRuleAssociations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html) request, provides information about an association between a resolver rule and a VPC. The association determines which DNS queries that originate in the VPC are forwarded to your network.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Resolver::ResolverRuleAssociation Resource
        * VPCId The ID of the VPC that you associated the Resolver rule with.
        * ResolverRuleId The ID of the Resolver rule that you associated with the VPC that is specified by VPCId.
      |||,
      args=[
        d.arg('VPCId', 'd.T.string'),
        d.arg('ResolverRuleId', 'd.T.string'),
      ]
    ),
    new(
      VPCId,
      ResolverRuleId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VPCId) : 'VPCId must be a string',
        VPCId: VPCId,
        assert std.isString(ResolverRuleId) : 'ResolverRuleId must be a string',
        ResolverRuleId: ResolverRuleId,
      },
      DependsOn:: [],
      Type: 'AWS::Route53Resolver::ResolverRuleAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResolverRuleAssociationId': d.fn('`withResolverRuleAssociationId` ResolverRuleAssociationId ', [d.arg('ResolverRuleAssociationId', d.T.string)]),
    withResolverRuleAssociationId(ResolverRuleAssociationId): {
      assert std.isString(ResolverRuleAssociationId) : 'ResolverRuleAssociationId must be a string',
      Properties+::: { ResolverRuleAssociationId: ResolverRuleAssociationId },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
}
