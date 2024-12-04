{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ECR::Repository',
  },
  withEmptyOnDelete(EmptyOnDelete): {
    assert std.isBoolean(EmptyOnDelete) : 'EmptyOnDelete must be a boolean',
    Properties+::: {
      EmptyOnDelete: EmptyOnDelete,
    },
  },
  withLifecyclePolicy(LifecyclePolicy): {
    assert std.isObject(LifecyclePolicy) : 'LifecyclePolicy must be a object',
    Properties+::: {
      LifecyclePolicy: LifecyclePolicy,
    },
  },
  withRepositoryName(RepositoryName): {
    assert std.isString(RepositoryName) : 'RepositoryName must be a string',
    Properties+::: {
      RepositoryName: RepositoryName,
    },
  },
  withRepositoryPolicyText(RepositoryPolicyText): {
    Properties+::: {
      RepositoryPolicyText: RepositoryPolicyText,
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
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withRepositoryUri(RepositoryUri): {
    assert std.isString(RepositoryUri) : 'RepositoryUri must be a string',
    Properties+::: {
      RepositoryUri: RepositoryUri,
    },
  },
  withImageTagMutability(ImageTagMutability): {
    assert std.isString(ImageTagMutability) : 'ImageTagMutability must be a string',
    assert ImageTagMutability == 'MUTABLE' || ImageTagMutability == 'IMMUTABLE' : "ImageTagMutability should be 'MUTABLE' or 'IMMUTABLE'",
    Properties+::: {
      ImageTagMutability: ImageTagMutability,
    },
  },
  withImageScanningConfiguration(ImageScanningConfiguration): {
    assert std.isObject(ImageScanningConfiguration) : 'ImageScanningConfiguration must be a object',
    Properties+::: {
      ImageScanningConfiguration: ImageScanningConfiguration,
    },
  },
  withEncryptionConfiguration(EncryptionConfiguration): {
    assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
    Properties+::: {
      EncryptionConfiguration: EncryptionConfiguration,
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
