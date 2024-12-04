{
  // AWS AppConfig Deployment
  Deployment: {
    new(
      DeploymentStrategyId,
      ConfigurationProfileId,
      EnvironmentId,
      ConfigurationVersion,
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DeploymentStrategyId) : 'DeploymentStrategyId must be a string',
        DeploymentStrategyId: DeploymentStrategyId,
        assert std.isString(ConfigurationProfileId) : 'ConfigurationProfileId must be a string',
        ConfigurationProfileId: ConfigurationProfileId,
        assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
        EnvironmentId: EnvironmentId,
        assert std.isString(ConfigurationVersion) : 'ConfigurationVersion must be a string',
        ConfigurationVersion: ConfigurationVersion,
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AppConfig::Deployment',
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
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withDynamicExtensionParameters(DynamicExtensionParameters): {
      Properties+::: {
        DynamicExtensionParameters: (if std.isArray(DynamicExtensionParameters) then DynamicExtensionParameters else [DynamicExtensionParameters]),
      },
    },
    withDynamicExtensionParametersMixin(DynamicExtensionParameters): {
      Properties+::: {
        DynamicExtensionParameters+: (if std.isArray(DynamicExtensionParameters) then DynamicExtensionParameters else [DynamicExtensionParameters]),
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
