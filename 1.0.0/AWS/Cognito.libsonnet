local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  IdentityPool: {
    '#': d.pkg(
      name='IdentityPool',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::IdentityPool',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::IdentityPool Resource
        * AllowUnauthenticatedIdentities 
      |||,
      args=[
        d.arg('AllowUnauthenticatedIdentities', 'd.T.boolean'),
      ]
    ),
    new(
      AllowUnauthenticatedIdentities,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(AllowUnauthenticatedIdentities) : 'AllowUnauthenticatedIdentities must be a boolean',
        AllowUnauthenticatedIdentities: AllowUnauthenticatedIdentities,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::IdentityPool',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPushSync': d.fn('`withPushSync` PushSync ', [d.arg('PushSync', d.T.object)]),
    withPushSync(PushSync): {
      assert std.isObject(PushSync) : 'PushSync must be a object',
      Properties+::: { PushSync: PushSync },
    },
    '#withCognitoIdentityProviders': d.fn('`withCognitoIdentityProviders` CognitoIdentityProviders ', [d.arg('CognitoIdentityProviders', d.T.array)]),
    withCognitoIdentityProviders(CognitoIdentityProviders): {
      assert std.isArray(CognitoIdentityProviders) : 'CognitoIdentityProviders must be a array',
      Properties+::: { CognitoIdentityProviders: CognitoIdentityProviders },
    },
    '#withDeveloperProviderName': d.fn('`withDeveloperProviderName` DeveloperProviderName ', [d.arg('DeveloperProviderName', d.T.string)]),
    withDeveloperProviderName(DeveloperProviderName): {
      assert std.isString(DeveloperProviderName) : 'DeveloperProviderName must be a string',
      Properties+::: { DeveloperProviderName: DeveloperProviderName },
    },
    '#withCognitoStreams': d.fn('`withCognitoStreams` CognitoStreams ', [d.arg('CognitoStreams', d.T.object)]),
    withCognitoStreams(CognitoStreams): {
      assert std.isObject(CognitoStreams) : 'CognitoStreams must be a object',
      Properties+::: { CognitoStreams: CognitoStreams },
    },
    '#withSupportedLoginProviders': d.fn('`withSupportedLoginProviders` SupportedLoginProviders ', [d.arg('SupportedLoginProviders', d.T.object)]),
    withSupportedLoginProviders(SupportedLoginProviders): {
      assert std.isObject(SupportedLoginProviders) : 'SupportedLoginProviders must be a object',
      Properties+::: { SupportedLoginProviders: SupportedLoginProviders },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withCognitoEvents': d.fn('`withCognitoEvents` CognitoEvents ', [d.arg('CognitoEvents', d.T.object)]),
    withCognitoEvents(CognitoEvents): {
      assert std.isObject(CognitoEvents) : 'CognitoEvents must be a object',
      Properties+::: { CognitoEvents: CognitoEvents },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIdentityPoolName': d.fn('`withIdentityPoolName` IdentityPoolName ', [d.arg('IdentityPoolName', d.T.string)]),
    withIdentityPoolName(IdentityPoolName): {
      assert std.isString(IdentityPoolName) : 'IdentityPoolName must be a string',
      Properties+::: { IdentityPoolName: IdentityPoolName },
    },
    '#withSamlProviderARNs': d.fn('`withSamlProviderARNs` SamlProviderARNs ', [d.arg('SamlProviderARNs', d.T.array)]),
    withSamlProviderARNs(SamlProviderARNs): {
      assert std.isArray(SamlProviderARNs) : 'SamlProviderARNs must be a array',
      Properties+::: { SamlProviderARNs: SamlProviderARNs },
    },
    '#withOpenIdConnectProviderARNs': d.fn('`withOpenIdConnectProviderARNs` OpenIdConnectProviderARNs ', [d.arg('OpenIdConnectProviderARNs', d.T.array)]),
    withOpenIdConnectProviderARNs(OpenIdConnectProviderARNs): {
      assert std.isArray(OpenIdConnectProviderARNs) : 'OpenIdConnectProviderARNs must be a array',
      Properties+::: { OpenIdConnectProviderARNs: OpenIdConnectProviderARNs },
    },
    '#withAllowClassicFlow': d.fn('`withAllowClassicFlow` AllowClassicFlow ', [d.arg('AllowClassicFlow', d.T.boolean)]),
    withAllowClassicFlow(AllowClassicFlow): {
      assert std.isBoolean(AllowClassicFlow) : 'AllowClassicFlow must be a boolean',
      Properties+::: { AllowClassicFlow: AllowClassicFlow },
    },
    '#withIdentityPoolTags': d.fn('`withIdentityPoolTags` IdentityPoolTags ', [d.arg('IdentityPoolTags', d.T.array)]),
    withIdentityPoolTags(IdentityPoolTags): {
      assert std.isArray(IdentityPoolTags) : 'IdentityPoolTags must be a array',
      Properties+::: { IdentityPoolTags: IdentityPoolTags },
    },
  },
  IdentityPoolPrincipalTag: {
    '#': d.pkg(
      name='IdentityPoolPrincipalTag',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::IdentityPoolPrincipalTag',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::IdentityPoolPrincipalTag Resource
        * IdentityPoolId 
        * IdentityProviderName 
      |||,
      args=[
        d.arg('IdentityPoolId', 'd.T.string'),
        d.arg('IdentityProviderName', 'd.T.string'),
      ]
    ),
    new(
      IdentityPoolId,
      IdentityProviderName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IdentityPoolId) : 'IdentityPoolId must be a string',
        IdentityPoolId: IdentityPoolId,
        assert std.isString(IdentityProviderName) : 'IdentityProviderName must be a string',
        IdentityProviderName: IdentityProviderName,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::IdentityPoolPrincipalTag',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUseDefaults': d.fn('`withUseDefaults` UseDefaults ', [d.arg('UseDefaults', d.T.boolean)]),
    withUseDefaults(UseDefaults): {
      assert std.isBoolean(UseDefaults) : 'UseDefaults must be a boolean',
      Properties+::: { UseDefaults: UseDefaults },
    },
    '#withPrincipalTags': d.fn('`withPrincipalTags` PrincipalTags ', [d.arg('PrincipalTags', d.T.object)]),
    withPrincipalTags(PrincipalTags): {
      assert std.isObject(PrincipalTags) : 'PrincipalTags must be a object',
      Properties+::: { PrincipalTags: PrincipalTags },
    },
  },
  IdentityPoolRoleAttachment: {
    '#': d.pkg(
      name='IdentityPoolRoleAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::IdentityPoolRoleAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::IdentityPoolRoleAttachment Resource
        * IdentityPoolId 
      |||,
      args=[
        d.arg('IdentityPoolId', 'd.T.string'),
      ]
    ),
    new(
      IdentityPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IdentityPoolId) : 'IdentityPoolId must be a string',
        IdentityPoolId: IdentityPoolId,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::IdentityPoolRoleAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRoles': d.fn('`withRoles` Roles ', [d.arg('Roles')]),
    withRoles(Roles): {
      // Type: undefined
      Properties+::: { Roles: Roles },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRoleMappings': d.fn('`withRoleMappings` RoleMappings ', [d.arg('RoleMappings')]),
    withRoleMappings(RoleMappings): {
      // Type: undefined
      Properties+::: { RoleMappings: RoleMappings },
    },
  },
  LogDeliveryConfiguration: {
    '#': d.pkg(
      name='LogDeliveryConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::LogDeliveryConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::LogDeliveryConfiguration Resource
        * UserPoolId 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::LogDeliveryConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLogConfigurations': d.fn('`withLogConfigurations` LogConfigurations ', [d.arg('LogConfigurations', d.T.array)]),
    withLogConfigurations(LogConfigurations): {
      assert std.isArray(LogConfigurations) : 'LogConfigurations must be a array',
      Properties+::: { LogConfigurations: LogConfigurations },
    },
  },
  ManagedLoginBranding: {
    '#': d.pkg(
      name='ManagedLoginBranding',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::ManagedLoginBranding',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::ManagedLoginBranding Resource
        * UserPoolId 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::ManagedLoginBranding',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClientId': d.fn('`withClientId` ClientId ', [d.arg('ClientId', d.T.string)]),
    withClientId(ClientId): {
      assert std.isString(ClientId) : 'ClientId must be a string',
      Properties+::: { ClientId: ClientId },
    },
    '#withUseCognitoProvidedValues': d.fn('`withUseCognitoProvidedValues` UseCognitoProvidedValues ', [d.arg('UseCognitoProvidedValues', d.T.boolean)]),
    withUseCognitoProvidedValues(UseCognitoProvidedValues): {
      assert std.isBoolean(UseCognitoProvidedValues) : 'UseCognitoProvidedValues must be a boolean',
      Properties+::: { UseCognitoProvidedValues: UseCognitoProvidedValues },
    },
    '#withSettings': d.fn('`withSettings` Settings ', [d.arg('Settings', d.T.object)]),
    withSettings(Settings): {
      assert std.isObject(Settings) : 'Settings must be a object',
      Properties+::: { Settings: Settings },
    },
    '#withAssets': d.fn('`withAssets` Assets ', [d.arg('Assets', d.T.array)]),
    withAssets(Assets): {
      assert std.isArray(Assets) : 'Assets must be a array',
      Properties+::: { Assets: Assets },
    },
    '#withManagedLoginBrandingId': d.fn('`withManagedLoginBrandingId` ManagedLoginBrandingId ', [d.arg('ManagedLoginBrandingId', d.T.string)]),
    withManagedLoginBrandingId(ManagedLoginBrandingId): {
      assert std.isString(ManagedLoginBrandingId) : 'ManagedLoginBrandingId must be a string',
      Properties+::: { ManagedLoginBrandingId: ManagedLoginBrandingId },
    },
    '#withReturnMergedResources': d.fn('`withReturnMergedResources` ReturnMergedResources ', [d.arg('ReturnMergedResources', d.T.boolean)]),
    withReturnMergedResources(ReturnMergedResources): {
      assert std.isBoolean(ReturnMergedResources) : 'ReturnMergedResources must be a boolean',
      Properties+::: { ReturnMergedResources: ReturnMergedResources },
    },
  },
  UserPool: {
    '#': d.pkg(
      name='UserPool',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Definition of AWS::Cognito::UserPool Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPool Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPool',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUserPoolName': d.fn('`withUserPoolName` UserPoolName ', [d.arg('UserPoolName', d.T.string)]),
    withUserPoolName(UserPoolName): {
      assert std.isString(UserPoolName) : 'UserPoolName must be a string',
      Properties+::: { UserPoolName: UserPoolName },
    },
    '#withPolicies': d.fn('`withPolicies` Policies ', [d.arg('Policies', d.T.object)]),
    withPolicies(Policies): {
      assert std.isObject(Policies) : 'Policies must be a object',
      Properties+::: { Policies: Policies },
    },
    '#withAccountRecoverySetting': d.fn('`withAccountRecoverySetting` AccountRecoverySetting ', [d.arg('AccountRecoverySetting', d.T.object)]),
    withAccountRecoverySetting(AccountRecoverySetting): {
      assert std.isObject(AccountRecoverySetting) : 'AccountRecoverySetting must be a object',
      Properties+::: { AccountRecoverySetting: AccountRecoverySetting },
    },
    '#withAdminCreateUserConfig': d.fn('`withAdminCreateUserConfig` AdminCreateUserConfig ', [d.arg('AdminCreateUserConfig', d.T.object)]),
    withAdminCreateUserConfig(AdminCreateUserConfig): {
      assert std.isObject(AdminCreateUserConfig) : 'AdminCreateUserConfig must be a object',
      Properties+::: { AdminCreateUserConfig: AdminCreateUserConfig },
    },
    '#withAliasAttributes': d.fn('`withAliasAttributes` AliasAttributes ', [d.arg('AliasAttributes', d.T.array)]),
    withAliasAttributes(AliasAttributes): {
      assert std.isArray(AliasAttributes) : 'AliasAttributes must be a array',
      Properties+::: { AliasAttributes: AliasAttributes },
    },
    '#withUsernameAttributes': d.fn('`withUsernameAttributes` UsernameAttributes ', [d.arg('UsernameAttributes', d.T.array)]),
    withUsernameAttributes(UsernameAttributes): {
      assert std.isArray(UsernameAttributes) : 'UsernameAttributes must be a array',
      Properties+::: { UsernameAttributes: UsernameAttributes },
    },
    '#withAutoVerifiedAttributes': d.fn('`withAutoVerifiedAttributes` AutoVerifiedAttributes ', [d.arg('AutoVerifiedAttributes', d.T.array)]),
    withAutoVerifiedAttributes(AutoVerifiedAttributes): {
      assert std.isArray(AutoVerifiedAttributes) : 'AutoVerifiedAttributes must be a array',
      Properties+::: { AutoVerifiedAttributes: AutoVerifiedAttributes },
    },
    '#withDeviceConfiguration': d.fn('`withDeviceConfiguration` DeviceConfiguration ', [d.arg('DeviceConfiguration', d.T.object)]),
    withDeviceConfiguration(DeviceConfiguration): {
      assert std.isObject(DeviceConfiguration) : 'DeviceConfiguration must be a object',
      Properties+::: { DeviceConfiguration: DeviceConfiguration },
    },
    '#withEmailConfiguration': d.fn('`withEmailConfiguration` EmailConfiguration ', [d.arg('EmailConfiguration', d.T.object)]),
    withEmailConfiguration(EmailConfiguration): {
      assert std.isObject(EmailConfiguration) : 'EmailConfiguration must be a object',
      Properties+::: { EmailConfiguration: EmailConfiguration },
    },
    '#withEmailVerificationMessage': d.fn('`withEmailVerificationMessage` EmailVerificationMessage ', [d.arg('EmailVerificationMessage', d.T.string)]),
    withEmailVerificationMessage(EmailVerificationMessage): {
      assert std.isString(EmailVerificationMessage) : 'EmailVerificationMessage must be a string',
      Properties+::: { EmailVerificationMessage: EmailVerificationMessage },
    },
    '#withEmailVerificationSubject': d.fn('`withEmailVerificationSubject` EmailVerificationSubject ', [d.arg('EmailVerificationSubject', d.T.string)]),
    withEmailVerificationSubject(EmailVerificationSubject): {
      assert std.isString(EmailVerificationSubject) : 'EmailVerificationSubject must be a string',
      Properties+::: { EmailVerificationSubject: EmailVerificationSubject },
    },
    '#withDeletionProtection': d.fn('`withDeletionProtection` DeletionProtection ', [d.arg('DeletionProtection', d.T.string)]),
    withDeletionProtection(DeletionProtection): {
      assert std.isString(DeletionProtection) : 'DeletionProtection must be a string',
      Properties+::: { DeletionProtection: DeletionProtection },
    },
    '#withLambdaConfig': d.fn('`withLambdaConfig` LambdaConfig ', [d.arg('LambdaConfig', d.T.object)]),
    withLambdaConfig(LambdaConfig): {
      assert std.isObject(LambdaConfig) : 'LambdaConfig must be a object',
      Properties+::: { LambdaConfig: LambdaConfig },
    },
    '#withMfaConfiguration': d.fn('`withMfaConfiguration` MfaConfiguration ', [d.arg('MfaConfiguration', d.T.string)]),
    withMfaConfiguration(MfaConfiguration): {
      assert std.isString(MfaConfiguration) : 'MfaConfiguration must be a string',
      Properties+::: { MfaConfiguration: MfaConfiguration },
    },
    '#withEnabledMfas': d.fn('`withEnabledMfas` EnabledMfas ', [d.arg('EnabledMfas', d.T.array)]),
    withEnabledMfas(EnabledMfas): {
      assert std.isArray(EnabledMfas) : 'EnabledMfas must be a array',
      Properties+::: { EnabledMfas: EnabledMfas },
    },
    '#withSmsAuthenticationMessage': d.fn('`withSmsAuthenticationMessage` SmsAuthenticationMessage ', [d.arg('SmsAuthenticationMessage', d.T.string)]),
    withSmsAuthenticationMessage(SmsAuthenticationMessage): {
      assert std.isString(SmsAuthenticationMessage) : 'SmsAuthenticationMessage must be a string',
      Properties+::: { SmsAuthenticationMessage: SmsAuthenticationMessage },
    },
    '#withEmailAuthenticationMessage': d.fn('`withEmailAuthenticationMessage` EmailAuthenticationMessage ', [d.arg('EmailAuthenticationMessage', d.T.string)]),
    withEmailAuthenticationMessage(EmailAuthenticationMessage): {
      assert std.isString(EmailAuthenticationMessage) : 'EmailAuthenticationMessage must be a string',
      Properties+::: { EmailAuthenticationMessage: EmailAuthenticationMessage },
    },
    '#withEmailAuthenticationSubject': d.fn('`withEmailAuthenticationSubject` EmailAuthenticationSubject ', [d.arg('EmailAuthenticationSubject', d.T.string)]),
    withEmailAuthenticationSubject(EmailAuthenticationSubject): {
      assert std.isString(EmailAuthenticationSubject) : 'EmailAuthenticationSubject must be a string',
      Properties+::: { EmailAuthenticationSubject: EmailAuthenticationSubject },
    },
    '#withSmsConfiguration': d.fn('`withSmsConfiguration` SmsConfiguration ', [d.arg('SmsConfiguration', d.T.object)]),
    withSmsConfiguration(SmsConfiguration): {
      assert std.isObject(SmsConfiguration) : 'SmsConfiguration must be a object',
      Properties+::: { SmsConfiguration: SmsConfiguration },
    },
    '#withSmsVerificationMessage': d.fn('`withSmsVerificationMessage` SmsVerificationMessage ', [d.arg('SmsVerificationMessage', d.T.string)]),
    withSmsVerificationMessage(SmsVerificationMessage): {
      assert std.isString(SmsVerificationMessage) : 'SmsVerificationMessage must be a string',
      Properties+::: { SmsVerificationMessage: SmsVerificationMessage },
    },
    '#withWebAuthnRelyingPartyID': d.fn('`withWebAuthnRelyingPartyID` WebAuthnRelyingPartyID ', [d.arg('WebAuthnRelyingPartyID', d.T.string)]),
    withWebAuthnRelyingPartyID(WebAuthnRelyingPartyID): {
      assert std.isString(WebAuthnRelyingPartyID) : 'WebAuthnRelyingPartyID must be a string',
      Properties+::: { WebAuthnRelyingPartyID: WebAuthnRelyingPartyID },
    },
    '#withWebAuthnUserVerification': d.fn('`withWebAuthnUserVerification` WebAuthnUserVerification ', [d.arg('WebAuthnUserVerification', d.T.string)]),
    withWebAuthnUserVerification(WebAuthnUserVerification): {
      assert std.isString(WebAuthnUserVerification) : 'WebAuthnUserVerification must be a string',
      Properties+::: { WebAuthnUserVerification: WebAuthnUserVerification },
    },
    '#withSchema': d.fn('`withSchema` Schema ', [d.arg('Schema', d.T.array)]),
    withSchema(Schema): {
      assert std.isArray(Schema) : 'Schema must be a array',
      Properties+::: { Schema: Schema },
    },
    '#withUsernameConfiguration': d.fn('`withUsernameConfiguration` UsernameConfiguration ', [d.arg('UsernameConfiguration', d.T.object)]),
    withUsernameConfiguration(UsernameConfiguration): {
      assert std.isObject(UsernameConfiguration) : 'UsernameConfiguration must be a object',
      Properties+::: { UsernameConfiguration: UsernameConfiguration },
    },
    '#withUserAttributeUpdateSettings': d.fn('`withUserAttributeUpdateSettings` UserAttributeUpdateSettings ', [d.arg('UserAttributeUpdateSettings', d.T.object)]),
    withUserAttributeUpdateSettings(UserAttributeUpdateSettings): {
      assert std.isObject(UserAttributeUpdateSettings) : 'UserAttributeUpdateSettings must be a object',
      Properties+::: { UserAttributeUpdateSettings: UserAttributeUpdateSettings },
    },
    '#withUserPoolTags': d.fn('`withUserPoolTags` UserPoolTags ', [d.arg('UserPoolTags', d.T.object)]),
    withUserPoolTags(UserPoolTags): {
      assert std.isObject(UserPoolTags) : 'UserPoolTags must be a object',
      Properties+::: { UserPoolTags: UserPoolTags },
    },
    '#withVerificationMessageTemplate': d.fn('`withVerificationMessageTemplate` VerificationMessageTemplate ', [d.arg('VerificationMessageTemplate', d.T.object)]),
    withVerificationMessageTemplate(VerificationMessageTemplate): {
      assert std.isObject(VerificationMessageTemplate) : 'VerificationMessageTemplate must be a object',
      Properties+::: { VerificationMessageTemplate: VerificationMessageTemplate },
    },
    '#withUserPoolAddOns': d.fn('`withUserPoolAddOns` UserPoolAddOns ', [d.arg('UserPoolAddOns', d.T.object)]),
    withUserPoolAddOns(UserPoolAddOns): {
      assert std.isObject(UserPoolAddOns) : 'UserPoolAddOns must be a object',
      Properties+::: { UserPoolAddOns: UserPoolAddOns },
    },
    '#withProviderName': d.fn('`withProviderName` ProviderName ', [d.arg('ProviderName', d.T.string)]),
    withProviderName(ProviderName): {
      assert std.isString(ProviderName) : 'ProviderName must be a string',
      Properties+::: { ProviderName: ProviderName },
    },
    '#withProviderURL': d.fn('`withProviderURL` ProviderURL ', [d.arg('ProviderURL', d.T.string)]),
    withProviderURL(ProviderURL): {
      assert std.isString(ProviderURL) : 'ProviderURL must be a string',
      Properties+::: { ProviderURL: ProviderURL },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withUserPoolId': d.fn('`withUserPoolId` UserPoolId ', [d.arg('UserPoolId', d.T.string)]),
    withUserPoolId(UserPoolId): {
      assert std.isString(UserPoolId) : 'UserPoolId must be a string',
      Properties+::: { UserPoolId: UserPoolId },
    },
    '#withUserPoolTier': d.fn('`withUserPoolTier` UserPoolTier ', [d.arg('UserPoolTier', d.T.string)]),
    withUserPoolTier(UserPoolTier): {
      assert std.isString(UserPoolTier) : 'UserPoolTier must be a string',
      assert UserPoolTier == 'LITE' || UserPoolTier == 'ESSENTIALS' || UserPoolTier == 'PLUS' : "UserPoolTier must be either 'LITE' or 'ESSENTIALS' or 'PLUS'",
      Properties+::: { UserPoolTier: UserPoolTier },
    },
  },
  UserPoolClient: {
    '#': d.pkg(
      name='UserPoolClient',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolClient',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolClient Resource
        * UserPoolId 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolClient',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClientName': d.fn('`withClientName` ClientName ', [d.arg('ClientName', d.T.string)]),
    withClientName(ClientName): {
      assert std.isString(ClientName) : 'ClientName must be a string',
      Properties+::: { ClientName: ClientName },
    },
    '#withExplicitAuthFlows': d.fn('`withExplicitAuthFlows` ExplicitAuthFlows ', [d.arg('ExplicitAuthFlows', d.T.array)]),
    withExplicitAuthFlows(ExplicitAuthFlows): {
      assert std.isArray(ExplicitAuthFlows) : 'ExplicitAuthFlows must be a array',
      Properties+::: { ExplicitAuthFlows: ExplicitAuthFlows },
    },
    '#withGenerateSecret': d.fn('`withGenerateSecret` GenerateSecret ', [d.arg('GenerateSecret', d.T.boolean)]),
    withGenerateSecret(GenerateSecret): {
      assert std.isBoolean(GenerateSecret) : 'GenerateSecret must be a boolean',
      Properties+::: { GenerateSecret: GenerateSecret },
    },
    '#withReadAttributes': d.fn('`withReadAttributes` ReadAttributes ', [d.arg('ReadAttributes', d.T.array)]),
    withReadAttributes(ReadAttributes): {
      assert std.isArray(ReadAttributes) : 'ReadAttributes must be a array',
      Properties+::: { ReadAttributes: ReadAttributes },
    },
    '#withAuthSessionValidity': d.fn('`withAuthSessionValidity` AuthSessionValidity ', [d.arg('AuthSessionValidity', d.T.integer)]),
    withAuthSessionValidity(AuthSessionValidity): {
      assert std.isNumber(AuthSessionValidity) : 'AuthSessionValidity must be a integer',
      Properties+::: { AuthSessionValidity: AuthSessionValidity },
    },
    '#withRefreshTokenValidity': d.fn('`withRefreshTokenValidity` RefreshTokenValidity ', [d.arg('RefreshTokenValidity', d.T.integer)]),
    withRefreshTokenValidity(RefreshTokenValidity): {
      assert std.isNumber(RefreshTokenValidity) : 'RefreshTokenValidity must be a integer',
      Properties+::: { RefreshTokenValidity: RefreshTokenValidity },
    },
    '#withAccessTokenValidity': d.fn('`withAccessTokenValidity` AccessTokenValidity ', [d.arg('AccessTokenValidity', d.T.integer)]),
    withAccessTokenValidity(AccessTokenValidity): {
      assert std.isNumber(AccessTokenValidity) : 'AccessTokenValidity must be a integer',
      Properties+::: { AccessTokenValidity: AccessTokenValidity },
    },
    '#withIdTokenValidity': d.fn('`withIdTokenValidity` IdTokenValidity ', [d.arg('IdTokenValidity', d.T.integer)]),
    withIdTokenValidity(IdTokenValidity): {
      assert std.isNumber(IdTokenValidity) : 'IdTokenValidity must be a integer',
      Properties+::: { IdTokenValidity: IdTokenValidity },
    },
    '#withTokenValidityUnits': d.fn('`withTokenValidityUnits` TokenValidityUnits ', [d.arg('TokenValidityUnits', d.T.object)]),
    withTokenValidityUnits(TokenValidityUnits): {
      assert std.isObject(TokenValidityUnits) : 'TokenValidityUnits must be a object',
      Properties+::: { TokenValidityUnits: TokenValidityUnits },
    },
    '#withWriteAttributes': d.fn('`withWriteAttributes` WriteAttributes ', [d.arg('WriteAttributes', d.T.array)]),
    withWriteAttributes(WriteAttributes): {
      assert std.isArray(WriteAttributes) : 'WriteAttributes must be a array',
      Properties+::: { WriteAttributes: WriteAttributes },
    },
    '#withAllowedOAuthFlows': d.fn('`withAllowedOAuthFlows` AllowedOAuthFlows ', [d.arg('AllowedOAuthFlows', d.T.array)]),
    withAllowedOAuthFlows(AllowedOAuthFlows): {
      assert std.isArray(AllowedOAuthFlows) : 'AllowedOAuthFlows must be a array',
      Properties+::: { AllowedOAuthFlows: AllowedOAuthFlows },
    },
    '#withAllowedOAuthFlowsUserPoolClient': d.fn('`withAllowedOAuthFlowsUserPoolClient` AllowedOAuthFlowsUserPoolClient ', [d.arg('AllowedOAuthFlowsUserPoolClient', d.T.boolean)]),
    withAllowedOAuthFlowsUserPoolClient(AllowedOAuthFlowsUserPoolClient): {
      assert std.isBoolean(AllowedOAuthFlowsUserPoolClient) : 'AllowedOAuthFlowsUserPoolClient must be a boolean',
      Properties+::: { AllowedOAuthFlowsUserPoolClient: AllowedOAuthFlowsUserPoolClient },
    },
    '#withAllowedOAuthScopes': d.fn('`withAllowedOAuthScopes` AllowedOAuthScopes ', [d.arg('AllowedOAuthScopes', d.T.array)]),
    withAllowedOAuthScopes(AllowedOAuthScopes): {
      assert std.isArray(AllowedOAuthScopes) : 'AllowedOAuthScopes must be a array',
      Properties+::: { AllowedOAuthScopes: AllowedOAuthScopes },
    },
    '#withCallbackURLs': d.fn('`withCallbackURLs` CallbackURLs ', [d.arg('CallbackURLs', d.T.array)]),
    withCallbackURLs(CallbackURLs): {
      assert std.isArray(CallbackURLs) : 'CallbackURLs must be a array',
      Properties+::: { CallbackURLs: CallbackURLs },
    },
    '#withDefaultRedirectURI': d.fn('`withDefaultRedirectURI` DefaultRedirectURI ', [d.arg('DefaultRedirectURI', d.T.string)]),
    withDefaultRedirectURI(DefaultRedirectURI): {
      assert std.isString(DefaultRedirectURI) : 'DefaultRedirectURI must be a string',
      Properties+::: { DefaultRedirectURI: DefaultRedirectURI },
    },
    '#withLogoutURLs': d.fn('`withLogoutURLs` LogoutURLs ', [d.arg('LogoutURLs', d.T.array)]),
    withLogoutURLs(LogoutURLs): {
      assert std.isArray(LogoutURLs) : 'LogoutURLs must be a array',
      Properties+::: { LogoutURLs: LogoutURLs },
    },
    '#withSupportedIdentityProviders': d.fn('`withSupportedIdentityProviders` SupportedIdentityProviders ', [d.arg('SupportedIdentityProviders', d.T.array)]),
    withSupportedIdentityProviders(SupportedIdentityProviders): {
      assert std.isArray(SupportedIdentityProviders) : 'SupportedIdentityProviders must be a array',
      Properties+::: { SupportedIdentityProviders: SupportedIdentityProviders },
    },
    '#withAnalyticsConfiguration': d.fn('`withAnalyticsConfiguration` AnalyticsConfiguration ', [d.arg('AnalyticsConfiguration', d.T.object)]),
    withAnalyticsConfiguration(AnalyticsConfiguration): {
      assert std.isObject(AnalyticsConfiguration) : 'AnalyticsConfiguration must be a object',
      Properties+::: { AnalyticsConfiguration: AnalyticsConfiguration },
    },
    '#withPreventUserExistenceErrors': d.fn('`withPreventUserExistenceErrors` PreventUserExistenceErrors ', [d.arg('PreventUserExistenceErrors', d.T.string)]),
    withPreventUserExistenceErrors(PreventUserExistenceErrors): {
      assert std.isString(PreventUserExistenceErrors) : 'PreventUserExistenceErrors must be a string',
      Properties+::: { PreventUserExistenceErrors: PreventUserExistenceErrors },
    },
    '#withEnableTokenRevocation': d.fn('`withEnableTokenRevocation` EnableTokenRevocation ', [d.arg('EnableTokenRevocation', d.T.boolean)]),
    withEnableTokenRevocation(EnableTokenRevocation): {
      assert std.isBoolean(EnableTokenRevocation) : 'EnableTokenRevocation must be a boolean',
      Properties+::: { EnableTokenRevocation: EnableTokenRevocation },
    },
    '#withEnablePropagateAdditionalUserContextData': d.fn('`withEnablePropagateAdditionalUserContextData` EnablePropagateAdditionalUserContextData ', [d.arg('EnablePropagateAdditionalUserContextData', d.T.boolean)]),
    withEnablePropagateAdditionalUserContextData(EnablePropagateAdditionalUserContextData): {
      assert std.isBoolean(EnablePropagateAdditionalUserContextData) : 'EnablePropagateAdditionalUserContextData must be a boolean',
      Properties+::: { EnablePropagateAdditionalUserContextData: EnablePropagateAdditionalUserContextData },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withClientSecret': d.fn('`withClientSecret` ClientSecret ', [d.arg('ClientSecret', d.T.string)]),
    withClientSecret(ClientSecret): {
      assert std.isString(ClientSecret) : 'ClientSecret must be a string',
      Properties+::: { ClientSecret: ClientSecret },
    },
    '#withClientId': d.fn('`withClientId` ClientId ', [d.arg('ClientId', d.T.string)]),
    withClientId(ClientId): {
      assert std.isString(ClientId) : 'ClientId must be a string',
      Properties+::: { ClientId: ClientId },
    },
  },
  UserPoolDomain: {
    '#': d.pkg(
      name='UserPoolDomain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolDomain',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolDomain Resource
        * UserPoolId 
        * Domain 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
        d.arg('Domain', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
      Domain,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
        assert std.isString(Domain) : 'Domain must be a string',
        Domain: Domain,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolDomain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCloudFrontDistribution': d.fn('`withCloudFrontDistribution` CloudFrontDistribution ', [d.arg('CloudFrontDistribution', d.T.string)]),
    withCloudFrontDistribution(CloudFrontDistribution): {
      assert std.isString(CloudFrontDistribution) : 'CloudFrontDistribution must be a string',
      Properties+::: { CloudFrontDistribution: CloudFrontDistribution },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withManagedLoginVersion': d.fn('`withManagedLoginVersion` ManagedLoginVersion ', [d.arg('ManagedLoginVersion', d.T.integer)]),
    withManagedLoginVersion(ManagedLoginVersion): {
      assert std.isNumber(ManagedLoginVersion) : 'ManagedLoginVersion must be a integer',
      Properties+::: { ManagedLoginVersion: ManagedLoginVersion },
    },
    '#withCustomDomainConfig': d.fn('`withCustomDomainConfig` CustomDomainConfig ', [d.arg('CustomDomainConfig', d.T.object)]),
    withCustomDomainConfig(CustomDomainConfig): {
      assert std.isObject(CustomDomainConfig) : 'CustomDomainConfig must be a object',
      Properties+::: { CustomDomainConfig: CustomDomainConfig },
    },
  },
  UserPoolGroup: {
    '#': d.pkg(
      name='UserPoolGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolGroup Resource
        * UserPoolId 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withGroupName': d.fn('`withGroupName` GroupName ', [d.arg('GroupName', d.T.string)]),
    withGroupName(GroupName): {
      assert std.isString(GroupName) : 'GroupName must be a string',
      Properties+::: { GroupName: GroupName },
    },
    '#withPrecedence': d.fn('`withPrecedence` Precedence ', [d.arg('Precedence', d.T.integer)]),
    withPrecedence(Precedence): {
      assert std.isNumber(Precedence) : 'Precedence must be a integer',
      Properties+::: { Precedence: Precedence },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
  },
  UserPoolIdentityProvider: {
    '#': d.pkg(
      name='UserPoolIdentityProvider',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolIdentityProvider',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolIdentityProvider Resource
        * UserPoolId 
        * ProviderName 
        * ProviderType 
        * ProviderDetails 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
        d.arg('ProviderName', 'd.T.string'),
        d.arg('ProviderType', 'd.T.string'),
        d.arg('ProviderDetails', 'd.T.object'),
      ]
    ),
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
        assert std.isObject(ProviderDetails) : 'ProviderDetails must be a object',
        ProviderDetails: ProviderDetails,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolIdentityProvider',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIdpIdentifiers': d.fn('`withIdpIdentifiers` IdpIdentifiers ', [d.arg('IdpIdentifiers', d.T.array)]),
    withIdpIdentifiers(IdpIdentifiers): {
      assert std.isArray(IdpIdentifiers) : 'IdpIdentifiers must be a array',
      Properties+::: { IdpIdentifiers: IdpIdentifiers },
    },
    '#withAttributeMapping': d.fn('`withAttributeMapping` AttributeMapping ', [d.arg('AttributeMapping', d.T.object)]),
    withAttributeMapping(AttributeMapping): {
      assert std.isObject(AttributeMapping) : 'AttributeMapping must be a object',
      Properties+::: { AttributeMapping: AttributeMapping },
    },
  },
  UserPoolResourceServer: {
    '#': d.pkg(
      name='UserPoolResourceServer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolResourceServer',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolResourceServer Resource
        * UserPoolId 
        * Identifier 
        * Name 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
        d.arg('Identifier', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
      Identifier,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
        assert std.isString(Identifier) : 'Identifier must be a string',
        Identifier: Identifier,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolResourceServer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withScopes': d.fn('`withScopes` Scopes ', [d.arg('Scopes', d.T.array)]),
    withScopes(Scopes): {
      assert std.isArray(Scopes) : 'Scopes must be a array',
      Properties+::: { Scopes: Scopes },
    },
  },
  UserPoolRiskConfigurationAttachment: {
    '#': d.pkg(
      name='UserPoolRiskConfigurationAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolRiskConfigurationAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolRiskConfigurationAttachment Resource
        * UserPoolId 
        * ClientId 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
        d.arg('ClientId', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
      ClientId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
        assert std.isString(ClientId) : 'ClientId must be a string',
        ClientId: ClientId,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolRiskConfigurationAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRiskExceptionConfiguration': d.fn('`withRiskExceptionConfiguration` RiskExceptionConfiguration ', [d.arg('RiskExceptionConfiguration', d.T.object)]),
    withRiskExceptionConfiguration(RiskExceptionConfiguration): {
      assert std.isObject(RiskExceptionConfiguration) : 'RiskExceptionConfiguration must be a object',
      Properties+::: { RiskExceptionConfiguration: RiskExceptionConfiguration },
    },
    '#withCompromisedCredentialsRiskConfiguration': d.fn('`withCompromisedCredentialsRiskConfiguration` CompromisedCredentialsRiskConfiguration ', [d.arg('CompromisedCredentialsRiskConfiguration', d.T.object)]),
    withCompromisedCredentialsRiskConfiguration(CompromisedCredentialsRiskConfiguration): {
      assert std.isObject(CompromisedCredentialsRiskConfiguration) : 'CompromisedCredentialsRiskConfiguration must be a object',
      Properties+::: { CompromisedCredentialsRiskConfiguration: CompromisedCredentialsRiskConfiguration },
    },
    '#withAccountTakeoverRiskConfiguration': d.fn('`withAccountTakeoverRiskConfiguration` AccountTakeoverRiskConfiguration ', [d.arg('AccountTakeoverRiskConfiguration', d.T.object)]),
    withAccountTakeoverRiskConfiguration(AccountTakeoverRiskConfiguration): {
      assert std.isObject(AccountTakeoverRiskConfiguration) : 'AccountTakeoverRiskConfiguration must be a object',
      Properties+::: { AccountTakeoverRiskConfiguration: AccountTakeoverRiskConfiguration },
    },
  },
  UserPoolUICustomizationAttachment: {
    '#': d.pkg(
      name='UserPoolUICustomizationAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolUICustomizationAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolUICustomizationAttachment Resource
        * UserPoolId 
        * ClientId 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
        d.arg('ClientId', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
      ClientId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
        assert std.isString(ClientId) : 'ClientId must be a string',
        ClientId: ClientId,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolUICustomizationAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCSS': d.fn('`withCSS` CSS ', [d.arg('CSS', d.T.string)]),
    withCSS(CSS): {
      assert std.isString(CSS) : 'CSS must be a string',
      Properties+::: { CSS: CSS },
    },
  },
  UserPoolUser: {
    '#': d.pkg(
      name='UserPoolUser',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolUser',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolUser Resource
        * UserPoolId 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolUser',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDesiredDeliveryMediums': d.fn('`withDesiredDeliveryMediums` DesiredDeliveryMediums ', [d.arg('DesiredDeliveryMediums', d.T.array)]),
    withDesiredDeliveryMediums(DesiredDeliveryMediums): {
      assert std.isArray(DesiredDeliveryMediums) : 'DesiredDeliveryMediums must be a array',
      Properties+::: { DesiredDeliveryMediums: DesiredDeliveryMediums },
    },
    '#withForceAliasCreation': d.fn('`withForceAliasCreation` ForceAliasCreation ', [d.arg('ForceAliasCreation', d.T.boolean)]),
    withForceAliasCreation(ForceAliasCreation): {
      assert std.isBoolean(ForceAliasCreation) : 'ForceAliasCreation must be a boolean',
      Properties+::: { ForceAliasCreation: ForceAliasCreation },
    },
    '#withUserAttributes': d.fn('`withUserAttributes` UserAttributes ', [d.arg('UserAttributes', d.T.array)]),
    withUserAttributes(UserAttributes): {
      assert std.isArray(UserAttributes) : 'UserAttributes must be a array',
      Properties+::: { UserAttributes: UserAttributes },
    },
    '#withMessageAction': d.fn('`withMessageAction` MessageAction ', [d.arg('MessageAction', d.T.string)]),
    withMessageAction(MessageAction): {
      assert std.isString(MessageAction) : 'MessageAction must be a string',
      Properties+::: { MessageAction: MessageAction },
    },
    '#withUsername': d.fn('`withUsername` Username ', [d.arg('Username', d.T.string)]),
    withUsername(Username): {
      assert std.isString(Username) : 'Username must be a string',
      Properties+::: { Username: Username },
    },
    '#withValidationData': d.fn('`withValidationData` ValidationData ', [d.arg('ValidationData', d.T.array)]),
    withValidationData(ValidationData): {
      assert std.isArray(ValidationData) : 'ValidationData must be a array',
      Properties+::: { ValidationData: ValidationData },
    },
    '#withClientMetadata': d.fn('`withClientMetadata` ClientMetadata ', [d.arg('ClientMetadata', d.T.object)]),
    withClientMetadata(ClientMetadata): {
      assert std.isObject(ClientMetadata) : 'ClientMetadata must be a object',
      Properties+::: { ClientMetadata: ClientMetadata },
    },
  },
  UserPoolUserToGroupAttachment: {
    '#': d.pkg(
      name='UserPoolUserToGroupAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Cognito.libsonnet',
      help='Resource Type definition for AWS::Cognito::UserPoolUserToGroupAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Cognito::UserPoolUserToGroupAttachment Resource
        * UserPoolId 
        * Username 
        * GroupName 
      |||,
      args=[
        d.arg('UserPoolId', 'd.T.string'),
        d.arg('Username', 'd.T.string'),
        d.arg('GroupName', 'd.T.string'),
      ]
    ),
    new(
      UserPoolId,
      Username,
      GroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserPoolId) : 'UserPoolId must be a string',
        UserPoolId: UserPoolId,
        assert std.isString(Username) : 'Username must be a string',
        Username: Username,
        assert std.isString(GroupName) : 'GroupName must be a string',
        GroupName: GroupName,
      },
      DependsOn:: [],
      Type: 'AWS::Cognito::UserPoolUserToGroupAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
}
