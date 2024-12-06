{
  new(
    IdentityProviderDetails,
    IdentityProviderName,
    IdentityProviderType,
  ): {
    local base = self,
    Properties: {
      IdentityProviderDetails:
        if !std.isObject(IdentityProviderDetails) then (error 'IdentityProviderDetails must be an object')
        else IdentityProviderDetails,
      IdentityProviderName:
        if !std.isString(IdentityProviderName) then (error 'IdentityProviderName must be a string')
        else if std.isEmpty(IdentityProviderName) then (error 'IdentityProviderName must be not empty')
        else if std.length(IdentityProviderName) < 1 then error ('IdentityProviderName should have at least 1 characters')
        else if std.length(IdentityProviderName) > 32 then error ('IdentityProviderName should have not more than 32 characters')
        else IdentityProviderName,
      IdentityProviderType:
        if !std.isString(IdentityProviderType) then (error 'IdentityProviderType must be a string')
        else if std.isEmpty(IdentityProviderType) then (error 'IdentityProviderType must be not empty')
        else if IdentityProviderType != 'SAML' && IdentityProviderType != 'Facebook' && IdentityProviderType != 'Google' && IdentityProviderType != 'LoginWithAmazon' && IdentityProviderType != 'SignInWithApple' && IdentityProviderType != 'OIDC' then (error "IdentityProviderType should be 'SAML' or 'Facebook' or 'Google' or 'LoginWithAmazon' or 'SignInWithApple' or 'OIDC'")
        else IdentityProviderType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesWeb::IdentityProvider',
  },
  setIdentityProviderArn(IdentityProviderArn): {
    Properties+::: {
      IdentityProviderArn:
        if !std.isString(IdentityProviderArn) then (error 'IdentityProviderArn must be a string')
        else if std.isEmpty(IdentityProviderArn) then (error 'IdentityProviderArn must be not empty')
        else if std.length(IdentityProviderArn) < 20 then error ('IdentityProviderArn should have at least 20 characters')
        else if std.length(IdentityProviderArn) > 2048 then error ('IdentityProviderArn should have not more than 2048 characters')
        else IdentityProviderArn,
    },
  },
  setPortalArn(PortalArn): {
    Properties+::: {
      PortalArn:
        if !std.isString(PortalArn) then (error 'PortalArn must be a string')
        else if std.isEmpty(PortalArn) then (error 'PortalArn must be not empty')
        else if std.length(PortalArn) < 20 then error ('PortalArn should have at least 20 characters')
        else if std.length(PortalArn) > 2048 then error ('PortalArn should have not more than 2048 characters')
        else PortalArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
