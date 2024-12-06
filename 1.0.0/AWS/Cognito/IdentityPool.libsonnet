{
  new(
    AllowUnauthenticatedIdentities,
  ): {
    local base = self,
    Properties: {
      AllowUnauthenticatedIdentities:
        if !std.isBoolean(AllowUnauthenticatedIdentities) then (error 'AllowUnauthenticatedIdentities must be a boolean') else AllowUnauthenticatedIdentities,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::IdentityPool',
  },
  setPushSync(PushSync): {
    Properties+::: {
      PushSync:
        if !std.isObject(PushSync) then (error 'PushSync must be an object')
        else PushSync,
    },
  },
  setCognitoIdentityProviders(CognitoIdentityProviders): {
    Properties+::: {
      CognitoIdentityProviders:
        if !std.isArray(CognitoIdentityProviders) then (error 'CognitoIdentityProviders must be an array')
        else CognitoIdentityProviders,
    },
  },
  pushCognitoIdentityProviders(CognitoIdentityProviders): {
    Properties+::: {
      CognitoIdentityProviders+: CognitoIdentityProviders,
    },
  },
  setDeveloperProviderName(DeveloperProviderName): {
    Properties+::: {
      DeveloperProviderName:
        if !std.isString(DeveloperProviderName) then (error 'DeveloperProviderName must be a string')
        else if std.isEmpty(DeveloperProviderName) then (error 'DeveloperProviderName must be not empty')
        else DeveloperProviderName,
    },
  },
  setCognitoStreams(CognitoStreams): {
    Properties+::: {
      CognitoStreams:
        if !std.isObject(CognitoStreams) then (error 'CognitoStreams must be an object')
        else CognitoStreams,
    },
  },
  setSupportedLoginProviders(SupportedLoginProviders): {
    Properties+::: {
      SupportedLoginProviders:
        if !std.isObject(SupportedLoginProviders) then (error 'SupportedLoginProviders must be an object')
        else SupportedLoginProviders,
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
  setCognitoEvents(CognitoEvents): {
    Properties+::: {
      CognitoEvents:
        if !std.isObject(CognitoEvents) then (error 'CognitoEvents must be an object')
        else CognitoEvents,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setIdentityPoolName(IdentityPoolName): {
    Properties+::: {
      IdentityPoolName:
        if !std.isString(IdentityPoolName) then (error 'IdentityPoolName must be a string')
        else if std.isEmpty(IdentityPoolName) then (error 'IdentityPoolName must be not empty')
        else IdentityPoolName,
    },
  },
  setSamlProviderARNs(SamlProviderARNs): {
    Properties+::: {
      SamlProviderARNs:
        if !std.isArray(SamlProviderARNs) then (error 'SamlProviderARNs must be an array')
        else SamlProviderARNs,
    },
  },
  pushSamlProviderARNs(SamlProviderARNs): {
    Properties+::: {
      SamlProviderARNs+: SamlProviderARNs,
    },
  },
  setOpenIdConnectProviderARNs(OpenIdConnectProviderARNs): {
    Properties+::: {
      OpenIdConnectProviderARNs:
        if !std.isArray(OpenIdConnectProviderARNs) then (error 'OpenIdConnectProviderARNs must be an array')
        else OpenIdConnectProviderARNs,
    },
  },
  pushOpenIdConnectProviderARNs(OpenIdConnectProviderARNs): {
    Properties+::: {
      OpenIdConnectProviderARNs+: OpenIdConnectProviderARNs,
    },
  },
  setAllowClassicFlow(AllowClassicFlow): {
    Properties+::: {
      AllowClassicFlow:
        if !std.isBoolean(AllowClassicFlow) then (error 'AllowClassicFlow must be a boolean') else AllowClassicFlow,
    },
  },
  setIdentityPoolTags(IdentityPoolTags): {
    Properties+::: {
      IdentityPoolTags:
        if !std.isArray(IdentityPoolTags) then (error 'IdentityPoolTags must be an array')
        else IdentityPoolTags,
    },
  },
  pushIdentityPoolTags(IdentityPoolTags): {
    Properties+::: {
      IdentityPoolTags+: IdentityPoolTags,
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
