{
  new(
    S3BucketName,
  ): {
    local base = self,
    Properties: {
      S3BucketName:
        if !std.isString(S3BucketName) then (error 'S3BucketName must be a string')
        else if std.isEmpty(S3BucketName) then (error 'S3BucketName must be not empty')
        else S3BucketName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::DeliveryChannel',
  },
  setS3KeyPrefix(S3KeyPrefix): {
    Properties+::: {
      S3KeyPrefix:
        if !std.isString(S3KeyPrefix) then (error 'S3KeyPrefix must be a string')
        else if std.isEmpty(S3KeyPrefix) then (error 'S3KeyPrefix must be not empty')
        else S3KeyPrefix,
    },
  },
  setConfigSnapshotDeliveryProperties(ConfigSnapshotDeliveryProperties): {
    Properties+::: {
      ConfigSnapshotDeliveryProperties:
        if !std.isObject(ConfigSnapshotDeliveryProperties) then (error 'ConfigSnapshotDeliveryProperties must be an object')
        else ConfigSnapshotDeliveryProperties,
    },
  },
  setSnsTopicARN(SnsTopicARN): {
    Properties+::: {
      SnsTopicARN:
        if !std.isString(SnsTopicARN) then (error 'SnsTopicARN must be a string')
        else if std.isEmpty(SnsTopicARN) then (error 'SnsTopicARN must be not empty')
        else SnsTopicARN,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setS3KmsKeyArn(S3KmsKeyArn): {
    Properties+::: {
      S3KmsKeyArn:
        if !std.isString(S3KmsKeyArn) then (error 'S3KmsKeyArn must be a string')
        else if std.isEmpty(S3KmsKeyArn) then (error 'S3KmsKeyArn must be not empty')
        else S3KmsKeyArn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
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
