{
  // AWS Cognito UserPoolIdentityProvider
  UserPoolIdentityProvider: {
    new(
      UserPoolId,
      ProviderName,
      ProviderType,
      ProviderDetails,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
        assert std.isString(ProviderName) : 'ProviderName must be a string',
        ProviderName: ProviderName,
        assert std.isString(ProviderType) : 'ProviderType must be a string',
        ProviderType: ProviderType,
        assert std.isObject(ProviderDetails) : 'ProviderDetails must be an object',
        ProviderDetails: ProviderDetails,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Cognito::UserPoolIdentityProvider',
    },
    withIdpIdentifiers(IdpIdentifiers): {
      Properties+::: {
        IdpIdentifiers: (if std.isArray(IdpIdentifiers) then IdpIdentifiers else [IdpIdentifiers]),
      },
    },
    withIdpIdentifiersMixin(IdpIdentifiers): {
      Properties+::: {
        IdpIdentifiers+: (if std.isArray(IdpIdentifiers) then IdpIdentifiers else [IdpIdentifiers]),
      },
    },
    withAttributeMapping(AttributeMapping): {
      assert std.isObject(AttributeMapping) : 'AttributeMapping must be a object',
      Properties+::: {
        AttributeMapping: AttributeMapping,
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
