{
  // AWS Cognito UserPoolClient
  UserPoolClient: {
    new(
      UserPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Cognito::UserPoolClient',
    },
    withClientName(ClientName): {
      assert std.isString(ClientName) : 'ClientName must be a string',
      Properties+::: {
        ClientName: ClientName,
      },
    },
    withExplicitAuthFlows(ExplicitAuthFlows): {
      Properties+::: {
        ExplicitAuthFlows: (if std.isArray(ExplicitAuthFlows) then ExplicitAuthFlows else [ExplicitAuthFlows]),
      },
    },
    withExplicitAuthFlowsMixin(ExplicitAuthFlows): {
      Properties+::: {
        ExplicitAuthFlows+: (if std.isArray(ExplicitAuthFlows) then ExplicitAuthFlows else [ExplicitAuthFlows]),
      },
    },
    withGenerateSecret(GenerateSecret): {
      assert std.isBoolean(GenerateSecret) : 'GenerateSecret must be a boolean',
      Properties+::: {
        GenerateSecret: GenerateSecret,
      },
    },
    withReadAttributes(ReadAttributes): {
      Properties+::: {
        ReadAttributes: (if std.isArray(ReadAttributes) then ReadAttributes else [ReadAttributes]),
      },
    },
    withReadAttributesMixin(ReadAttributes): {
      Properties+::: {
        ReadAttributes+: (if std.isArray(ReadAttributes) then ReadAttributes else [ReadAttributes]),
      },
    },
    withAuthSessionValidity(AuthSessionValidity): {
      assert std.isNumber(AuthSessionValidity) : 'AuthSessionValidity must be a number',
      Properties+::: {
        AuthSessionValidity: AuthSessionValidity,
      },
    },
    withRefreshTokenValidity(RefreshTokenValidity): {
      assert std.isNumber(RefreshTokenValidity) : 'RefreshTokenValidity must be a number',
      Properties+::: {
        RefreshTokenValidity: RefreshTokenValidity,
      },
    },
    withAccessTokenValidity(AccessTokenValidity): {
      assert std.isNumber(AccessTokenValidity) : 'AccessTokenValidity must be a number',
      Properties+::: {
        AccessTokenValidity: AccessTokenValidity,
      },
    },
    withIdTokenValidity(IdTokenValidity): {
      assert std.isNumber(IdTokenValidity) : 'IdTokenValidity must be a number',
      Properties+::: {
        IdTokenValidity: IdTokenValidity,
      },
    },
    withTokenValidityUnits(TokenValidityUnits): {
      assert std.isObject(TokenValidityUnits) : 'TokenValidityUnits must be a object',
      Properties+::: {
        TokenValidityUnits: TokenValidityUnits,
      },
    },
    withWriteAttributes(WriteAttributes): {
      Properties+::: {
        WriteAttributes: (if std.isArray(WriteAttributes) then WriteAttributes else [WriteAttributes]),
      },
    },
    withWriteAttributesMixin(WriteAttributes): {
      Properties+::: {
        WriteAttributes+: (if std.isArray(WriteAttributes) then WriteAttributes else [WriteAttributes]),
      },
    },
    withAllowedOAuthFlows(AllowedOAuthFlows): {
      Properties+::: {
        AllowedOAuthFlows: (if std.isArray(AllowedOAuthFlows) then AllowedOAuthFlows else [AllowedOAuthFlows]),
      },
    },
    withAllowedOAuthFlowsMixin(AllowedOAuthFlows): {
      Properties+::: {
        AllowedOAuthFlows+: (if std.isArray(AllowedOAuthFlows) then AllowedOAuthFlows else [AllowedOAuthFlows]),
      },
    },
    withAllowedOAuthFlowsUserPoolClient(AllowedOAuthFlowsUserPoolClient): {
      assert std.isBoolean(AllowedOAuthFlowsUserPoolClient) : 'AllowedOAuthFlowsUserPoolClient must be a boolean',
      Properties+::: {
        AllowedOAuthFlowsUserPoolClient: AllowedOAuthFlowsUserPoolClient,
      },
    },
    withAllowedOAuthScopes(AllowedOAuthScopes): {
      Properties+::: {
        AllowedOAuthScopes: (if std.isArray(AllowedOAuthScopes) then AllowedOAuthScopes else [AllowedOAuthScopes]),
      },
    },
    withAllowedOAuthScopesMixin(AllowedOAuthScopes): {
      Properties+::: {
        AllowedOAuthScopes+: (if std.isArray(AllowedOAuthScopes) then AllowedOAuthScopes else [AllowedOAuthScopes]),
      },
    },
    withCallbackURLs(CallbackURLs): {
      Properties+::: {
        CallbackURLs: (if std.isArray(CallbackURLs) then CallbackURLs else [CallbackURLs]),
      },
    },
    withCallbackURLsMixin(CallbackURLs): {
      Properties+::: {
        CallbackURLs+: (if std.isArray(CallbackURLs) then CallbackURLs else [CallbackURLs]),
      },
    },
    withDefaultRedirectURI(DefaultRedirectURI): {
      assert std.isString(DefaultRedirectURI) : 'DefaultRedirectURI must be a string',
      Properties+::: {
        DefaultRedirectURI: DefaultRedirectURI,
      },
    },
    withLogoutURLs(LogoutURLs): {
      Properties+::: {
        LogoutURLs: (if std.isArray(LogoutURLs) then LogoutURLs else [LogoutURLs]),
      },
    },
    withLogoutURLsMixin(LogoutURLs): {
      Properties+::: {
        LogoutURLs+: (if std.isArray(LogoutURLs) then LogoutURLs else [LogoutURLs]),
      },
    },
    withSupportedIdentityProviders(SupportedIdentityProviders): {
      Properties+::: {
        SupportedIdentityProviders: (if std.isArray(SupportedIdentityProviders) then SupportedIdentityProviders else [SupportedIdentityProviders]),
      },
    },
    withSupportedIdentityProvidersMixin(SupportedIdentityProviders): {
      Properties+::: {
        SupportedIdentityProviders+: (if std.isArray(SupportedIdentityProviders) then SupportedIdentityProviders else [SupportedIdentityProviders]),
      },
    },
    withAnalyticsConfiguration(AnalyticsConfiguration): {
      assert std.isObject(AnalyticsConfiguration) : 'AnalyticsConfiguration must be a object',
      Properties+::: {
        AnalyticsConfiguration: AnalyticsConfiguration,
      },
    },
    withPreventUserExistenceErrors(PreventUserExistenceErrors): {
      assert std.isString(PreventUserExistenceErrors) : 'PreventUserExistenceErrors must be a string',
      Properties+::: {
        PreventUserExistenceErrors: PreventUserExistenceErrors,
      },
    },
    withEnableTokenRevocation(EnableTokenRevocation): {
      assert std.isBoolean(EnableTokenRevocation) : 'EnableTokenRevocation must be a boolean',
      Properties+::: {
        EnableTokenRevocation: EnableTokenRevocation,
      },
    },
    withEnablePropagateAdditionalUserContextData(EnablePropagateAdditionalUserContextData): {
      assert std.isBoolean(EnablePropagateAdditionalUserContextData) : 'EnablePropagateAdditionalUserContextData must be a boolean',
      Properties+::: {
        EnablePropagateAdditionalUserContextData: EnablePropagateAdditionalUserContextData,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withClientSecret(ClientSecret): {
      assert std.isString(ClientSecret) : 'ClientSecret must be a string',
      Properties+::: {
        ClientSecret: ClientSecret,
      },
    },
    withClientId(ClientId): {
      assert std.isString(ClientId) : 'ClientId must be a string',
      Properties+::: {
        ClientId: ClientId,
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
