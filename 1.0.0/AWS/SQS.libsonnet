local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Queue: {
    '#': d.pkg(
      name='Queue',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SQS.libsonnet',
      help='The AWS::SQS::Queue resource creates an SQS standard or FIFO queue. Keep the following caveats in mind:+If you dont specify the FifoQueue property, SQS creates a standard queue.You cant change the queue type after you create it and you cant convert an existing standard queue into a FIFO queue. You must either create a new FIFO queue for your application or delete your existing standard queue and recreate it as a FIFO queue. For more information, see [Moving from a standard queue to a FIFO queue](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-moving.html) in the *Developer Guide*. +If you dont provide a value for a property, the queue is created with the default value for the property.+If you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.+To successfully create a new queue, you must provide a queue name that adheres to the [limits related to queues](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html) and is unique within the scope of your queues. For more information about creating FIFO (first-in-first-out) queues, see [Creating an queue ()](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/create-queue-cloudformation.html) in the *Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SQS::Queue Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SQS::Queue',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withQueueUrl': d.fn('`withQueueUrl` QueueUrl ', [d.arg('QueueUrl', d.T.string)]),
    withQueueUrl(QueueUrl): {
      assert std.isString(QueueUrl) : 'QueueUrl must be a string',
      Properties+::: { QueueUrl: QueueUrl },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withContentBasedDeduplication': d.fn('`withContentBasedDeduplication` ContentBasedDeduplication ', [d.arg('ContentBasedDeduplication', d.T.boolean)]),
    withContentBasedDeduplication(ContentBasedDeduplication): {
      assert std.isBoolean(ContentBasedDeduplication) : 'ContentBasedDeduplication must be a boolean',
      Properties+::: { ContentBasedDeduplication: ContentBasedDeduplication },
    },
    '#withDeduplicationScope': d.fn('`withDeduplicationScope` DeduplicationScope ', [d.arg('DeduplicationScope', d.T.string)]),
    withDeduplicationScope(DeduplicationScope): {
      assert std.isString(DeduplicationScope) : 'DeduplicationScope must be a string',
      Properties+::: { DeduplicationScope: DeduplicationScope },
    },
    '#withDelaySeconds': d.fn('`withDelaySeconds` DelaySeconds ', [d.arg('DelaySeconds', d.T.integer)]),
    withDelaySeconds(DelaySeconds): {
      assert std.isNumber(DelaySeconds) : 'DelaySeconds must be a integer',
      Properties+::: { DelaySeconds: DelaySeconds },
    },
    '#withFifoQueue': d.fn('`withFifoQueue` FifoQueue ', [d.arg('FifoQueue', d.T.boolean)]),
    withFifoQueue(FifoQueue): {
      assert std.isBoolean(FifoQueue) : 'FifoQueue must be a boolean',
      Properties+::: { FifoQueue: FifoQueue },
    },
    '#withFifoThroughputLimit': d.fn('`withFifoThroughputLimit` FifoThroughputLimit ', [d.arg('FifoThroughputLimit', d.T.string)]),
    withFifoThroughputLimit(FifoThroughputLimit): {
      assert std.isString(FifoThroughputLimit) : 'FifoThroughputLimit must be a string',
      Properties+::: { FifoThroughputLimit: FifoThroughputLimit },
    },
    '#withKmsDataKeyReusePeriodSeconds': d.fn('`withKmsDataKeyReusePeriodSeconds` KmsDataKeyReusePeriodSeconds ', [d.arg('KmsDataKeyReusePeriodSeconds', d.T.integer)]),
    withKmsDataKeyReusePeriodSeconds(KmsDataKeyReusePeriodSeconds): {
      assert std.isNumber(KmsDataKeyReusePeriodSeconds) : 'KmsDataKeyReusePeriodSeconds must be a integer',
      Properties+::: { KmsDataKeyReusePeriodSeconds: KmsDataKeyReusePeriodSeconds },
    },
    '#withKmsMasterKeyId': d.fn('`withKmsMasterKeyId` KmsMasterKeyId ', [d.arg('KmsMasterKeyId', d.T.string)]),
    withKmsMasterKeyId(KmsMasterKeyId): {
      assert std.isString(KmsMasterKeyId) : 'KmsMasterKeyId must be a string',
      Properties+::: { KmsMasterKeyId: KmsMasterKeyId },
    },
    '#withSqsManagedSseEnabled': d.fn('`withSqsManagedSseEnabled` SqsManagedSseEnabled ', [d.arg('SqsManagedSseEnabled', d.T.boolean)]),
    withSqsManagedSseEnabled(SqsManagedSseEnabled): {
      assert std.isBoolean(SqsManagedSseEnabled) : 'SqsManagedSseEnabled must be a boolean',
      Properties+::: { SqsManagedSseEnabled: SqsManagedSseEnabled },
    },
    '#withMaximumMessageSize': d.fn('`withMaximumMessageSize` MaximumMessageSize ', [d.arg('MaximumMessageSize', d.T.integer)]),
    withMaximumMessageSize(MaximumMessageSize): {
      assert std.isNumber(MaximumMessageSize) : 'MaximumMessageSize must be a integer',
      Properties+::: { MaximumMessageSize: MaximumMessageSize },
    },
    '#withMessageRetentionPeriod': d.fn('`withMessageRetentionPeriod` MessageRetentionPeriod ', [d.arg('MessageRetentionPeriod', d.T.integer)]),
    withMessageRetentionPeriod(MessageRetentionPeriod): {
      assert std.isNumber(MessageRetentionPeriod) : 'MessageRetentionPeriod must be a integer',
      Properties+::: { MessageRetentionPeriod: MessageRetentionPeriod },
    },
    '#withQueueName': d.fn('`withQueueName` QueueName ', [d.arg('QueueName', d.T.string)]),
    withQueueName(QueueName): {
      assert std.isString(QueueName) : 'QueueName must be a string',
      Properties+::: { QueueName: QueueName },
    },
    '#withReceiveMessageWaitTimeSeconds': d.fn('`withReceiveMessageWaitTimeSeconds` ReceiveMessageWaitTimeSeconds ', [d.arg('ReceiveMessageWaitTimeSeconds', d.T.integer)]),
    withReceiveMessageWaitTimeSeconds(ReceiveMessageWaitTimeSeconds): {
      assert std.isNumber(ReceiveMessageWaitTimeSeconds) : 'ReceiveMessageWaitTimeSeconds must be a integer',
      Properties+::: { ReceiveMessageWaitTimeSeconds: ReceiveMessageWaitTimeSeconds },
    },
    '#withRedriveAllowPolicy': d.fn('`withRedriveAllowPolicy` RedriveAllowPolicy ', [d.arg('RedriveAllowPolicy')]),
    withRedriveAllowPolicy(RedriveAllowPolicy): {
      // Type: object,string
      Properties+::: { RedriveAllowPolicy: RedriveAllowPolicy },
    },
    '#withRedrivePolicy': d.fn('`withRedrivePolicy` RedrivePolicy ', [d.arg('RedrivePolicy')]),
    withRedrivePolicy(RedrivePolicy): {
      // Type: object,string
      Properties+::: { RedrivePolicy: RedrivePolicy },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVisibilityTimeout': d.fn('`withVisibilityTimeout` VisibilityTimeout ', [d.arg('VisibilityTimeout', d.T.integer)]),
    withVisibilityTimeout(VisibilityTimeout): {
      assert std.isNumber(VisibilityTimeout) : 'VisibilityTimeout must be a integer',
      Properties+::: { VisibilityTimeout: VisibilityTimeout },
    },
  },
  QueueInlinePolicy: {
    '#': d.pkg(
      name='QueueInlinePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SQS.libsonnet',
      help='Schema for SQS QueueInlinePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SQS::QueueInlinePolicy Resource
        * PolicyDocument A policy document that contains permissions to add to the specified SQS queue
        * Queue The URL of the SQS queue.
      |||,
      args=[
        d.arg('PolicyDocument', 'd.T.object'),
        d.arg('Queue', 'd.T.string'),
      ]
    ),
    new(
      PolicyDocument,
      Queue,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
        PolicyDocument: PolicyDocument,
        assert std.isString(Queue) : 'Queue must be a string',
        Queue: Queue,
      },
      DependsOn:: [],
      Type: 'AWS::SQS::QueueInlinePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  QueuePolicy: {
    '#': d.pkg(
      name='QueuePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SQS.libsonnet',
      help='The AWS::SQS::QueuePolicy type applies a policy to SQS queues. For an example snippet, see [Declaring an policy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-iam.html#scenario-sqs-policy) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SQS::QueuePolicy Resource
        * PolicyDocument A policy document that contains the permissions for the specified SQS queues. For more information about SQS policies, see [Using custom policies with the access policy language](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html) in the *Developer Guide*.
        * Queues The URLs of the queues to which you want to add the policy. You can use the Ref function to specify an AWS::SQS::Queue resource.
      |||,
      args=[
        d.arg('PolicyDocument', ''),
        d.arg('Queues', 'd.T.array'),
      ]
    ),
    new(
      PolicyDocument,
      Queues,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        PolicyDocument: PolicyDocument,
        assert std.isArray(Queues) : 'Queues must be a array',
        Queues: Queues,
      },
      DependsOn:: [],
      Type: 'AWS::SQS::QueuePolicy',
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
