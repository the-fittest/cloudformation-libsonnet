{
  // AWS Comprehend DocumentClassifier
  DocumentClassifier: {
    new(
      DocumentClassifierName,
      DataAccessRoleArn,
      InputDataConfig,
      LanguageCode,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DocumentClassifierName) : 'DocumentClassifierName must be a string',
        DocumentClassifierName: DocumentClassifierName,
        assert std.isString(DataAccessRoleArn) : 'DataAccessRoleArn must be a string',
        DataAccessRoleArn: DataAccessRoleArn,
        assert std.isObject(InputDataConfig) : 'InputDataConfig must be an object',
        InputDataConfig: InputDataConfig,
        assert std.isString(LanguageCode) : 'LanguageCode must be a string',
        LanguageCode: LanguageCode,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Comprehend::DocumentClassifier',
    },
    withOutputDataConfig(OutputDataConfig): {
      assert std.isObject(OutputDataConfig) : 'OutputDataConfig must be a object',
      Properties+::: {
        OutputDataConfig: OutputDataConfig,
      },
    },
    withModelKmsKeyId(ModelKmsKeyId): {
      assert std.isString(ModelKmsKeyId) : 'ModelKmsKeyId must be a string',
      Properties+::: {
        ModelKmsKeyId: ModelKmsKeyId,
      },
    },
    withModelPolicy(ModelPolicy): {
      assert std.isString(ModelPolicy) : 'ModelPolicy must be a string',
      Properties+::: {
        ModelPolicy: ModelPolicy,
      },
    },
    withMode(Mode): {
      assert std.isString(Mode) : 'Mode must be a string',
      Properties+::: {
        Mode: Mode,
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
    withVersionName(VersionName): {
      assert std.isString(VersionName) : 'VersionName must be a string',
      Properties+::: {
        VersionName: VersionName,
      },
    },
    withVolumeKmsKeyId(VolumeKmsKeyId): {
      assert std.isString(VolumeKmsKeyId) : 'VolumeKmsKeyId must be a string',
      Properties+::: {
        VolumeKmsKeyId: VolumeKmsKeyId,
      },
    },
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: {
        VpcConfig: VpcConfig,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
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
