{
  new(
    SyncName,
  ): {
    local base = self,
    Properties: {
      SyncName:
        if !std.isString(SyncName) then (error 'SyncName must be a string')
        else if std.isEmpty(SyncName) then (error 'SyncName must be not empty')
        else if std.length(SyncName) < 1 then error ('SyncName should have at least 1 characters')
        else if std.length(SyncName) > 64 then error ('SyncName should have not more than 64 characters')
        else SyncName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSM::ResourceDataSync',
  },
  setS3Destination(S3Destination): {
    Properties+::: {
      S3Destination:
        if !std.isObject(S3Destination) then (error 'S3Destination must be an object')
        else if !std.objectHas(S3Destination, 'BucketName') then (error ' have attribute BucketName')
        else if !std.objectHas(S3Destination, 'BucketRegion') then (error ' have attribute BucketRegion')
        else if !std.objectHas(S3Destination, 'SyncFormat') then (error ' have attribute SyncFormat')
        else S3Destination,
    },
  },
  setKMSKeyArn(KMSKeyArn): {
    Properties+::: {
      KMSKeyArn:
        if !std.isString(KMSKeyArn) then (error 'KMSKeyArn must be a string')
        else if std.isEmpty(KMSKeyArn) then (error 'KMSKeyArn must be not empty')
        else if std.length(KMSKeyArn) > 512 then error ('KMSKeyArn should have not more than 512 characters')
        else KMSKeyArn,
    },
  },
  setSyncSource(SyncSource): {
    Properties+::: {
      SyncSource:
        if !std.isObject(SyncSource) then (error 'SyncSource must be an object')
        else if !std.objectHas(SyncSource, 'SourceType') then (error ' have attribute SourceType')
        else if !std.objectHas(SyncSource, 'SourceRegions') then (error ' have attribute SourceRegions')
        else SyncSource,
    },
  },
  setBucketName(BucketName): {
    Properties+::: {
      BucketName:
        if !std.isString(BucketName) then (error 'BucketName must be a string')
        else if std.isEmpty(BucketName) then (error 'BucketName must be not empty')
        else if std.length(BucketName) < 1 then error ('BucketName should have at least 1 characters')
        else if std.length(BucketName) > 2048 then error ('BucketName should have not more than 2048 characters')
        else BucketName,
    },
  },
  setBucketRegion(BucketRegion): {
    Properties+::: {
      BucketRegion:
        if !std.isString(BucketRegion) then (error 'BucketRegion must be a string')
        else if std.isEmpty(BucketRegion) then (error 'BucketRegion must be not empty')
        else if std.length(BucketRegion) < 1 then error ('BucketRegion should have at least 1 characters')
        else if std.length(BucketRegion) > 64 then error ('BucketRegion should have not more than 64 characters')
        else BucketRegion,
    },
  },
  setSyncFormat(SyncFormat): {
    Properties+::: {
      SyncFormat:
        if !std.isString(SyncFormat) then (error 'SyncFormat must be a string')
        else if std.isEmpty(SyncFormat) then (error 'SyncFormat must be not empty')
        else if std.length(SyncFormat) > 1024 then error ('SyncFormat should have not more than 1024 characters')
        else SyncFormat,
    },
  },
  setSyncType(SyncType): {
    Properties+::: {
      SyncType:
        if !std.isString(SyncType) then (error 'SyncType must be a string')
        else if std.isEmpty(SyncType) then (error 'SyncType must be not empty')
        else if std.length(SyncType) < 1 then error ('SyncType should have at least 1 characters')
        else if std.length(SyncType) > 64 then error ('SyncType should have not more than 64 characters')
        else SyncType,
    },
  },
  setBucketPrefix(BucketPrefix): {
    Properties+::: {
      BucketPrefix:
        if !std.isString(BucketPrefix) then (error 'BucketPrefix must be a string')
        else if std.isEmpty(BucketPrefix) then (error 'BucketPrefix must be not empty')
        else if std.length(BucketPrefix) > 64 then error ('BucketPrefix should have not more than 64 characters')
        else BucketPrefix,
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
