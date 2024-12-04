{
  new(
    Prefix,
    AppliedFor,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Prefix) : 'Prefix must be a string',
      Prefix: Prefix,
      AppliedFor: (if std.isArray(AppliedFor) then AppliedFor else [AppliedFor]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ECR::RepositoryCreationTemplate',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withImageTagMutability(ImageTagMutability): {
    assert std.isString(ImageTagMutability) : 'ImageTagMutability must be a string',
    assert ImageTagMutability == 'MUTABLE' || ImageTagMutability == 'IMMUTABLE' : "ImageTagMutability should be 'MUTABLE' or 'IMMUTABLE'",
    Properties+::: {
      ImageTagMutability: ImageTagMutability,
    },
  },
  withRepositoryPolicy(RepositoryPolicy): {
    assert std.isString(RepositoryPolicy) : 'RepositoryPolicy must be a string',
    Properties+::: {
      RepositoryPolicy: RepositoryPolicy,
    },
  },
  withLifecyclePolicy(LifecyclePolicy): {
    assert std.isString(LifecyclePolicy) : 'LifecyclePolicy must be a string',
    Properties+::: {
      LifecyclePolicy: LifecyclePolicy,
    },
  },
  withEncryptionConfiguration(EncryptionConfiguration): {
    assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
    Properties+::: {
      EncryptionConfiguration: EncryptionConfiguration,
    },
  },
  withResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags: (if std.isArray(ResourceTags) then ResourceTags else [ResourceTags]),
    },
  },
  withResourceTagsMixin(ResourceTags): {
    Properties+::: {
      ResourceTags+: (if std.isArray(ResourceTags) then ResourceTags else [ResourceTags]),
    },
  },
  withCustomRoleArn(CustomRoleArn): {
    assert std.isString(CustomRoleArn) : 'CustomRoleArn must be a string',
    Properties+::: {
      CustomRoleArn: CustomRoleArn,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withUpdatedAt(UpdatedAt): {
    assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
    Properties+::: {
      UpdatedAt: UpdatedAt,
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
