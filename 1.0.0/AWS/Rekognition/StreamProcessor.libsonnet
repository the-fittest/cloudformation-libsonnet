{
  new(
    RoleArn,
    KinesisVideoStream,
  ): {
    local base = self,
    Properties: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
      KinesisVideoStream:
        if !std.isObject(KinesisVideoStream) then (error 'KinesisVideoStream must be an object')
        else if !std.objectHas(KinesisVideoStream, 'Arn') then (error ' have attribute Arn')
        else KinesisVideoStream,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Rekognition::StreamProcessor',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setFaceSearchSettings(FaceSearchSettings): {
    Properties+::: {
      FaceSearchSettings:
        if !std.isObject(FaceSearchSettings) then (error 'FaceSearchSettings must be an object')
        else if !std.objectHas(FaceSearchSettings, 'CollectionId') then (error ' have attribute CollectionId')
        else FaceSearchSettings,
    },
  },
  setConnectedHomeSettings(ConnectedHomeSettings): {
    Properties+::: {
      ConnectedHomeSettings:
        if !std.isObject(ConnectedHomeSettings) then (error 'ConnectedHomeSettings must be an object')
        else if !std.objectHas(ConnectedHomeSettings, 'Labels') then (error ' have attribute Labels')
        else ConnectedHomeSettings,
    },
  },
  setKinesisDataStream(KinesisDataStream): {
    Properties+::: {
      KinesisDataStream:
        if !std.isObject(KinesisDataStream) then (error 'KinesisDataStream must be an object')
        else if !std.objectHas(KinesisDataStream, 'Arn') then (error ' have attribute Arn')
        else KinesisDataStream,
    },
  },
  setS3Destination(S3Destination): {
    Properties+::: {
      S3Destination:
        if !std.isObject(S3Destination) then (error 'S3Destination must be an object')
        else if !std.objectHas(S3Destination, 'BucketName') then (error ' have attribute BucketName')
        else S3Destination,
    },
  },
  setNotificationChannel(NotificationChannel): {
    Properties+::: {
      NotificationChannel:
        if !std.isObject(NotificationChannel) then (error 'NotificationChannel must be an object')
        else if !std.objectHas(NotificationChannel, 'Arn') then (error ' have attribute Arn')
        else NotificationChannel,
    },
  },
  setDataSharingPreference(DataSharingPreference): {
    Properties+::: {
      DataSharingPreference:
        if !std.isObject(DataSharingPreference) then (error 'DataSharingPreference must be an object')
        else if !std.objectHas(DataSharingPreference, 'OptIn') then (error ' have attribute OptIn')
        else DataSharingPreference,
    },
  },
  setPolygonRegionsOfInterest(PolygonRegionsOfInterest): {
    Properties+::: {
      PolygonRegionsOfInterest:
        if !std.isArray(PolygonRegionsOfInterest) then (error 'PolygonRegionsOfInterest must be an array')
        else PolygonRegionsOfInterest,
    },
  },
  setPolygonRegionsOfInterestMixin(PolygonRegionsOfInterest): {
    Properties+::: {
      PolygonRegionsOfInterest+: PolygonRegionsOfInterest,
    },
  },
  setBoundingBoxRegionsOfInterest(BoundingBoxRegionsOfInterest): {
    Properties+::: {
      BoundingBoxRegionsOfInterest:
        if !std.isArray(BoundingBoxRegionsOfInterest) then (error 'BoundingBoxRegionsOfInterest must be an array')
        else BoundingBoxRegionsOfInterest,
    },
  },
  setBoundingBoxRegionsOfInterestMixin(BoundingBoxRegionsOfInterest): {
    Properties+::: {
      BoundingBoxRegionsOfInterest+: BoundingBoxRegionsOfInterest,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setStatusMessage(StatusMessage): {
    Properties+::: {
      StatusMessage:
        if !std.isString(StatusMessage) then (error 'StatusMessage must be a string')
        else if std.isEmpty(StatusMessage) then (error 'StatusMessage must be not empty')
        else StatusMessage,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
