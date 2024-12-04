{
  new(
    RoleArn,
    KinesisVideoStream,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
      assert std.isObject(KinesisVideoStream) : 'KinesisVideoStream must be an object',
      KinesisVideoStream: KinesisVideoStream,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Rekognition::StreamProcessor',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withFaceSearchSettings(FaceSearchSettings): {
    assert std.isObject(FaceSearchSettings) : 'FaceSearchSettings must be a object',
    Properties+::: {
      FaceSearchSettings: FaceSearchSettings,
    },
  },
  withConnectedHomeSettings(ConnectedHomeSettings): {
    assert std.isObject(ConnectedHomeSettings) : 'ConnectedHomeSettings must be a object',
    Properties+::: {
      ConnectedHomeSettings: ConnectedHomeSettings,
    },
  },
  withKinesisDataStream(KinesisDataStream): {
    assert std.isObject(KinesisDataStream) : 'KinesisDataStream must be a object',
    Properties+::: {
      KinesisDataStream: KinesisDataStream,
    },
  },
  withS3Destination(S3Destination): {
    assert std.isObject(S3Destination) : 'S3Destination must be a object',
    Properties+::: {
      S3Destination: S3Destination,
    },
  },
  withNotificationChannel(NotificationChannel): {
    assert std.isObject(NotificationChannel) : 'NotificationChannel must be a object',
    Properties+::: {
      NotificationChannel: NotificationChannel,
    },
  },
  withDataSharingPreference(DataSharingPreference): {
    assert std.isObject(DataSharingPreference) : 'DataSharingPreference must be a object',
    Properties+::: {
      DataSharingPreference: DataSharingPreference,
    },
  },
  withPolygonRegionsOfInterest(PolygonRegionsOfInterest): {
    Properties+::: {
      PolygonRegionsOfInterest: (if std.isArray(PolygonRegionsOfInterest) then PolygonRegionsOfInterest else [PolygonRegionsOfInterest]),
    },
  },
  withPolygonRegionsOfInterestMixin(PolygonRegionsOfInterest): {
    Properties+::: {
      PolygonRegionsOfInterest+: (if std.isArray(PolygonRegionsOfInterest) then PolygonRegionsOfInterest else [PolygonRegionsOfInterest]),
    },
  },
  withBoundingBoxRegionsOfInterest(BoundingBoxRegionsOfInterest): {
    Properties+::: {
      BoundingBoxRegionsOfInterest: (if std.isArray(BoundingBoxRegionsOfInterest) then BoundingBoxRegionsOfInterest else [BoundingBoxRegionsOfInterest]),
    },
  },
  withBoundingBoxRegionsOfInterestMixin(BoundingBoxRegionsOfInterest): {
    Properties+::: {
      BoundingBoxRegionsOfInterest+: (if std.isArray(BoundingBoxRegionsOfInterest) then BoundingBoxRegionsOfInterest else [BoundingBoxRegionsOfInterest]),
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withStatusMessage(StatusMessage): {
    assert std.isString(StatusMessage) : 'StatusMessage must be a string',
    Properties+::: {
      StatusMessage: StatusMessage,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
