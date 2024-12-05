{
  new(
    Engine,
    EngineVersion,
  ): {
    local base = self,
    Properties: {
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else if std.length(Engine) < 1 then error ('Engine should have at least 1 characters')
        else if std.length(Engine) > 35 then error ('Engine should have not more than 35 characters')
        else Engine,
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else if std.length(EngineVersion) < 1 then error ('EngineVersion should have at least 1 characters')
        else if std.length(EngineVersion) > 60 then error ('EngineVersion should have not more than 60 characters')
        else EngineVersion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::CustomDBEngineVersion',
  },
  setDatabaseInstallationFilesS3BucketName(DatabaseInstallationFilesS3BucketName): {
    Properties+::: {
      DatabaseInstallationFilesS3BucketName:
        if !std.isString(DatabaseInstallationFilesS3BucketName) then (error 'DatabaseInstallationFilesS3BucketName must be a string')
        else if std.isEmpty(DatabaseInstallationFilesS3BucketName) then (error 'DatabaseInstallationFilesS3BucketName must be not empty')
        else if std.length(DatabaseInstallationFilesS3BucketName) < 3 then error ('DatabaseInstallationFilesS3BucketName should have at least 3 characters')
        else if std.length(DatabaseInstallationFilesS3BucketName) > 63 then error ('DatabaseInstallationFilesS3BucketName should have not more than 63 characters')
        else DatabaseInstallationFilesS3BucketName,
    },
  },
  setDatabaseInstallationFilesS3Prefix(DatabaseInstallationFilesS3Prefix): {
    Properties+::: {
      DatabaseInstallationFilesS3Prefix:
        if !std.isString(DatabaseInstallationFilesS3Prefix) then (error 'DatabaseInstallationFilesS3Prefix must be a string')
        else if std.isEmpty(DatabaseInstallationFilesS3Prefix) then (error 'DatabaseInstallationFilesS3Prefix must be not empty')
        else if std.length(DatabaseInstallationFilesS3Prefix) < 1 then error ('DatabaseInstallationFilesS3Prefix should have at least 1 characters')
        else if std.length(DatabaseInstallationFilesS3Prefix) > 255 then error ('DatabaseInstallationFilesS3Prefix should have not more than 255 characters')
        else DatabaseInstallationFilesS3Prefix,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setKMSKeyId(KMSKeyId): {
    Properties+::: {
      KMSKeyId:
        if !std.isString(KMSKeyId) then (error 'KMSKeyId must be a string')
        else if std.isEmpty(KMSKeyId) then (error 'KMSKeyId must be not empty')
        else if std.length(KMSKeyId) < 1 then error ('KMSKeyId should have at least 1 characters')
        else if std.length(KMSKeyId) > 2048 then error ('KMSKeyId should have not more than 2048 characters')
        else KMSKeyId,
    },
  },
  setManifest(Manifest): {
    Properties+::: {
      Manifest:
        if !std.isString(Manifest) then (error 'Manifest must be a string')
        else if std.isEmpty(Manifest) then (error 'Manifest must be not empty')
        else if std.length(Manifest) < 1 then error ('Manifest should have at least 1 characters')
        else if std.length(Manifest) > 51000 then error ('Manifest should have not more than 51000 characters')
        else Manifest,
    },
  },
  setDBEngineVersionArn(DBEngineVersionArn): {
    Properties+::: {
      DBEngineVersionArn:
        if !std.isString(DBEngineVersionArn) then (error 'DBEngineVersionArn must be a string')
        else if std.isEmpty(DBEngineVersionArn) then (error 'DBEngineVersionArn must be not empty')
        else DBEngineVersionArn,
    },
  },
  setSourceCustomDbEngineVersionIdentifier(SourceCustomDbEngineVersionIdentifier): {
    Properties+::: {
      SourceCustomDbEngineVersionIdentifier:
        if !std.isString(SourceCustomDbEngineVersionIdentifier) then (error 'SourceCustomDbEngineVersionIdentifier must be a string')
        else if std.isEmpty(SourceCustomDbEngineVersionIdentifier) then (error 'SourceCustomDbEngineVersionIdentifier must be not empty')
        else SourceCustomDbEngineVersionIdentifier,
    },
  },
  setUseAwsProvidedLatestImage(UseAwsProvidedLatestImage): {
    Properties+::: {
      UseAwsProvidedLatestImage:
        if !std.isBoolean(UseAwsProvidedLatestImage) then (error 'UseAwsProvidedLatestImage must be a boolean') else UseAwsProvidedLatestImage,
    },
  },
  setImageId(ImageId): {
    Properties+::: {
      ImageId:
        if !std.isString(ImageId) then (error 'ImageId must be a string')
        else if std.isEmpty(ImageId) then (error 'ImageId must be not empty')
        else ImageId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'available' && Status != 'inactive' && Status != 'inactive-except-restore' then (error "Status should be 'available' or 'inactive' or 'inactive-except-restore'")
        else Status,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
