{
  // AWS RDS CustomDBEngineVersion
  CustomDBEngineVersion: {
    new(
      Engine,
      EngineVersion,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Engine) : 'Engine must be a string',
        Engine: Engine,
        assert std.isString(EngineVersion) : 'EngineVersion must be a string',
        EngineVersion: EngineVersion,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RDS::CustomDBEngineVersion',
    },
    withDatabaseInstallationFilesS3BucketName(DatabaseInstallationFilesS3BucketName): {
      assert std.isString(DatabaseInstallationFilesS3BucketName) : 'DatabaseInstallationFilesS3BucketName must be a string',
      Properties+::: {
        DatabaseInstallationFilesS3BucketName: DatabaseInstallationFilesS3BucketName,
      },
    },
    withDatabaseInstallationFilesS3Prefix(DatabaseInstallationFilesS3Prefix): {
      assert std.isString(DatabaseInstallationFilesS3Prefix) : 'DatabaseInstallationFilesS3Prefix must be a string',
      Properties+::: {
        DatabaseInstallationFilesS3Prefix: DatabaseInstallationFilesS3Prefix,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withKMSKeyId(KMSKeyId): {
      assert std.isString(KMSKeyId) : 'KMSKeyId must be a string',
      Properties+::: {
        KMSKeyId: KMSKeyId,
      },
    },
    withManifest(Manifest): {
      assert std.isString(Manifest) : 'Manifest must be a string',
      Properties+::: {
        Manifest: Manifest,
      },
    },
    withDBEngineVersionArn(DBEngineVersionArn): {
      assert std.isString(DBEngineVersionArn) : 'DBEngineVersionArn must be a string',
      Properties+::: {
        DBEngineVersionArn: DBEngineVersionArn,
      },
    },
    withSourceCustomDbEngineVersionIdentifier(SourceCustomDbEngineVersionIdentifier): {
      assert std.isString(SourceCustomDbEngineVersionIdentifier) : 'SourceCustomDbEngineVersionIdentifier must be a string',
      Properties+::: {
        SourceCustomDbEngineVersionIdentifier: SourceCustomDbEngineVersionIdentifier,
      },
    },
    withUseAwsProvidedLatestImage(UseAwsProvidedLatestImage): {
      assert std.isBoolean(UseAwsProvidedLatestImage) : 'UseAwsProvidedLatestImage must be a boolean',
      Properties+::: {
        UseAwsProvidedLatestImage: UseAwsProvidedLatestImage,
      },
    },
    withImageId(ImageId): {
      assert std.isString(ImageId) : 'ImageId must be a string',
      Properties+::: {
        ImageId: ImageId,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
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
  },
}
