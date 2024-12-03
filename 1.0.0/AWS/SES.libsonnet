local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ConfigurationSet: {
    '#': d.pkg(
      name='ConfigurationSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource schema for AWS::SES::ConfigurationSet.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::ConfigurationSet Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SES::ConfigurationSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTrackingOptions': d.fn('`withTrackingOptions` TrackingOptions ', [d.arg('TrackingOptions', d.T.object)]),
    withTrackingOptions(TrackingOptions): {
      assert std.isObject(TrackingOptions) : 'TrackingOptions must be a object',
      Properties+::: { TrackingOptions: TrackingOptions },
    },
    '#withDeliveryOptions': d.fn('`withDeliveryOptions` DeliveryOptions ', [d.arg('DeliveryOptions', d.T.object)]),
    withDeliveryOptions(DeliveryOptions): {
      assert std.isObject(DeliveryOptions) : 'DeliveryOptions must be a object',
      Properties+::: { DeliveryOptions: DeliveryOptions },
    },
    '#withReputationOptions': d.fn('`withReputationOptions` ReputationOptions ', [d.arg('ReputationOptions', d.T.object)]),
    withReputationOptions(ReputationOptions): {
      assert std.isObject(ReputationOptions) : 'ReputationOptions must be a object',
      Properties+::: { ReputationOptions: ReputationOptions },
    },
    '#withSendingOptions': d.fn('`withSendingOptions` SendingOptions ', [d.arg('SendingOptions', d.T.object)]),
    withSendingOptions(SendingOptions): {
      assert std.isObject(SendingOptions) : 'SendingOptions must be a object',
      Properties+::: { SendingOptions: SendingOptions },
    },
    '#withSuppressionOptions': d.fn('`withSuppressionOptions` SuppressionOptions ', [d.arg('SuppressionOptions', d.T.object)]),
    withSuppressionOptions(SuppressionOptions): {
      assert std.isObject(SuppressionOptions) : 'SuppressionOptions must be a object',
      Properties+::: { SuppressionOptions: SuppressionOptions },
    },
    '#withVdmOptions': d.fn('`withVdmOptions` VdmOptions ', [d.arg('VdmOptions', d.T.object)]),
    withVdmOptions(VdmOptions): {
      assert std.isObject(VdmOptions) : 'VdmOptions must be a object',
      Properties+::: { VdmOptions: VdmOptions },
    },
  },
  ConfigurationSetEventDestination: {
    '#': d.pkg(
      name='ConfigurationSetEventDestination',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource Type definition for AWS::SES::ConfigurationSetEventDestination',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::ConfigurationSetEventDestination Resource
        * ConfigurationSetName The name of the configuration set that contains the event destination.
        * EventDestination The event destination object.
      |||,
      args=[
        d.arg('ConfigurationSetName', 'd.T.string'),
        d.arg('EventDestination', 'd.T.object'),
      ]
    ),
    new(
      ConfigurationSetName,
      EventDestination,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConfigurationSetName) : 'ConfigurationSetName must be a string',
        ConfigurationSetName: ConfigurationSetName,
        assert std.isObject(EventDestination) : 'EventDestination must be a object',
        EventDestination: EventDestination,
      },
      DependsOn:: [],
      Type: 'AWS::SES::ConfigurationSetEventDestination',
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
  ContactList: {
    '#': d.pkg(
      name='ContactList',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource schema for AWS::SES::ContactList.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::ContactList Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SES::ContactList',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContactListName': d.fn('`withContactListName` ContactListName ', [d.arg('ContactListName', d.T.string)]),
    withContactListName(ContactListName): {
      assert std.isString(ContactListName) : 'ContactListName must be a string',
      Properties+::: { ContactListName: ContactListName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTopics': d.fn('`withTopics` Topics ', [d.arg('Topics', d.T.array)]),
    withTopics(Topics): {
      assert std.isArray(Topics) : 'Topics must be a array',
      Properties+::: { Topics: Topics },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DedicatedIpPool: {
    '#': d.pkg(
      name='DedicatedIpPool',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource Type definition for AWS::SES::DedicatedIpPool',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::DedicatedIpPool Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SES::DedicatedIpPool',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPoolName': d.fn('`withPoolName` PoolName ', [d.arg('PoolName', d.T.string)]),
    withPoolName(PoolName): {
      assert std.isString(PoolName) : 'PoolName must be a string',
      Properties+::: { PoolName: PoolName },
    },
    '#withScalingMode': d.fn('`withScalingMode` ScalingMode ', [d.arg('ScalingMode', d.T.string)]),
    withScalingMode(ScalingMode): {
      assert std.isString(ScalingMode) : 'ScalingMode must be a string',
      Properties+::: { ScalingMode: ScalingMode },
    },
  },
  EmailIdentity: {
    '#': d.pkg(
      name='EmailIdentity',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource Type definition for AWS::SES::EmailIdentity',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::EmailIdentity Resource
        * EmailIdentity The email address or domain to verify.
      |||,
      args=[
        d.arg('EmailIdentity', 'd.T.string'),
      ]
    ),
    new(
      EmailIdentity,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EmailIdentity) : 'EmailIdentity must be a string',
        EmailIdentity: EmailIdentity,
      },
      DependsOn:: [],
      Type: 'AWS::SES::EmailIdentity',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConfigurationSetAttributes': d.fn('`withConfigurationSetAttributes` ConfigurationSetAttributes ', [d.arg('ConfigurationSetAttributes', d.T.object)]),
    withConfigurationSetAttributes(ConfigurationSetAttributes): {
      assert std.isObject(ConfigurationSetAttributes) : 'ConfigurationSetAttributes must be a object',
      Properties+::: { ConfigurationSetAttributes: ConfigurationSetAttributes },
    },
    '#withDkimSigningAttributes': d.fn('`withDkimSigningAttributes` DkimSigningAttributes ', [d.arg('DkimSigningAttributes', d.T.object)]),
    withDkimSigningAttributes(DkimSigningAttributes): {
      assert std.isObject(DkimSigningAttributes) : 'DkimSigningAttributes must be a object',
      Properties+::: { DkimSigningAttributes: DkimSigningAttributes },
    },
    '#withDkimAttributes': d.fn('`withDkimAttributes` DkimAttributes ', [d.arg('DkimAttributes', d.T.object)]),
    withDkimAttributes(DkimAttributes): {
      assert std.isObject(DkimAttributes) : 'DkimAttributes must be a object',
      Properties+::: { DkimAttributes: DkimAttributes },
    },
    '#withMailFromAttributes': d.fn('`withMailFromAttributes` MailFromAttributes ', [d.arg('MailFromAttributes', d.T.object)]),
    withMailFromAttributes(MailFromAttributes): {
      assert std.isObject(MailFromAttributes) : 'MailFromAttributes must be a object',
      Properties+::: { MailFromAttributes: MailFromAttributes },
    },
    '#withFeedbackAttributes': d.fn('`withFeedbackAttributes` FeedbackAttributes ', [d.arg('FeedbackAttributes', d.T.object)]),
    withFeedbackAttributes(FeedbackAttributes): {
      assert std.isObject(FeedbackAttributes) : 'FeedbackAttributes must be a object',
      Properties+::: { FeedbackAttributes: FeedbackAttributes },
    },
    '#withDkimDNSTokenName1': d.fn('`withDkimDNSTokenName1` DkimDNSTokenName1 ', [d.arg('DkimDNSTokenName1', d.T.string)]),
    withDkimDNSTokenName1(DkimDNSTokenName1): {
      assert std.isString(DkimDNSTokenName1) : 'DkimDNSTokenName1 must be a string',
      Properties+::: { DkimDNSTokenName1: DkimDNSTokenName1 },
    },
    '#withDkimDNSTokenName2': d.fn('`withDkimDNSTokenName2` DkimDNSTokenName2 ', [d.arg('DkimDNSTokenName2', d.T.string)]),
    withDkimDNSTokenName2(DkimDNSTokenName2): {
      assert std.isString(DkimDNSTokenName2) : 'DkimDNSTokenName2 must be a string',
      Properties+::: { DkimDNSTokenName2: DkimDNSTokenName2 },
    },
    '#withDkimDNSTokenName3': d.fn('`withDkimDNSTokenName3` DkimDNSTokenName3 ', [d.arg('DkimDNSTokenName3', d.T.string)]),
    withDkimDNSTokenName3(DkimDNSTokenName3): {
      assert std.isString(DkimDNSTokenName3) : 'DkimDNSTokenName3 must be a string',
      Properties+::: { DkimDNSTokenName3: DkimDNSTokenName3 },
    },
    '#withDkimDNSTokenValue1': d.fn('`withDkimDNSTokenValue1` DkimDNSTokenValue1 ', [d.arg('DkimDNSTokenValue1', d.T.string)]),
    withDkimDNSTokenValue1(DkimDNSTokenValue1): {
      assert std.isString(DkimDNSTokenValue1) : 'DkimDNSTokenValue1 must be a string',
      Properties+::: { DkimDNSTokenValue1: DkimDNSTokenValue1 },
    },
    '#withDkimDNSTokenValue2': d.fn('`withDkimDNSTokenValue2` DkimDNSTokenValue2 ', [d.arg('DkimDNSTokenValue2', d.T.string)]),
    withDkimDNSTokenValue2(DkimDNSTokenValue2): {
      assert std.isString(DkimDNSTokenValue2) : 'DkimDNSTokenValue2 must be a string',
      Properties+::: { DkimDNSTokenValue2: DkimDNSTokenValue2 },
    },
    '#withDkimDNSTokenValue3': d.fn('`withDkimDNSTokenValue3` DkimDNSTokenValue3 ', [d.arg('DkimDNSTokenValue3', d.T.string)]),
    withDkimDNSTokenValue3(DkimDNSTokenValue3): {
      assert std.isString(DkimDNSTokenValue3) : 'DkimDNSTokenValue3 must be a string',
      Properties+::: { DkimDNSTokenValue3: DkimDNSTokenValue3 },
    },
  },
  MailManagerAddonInstance: {
    '#': d.pkg(
      name='MailManagerAddonInstance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Definition of AWS::SES::MailManagerAddonInstance Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::MailManagerAddonInstance Resource
        * AddonSubscriptionId 
      |||,
      args=[
        d.arg('AddonSubscriptionId', 'd.T.string'),
      ]
    ),
    new(
      AddonSubscriptionId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AddonSubscriptionId) : 'AddonSubscriptionId must be a string',
        AddonSubscriptionId: AddonSubscriptionId,
      },
      DependsOn:: [],
      Type: 'AWS::SES::MailManagerAddonInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAddonInstanceArn': d.fn('`withAddonInstanceArn` AddonInstanceArn ', [d.arg('AddonInstanceArn', d.T.string)]),
    withAddonInstanceArn(AddonInstanceArn): {
      assert std.isString(AddonInstanceArn) : 'AddonInstanceArn must be a string',
      Properties+::: { AddonInstanceArn: AddonInstanceArn },
    },
    '#withAddonInstanceId': d.fn('`withAddonInstanceId` AddonInstanceId ', [d.arg('AddonInstanceId', d.T.string)]),
    withAddonInstanceId(AddonInstanceId): {
      assert std.isString(AddonInstanceId) : 'AddonInstanceId must be a string',
      Properties+::: { AddonInstanceId: AddonInstanceId },
    },
    '#withAddonName': d.fn('`withAddonName` AddonName ', [d.arg('AddonName', d.T.string)]),
    withAddonName(AddonName): {
      assert std.isString(AddonName) : 'AddonName must be a string',
      Properties+::: { AddonName: AddonName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MailManagerAddonSubscription: {
    '#': d.pkg(
      name='MailManagerAddonSubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Definition of AWS::SES::MailManagerAddonSubscription Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::MailManagerAddonSubscription Resource
        * AddonName 
      |||,
      args=[
        d.arg('AddonName', 'd.T.string'),
      ]
    ),
    new(
      AddonName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AddonName) : 'AddonName must be a string',
        AddonName: AddonName,
      },
      DependsOn:: [],
      Type: 'AWS::SES::MailManagerAddonSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAddonSubscriptionArn': d.fn('`withAddonSubscriptionArn` AddonSubscriptionArn ', [d.arg('AddonSubscriptionArn', d.T.string)]),
    withAddonSubscriptionArn(AddonSubscriptionArn): {
      assert std.isString(AddonSubscriptionArn) : 'AddonSubscriptionArn must be a string',
      Properties+::: { AddonSubscriptionArn: AddonSubscriptionArn },
    },
    '#withAddonSubscriptionId': d.fn('`withAddonSubscriptionId` AddonSubscriptionId ', [d.arg('AddonSubscriptionId', d.T.string)]),
    withAddonSubscriptionId(AddonSubscriptionId): {
      assert std.isString(AddonSubscriptionId) : 'AddonSubscriptionId must be a string',
      Properties+::: { AddonSubscriptionId: AddonSubscriptionId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MailManagerArchive: {
    '#': d.pkg(
      name='MailManagerArchive',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Definition of AWS::SES::MailManagerArchive Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::MailManagerArchive Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SES::MailManagerArchive',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArchiveArn': d.fn('`withArchiveArn` ArchiveArn ', [d.arg('ArchiveArn', d.T.string)]),
    withArchiveArn(ArchiveArn): {
      assert std.isString(ArchiveArn) : 'ArchiveArn must be a string',
      Properties+::: { ArchiveArn: ArchiveArn },
    },
    '#withArchiveId': d.fn('`withArchiveId` ArchiveId ', [d.arg('ArchiveId', d.T.string)]),
    withArchiveId(ArchiveId): {
      assert std.isString(ArchiveId) : 'ArchiveId must be a string',
      Properties+::: { ArchiveId: ArchiveId },
    },
    '#withArchiveName': d.fn('`withArchiveName` ArchiveName ', [d.arg('ArchiveName', d.T.string)]),
    withArchiveName(ArchiveName): {
      assert std.isString(ArchiveName) : 'ArchiveName must be a string',
      Properties+::: { ArchiveName: ArchiveName },
    },
    '#withArchiveState': d.fn('`withArchiveState` ArchiveState ', [d.arg('ArchiveState', d.T.string)]),
    withArchiveState(ArchiveState): {
      assert std.isString(ArchiveState) : 'ArchiveState must be a string',
      Properties+::: { ArchiveState: ArchiveState },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withRetention': d.fn('`withRetention` Retention ', [d.arg('Retention')]),
    withRetention(Retention): {
      // Type: undefined
      Properties+::: { Retention: Retention },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MailManagerIngressPoint: {
    '#': d.pkg(
      name='MailManagerIngressPoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Definition of AWS::SES::MailManagerIngressPoint Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::MailManagerIngressPoint Resource
        * Type 
        * TrafficPolicyId 
        * RuleSetId 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('TrafficPolicyId', 'd.T.string'),
        d.arg('RuleSetId', 'd.T.string'),
      ]
    ),
    new(
      Type,
      TrafficPolicyId,
      RuleSetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(TrafficPolicyId) : 'TrafficPolicyId must be a string',
        TrafficPolicyId: TrafficPolicyId,
        assert std.isString(RuleSetId) : 'RuleSetId must be a string',
        RuleSetId: RuleSetId,
      },
      DependsOn:: [],
      Type: 'AWS::SES::MailManagerIngressPoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withARecord': d.fn('`withARecord` ARecord ', [d.arg('ARecord', d.T.string)]),
    withARecord(ARecord): {
      assert std.isString(ARecord) : 'ARecord must be a string',
      Properties+::: { ARecord: ARecord },
    },
    '#withIngressPointConfiguration': d.fn('`withIngressPointConfiguration` IngressPointConfiguration ', [d.arg('IngressPointConfiguration')]),
    withIngressPointConfiguration(IngressPointConfiguration): {
      // Type: undefined
      Properties+::: { IngressPointConfiguration: IngressPointConfiguration },
    },
    '#withIngressPointArn': d.fn('`withIngressPointArn` IngressPointArn ', [d.arg('IngressPointArn', d.T.string)]),
    withIngressPointArn(IngressPointArn): {
      assert std.isString(IngressPointArn) : 'IngressPointArn must be a string',
      Properties+::: { IngressPointArn: IngressPointArn },
    },
    '#withIngressPointId': d.fn('`withIngressPointId` IngressPointId ', [d.arg('IngressPointId', d.T.string)]),
    withIngressPointId(IngressPointId): {
      assert std.isString(IngressPointId) : 'IngressPointId must be a string',
      Properties+::: { IngressPointId: IngressPointId },
    },
    '#withIngressPointName': d.fn('`withIngressPointName` IngressPointName ', [d.arg('IngressPointName', d.T.string)]),
    withIngressPointName(IngressPointName): {
      assert std.isString(IngressPointName) : 'IngressPointName must be a string',
      Properties+::: { IngressPointName: IngressPointName },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withStatusToUpdate': d.fn('`withStatusToUpdate` StatusToUpdate ', [d.arg('StatusToUpdate', d.T.string)]),
    withStatusToUpdate(StatusToUpdate): {
      assert std.isString(StatusToUpdate) : 'StatusToUpdate must be a string',
      Properties+::: { StatusToUpdate: StatusToUpdate },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MailManagerRelay: {
    '#': d.pkg(
      name='MailManagerRelay',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Definition of AWS::SES::MailManagerRelay Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::MailManagerRelay Resource
        * Authentication 
        * ServerName 
        * ServerPort 
      |||,
      args=[
        d.arg('Authentication', ''),
        d.arg('ServerName', 'd.T.string'),
        d.arg('ServerPort', 'd.T.integer'),
      ]
    ),
    new(
      Authentication,
      ServerName,
      ServerPort,
    ): {
      local base = self,
      Properties: {
        // Type: undefined
        Authentication: Authentication,
        assert std.isString(ServerName) : 'ServerName must be a string',
        ServerName: ServerName,
        // Type: number
        ServerPort: ServerPort,
      },
      DependsOn:: [],
      Type: 'AWS::SES::MailManagerRelay',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRelayArn': d.fn('`withRelayArn` RelayArn ', [d.arg('RelayArn', d.T.string)]),
    withRelayArn(RelayArn): {
      assert std.isString(RelayArn) : 'RelayArn must be a string',
      Properties+::: { RelayArn: RelayArn },
    },
    '#withRelayId': d.fn('`withRelayId` RelayId ', [d.arg('RelayId', d.T.string)]),
    withRelayId(RelayId): {
      assert std.isString(RelayId) : 'RelayId must be a string',
      Properties+::: { RelayId: RelayId },
    },
    '#withRelayName': d.fn('`withRelayName` RelayName ', [d.arg('RelayName', d.T.string)]),
    withRelayName(RelayName): {
      assert std.isString(RelayName) : 'RelayName must be a string',
      Properties+::: { RelayName: RelayName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MailManagerRuleSet: {
    '#': d.pkg(
      name='MailManagerRuleSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Definition of AWS::SES::MailManagerRuleSet Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::MailManagerRuleSet Resource
        * Rules 
      |||,
      args=[
        d.arg('Rules', 'd.T.array'),
      ]
    ),
    new(
      Rules,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Rules) : 'Rules must be a array',
        Rules: Rules,
      },
      DependsOn:: [],
      Type: 'AWS::SES::MailManagerRuleSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRuleSetArn': d.fn('`withRuleSetArn` RuleSetArn ', [d.arg('RuleSetArn', d.T.string)]),
    withRuleSetArn(RuleSetArn): {
      assert std.isString(RuleSetArn) : 'RuleSetArn must be a string',
      Properties+::: { RuleSetArn: RuleSetArn },
    },
    '#withRuleSetId': d.fn('`withRuleSetId` RuleSetId ', [d.arg('RuleSetId', d.T.string)]),
    withRuleSetId(RuleSetId): {
      assert std.isString(RuleSetId) : 'RuleSetId must be a string',
      Properties+::: { RuleSetId: RuleSetId },
    },
    '#withRuleSetName': d.fn('`withRuleSetName` RuleSetName ', [d.arg('RuleSetName', d.T.string)]),
    withRuleSetName(RuleSetName): {
      assert std.isString(RuleSetName) : 'RuleSetName must be a string',
      Properties+::: { RuleSetName: RuleSetName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MailManagerTrafficPolicy: {
    '#': d.pkg(
      name='MailManagerTrafficPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Definition of AWS::SES::MailManagerTrafficPolicy Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::MailManagerTrafficPolicy Resource
        * DefaultAction 
        * PolicyStatements 
      |||,
      args=[
        d.arg('DefaultAction', 'd.T.string'),
        d.arg('PolicyStatements', 'd.T.array'),
      ]
    ),
    new(
      DefaultAction,
      PolicyStatements,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DefaultAction) : 'DefaultAction must be a string',
        DefaultAction: DefaultAction,
        assert std.isArray(PolicyStatements) : 'PolicyStatements must be a array',
        PolicyStatements: PolicyStatements,
      },
      DependsOn:: [],
      Type: 'AWS::SES::MailManagerTrafficPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMaxMessageSizeBytes': d.fn('`withMaxMessageSizeBytes` MaxMessageSizeBytes ', [d.arg('MaxMessageSizeBytes', d.T.integer)]),
    withMaxMessageSizeBytes(MaxMessageSizeBytes): {
      // Type: number
      Properties+::: { MaxMessageSizeBytes: MaxMessageSizeBytes },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrafficPolicyArn': d.fn('`withTrafficPolicyArn` TrafficPolicyArn ', [d.arg('TrafficPolicyArn', d.T.string)]),
    withTrafficPolicyArn(TrafficPolicyArn): {
      assert std.isString(TrafficPolicyArn) : 'TrafficPolicyArn must be a string',
      Properties+::: { TrafficPolicyArn: TrafficPolicyArn },
    },
    '#withTrafficPolicyId': d.fn('`withTrafficPolicyId` TrafficPolicyId ', [d.arg('TrafficPolicyId', d.T.string)]),
    withTrafficPolicyId(TrafficPolicyId): {
      assert std.isString(TrafficPolicyId) : 'TrafficPolicyId must be a string',
      Properties+::: { TrafficPolicyId: TrafficPolicyId },
    },
    '#withTrafficPolicyName': d.fn('`withTrafficPolicyName` TrafficPolicyName ', [d.arg('TrafficPolicyName', d.T.string)]),
    withTrafficPolicyName(TrafficPolicyName): {
      assert std.isString(TrafficPolicyName) : 'TrafficPolicyName must be a string',
      Properties+::: { TrafficPolicyName: TrafficPolicyName },
    },
  },
  ReceiptFilter: {
    '#': d.pkg(
      name='ReceiptFilter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource Type definition for AWS::SES::ReceiptFilter',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::ReceiptFilter Resource
        * Filter 
      |||,
      args=[
        d.arg('Filter', 'd.T.object'),
      ]
    ),
    new(
      Filter,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Filter) : 'Filter must be a object',
        Filter: Filter,
      },
      DependsOn:: [],
      Type: 'AWS::SES::ReceiptFilter',
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
  ReceiptRule: {
    '#': d.pkg(
      name='ReceiptRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource Type definition for AWS::SES::ReceiptRule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::ReceiptRule Resource
        * Rule 
        * RuleSetName 
      |||,
      args=[
        d.arg('Rule', 'd.T.object'),
        d.arg('RuleSetName', 'd.T.string'),
      ]
    ),
    new(
      Rule,
      RuleSetName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Rule) : 'Rule must be a object',
        Rule: Rule,
        assert std.isString(RuleSetName) : 'RuleSetName must be a string',
        RuleSetName: RuleSetName,
      },
      DependsOn:: [],
      Type: 'AWS::SES::ReceiptRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAfter': d.fn('`withAfter` After ', [d.arg('After', d.T.string)]),
    withAfter(After): {
      assert std.isString(After) : 'After must be a string',
      Properties+::: { After: After },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ReceiptRuleSet: {
    '#': d.pkg(
      name='ReceiptRuleSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource Type definition for AWS::SES::ReceiptRuleSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::ReceiptRuleSet Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SES::ReceiptRuleSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRuleSetName': d.fn('`withRuleSetName` RuleSetName ', [d.arg('RuleSetName', d.T.string)]),
    withRuleSetName(RuleSetName): {
      assert std.isString(RuleSetName) : 'RuleSetName must be a string',
      Properties+::: { RuleSetName: RuleSetName },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Template: {
    '#': d.pkg(
      name='Template',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource Type definition for AWS::SES::Template',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::Template Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SES::Template',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTemplate': d.fn('`withTemplate` Template ', [d.arg('Template', d.T.object)]),
    withTemplate(Template): {
      assert std.isObject(Template) : 'Template must be a object',
      Properties+::: { Template: Template },
    },
  },
  VdmAttributes: {
    '#': d.pkg(
      name='VdmAttributes',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SES.libsonnet',
      help='Resource Type definition for AWS::SES::VdmAttributes',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SES::VdmAttributes Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SES::VdmAttributes',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVdmAttributesResourceId': d.fn('`withVdmAttributesResourceId` VdmAttributesResourceId ', [d.arg('VdmAttributesResourceId', d.T.string)]),
    withVdmAttributesResourceId(VdmAttributesResourceId): {
      assert std.isString(VdmAttributesResourceId) : 'VdmAttributesResourceId must be a string',
      Properties+::: { VdmAttributesResourceId: VdmAttributesResourceId },
    },
    '#withDashboardAttributes': d.fn('`withDashboardAttributes` DashboardAttributes ', [d.arg('DashboardAttributes', d.T.object)]),
    withDashboardAttributes(DashboardAttributes): {
      assert std.isObject(DashboardAttributes) : 'DashboardAttributes must be a object',
      Properties+::: { DashboardAttributes: DashboardAttributes },
    },
    '#withGuardianAttributes': d.fn('`withGuardianAttributes` GuardianAttributes ', [d.arg('GuardianAttributes', d.T.object)]),
    withGuardianAttributes(GuardianAttributes): {
      assert std.isObject(GuardianAttributes) : 'GuardianAttributes must be a object',
      Properties+::: { GuardianAttributes: GuardianAttributes },
    },
  },
}
