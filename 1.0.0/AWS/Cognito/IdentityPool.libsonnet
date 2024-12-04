{
  new(
    AllowUnauthenticatedIdentities,
  ): {
    local base = self,
    Properties: {
      assert std.isBoolean(AllowUnauthenticatedIdentities) : 'AllowUnauthenticatedIdentities must be a boolean',
      AllowUnauthenticatedIdentities: AllowUnauthenticatedIdentities,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::IdentityPool',
  },
  withPushSync(PushSync): {
    assert std.isObject(PushSync) : 'PushSync must be a object',
    Properties+::: {
      PushSync: PushSync,
    },
  },
  withCognitoIdentityProviders(CognitoIdentityProviders): {
    Properties+::: {
      CognitoIdentityProviders: (if std.isArray(CognitoIdentityProviders) then CognitoIdentityProviders else [CognitoIdentityProviders]),
    },
  },
  withCognitoIdentityProvidersMixin(CognitoIdentityProviders): {
    Properties+::: {
      CognitoIdentityProviders+: (if std.isArray(CognitoIdentityProviders) then CognitoIdentityProviders else [CognitoIdentityProviders]),
    },
  },
  withDeveloperProviderName(DeveloperProviderName): {
    assert std.isString(DeveloperProviderName) : 'DeveloperProviderName must be a string',
    Properties+::: {
      DeveloperProviderName: DeveloperProviderName,
    },
  },
  withCognitoStreams(CognitoStreams): {
    assert std.isObject(CognitoStreams) : 'CognitoStreams must be a object',
    Properties+::: {
      CognitoStreams: CognitoStreams,
    },
  },
  withSupportedLoginProviders(SupportedLoginProviders): {
    assert std.isObject(SupportedLoginProviders) : 'SupportedLoginProviders must be a object',
    Properties+::: {
      SupportedLoginProviders: SupportedLoginProviders,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withCognitoEvents(CognitoEvents): {
    assert std.isObject(CognitoEvents) : 'CognitoEvents must be a object',
    Properties+::: {
      CognitoEvents: CognitoEvents,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withIdentityPoolName(IdentityPoolName): {
    assert std.isString(IdentityPoolName) : 'IdentityPoolName must be a string',
    Properties+::: {
      IdentityPoolName: IdentityPoolName,
    },
  },
  withSamlProviderARNs(SamlProviderARNs): {
    Properties+::: {
      SamlProviderARNs: (if std.isArray(SamlProviderARNs) then SamlProviderARNs else [SamlProviderARNs]),
    },
  },
  withSamlProviderARNsMixin(SamlProviderARNs): {
    Properties+::: {
      SamlProviderARNs+: (if std.isArray(SamlProviderARNs) then SamlProviderARNs else [SamlProviderARNs]),
    },
  },
  withOpenIdConnectProviderARNs(OpenIdConnectProviderARNs): {
    Properties+::: {
      OpenIdConnectProviderARNs: (if std.isArray(OpenIdConnectProviderARNs) then OpenIdConnectProviderARNs else [OpenIdConnectProviderARNs]),
    },
  },
  withOpenIdConnectProviderARNsMixin(OpenIdConnectProviderARNs): {
    Properties+::: {
      OpenIdConnectProviderARNs+: (if std.isArray(OpenIdConnectProviderARNs) then OpenIdConnectProviderARNs else [OpenIdConnectProviderARNs]),
    },
  },
  withAllowClassicFlow(AllowClassicFlow): {
    assert std.isBoolean(AllowClassicFlow) : 'AllowClassicFlow must be a boolean',
    Properties+::: {
      AllowClassicFlow: AllowClassicFlow,
    },
  },
  withIdentityPoolTags(IdentityPoolTags): {
    Properties+::: {
      IdentityPoolTags: (if std.isArray(IdentityPoolTags) then IdentityPoolTags else [IdentityPoolTags]),
    },
  },
  withIdentityPoolTagsMixin(IdentityPoolTags): {
    Properties+::: {
      IdentityPoolTags+: (if std.isArray(IdentityPoolTags) then IdentityPoolTags else [IdentityPoolTags]),
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
