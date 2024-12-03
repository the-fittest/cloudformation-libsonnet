local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Kinesis.libsonnet',
      help='Resource Type definition for AWS::Kinesis::ResourcePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Kinesis::ResourcePolicy Resource
        * ResourceArn The ARN of the AWS Kinesis resource to which the policy applies.
        * ResourcePolicy A policy document containing permissions to add to the specified resource. In IAM, you must provide policy documents in JSON format. However, in CloudFormation you can provide the policy in JSON or YAML format because CloudFormation converts YAML to JSON before submitting it to IAM.
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('ResourcePolicy', 'd.T.object'),
      ]
    ),
    new(
      ResourceArn,
      ResourcePolicy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        assert std.isObject(ResourcePolicy) : 'ResourcePolicy must be a object',
        ResourcePolicy: ResourcePolicy,
      },
      DependsOn:: [],
      Type: 'AWS::Kinesis::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Stream: {
    '#': d.pkg(
      name='Stream',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Kinesis.libsonnet',
      help='Resource Type definition for AWS::Kinesis::Stream',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Kinesis::Stream Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Kinesis::Stream',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStreamModeDetails': d.fn('`withStreamModeDetails` StreamModeDetails ', [d.arg('StreamModeDetails', d.T.object)]),
    withStreamModeDetails(StreamModeDetails): {
      assert std.isObject(StreamModeDetails) : 'StreamModeDetails must be a object',
      Properties+::: { StreamModeDetails: StreamModeDetails },
    },
    '#withStreamEncryption': d.fn('`withStreamEncryption` StreamEncryption ', [d.arg('StreamEncryption', d.T.object)]),
    withStreamEncryption(StreamEncryption): {
      assert std.isObject(StreamEncryption) : 'StreamEncryption must be a object',
      Properties+::: { StreamEncryption: StreamEncryption },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRetentionPeriodHours': d.fn('`withRetentionPeriodHours` RetentionPeriodHours ', [d.arg('RetentionPeriodHours', d.T.integer)]),
    withRetentionPeriodHours(RetentionPeriodHours): {
      assert std.isNumber(RetentionPeriodHours) : 'RetentionPeriodHours must be a integer',
      Properties+::: { RetentionPeriodHours: RetentionPeriodHours },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withShardCount': d.fn('`withShardCount` ShardCount ', [d.arg('ShardCount', d.T.integer)]),
    withShardCount(ShardCount): {
      assert std.isNumber(ShardCount) : 'ShardCount must be a integer',
      Properties+::: { ShardCount: ShardCount },
    },
  },
  StreamConsumer: {
    '#': d.pkg(
      name='StreamConsumer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Kinesis.libsonnet',
      help='Resource Type definition for AWS::Kinesis::StreamConsumer',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Kinesis::StreamConsumer Resource
        * ConsumerName 
        * StreamARN 
      |||,
      args=[
        d.arg('ConsumerName', 'd.T.string'),
        d.arg('StreamARN', 'd.T.string'),
      ]
    ),
    new(
      ConsumerName,
      StreamARN,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConsumerName) : 'ConsumerName must be a string',
        ConsumerName: ConsumerName,
        assert std.isString(StreamARN) : 'StreamARN must be a string',
        StreamARN: StreamARN,
      },
      DependsOn:: [],
      Type: 'AWS::Kinesis::StreamConsumer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withConsumerCreationTimestamp': d.fn('`withConsumerCreationTimestamp` ConsumerCreationTimestamp ', [d.arg('ConsumerCreationTimestamp', d.T.string)]),
    withConsumerCreationTimestamp(ConsumerCreationTimestamp): {
      assert std.isString(ConsumerCreationTimestamp) : 'ConsumerCreationTimestamp must be a string',
      Properties+::: { ConsumerCreationTimestamp: ConsumerCreationTimestamp },
    },
    '#withConsumerARN': d.fn('`withConsumerARN` ConsumerARN ', [d.arg('ConsumerARN', d.T.string)]),
    withConsumerARN(ConsumerARN): {
      assert std.isString(ConsumerARN) : 'ConsumerARN must be a string',
      Properties+::: { ConsumerARN: ConsumerARN },
    },
    '#withConsumerStatus': d.fn('`withConsumerStatus` ConsumerStatus ', [d.arg('ConsumerStatus', d.T.string)]),
    withConsumerStatus(ConsumerStatus): {
      assert std.isString(ConsumerStatus) : 'ConsumerStatus must be a string',
      Properties+::: { ConsumerStatus: ConsumerStatus },
    },
  },
}
