{
  new(
    UserPoolId,
  ): {
    local base = self,
    Properties: {
      UserPoolId:
        if !std.isString(UserPoolId) then (error 'UserPoolId must be a string')
        else if std.isEmpty(UserPoolId) then (error 'UserPoolId must be not empty')
        else UserPoolId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPoolClient',
  },
  setClientName(ClientName): {
    Properties+::: {
      ClientName:
        if !std.isString(ClientName) then (error 'ClientName must be a string')
        else if std.isEmpty(ClientName) then (error 'ClientName must be not empty')
        else if std.length(ClientName) < 1 then error ('ClientName should have at least 1 characters')
        else if std.length(ClientName) > 128 then error ('ClientName should have not more than 128 characters')
        else ClientName,
    },
  },
  setExplicitAuthFlows(ExplicitAuthFlows): {
    Properties+::: {
      ExplicitAuthFlows:
        if !std.isArray(ExplicitAuthFlows) then (error 'ExplicitAuthFlows must be an array')
        else ExplicitAuthFlows,
    },
  },
  pushExplicitAuthFlows(ExplicitAuthFlows): {
    Properties+::: {
      ExplicitAuthFlows+: ExplicitAuthFlows,
    },
  },
  setGenerateSecret(GenerateSecret): {
    Properties+::: {
      GenerateSecret:
        if !std.isBoolean(GenerateSecret) then (error 'GenerateSecret must be a boolean') else GenerateSecret,
    },
  },
  setReadAttributes(ReadAttributes): {
    Properties+::: {
      ReadAttributes:
        if !std.isArray(ReadAttributes) then (error 'ReadAttributes must be an array')
        else ReadAttributes,
    },
  },
  pushReadAttributes(ReadAttributes): {
    Properties+::: {
      ReadAttributes+: ReadAttributes,
    },
  },
  setAuthSessionValidity(AuthSessionValidity): {
    Properties+::: {
      AuthSessionValidity:
        if !std.isNumber(AuthSessionValidity) then (error 'AuthSessionValidity must be an number')
        else if AuthSessionValidity < 3 then error ('AuthSessionValidity should be at least 3')
        else if AuthSessionValidity > 15 then error ('AuthSessionValidity should be not more than 15')
        else AuthSessionValidity,
    },
  },
  setRefreshTokenValidity(RefreshTokenValidity): {
    Properties+::: {
      RefreshTokenValidity:
        if !std.isNumber(RefreshTokenValidity) then (error 'RefreshTokenValidity must be an number')
        else if RefreshTokenValidity < 1 then error ('RefreshTokenValidity should be at least 1')
        else if RefreshTokenValidity > 315360000 then error ('RefreshTokenValidity should be not more than 315360000')
        else RefreshTokenValidity,
    },
  },
  setAccessTokenValidity(AccessTokenValidity): {
    Properties+::: {
      AccessTokenValidity:
        if !std.isNumber(AccessTokenValidity) then (error 'AccessTokenValidity must be an number')
        else if AccessTokenValidity < 1 then error ('AccessTokenValidity should be at least 1')
        else if AccessTokenValidity > 86400 then error ('AccessTokenValidity should be not more than 86400')
        else AccessTokenValidity,
    },
  },
  setIdTokenValidity(IdTokenValidity): {
    Properties+::: {
      IdTokenValidity:
        if !std.isNumber(IdTokenValidity) then (error 'IdTokenValidity must be an number')
        else if IdTokenValidity < 1 then error ('IdTokenValidity should be at least 1')
        else if IdTokenValidity > 86400 then error ('IdTokenValidity should be not more than 86400')
        else IdTokenValidity,
    },
  },
  setTokenValidityUnits(TokenValidityUnits): {
    Properties+::: {
      TokenValidityUnits:
        if !std.isObject(TokenValidityUnits) then (error 'TokenValidityUnits must be an object')
        else TokenValidityUnits,
    },
  },
  setWriteAttributes(WriteAttributes): {
    Properties+::: {
      WriteAttributes:
        if !std.isArray(WriteAttributes) then (error 'WriteAttributes must be an array')
        else WriteAttributes,
    },
  },
  pushWriteAttributes(WriteAttributes): {
    Properties+::: {
      WriteAttributes+: WriteAttributes,
    },
  },
  setAllowedOAuthFlows(AllowedOAuthFlows): {
    Properties+::: {
      AllowedOAuthFlows:
        if !std.isArray(AllowedOAuthFlows) then (error 'AllowedOAuthFlows must be an array')
        else AllowedOAuthFlows,
    },
  },
  pushAllowedOAuthFlows(AllowedOAuthFlows): {
    Properties+::: {
      AllowedOAuthFlows+: AllowedOAuthFlows,
    },
  },
  setAllowedOAuthFlowsUserPoolClient(AllowedOAuthFlowsUserPoolClient): {
    Properties+::: {
      AllowedOAuthFlowsUserPoolClient:
        if !std.isBoolean(AllowedOAuthFlowsUserPoolClient) then (error 'AllowedOAuthFlowsUserPoolClient must be a boolean') else AllowedOAuthFlowsUserPoolClient,
    },
  },
  setAllowedOAuthScopes(AllowedOAuthScopes): {
    Properties+::: {
      AllowedOAuthScopes:
        if !std.isArray(AllowedOAuthScopes) then (error 'AllowedOAuthScopes must be an array')
        else AllowedOAuthScopes,
    },
  },
  pushAllowedOAuthScopes(AllowedOAuthScopes): {
    Properties+::: {
      AllowedOAuthScopes+: AllowedOAuthScopes,
    },
  },
  setCallbackURLs(CallbackURLs): {
    Properties+::: {
      CallbackURLs:
        if !std.isArray(CallbackURLs) then (error 'CallbackURLs must be an array')
        else CallbackURLs,
    },
  },
  pushCallbackURLs(CallbackURLs): {
    Properties+::: {
      CallbackURLs+: CallbackURLs,
    },
  },
  setDefaultRedirectURI(DefaultRedirectURI): {
    Properties+::: {
      DefaultRedirectURI:
        if !std.isString(DefaultRedirectURI) then (error 'DefaultRedirectURI must be a string')
        else if std.isEmpty(DefaultRedirectURI) then (error 'DefaultRedirectURI must be not empty')
        else DefaultRedirectURI,
    },
  },
  setLogoutURLs(LogoutURLs): {
    Properties+::: {
      LogoutURLs:
        if !std.isArray(LogoutURLs) then (error 'LogoutURLs must be an array')
        else LogoutURLs,
    },
  },
  pushLogoutURLs(LogoutURLs): {
    Properties+::: {
      LogoutURLs+: LogoutURLs,
    },
  },
  setSupportedIdentityProviders(SupportedIdentityProviders): {
    Properties+::: {
      SupportedIdentityProviders:
        if !std.isArray(SupportedIdentityProviders) then (error 'SupportedIdentityProviders must be an array')
        else SupportedIdentityProviders,
    },
  },
  pushSupportedIdentityProviders(SupportedIdentityProviders): {
    Properties+::: {
      SupportedIdentityProviders+: SupportedIdentityProviders,
    },
  },
  setAnalyticsConfiguration(AnalyticsConfiguration): {
    Properties+::: {
      AnalyticsConfiguration:
        if !std.isObject(AnalyticsConfiguration) then (error 'AnalyticsConfiguration must be an object')
        else AnalyticsConfiguration,
    },
  },
  setPreventUserExistenceErrors(PreventUserExistenceErrors): {
    Properties+::: {
      PreventUserExistenceErrors:
        if !std.isString(PreventUserExistenceErrors) then (error 'PreventUserExistenceErrors must be a string')
        else if std.isEmpty(PreventUserExistenceErrors) then (error 'PreventUserExistenceErrors must be not empty')
        else PreventUserExistenceErrors,
    },
  },
  setEnableTokenRevocation(EnableTokenRevocation): {
    Properties+::: {
      EnableTokenRevocation:
        if !std.isBoolean(EnableTokenRevocation) then (error 'EnableTokenRevocation must be a boolean') else EnableTokenRevocation,
    },
  },
  setEnablePropagateAdditionalUserContextData(EnablePropagateAdditionalUserContextData): {
    Properties+::: {
      EnablePropagateAdditionalUserContextData:
        if !std.isBoolean(EnablePropagateAdditionalUserContextData) then (error 'EnablePropagateAdditionalUserContextData must be a boolean') else EnablePropagateAdditionalUserContextData,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setClientSecret(ClientSecret): {
    Properties+::: {
      ClientSecret:
        if !std.isString(ClientSecret) then (error 'ClientSecret must be a string')
        else if std.isEmpty(ClientSecret) then (error 'ClientSecret must be not empty')
        else ClientSecret,
    },
  },
  setClientId(ClientId): {
    Properties+::: {
      ClientId:
        if !std.isString(ClientId) then (error 'ClientId must be a string')
        else if std.isEmpty(ClientId) then (error 'ClientId must be not empty')
        else ClientId,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
