{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPool',
  },
  setUserPoolName(UserPoolName): {
    Properties+::: {
      UserPoolName:
        if !std.isString(UserPoolName) then (error 'UserPoolName must be a string')
        else if std.isEmpty(UserPoolName) then (error 'UserPoolName must be not empty')
        else if std.length(UserPoolName) < 1 then error ('UserPoolName should have at least 1 characters')
        else if std.length(UserPoolName) > 128 then error ('UserPoolName should have not more than 128 characters')
        else UserPoolName,
    },
  },
  setPolicies(Policies): {
    Properties+::: {
      Policies:
        if !std.isObject(Policies) then (error 'Policies must be an object')
        else Policies,
    },
  },
  setAccountRecoverySetting(AccountRecoverySetting): {
    Properties+::: {
      AccountRecoverySetting:
        if !std.isObject(AccountRecoverySetting) then (error 'AccountRecoverySetting must be an object')
        else AccountRecoverySetting,
    },
  },
  setAdminCreateUserConfig(AdminCreateUserConfig): {
    Properties+::: {
      AdminCreateUserConfig:
        if !std.isObject(AdminCreateUserConfig) then (error 'AdminCreateUserConfig must be an object')
        else AdminCreateUserConfig,
    },
  },
  setAliasAttributes(AliasAttributes): {
    Properties+::: {
      AliasAttributes:
        if !std.isArray(AliasAttributes) then (error 'AliasAttributes must be an array')
        else AliasAttributes,
    },
  },
  pushAliasAttributes(AliasAttributes): {
    Properties+::: {
      AliasAttributes+: AliasAttributes,
    },
  },
  setUsernameAttributes(UsernameAttributes): {
    Properties+::: {
      UsernameAttributes:
        if !std.isArray(UsernameAttributes) then (error 'UsernameAttributes must be an array')
        else UsernameAttributes,
    },
  },
  pushUsernameAttributes(UsernameAttributes): {
    Properties+::: {
      UsernameAttributes+: UsernameAttributes,
    },
  },
  setAutoVerifiedAttributes(AutoVerifiedAttributes): {
    Properties+::: {
      AutoVerifiedAttributes:
        if !std.isArray(AutoVerifiedAttributes) then (error 'AutoVerifiedAttributes must be an array')
        else AutoVerifiedAttributes,
    },
  },
  pushAutoVerifiedAttributes(AutoVerifiedAttributes): {
    Properties+::: {
      AutoVerifiedAttributes+: AutoVerifiedAttributes,
    },
  },
  setDeviceConfiguration(DeviceConfiguration): {
    Properties+::: {
      DeviceConfiguration:
        if !std.isObject(DeviceConfiguration) then (error 'DeviceConfiguration must be an object')
        else DeviceConfiguration,
    },
  },
  setEmailConfiguration(EmailConfiguration): {
    Properties+::: {
      EmailConfiguration:
        if !std.isObject(EmailConfiguration) then (error 'EmailConfiguration must be an object')
        else EmailConfiguration,
    },
  },
  setEmailVerificationMessage(EmailVerificationMessage): {
    Properties+::: {
      EmailVerificationMessage:
        if !std.isString(EmailVerificationMessage) then (error 'EmailVerificationMessage must be a string')
        else if std.isEmpty(EmailVerificationMessage) then (error 'EmailVerificationMessage must be not empty')
        else if std.length(EmailVerificationMessage) < 6 then error ('EmailVerificationMessage should have at least 6 characters')
        else if std.length(EmailVerificationMessage) > 20000 then error ('EmailVerificationMessage should have not more than 20000 characters')
        else EmailVerificationMessage,
    },
  },
  setEmailVerificationSubject(EmailVerificationSubject): {
    Properties+::: {
      EmailVerificationSubject:
        if !std.isString(EmailVerificationSubject) then (error 'EmailVerificationSubject must be a string')
        else if std.isEmpty(EmailVerificationSubject) then (error 'EmailVerificationSubject must be not empty')
        else if std.length(EmailVerificationSubject) < 1 then error ('EmailVerificationSubject should have at least 1 characters')
        else if std.length(EmailVerificationSubject) > 140 then error ('EmailVerificationSubject should have not more than 140 characters')
        else EmailVerificationSubject,
    },
  },
  setDeletionProtection(DeletionProtection): {
    Properties+::: {
      DeletionProtection:
        if !std.isString(DeletionProtection) then (error 'DeletionProtection must be a string')
        else if std.isEmpty(DeletionProtection) then (error 'DeletionProtection must be not empty')
        else DeletionProtection,
    },
  },
  setLambdaConfig(LambdaConfig): {
    Properties+::: {
      LambdaConfig:
        if !std.isObject(LambdaConfig) then (error 'LambdaConfig must be an object')
        else LambdaConfig,
    },
  },
  setMfaConfiguration(MfaConfiguration): {
    Properties+::: {
      MfaConfiguration:
        if !std.isString(MfaConfiguration) then (error 'MfaConfiguration must be a string')
        else if std.isEmpty(MfaConfiguration) then (error 'MfaConfiguration must be not empty')
        else MfaConfiguration,
    },
  },
  setEnabledMfas(EnabledMfas): {
    Properties+::: {
      EnabledMfas:
        if !std.isArray(EnabledMfas) then (error 'EnabledMfas must be an array')
        else EnabledMfas,
    },
  },
  pushEnabledMfas(EnabledMfas): {
    Properties+::: {
      EnabledMfas+: EnabledMfas,
    },
  },
  setSmsAuthenticationMessage(SmsAuthenticationMessage): {
    Properties+::: {
      SmsAuthenticationMessage:
        if !std.isString(SmsAuthenticationMessage) then (error 'SmsAuthenticationMessage must be a string')
        else if std.isEmpty(SmsAuthenticationMessage) then (error 'SmsAuthenticationMessage must be not empty')
        else if std.length(SmsAuthenticationMessage) < 6 then error ('SmsAuthenticationMessage should have at least 6 characters')
        else if std.length(SmsAuthenticationMessage) > 140 then error ('SmsAuthenticationMessage should have not more than 140 characters')
        else SmsAuthenticationMessage,
    },
  },
  setEmailAuthenticationMessage(EmailAuthenticationMessage): {
    Properties+::: {
      EmailAuthenticationMessage:
        if !std.isString(EmailAuthenticationMessage) then (error 'EmailAuthenticationMessage must be a string')
        else if std.isEmpty(EmailAuthenticationMessage) then (error 'EmailAuthenticationMessage must be not empty')
        else if std.length(EmailAuthenticationMessage) < 6 then error ('EmailAuthenticationMessage should have at least 6 characters')
        else if std.length(EmailAuthenticationMessage) > 20000 then error ('EmailAuthenticationMessage should have not more than 20000 characters')
        else EmailAuthenticationMessage,
    },
  },
  setEmailAuthenticationSubject(EmailAuthenticationSubject): {
    Properties+::: {
      EmailAuthenticationSubject:
        if !std.isString(EmailAuthenticationSubject) then (error 'EmailAuthenticationSubject must be a string')
        else if std.isEmpty(EmailAuthenticationSubject) then (error 'EmailAuthenticationSubject must be not empty')
        else if std.length(EmailAuthenticationSubject) < 1 then error ('EmailAuthenticationSubject should have at least 1 characters')
        else if std.length(EmailAuthenticationSubject) > 140 then error ('EmailAuthenticationSubject should have not more than 140 characters')
        else EmailAuthenticationSubject,
    },
  },
  setSmsConfiguration(SmsConfiguration): {
    Properties+::: {
      SmsConfiguration:
        if !std.isObject(SmsConfiguration) then (error 'SmsConfiguration must be an object')
        else SmsConfiguration,
    },
  },
  setSmsVerificationMessage(SmsVerificationMessage): {
    Properties+::: {
      SmsVerificationMessage:
        if !std.isString(SmsVerificationMessage) then (error 'SmsVerificationMessage must be a string')
        else if std.isEmpty(SmsVerificationMessage) then (error 'SmsVerificationMessage must be not empty')
        else if std.length(SmsVerificationMessage) < 6 then error ('SmsVerificationMessage should have at least 6 characters')
        else if std.length(SmsVerificationMessage) > 140 then error ('SmsVerificationMessage should have not more than 140 characters')
        else SmsVerificationMessage,
    },
  },
  setWebAuthnRelyingPartyID(WebAuthnRelyingPartyID): {
    Properties+::: {
      WebAuthnRelyingPartyID:
        if !std.isString(WebAuthnRelyingPartyID) then (error 'WebAuthnRelyingPartyID must be a string')
        else if std.isEmpty(WebAuthnRelyingPartyID) then (error 'WebAuthnRelyingPartyID must be not empty')
        else if std.length(WebAuthnRelyingPartyID) < 1 then error ('WebAuthnRelyingPartyID should have at least 1 characters')
        else if std.length(WebAuthnRelyingPartyID) > 63 then error ('WebAuthnRelyingPartyID should have not more than 63 characters')
        else WebAuthnRelyingPartyID,
    },
  },
  setWebAuthnUserVerification(WebAuthnUserVerification): {
    Properties+::: {
      WebAuthnUserVerification:
        if !std.isString(WebAuthnUserVerification) then (error 'WebAuthnUserVerification must be a string')
        else if std.isEmpty(WebAuthnUserVerification) then (error 'WebAuthnUserVerification must be not empty')
        else if std.length(WebAuthnUserVerification) < 1 then error ('WebAuthnUserVerification should have at least 1 characters')
        else if std.length(WebAuthnUserVerification) > 9 then error ('WebAuthnUserVerification should have not more than 9 characters')
        else WebAuthnUserVerification,
    },
  },
  setSchema(Schema): {
    Properties+::: {
      Schema:
        if !std.isArray(Schema) then (error 'Schema must be an array')
        else Schema,
    },
  },
  pushSchema(Schema): {
    Properties+::: {
      Schema+: Schema,
    },
  },
  setUsernameConfiguration(UsernameConfiguration): {
    Properties+::: {
      UsernameConfiguration:
        if !std.isObject(UsernameConfiguration) then (error 'UsernameConfiguration must be an object')
        else UsernameConfiguration,
    },
  },
  setUserAttributeUpdateSettings(UserAttributeUpdateSettings): {
    Properties+::: {
      UserAttributeUpdateSettings:
        if !std.isObject(UserAttributeUpdateSettings) then (error 'UserAttributeUpdateSettings must be an object')
        else if !std.objectHas(UserAttributeUpdateSettings, 'AttributesRequireVerificationBeforeUpdate') then (error ' have attribute AttributesRequireVerificationBeforeUpdate')
        else UserAttributeUpdateSettings,
    },
  },
  setUserPoolTags(UserPoolTags): {
    Properties+::: {
      UserPoolTags:
        if !std.isObject(UserPoolTags) then (error 'UserPoolTags must be an object')
        else UserPoolTags,
    },
  },
  setVerificationMessageTemplate(VerificationMessageTemplate): {
    Properties+::: {
      VerificationMessageTemplate:
        if !std.isObject(VerificationMessageTemplate) then (error 'VerificationMessageTemplate must be an object')
        else VerificationMessageTemplate,
    },
  },
  setUserPoolAddOns(UserPoolAddOns): {
    Properties+::: {
      UserPoolAddOns:
        if !std.isObject(UserPoolAddOns) then (error 'UserPoolAddOns must be an object')
        else UserPoolAddOns,
    },
  },
  setProviderName(ProviderName): {
    Properties+::: {
      ProviderName:
        if !std.isString(ProviderName) then (error 'ProviderName must be a string')
        else if std.isEmpty(ProviderName) then (error 'ProviderName must be not empty')
        else ProviderName,
    },
  },
  setProviderURL(ProviderURL): {
    Properties+::: {
      ProviderURL:
        if !std.isString(ProviderURL) then (error 'ProviderURL must be a string')
        else if std.isEmpty(ProviderURL) then (error 'ProviderURL must be not empty')
        else ProviderURL,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setUserPoolId(UserPoolId): {
    Properties+::: {
      UserPoolId:
        if !std.isString(UserPoolId) then (error 'UserPoolId must be a string')
        else if std.isEmpty(UserPoolId) then (error 'UserPoolId must be not empty')
        else UserPoolId,
    },
  },
  setUserPoolTier(UserPoolTier): {
    Properties+::: {
      UserPoolTier:
        if !std.isString(UserPoolTier) then (error 'UserPoolTier must be a string')
        else if std.isEmpty(UserPoolTier) then (error 'UserPoolTier must be not empty')
        else if UserPoolTier != 'LITE' && UserPoolTier != 'ESSENTIALS' && UserPoolTier != 'PLUS' then (error "UserPoolTier should be 'LITE' or 'ESSENTIALS' or 'PLUS'")
        else UserPoolTier,
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
