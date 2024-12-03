local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ConfigurationSet: {
    '#': d.pkg(
      name='ConfigurationSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PinpointEmail.libsonnet',
      help='Resource Type definition for AWS::PinpointEmail::ConfigurationSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PinpointEmail::ConfigurationSet Resource
        * Name 
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
      Type: 'AWS::PinpointEmail::ConfigurationSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSendingOptions': d.fn('`withSendingOptions` SendingOptions ', [d.arg('SendingOptions', d.T.object)]),
    withSendingOptions(SendingOptions): {
      assert std.isObject(SendingOptions) : 'SendingOptions must be a object',
      Properties+::: { SendingOptions: SendingOptions },
    },
    '#withTrackingOptions': d.fn('`withTrackingOptions` TrackingOptions ', [d.arg('TrackingOptions', d.T.object)]),
    withTrackingOptions(TrackingOptions): {
      assert std.isObject(TrackingOptions) : 'TrackingOptions must be a object',
      Properties+::: { TrackingOptions: TrackingOptions },
    },
    '#withReputationOptions': d.fn('`withReputationOptions` ReputationOptions ', [d.arg('ReputationOptions', d.T.object)]),
    withReputationOptions(ReputationOptions): {
      assert std.isObject(ReputationOptions) : 'ReputationOptions must be a object',
      Properties+::: { ReputationOptions: ReputationOptions },
    },
    '#withDeliveryOptions': d.fn('`withDeliveryOptions` DeliveryOptions ', [d.arg('DeliveryOptions', d.T.object)]),
    withDeliveryOptions(DeliveryOptions): {
      assert std.isObject(DeliveryOptions) : 'DeliveryOptions must be a object',
      Properties+::: { DeliveryOptions: DeliveryOptions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ConfigurationSetEventDestination: {
    '#': d.pkg(
      name='ConfigurationSetEventDestination',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PinpointEmail.libsonnet',
      help='Resource Type definition for AWS::PinpointEmail::ConfigurationSetEventDestination',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PinpointEmail::ConfigurationSetEventDestination Resource
        * ConfigurationSetName 
        * EventDestinationName 
      |||,
      args=[
        d.arg('ConfigurationSetName', 'd.T.string'),
        d.arg('EventDestinationName', 'd.T.string'),
      ]
    ),
    new(
      ConfigurationSetName,
      EventDestinationName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConfigurationSetName) : 'ConfigurationSetName must be a string',
        ConfigurationSetName: ConfigurationSetName,
        assert std.isString(EventDestinationName) : 'EventDestinationName must be a string',
        EventDestinationName: EventDestinationName,
      },
      DependsOn:: [],
      Type: 'AWS::PinpointEmail::ConfigurationSetEventDestination',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEventDestination': d.fn('`withEventDestination` EventDestination ', [d.arg('EventDestination', d.T.object)]),
    withEventDestination(EventDestination): {
      assert std.isObject(EventDestination) : 'EventDestination must be a object',
      Properties+::: { EventDestination: EventDestination },
    },
  },
  DedicatedIpPool: {
    '#': d.pkg(
      name='DedicatedIpPool',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PinpointEmail.libsonnet',
      help='Resource Type definition for AWS::PinpointEmail::DedicatedIpPool',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PinpointEmail::DedicatedIpPool Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::PinpointEmail::DedicatedIpPool',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPoolName': d.fn('`withPoolName` PoolName ', [d.arg('PoolName', d.T.string)]),
    withPoolName(PoolName): {
      assert std.isString(PoolName) : 'PoolName must be a string',
      Properties+::: { PoolName: PoolName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Identity: {
    '#': d.pkg(
      name='Identity',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PinpointEmail.libsonnet',
      help='Resource Type definition for AWS::PinpointEmail::Identity',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PinpointEmail::Identity Resource
        * Name 
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
      Type: 'AWS::PinpointEmail::Identity',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIdentityDNSRecordName3': d.fn('`withIdentityDNSRecordName3` IdentityDNSRecordName3 ', [d.arg('IdentityDNSRecordName3', d.T.string)]),
    withIdentityDNSRecordName3(IdentityDNSRecordName3): {
      assert std.isString(IdentityDNSRecordName3) : 'IdentityDNSRecordName3 must be a string',
      Properties+::: { IdentityDNSRecordName3: IdentityDNSRecordName3 },
    },
    '#withIdentityDNSRecordName1': d.fn('`withIdentityDNSRecordName1` IdentityDNSRecordName1 ', [d.arg('IdentityDNSRecordName1', d.T.string)]),
    withIdentityDNSRecordName1(IdentityDNSRecordName1): {
      assert std.isString(IdentityDNSRecordName1) : 'IdentityDNSRecordName1 must be a string',
      Properties+::: { IdentityDNSRecordName1: IdentityDNSRecordName1 },
    },
    '#withIdentityDNSRecordName2': d.fn('`withIdentityDNSRecordName2` IdentityDNSRecordName2 ', [d.arg('IdentityDNSRecordName2', d.T.string)]),
    withIdentityDNSRecordName2(IdentityDNSRecordName2): {
      assert std.isString(IdentityDNSRecordName2) : 'IdentityDNSRecordName2 must be a string',
      Properties+::: { IdentityDNSRecordName2: IdentityDNSRecordName2 },
    },
    '#withIdentityDNSRecordValue3': d.fn('`withIdentityDNSRecordValue3` IdentityDNSRecordValue3 ', [d.arg('IdentityDNSRecordValue3', d.T.string)]),
    withIdentityDNSRecordValue3(IdentityDNSRecordValue3): {
      assert std.isString(IdentityDNSRecordValue3) : 'IdentityDNSRecordValue3 must be a string',
      Properties+::: { IdentityDNSRecordValue3: IdentityDNSRecordValue3 },
    },
    '#withIdentityDNSRecordValue2': d.fn('`withIdentityDNSRecordValue2` IdentityDNSRecordValue2 ', [d.arg('IdentityDNSRecordValue2', d.T.string)]),
    withIdentityDNSRecordValue2(IdentityDNSRecordValue2): {
      assert std.isString(IdentityDNSRecordValue2) : 'IdentityDNSRecordValue2 must be a string',
      Properties+::: { IdentityDNSRecordValue2: IdentityDNSRecordValue2 },
    },
    '#withIdentityDNSRecordValue1': d.fn('`withIdentityDNSRecordValue1` IdentityDNSRecordValue1 ', [d.arg('IdentityDNSRecordValue1', d.T.string)]),
    withIdentityDNSRecordValue1(IdentityDNSRecordValue1): {
      assert std.isString(IdentityDNSRecordValue1) : 'IdentityDNSRecordValue1 must be a string',
      Properties+::: { IdentityDNSRecordValue1: IdentityDNSRecordValue1 },
    },
    '#withFeedbackForwardingEnabled': d.fn('`withFeedbackForwardingEnabled` FeedbackForwardingEnabled ', [d.arg('FeedbackForwardingEnabled', d.T.boolean)]),
    withFeedbackForwardingEnabled(FeedbackForwardingEnabled): {
      assert std.isBoolean(FeedbackForwardingEnabled) : 'FeedbackForwardingEnabled must be a boolean',
      Properties+::: { FeedbackForwardingEnabled: FeedbackForwardingEnabled },
    },
    '#withDkimSigningEnabled': d.fn('`withDkimSigningEnabled` DkimSigningEnabled ', [d.arg('DkimSigningEnabled', d.T.boolean)]),
    withDkimSigningEnabled(DkimSigningEnabled): {
      assert std.isBoolean(DkimSigningEnabled) : 'DkimSigningEnabled must be a boolean',
      Properties+::: { DkimSigningEnabled: DkimSigningEnabled },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withMailFromAttributes': d.fn('`withMailFromAttributes` MailFromAttributes ', [d.arg('MailFromAttributes', d.T.object)]),
    withMailFromAttributes(MailFromAttributes): {
      assert std.isObject(MailFromAttributes) : 'MailFromAttributes must be a object',
      Properties+::: { MailFromAttributes: MailFromAttributes },
    },
  },
}
