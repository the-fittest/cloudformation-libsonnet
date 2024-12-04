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
    Type: 'AWS::WorkSpacesWeb::Portal',
  },
  withAdditionalEncryptionContext(AdditionalEncryptionContext): {
    assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
    Properties+::: {
      AdditionalEncryptionContext: AdditionalEncryptionContext,
    },
  },
  withAuthenticationType(AuthenticationType): {
    assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
    Properties+::: {
      AuthenticationType: AuthenticationType,
    },
  },
  withBrowserSettingsArn(BrowserSettingsArn): {
    assert std.isString(BrowserSettingsArn) : 'BrowserSettingsArn must be a string',
    Properties+::: {
      BrowserSettingsArn: BrowserSettingsArn,
    },
  },
  withBrowserType(BrowserType): {
    assert std.isString(BrowserType) : 'BrowserType must be a string',
    Properties+::: {
      BrowserType: BrowserType,
    },
  },
  withCreationDate(CreationDate): {
    assert std.isString(CreationDate) : 'CreationDate must be a string',
    Properties+::: {
      CreationDate: CreationDate,
    },
  },
  withCustomerManagedKey(CustomerManagedKey): {
    assert std.isString(CustomerManagedKey) : 'CustomerManagedKey must be a string',
    Properties+::: {
      CustomerManagedKey: CustomerManagedKey,
    },
  },
  withDataProtectionSettingsArn(DataProtectionSettingsArn): {
    assert std.isString(DataProtectionSettingsArn) : 'DataProtectionSettingsArn must be a string',
    Properties+::: {
      DataProtectionSettingsArn: DataProtectionSettingsArn,
    },
  },
  withDisplayName(DisplayName): {
    assert std.isString(DisplayName) : 'DisplayName must be a string',
    Properties+::: {
      DisplayName: DisplayName,
    },
  },
  withInstanceType(InstanceType): {
    assert std.isString(InstanceType) : 'InstanceType must be a string',
    Properties+::: {
      InstanceType: InstanceType,
    },
  },
  withIpAccessSettingsArn(IpAccessSettingsArn): {
    assert std.isString(IpAccessSettingsArn) : 'IpAccessSettingsArn must be a string',
    Properties+::: {
      IpAccessSettingsArn: IpAccessSettingsArn,
    },
  },
  withMaxConcurrentSessions(MaxConcurrentSessions): {
    assert std.isNumber(MaxConcurrentSessions) : 'MaxConcurrentSessions must be a number',
    Properties+::: {
      MaxConcurrentSessions: MaxConcurrentSessions,
    },
  },
  withNetworkSettingsArn(NetworkSettingsArn): {
    assert std.isString(NetworkSettingsArn) : 'NetworkSettingsArn must be a string',
    Properties+::: {
      NetworkSettingsArn: NetworkSettingsArn,
    },
  },
  withPortalArn(PortalArn): {
    assert std.isString(PortalArn) : 'PortalArn must be a string',
    Properties+::: {
      PortalArn: PortalArn,
    },
  },
  withPortalEndpoint(PortalEndpoint): {
    assert std.isString(PortalEndpoint) : 'PortalEndpoint must be a string',
    Properties+::: {
      PortalEndpoint: PortalEndpoint,
    },
  },
  withPortalStatus(PortalStatus): {
    assert std.isString(PortalStatus) : 'PortalStatus must be a string',
    Properties+::: {
      PortalStatus: PortalStatus,
    },
  },
  withRendererType(RendererType): {
    assert std.isString(RendererType) : 'RendererType must be a string',
    Properties+::: {
      RendererType: RendererType,
    },
  },
  withServiceProviderSamlMetadata(ServiceProviderSamlMetadata): {
    assert std.isString(ServiceProviderSamlMetadata) : 'ServiceProviderSamlMetadata must be a string',
    Properties+::: {
      ServiceProviderSamlMetadata: ServiceProviderSamlMetadata,
    },
  },
  withStatusReason(StatusReason): {
    assert std.isString(StatusReason) : 'StatusReason must be a string',
    Properties+::: {
      StatusReason: StatusReason,
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
  withTrustStoreArn(TrustStoreArn): {
    assert std.isString(TrustStoreArn) : 'TrustStoreArn must be a string',
    Properties+::: {
      TrustStoreArn: TrustStoreArn,
    },
  },
  withUserAccessLoggingSettingsArn(UserAccessLoggingSettingsArn): {
    assert std.isString(UserAccessLoggingSettingsArn) : 'UserAccessLoggingSettingsArn must be a string',
    Properties+::: {
      UserAccessLoggingSettingsArn: UserAccessLoggingSettingsArn,
    },
  },
  withUserSettingsArn(UserSettingsArn): {
    assert std.isString(UserSettingsArn) : 'UserSettingsArn must be a string',
    Properties+::: {
      UserSettingsArn: UserSettingsArn,
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
