{
  // AWS AppConfig ConfigurationProfile
  ConfigurationProfile: {
    new(
      LocationUri,
      ApplicationId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LocationUri) : 'LocationUri must be a string',
        LocationUri: LocationUri,
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AppConfig::ConfigurationProfile',
    },
    withConfigurationProfileId(ConfigurationProfileId): {
      assert std.isString(ConfigurationProfileId) : 'ConfigurationProfileId must be a string',
      Properties+::: {
        ConfigurationProfileId: ConfigurationProfileId,
      },
    },
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: {
        Type: Type,
      },
    },
    withKmsKeyIdentifier(KmsKeyIdentifier): {
      assert std.isString(KmsKeyIdentifier) : 'KmsKeyIdentifier must be a string',
      Properties+::: {
        KmsKeyIdentifier: KmsKeyIdentifier,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: {
        KmsKeyArn: KmsKeyArn,
      },
    },
    withValidators(Validators): {
      Properties+::: {
        Validators: (if std.isArray(Validators) then Validators else [Validators]),
      },
    },
    withValidatorsMixin(Validators): {
      Properties+::: {
        Validators+: (if std.isArray(Validators) then Validators else [Validators]),
      },
    },
    withRetrievalRoleArn(RetrievalRoleArn): {
      assert std.isString(RetrievalRoleArn) : 'RetrievalRoleArn must be a string',
      Properties+::: {
        RetrievalRoleArn: RetrievalRoleArn,
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