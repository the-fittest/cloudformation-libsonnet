{
  new(
    S3Config,
  ): {
    local base = self,
    Properties: {
      S3Config:
        if !std.isObject(S3Config) then (error 'S3Config must be an object')
        else if !std.objectHas(S3Config, 'BucketAccessRoleArn') then (error ' have attribute BucketAccessRoleArn')
        else S3Config,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::LocationS3',
  },
  setS3BucketArn(S3BucketArn): {
    Properties+::: {
      S3BucketArn:
        if !std.isString(S3BucketArn) then (error 'S3BucketArn must be a string')
        else if std.isEmpty(S3BucketArn) then (error 'S3BucketArn must be not empty')
        else if std.length(S3BucketArn) > 156 then error ('S3BucketArn should have not more than 156 characters')
        else S3BucketArn,
    },
  },
  setSubdirectory(Subdirectory): {
    Properties+::: {
      Subdirectory:
        if !std.isString(Subdirectory) then (error 'Subdirectory must be a string')
        else if std.isEmpty(Subdirectory) then (error 'Subdirectory must be not empty')
        else if std.length(Subdirectory) > 1024 then error ('Subdirectory should have not more than 1024 characters')
        else Subdirectory,
    },
  },
  setS3StorageClass(S3StorageClass): {
    Properties+::: {
      S3StorageClass:
        if !std.isString(S3StorageClass) then (error 'S3StorageClass must be a string')
        else if std.isEmpty(S3StorageClass) then (error 'S3StorageClass must be not empty')
        else if S3StorageClass != 'STANDARD' && S3StorageClass != 'STANDARD_IA' && S3StorageClass != 'ONEZONE_IA' && S3StorageClass != 'INTELLIGENT_TIERING' && S3StorageClass != 'GLACIER' && S3StorageClass != 'GLACIER_INSTANT_RETRIEVAL' && S3StorageClass != 'DEEP_ARCHIVE' then (error "S3StorageClass should be 'STANDARD' or 'STANDARD_IA' or 'ONEZONE_IA' or 'INTELLIGENT_TIERING' or 'GLACIER' or 'GLACIER_INSTANT_RETRIEVAL' or 'DEEP_ARCHIVE'")
        else S3StorageClass,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setLocationArn(LocationArn): {
    Properties+::: {
      LocationArn:
        if !std.isString(LocationArn) then (error 'LocationArn must be a string')
        else if std.isEmpty(LocationArn) then (error 'LocationArn must be not empty')
        else if std.length(LocationArn) > 128 then error ('LocationArn should have not more than 128 characters')
        else LocationArn,
    },
  },
  setLocationUri(LocationUri): {
    Properties+::: {
      LocationUri:
        if !std.isString(LocationUri) then (error 'LocationUri must be a string')
        else if std.isEmpty(LocationUri) then (error 'LocationUri must be not empty')
        else if std.length(LocationUri) > 4356 then error ('LocationUri should have not more than 4356 characters')
        else LocationUri,
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
