local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Subscription: {
    '#': d.pkg(
      name='Subscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SNS.libsonnet',
      help='Resource Type definition for AWS::SNS::Subscription',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SNS::Subscription Resource
        * TopicArn The ARN of the topic to subscribe to.
        * Protocol The subscriptions protocol.
      |||,
      args=[
        d.arg('TopicArn', 'd.T.string'),
        d.arg('Protocol', 'd.T.string'),
      ]
    ),
    new(
      TopicArn,
      Protocol,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TopicArn) : 'TopicArn must be a string',
        TopicArn: TopicArn,
        assert std.isString(Protocol) : 'Protocol must be a string',
        Protocol: Protocol,
      },
      DependsOn:: [],
      Type: 'AWS::SNS::Subscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withReplayPolicy': d.fn('`withReplayPolicy` ReplayPolicy ', [d.arg('ReplayPolicy')]),
    withReplayPolicy(ReplayPolicy): {
      // Type: object,string
      Properties+::: { ReplayPolicy: ReplayPolicy },
    },
    '#withRawMessageDelivery': d.fn('`withRawMessageDelivery` RawMessageDelivery ', [d.arg('RawMessageDelivery', d.T.boolean)]),
    withRawMessageDelivery(RawMessageDelivery): {
      assert std.isBoolean(RawMessageDelivery) : 'RawMessageDelivery must be a boolean',
      Properties+::: { RawMessageDelivery: RawMessageDelivery },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withFilterPolicy': d.fn('`withFilterPolicy` FilterPolicy ', [d.arg('FilterPolicy')]),
    withFilterPolicy(FilterPolicy): {
      // Type: object,string
      Properties+::: { FilterPolicy: FilterPolicy },
    },
    '#withRedrivePolicy': d.fn('`withRedrivePolicy` RedrivePolicy ', [d.arg('RedrivePolicy')]),
    withRedrivePolicy(RedrivePolicy): {
      // Type: object,string
      Properties+::: { RedrivePolicy: RedrivePolicy },
    },
    '#withDeliveryPolicy': d.fn('`withDeliveryPolicy` DeliveryPolicy ', [d.arg('DeliveryPolicy')]),
    withDeliveryPolicy(DeliveryPolicy): {
      // Type: object,string
      Properties+::: { DeliveryPolicy: DeliveryPolicy },
    },
    '#withRegion': d.fn('`withRegion` Region ', [d.arg('Region', d.T.string)]),
    withRegion(Region): {
      assert std.isString(Region) : 'Region must be a string',
      Properties+::: { Region: Region },
    },
    '#withSubscriptionRoleArn': d.fn('`withSubscriptionRoleArn` SubscriptionRoleArn ', [d.arg('SubscriptionRoleArn', d.T.string)]),
    withSubscriptionRoleArn(SubscriptionRoleArn): {
      assert std.isString(SubscriptionRoleArn) : 'SubscriptionRoleArn must be a string',
      Properties+::: { SubscriptionRoleArn: SubscriptionRoleArn },
    },
    '#withFilterPolicyScope': d.fn('`withFilterPolicyScope` FilterPolicyScope ', [d.arg('FilterPolicyScope', d.T.string)]),
    withFilterPolicyScope(FilterPolicyScope): {
      assert std.isString(FilterPolicyScope) : 'FilterPolicyScope must be a string',
      Properties+::: { FilterPolicyScope: FilterPolicyScope },
    },
  },
  Topic: {
    '#': d.pkg(
      name='Topic',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SNS.libsonnet',
      help='The AWS::SNS::Topic resource creates a topic to which notifications can be published.One account can create a maximum of 100,000 standard topics and 1,000 FIFO topics. For more information, see [endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/sns.html) in the *General Reference*.The structure of AUTHPARAMS depends on the .signature of the API request. For more information, see [Examples of the complete Signature Version 4 signing process](https://docs.aws.amazon.com/general/latest/gr/sigv4-signed-request-examples.html) in the *General Reference*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SNS::Topic Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SNS::Topic',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withKmsMasterKeyId': d.fn('`withKmsMasterKeyId` KmsMasterKeyId ', [d.arg('KmsMasterKeyId', d.T.string)]),
    withKmsMasterKeyId(KmsMasterKeyId): {
      assert std.isString(KmsMasterKeyId) : 'KmsMasterKeyId must be a string',
      Properties+::: { KmsMasterKeyId: KmsMasterKeyId },
    },
    '#withDataProtectionPolicy': d.fn('`withDataProtectionPolicy` DataProtectionPolicy ', [d.arg('DataProtectionPolicy', d.T.object)]),
    withDataProtectionPolicy(DataProtectionPolicy): {
      assert std.isObject(DataProtectionPolicy) : 'DataProtectionPolicy must be a object',
      Properties+::: { DataProtectionPolicy: DataProtectionPolicy },
    },
    '#withSubscription': d.fn('`withSubscription` Subscription ', [d.arg('Subscription', d.T.array)]),
    withSubscription(Subscription): {
      assert std.isArray(Subscription) : 'Subscription must be a array',
      Properties+::: { Subscription: Subscription },
    },
    '#withFifoTopic': d.fn('`withFifoTopic` FifoTopic ', [d.arg('FifoTopic', d.T.boolean)]),
    withFifoTopic(FifoTopic): {
      assert std.isBoolean(FifoTopic) : 'FifoTopic must be a boolean',
      Properties+::: { FifoTopic: FifoTopic },
    },
    '#withContentBasedDeduplication': d.fn('`withContentBasedDeduplication` ContentBasedDeduplication ', [d.arg('ContentBasedDeduplication', d.T.boolean)]),
    withContentBasedDeduplication(ContentBasedDeduplication): {
      assert std.isBoolean(ContentBasedDeduplication) : 'ContentBasedDeduplication must be a boolean',
      Properties+::: { ContentBasedDeduplication: ContentBasedDeduplication },
    },
    '#withArchivePolicy': d.fn('`withArchivePolicy` ArchivePolicy ', [d.arg('ArchivePolicy', d.T.object)]),
    withArchivePolicy(ArchivePolicy): {
      assert std.isObject(ArchivePolicy) : 'ArchivePolicy must be a object',
      Properties+::: { ArchivePolicy: ArchivePolicy },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTopicName': d.fn('`withTopicName` TopicName ', [d.arg('TopicName', d.T.string)]),
    withTopicName(TopicName): {
      assert std.isString(TopicName) : 'TopicName must be a string',
      Properties+::: { TopicName: TopicName },
    },
    '#withTopicArn': d.fn('`withTopicArn` TopicArn ', [d.arg('TopicArn', d.T.string)]),
    withTopicArn(TopicArn): {
      assert std.isString(TopicArn) : 'TopicArn must be a string',
      Properties+::: { TopicArn: TopicArn },
    },
    '#withSignatureVersion': d.fn('`withSignatureVersion` SignatureVersion ', [d.arg('SignatureVersion', d.T.string)]),
    withSignatureVersion(SignatureVersion): {
      assert std.isString(SignatureVersion) : 'SignatureVersion must be a string',
      Properties+::: { SignatureVersion: SignatureVersion },
    },
    '#withTracingConfig': d.fn('`withTracingConfig` TracingConfig ', [d.arg('TracingConfig', d.T.string)]),
    withTracingConfig(TracingConfig): {
      assert std.isString(TracingConfig) : 'TracingConfig must be a string',
      Properties+::: { TracingConfig: TracingConfig },
    },
    '#withDeliveryStatusLogging': d.fn('`withDeliveryStatusLogging` DeliveryStatusLogging ', [d.arg('DeliveryStatusLogging', d.T.array)]),
    withDeliveryStatusLogging(DeliveryStatusLogging): {
      assert std.isArray(DeliveryStatusLogging) : 'DeliveryStatusLogging must be a array',
      Properties+::: { DeliveryStatusLogging: DeliveryStatusLogging },
    },
  },
  TopicInlinePolicy: {
    '#': d.pkg(
      name='TopicInlinePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SNS.libsonnet',
      help='Schema for AWS::SNS::TopicInlinePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SNS::TopicInlinePolicy Resource
        * PolicyDocument A policy document that contains permissions to add to the specified SNS topics.
        * TopicArn The Amazon Resource Name (ARN) of the topic to which you want to add the policy.
      |||,
      args=[
        d.arg('PolicyDocument', 'd.T.object'),
        d.arg('TopicArn', 'd.T.string'),
      ]
    ),
    new(
      PolicyDocument,
      TopicArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
        PolicyDocument: PolicyDocument,
        assert std.isString(TopicArn) : 'TopicArn must be a string',
        TopicArn: TopicArn,
      },
      DependsOn:: [],
      Type: 'AWS::SNS::TopicInlinePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  TopicPolicy: {
    '#': d.pkg(
      name='TopicPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SNS.libsonnet',
      help='The AWS::SNS::TopicPolicy resource associates SNS topics with a policy. For an example snippet, see [Declaring an policy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-iam.html#scenario-sns-policy) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SNS::TopicPolicy Resource
        * PolicyDocument A policy document that contains permissions to add to the specified SNS topics.
        * Topics The Amazon Resource Names (ARN) of the topics to which you want to add the policy. You can use the Ref function to specify an AWS::SNS::Topic resource.
      |||,
      args=[
        d.arg('PolicyDocument', ''),
        d.arg('Topics', 'd.T.array'),
      ]
    ),
    new(
      PolicyDocument,
      Topics,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        PolicyDocument: PolicyDocument,
        assert std.isArray(Topics) : 'Topics must be a array',
        Topics: Topics,
      },
      DependsOn:: [],
      Type: 'AWS::SNS::TopicPolicy',
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
