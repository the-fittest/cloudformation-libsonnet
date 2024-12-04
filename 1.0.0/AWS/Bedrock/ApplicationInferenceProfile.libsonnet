{
  // AWS Bedrock ApplicationInferenceProfile
  ApplicationInferenceProfile: {
    new(
      InferenceProfileName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InferenceProfileName) : 'InferenceProfileName must be a string',
        InferenceProfileName: InferenceProfileName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Bedrock::ApplicationInferenceProfile',
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withInferenceProfileArn(InferenceProfileArn): {
      assert std.isString(InferenceProfileArn) : 'InferenceProfileArn must be a string',
      Properties+::: {
        InferenceProfileArn: InferenceProfileArn,
      },
    },
    withInferenceProfileId(InferenceProfileId): {
      assert std.isString(InferenceProfileId) : 'InferenceProfileId must be a string',
      Properties+::: {
        InferenceProfileId: InferenceProfileId,
      },
    },
    withInferenceProfileIdentifier(InferenceProfileIdentifier): {
      assert std.isString(InferenceProfileIdentifier) : 'InferenceProfileIdentifier must be a string',
      Properties+::: {
        InferenceProfileIdentifier: InferenceProfileIdentifier,
      },
    },
    withModelSource(ModelSource): {
      Properties+::: {
        ModelSource: ModelSource,
      },
    },
    withModels(Models): {
      Properties+::: {
        Models: (if std.isArray(Models) then Models else [Models]),
      },
    },
    withModelsMixin(Models): {
      Properties+::: {
        Models+: (if std.isArray(Models) then Models else [Models]),
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
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: {
        Type: Type,
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
  },
}
