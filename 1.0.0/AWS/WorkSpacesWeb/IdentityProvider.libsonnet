{
  new(
    IdentityProviderDetails,
    IdentityProviderName,
    IdentityProviderType,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(IdentityProviderDetails) : 'IdentityProviderDetails must be an object',
      IdentityProviderDetails: IdentityProviderDetails,
      assert std.isString(IdentityProviderName) : 'IdentityProviderName must be a string',
      IdentityProviderName: IdentityProviderName,
      assert std.isString(IdentityProviderType) : 'IdentityProviderType must be a string',
      assert IdentityProviderType == 'SAML' || IdentityProviderType == 'Facebook' || IdentityProviderType == 'Google' || IdentityProviderType == 'LoginWithAmazon' || IdentityProviderType == 'SignInWithApple' || IdentityProviderType == 'OIDC' : "IdentityProviderType should be 'SAML' or 'Facebook' or 'Google' or 'LoginWithAmazon' or 'SignInWithApple' or 'OIDC'",
      IdentityProviderType: IdentityProviderType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesWeb::IdentityProvider',
  },
  withIdentityProviderArn(IdentityProviderArn): {
    assert std.isString(IdentityProviderArn) : 'IdentityProviderArn must be a string',
    Properties+::: {
      IdentityProviderArn: IdentityProviderArn,
    },
  },
  withPortalArn(PortalArn): {
    assert std.isString(PortalArn) : 'PortalArn must be a string',
    Properties+::: {
      PortalArn: PortalArn,
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
}
