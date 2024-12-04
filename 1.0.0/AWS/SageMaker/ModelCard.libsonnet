{
  // AWS SageMaker ModelCard
  ModelCard: {
    new(
      ModelCardName,
      Content,
      ModelCardStatus,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ModelCardName) : 'ModelCardName must be a string',
        ModelCardName: ModelCardName,
        assert std.isObject(Content) : 'Content must be an object',
        Content: Content,
        assert std.isString(ModelCardStatus) : 'ModelCardStatus must be a string',
        ModelCardStatus: ModelCardStatus,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::ModelCard',
    },
    withModelCardArn(ModelCardArn): {
      assert std.isString(ModelCardArn) : 'ModelCardArn must be a string',
      Properties+::: {
        ModelCardArn: ModelCardArn,
      },
    },
    withModelCardVersion(ModelCardVersion): {
      assert std.isNumber(ModelCardVersion) : 'ModelCardVersion must be a number',
      Properties+::: {
        ModelCardVersion: ModelCardVersion,
      },
    },
    withSecurityConfig(SecurityConfig): {
      assert std.isObject(SecurityConfig) : 'SecurityConfig must be a object',
      Properties+::: {
        SecurityConfig: SecurityConfig,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withCreatedBy(CreatedBy): {
      assert std.isObject(CreatedBy) : 'CreatedBy must be a object',
      Properties+::: {
        CreatedBy: CreatedBy,
      },
    },
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: {
        LastModifiedTime: LastModifiedTime,
      },
    },
    withLastModifiedBy(LastModifiedBy): {
      assert std.isObject(LastModifiedBy) : 'LastModifiedBy must be a object',
      Properties+::: {
        LastModifiedBy: LastModifiedBy,
      },
    },
    withModelCardProcessingStatus(ModelCardProcessingStatus): {
      assert std.isString(ModelCardProcessingStatus) : 'ModelCardProcessingStatus must be a string',
      Properties+::: {
        ModelCardProcessingStatus: ModelCardProcessingStatus,
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
