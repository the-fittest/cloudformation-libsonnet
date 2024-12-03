local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Collection: {
    '#': d.pkg(
      name='Collection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Rekognition.libsonnet',
      help='The AWS::Rekognition::Collection type creates an Amazon Rekognition Collection. A collection is a logical grouping of information about detected faces which can later be referenced for searches on the group',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Rekognition::Collection Resource
        * CollectionId 
      |||,
      args=[
        d.arg('CollectionId', 'd.T.string'),
      ]
    ),
    new(
      CollectionId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CollectionId) : 'CollectionId must be a string',
        CollectionId: CollectionId,
      },
      DependsOn:: [],
      Type: 'AWS::Rekognition::Collection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
  },
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Rekognition.libsonnet',
      help='The AWS::Rekognition::Project type creates an Amazon Rekognition CustomLabels Project. A project is a grouping of the resources needed to create and manage Dataset and ProjectVersions.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Rekognition::Project Resource
        * ProjectName 
      |||,
      args=[
        d.arg('ProjectName', 'd.T.string'),
      ]
    ),
    new(
      ProjectName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProjectName) : 'ProjectName must be a string',
        ProjectName: ProjectName,
      },
      DependsOn:: [],
      Type: 'AWS::Rekognition::Project',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  StreamProcessor: {
    '#': d.pkg(
      name='StreamProcessor',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Rekognition.libsonnet',
      help='The AWS::Rekognition::StreamProcessor type is used to create an Amazon Rekognition StreamProcessor that you can use to analyze streaming videos.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Rekognition::StreamProcessor Resource
        * RoleArn ARN of the IAM role that allows access to the stream processor, and provides Rekognition read permissions for KVS stream and write permissions to S3 bucket and SNS topic.
        * KinesisVideoStream 
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
        d.arg('KinesisVideoStream', 'd.T.object'),
      ]
    ),
    new(
      RoleArn,
      KinesisVideoStream,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(KinesisVideoStream) : 'KinesisVideoStream must be a object',
        KinesisVideoStream: KinesisVideoStream,
      },
      DependsOn:: [],
      Type: 'AWS::Rekognition::StreamProcessor',
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
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withFaceSearchSettings': d.fn('`withFaceSearchSettings` FaceSearchSettings ', [d.arg('FaceSearchSettings', d.T.object)]),
    withFaceSearchSettings(FaceSearchSettings): {
      assert std.isObject(FaceSearchSettings) : 'FaceSearchSettings must be a object',
      Properties+::: { FaceSearchSettings: FaceSearchSettings },
    },
    '#withConnectedHomeSettings': d.fn('`withConnectedHomeSettings` ConnectedHomeSettings ', [d.arg('ConnectedHomeSettings', d.T.object)]),
    withConnectedHomeSettings(ConnectedHomeSettings): {
      assert std.isObject(ConnectedHomeSettings) : 'ConnectedHomeSettings must be a object',
      Properties+::: { ConnectedHomeSettings: ConnectedHomeSettings },
    },
    '#withKinesisDataStream': d.fn('`withKinesisDataStream` KinesisDataStream ', [d.arg('KinesisDataStream', d.T.object)]),
    withKinesisDataStream(KinesisDataStream): {
      assert std.isObject(KinesisDataStream) : 'KinesisDataStream must be a object',
      Properties+::: { KinesisDataStream: KinesisDataStream },
    },
    '#withS3Destination': d.fn('`withS3Destination` S3Destination ', [d.arg('S3Destination', d.T.object)]),
    withS3Destination(S3Destination): {
      assert std.isObject(S3Destination) : 'S3Destination must be a object',
      Properties+::: { S3Destination: S3Destination },
    },
    '#withNotificationChannel': d.fn('`withNotificationChannel` NotificationChannel ', [d.arg('NotificationChannel', d.T.object)]),
    withNotificationChannel(NotificationChannel): {
      assert std.isObject(NotificationChannel) : 'NotificationChannel must be a object',
      Properties+::: { NotificationChannel: NotificationChannel },
    },
    '#withDataSharingPreference': d.fn('`withDataSharingPreference` DataSharingPreference ', [d.arg('DataSharingPreference', d.T.object)]),
    withDataSharingPreference(DataSharingPreference): {
      assert std.isObject(DataSharingPreference) : 'DataSharingPreference must be a object',
      Properties+::: { DataSharingPreference: DataSharingPreference },
    },
    '#withPolygonRegionsOfInterest': d.fn('`withPolygonRegionsOfInterest` PolygonRegionsOfInterest ', [d.arg('PolygonRegionsOfInterest', d.T.array)]),
    withPolygonRegionsOfInterest(PolygonRegionsOfInterest): {
      assert std.isArray(PolygonRegionsOfInterest) : 'PolygonRegionsOfInterest must be a array',
      Properties+::: { PolygonRegionsOfInterest: PolygonRegionsOfInterest },
    },
    '#withBoundingBoxRegionsOfInterest': d.fn('`withBoundingBoxRegionsOfInterest` BoundingBoxRegionsOfInterest ', [d.arg('BoundingBoxRegionsOfInterest', d.T.array)]),
    withBoundingBoxRegionsOfInterest(BoundingBoxRegionsOfInterest): {
      assert std.isArray(BoundingBoxRegionsOfInterest) : 'BoundingBoxRegionsOfInterest must be a array',
      Properties+::: { BoundingBoxRegionsOfInterest: BoundingBoxRegionsOfInterest },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
