local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  SignalingChannel: {
    '#': d.pkg(
      name='SignalingChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisVideo.libsonnet',
      help='Resource Type Definition for AWS::KinesisVideo::SignalingChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisVideo::SignalingChannel Resource
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
      Type: 'AWS::KinesisVideo::SignalingChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'SINGLE_MASTER' : "Type must be either 'SINGLE_MASTER'",
      Properties+::: { Type: Type },
    },
    '#withMessageTtlSeconds': d.fn('`withMessageTtlSeconds` MessageTtlSeconds ', [d.arg('MessageTtlSeconds', d.T.integer)]),
    withMessageTtlSeconds(MessageTtlSeconds): {
      assert std.isNumber(MessageTtlSeconds) : 'MessageTtlSeconds must be a integer',
      Properties+::: { MessageTtlSeconds: MessageTtlSeconds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Stream: {
    '#': d.pkg(
      name='Stream',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisVideo.libsonnet',
      help='Resource Type Definition for AWS::KinesisVideo::Stream',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisVideo::Stream Resource
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
      Type: 'AWS::KinesisVideo::Stream',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withDataRetentionInHours': d.fn('`withDataRetentionInHours` DataRetentionInHours ', [d.arg('DataRetentionInHours', d.T.integer)]),
    withDataRetentionInHours(DataRetentionInHours): {
      assert std.isNumber(DataRetentionInHours) : 'DataRetentionInHours must be a integer',
      Properties+::: { DataRetentionInHours: DataRetentionInHours },
    },
    '#withDeviceName': d.fn('`withDeviceName` DeviceName ', [d.arg('DeviceName', d.T.string)]),
    withDeviceName(DeviceName): {
      assert std.isString(DeviceName) : 'DeviceName must be a string',
      Properties+::: { DeviceName: DeviceName },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withMediaType': d.fn('`withMediaType` MediaType ', [d.arg('MediaType', d.T.string)]),
    withMediaType(MediaType): {
      assert std.isString(MediaType) : 'MediaType must be a string',
      Properties+::: { MediaType: MediaType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
