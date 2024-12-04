{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPool',
  },
  withUserPoolName(UserPoolName): {
    assert std.isString(UserPoolName) : 'UserPoolName must be a string',
    Properties+::: {
      UserPoolName: UserPoolName,
    },
  },
  withPolicies(Policies): {
    assert std.isObject(Policies) : 'Policies must be a object',
    Properties+::: {
      Policies: Policies,
    },
  },
  withAccountRecoverySetting(AccountRecoverySetting): {
    assert std.isObject(AccountRecoverySetting) : 'AccountRecoverySetting must be a object',
    Properties+::: {
      AccountRecoverySetting: AccountRecoverySetting,
    },
  },
  withAdminCreateUserConfig(AdminCreateUserConfig): {
    assert std.isObject(AdminCreateUserConfig) : 'AdminCreateUserConfig must be a object',
    Properties+::: {
      AdminCreateUserConfig: AdminCreateUserConfig,
    },
  },
  withAliasAttributes(AliasAttributes): {
    Properties+::: {
      AliasAttributes: (if std.isArray(AliasAttributes) then AliasAttributes else [AliasAttributes]),
    },
  },
  withAliasAttributesMixin(AliasAttributes): {
    Properties+::: {
      AliasAttributes+: (if std.isArray(AliasAttributes) then AliasAttributes else [AliasAttributes]),
    },
  },
  withUsernameAttributes(UsernameAttributes): {
    Properties+::: {
      UsernameAttributes: (if std.isArray(UsernameAttributes) then UsernameAttributes else [UsernameAttributes]),
    },
  },
  withUsernameAttributesMixin(UsernameAttributes): {
    Properties+::: {
      UsernameAttributes+: (if std.isArray(UsernameAttributes) then UsernameAttributes else [UsernameAttributes]),
    },
  },
  withAutoVerifiedAttributes(AutoVerifiedAttributes): {
    Properties+::: {
      AutoVerifiedAttributes: (if std.isArray(AutoVerifiedAttributes) then AutoVerifiedAttributes else [AutoVerifiedAttributes]),
    },
  },
  withAutoVerifiedAttributesMixin(AutoVerifiedAttributes): {
    Properties+::: {
      AutoVerifiedAttributes+: (if std.isArray(AutoVerifiedAttributes) then AutoVerifiedAttributes else [AutoVerifiedAttributes]),
    },
  },
  withDeviceConfiguration(DeviceConfiguration): {
    assert std.isObject(DeviceConfiguration) : 'DeviceConfiguration must be a object',
    Properties+::: {
      DeviceConfiguration: DeviceConfiguration,
    },
  },
  withEmailConfiguration(EmailConfiguration): {
    assert std.isObject(EmailConfiguration) : 'EmailConfiguration must be a object',
    Properties+::: {
      EmailConfiguration: EmailConfiguration,
    },
  },
  withEmailVerificationMessage(EmailVerificationMessage): {
    assert std.isString(EmailVerificationMessage) : 'EmailVerificationMessage must be a string',
    Properties+::: {
      EmailVerificationMessage: EmailVerificationMessage,
    },
  },
  withEmailVerificationSubject(EmailVerificationSubject): {
    assert std.isString(EmailVerificationSubject) : 'EmailVerificationSubject must be a string',
    Properties+::: {
      EmailVerificationSubject: EmailVerificationSubject,
    },
  },
  withDeletionProtection(DeletionProtection): {
    assert std.isString(DeletionProtection) : 'DeletionProtection must be a string',
    Properties+::: {
      DeletionProtection: DeletionProtection,
    },
  },
  withLambdaConfig(LambdaConfig): {
    assert std.isObject(LambdaConfig) : 'LambdaConfig must be a object',
    Properties+::: {
      LambdaConfig: LambdaConfig,
    },
  },
  withMfaConfiguration(MfaConfiguration): {
    assert std.isString(MfaConfiguration) : 'MfaConfiguration must be a string',
    Properties+::: {
      MfaConfiguration: MfaConfiguration,
    },
  },
  withEnabledMfas(EnabledMfas): {
    Properties+::: {
      EnabledMfas: (if std.isArray(EnabledMfas) then EnabledMfas else [EnabledMfas]),
    },
  },
  withEnabledMfasMixin(EnabledMfas): {
    Properties+::: {
      EnabledMfas+: (if std.isArray(EnabledMfas) then EnabledMfas else [EnabledMfas]),
    },
  },
  withSmsAuthenticationMessage(SmsAuthenticationMessage): {
    assert std.isString(SmsAuthenticationMessage) : 'SmsAuthenticationMessage must be a string',
    Properties+::: {
      SmsAuthenticationMessage: SmsAuthenticationMessage,
    },
  },
  withEmailAuthenticationMessage(EmailAuthenticationMessage): {
    assert std.isString(EmailAuthenticationMessage) : 'EmailAuthenticationMessage must be a string',
    Properties+::: {
      EmailAuthenticationMessage: EmailAuthenticationMessage,
    },
  },
  withEmailAuthenticationSubject(EmailAuthenticationSubject): {
    assert std.isString(EmailAuthenticationSubject) : 'EmailAuthenticationSubject must be a string',
    Properties+::: {
      EmailAuthenticationSubject: EmailAuthenticationSubject,
    },
  },
  withSmsConfiguration(SmsConfiguration): {
    assert std.isObject(SmsConfiguration) : 'SmsConfiguration must be a object',
    Properties+::: {
      SmsConfiguration: SmsConfiguration,
    },
  },
  withSmsVerificationMessage(SmsVerificationMessage): {
    assert std.isString(SmsVerificationMessage) : 'SmsVerificationMessage must be a string',
    Properties+::: {
      SmsVerificationMessage: SmsVerificationMessage,
    },
  },
  withWebAuthnRelyingPartyID(WebAuthnRelyingPartyID): {
    assert std.isString(WebAuthnRelyingPartyID) : 'WebAuthnRelyingPartyID must be a string',
    Properties+::: {
      WebAuthnRelyingPartyID: WebAuthnRelyingPartyID,
    },
  },
  withWebAuthnUserVerification(WebAuthnUserVerification): {
    assert std.isString(WebAuthnUserVerification) : 'WebAuthnUserVerification must be a string',
    Properties+::: {
      WebAuthnUserVerification: WebAuthnUserVerification,
    },
  },
  withSchema(Schema): {
    Properties+::: {
      Schema: (if std.isArray(Schema) then Schema else [Schema]),
    },
  },
  withSchemaMixin(Schema): {
    Properties+::: {
      Schema+: (if std.isArray(Schema) then Schema else [Schema]),
    },
  },
  withUsernameConfiguration(UsernameConfiguration): {
    assert std.isObject(UsernameConfiguration) : 'UsernameConfiguration must be a object',
    Properties+::: {
      UsernameConfiguration: UsernameConfiguration,
    },
  },
  withUserAttributeUpdateSettings(UserAttributeUpdateSettings): {
    assert std.isObject(UserAttributeUpdateSettings) : 'UserAttributeUpdateSettings must be a object',
    Properties+::: {
      UserAttributeUpdateSettings: UserAttributeUpdateSettings,
    },
  },
  withUserPoolTags(UserPoolTags): {
    assert std.isObject(UserPoolTags) : 'UserPoolTags must be a object',
    Properties+::: {
      UserPoolTags: UserPoolTags,
    },
  },
  withVerificationMessageTemplate(VerificationMessageTemplate): {
    assert std.isObject(VerificationMessageTemplate) : 'VerificationMessageTemplate must be a object',
    Properties+::: {
      VerificationMessageTemplate: VerificationMessageTemplate,
    },
  },
  withUserPoolAddOns(UserPoolAddOns): {
    assert std.isObject(UserPoolAddOns) : 'UserPoolAddOns must be a object',
    Properties+::: {
      UserPoolAddOns: UserPoolAddOns,
    },
  },
  withProviderName(ProviderName): {
    assert std.isString(ProviderName) : 'ProviderName must be a string',
    Properties+::: {
      ProviderName: ProviderName,
    },
  },
  withProviderURL(ProviderURL): {
    assert std.isString(ProviderURL) : 'ProviderURL must be a string',
    Properties+::: {
      ProviderURL: ProviderURL,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withUserPoolId(UserPoolId): {
    assert std.isString(UserPoolId) : 'UserPoolId must be a string',
    Properties+::: {
      UserPoolId: UserPoolId,
    },
  },
  withUserPoolTier(UserPoolTier): {
    assert std.isString(UserPoolTier) : 'UserPoolTier must be a string',
    Properties+::: {
      UserPoolTier: UserPoolTier,
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
