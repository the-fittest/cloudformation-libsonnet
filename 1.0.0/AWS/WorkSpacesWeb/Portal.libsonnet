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
    Type: 'AWS::WorkSpacesWeb::Portal',
  },
  setAdditionalEncryptionContext(AdditionalEncryptionContext): {
    Properties+::: {
      AdditionalEncryptionContext:
        if !std.isObject(AdditionalEncryptionContext) then (error 'AdditionalEncryptionContext must be an object')
        else AdditionalEncryptionContext,
    },
  },
  setAuthenticationType(AuthenticationType): {
    Properties+::: {
      AuthenticationType:
        if !std.isString(AuthenticationType) then (error 'AuthenticationType must be a string')
        else if std.isEmpty(AuthenticationType) then (error 'AuthenticationType must be not empty')
        else if AuthenticationType != 'Standard' && AuthenticationType != 'IAM_Identity_Center' then (error "AuthenticationType should be 'Standard' or 'IAM_Identity_Center'")
        else AuthenticationType,
    },
  },
  setBrowserSettingsArn(BrowserSettingsArn): {
    Properties+::: {
      BrowserSettingsArn:
        if !std.isString(BrowserSettingsArn) then (error 'BrowserSettingsArn must be a string')
        else if std.isEmpty(BrowserSettingsArn) then (error 'BrowserSettingsArn must be not empty')
        else if std.length(BrowserSettingsArn) < 20 then error ('BrowserSettingsArn should have at least 20 characters')
        else if std.length(BrowserSettingsArn) > 2048 then error ('BrowserSettingsArn should have not more than 2048 characters')
        else BrowserSettingsArn,
    },
  },
  setBrowserType(BrowserType): {
    Properties+::: {
      BrowserType:
        if !std.isString(BrowserType) then (error 'BrowserType must be a string')
        else if std.isEmpty(BrowserType) then (error 'BrowserType must be not empty')
        else if BrowserType != 'Chrome' then (error "BrowserType should be 'Chrome'")
        else BrowserType,
    },
  },
  setCreationDate(CreationDate): {
    Properties+::: {
      CreationDate:
        if !std.isString(CreationDate) then (error 'CreationDate must be a string')
        else if std.isEmpty(CreationDate) then (error 'CreationDate must be not empty')
        else CreationDate,
    },
  },
  setCustomerManagedKey(CustomerManagedKey): {
    Properties+::: {
      CustomerManagedKey:
        if !std.isString(CustomerManagedKey) then (error 'CustomerManagedKey must be a string')
        else if std.isEmpty(CustomerManagedKey) then (error 'CustomerManagedKey must be not empty')
        else if std.length(CustomerManagedKey) < 20 then error ('CustomerManagedKey should have at least 20 characters')
        else if std.length(CustomerManagedKey) > 2048 then error ('CustomerManagedKey should have not more than 2048 characters')
        else CustomerManagedKey,
    },
  },
  setDataProtectionSettingsArn(DataProtectionSettingsArn): {
    Properties+::: {
      DataProtectionSettingsArn:
        if !std.isString(DataProtectionSettingsArn) then (error 'DataProtectionSettingsArn must be a string')
        else if std.isEmpty(DataProtectionSettingsArn) then (error 'DataProtectionSettingsArn must be not empty')
        else if std.length(DataProtectionSettingsArn) < 20 then error ('DataProtectionSettingsArn should have at least 20 characters')
        else if std.length(DataProtectionSettingsArn) > 2048 then error ('DataProtectionSettingsArn should have not more than 2048 characters')
        else DataProtectionSettingsArn,
    },
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 64 then error ('DisplayName should have not more than 64 characters')
        else DisplayName,
    },
  },
  setInstanceType(InstanceType): {
    Properties+::: {
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else if InstanceType != 'standard.regular' && InstanceType != 'standard.large' && InstanceType != 'standard.xlarge' then (error "InstanceType should be 'standard.regular' or 'standard.large' or 'standard.xlarge'")
        else InstanceType,
    },
  },
  setIpAccessSettingsArn(IpAccessSettingsArn): {
    Properties+::: {
      IpAccessSettingsArn:
        if !std.isString(IpAccessSettingsArn) then (error 'IpAccessSettingsArn must be a string')
        else if std.isEmpty(IpAccessSettingsArn) then (error 'IpAccessSettingsArn must be not empty')
        else if std.length(IpAccessSettingsArn) < 20 then error ('IpAccessSettingsArn should have at least 20 characters')
        else if std.length(IpAccessSettingsArn) > 2048 then error ('IpAccessSettingsArn should have not more than 2048 characters')
        else IpAccessSettingsArn,
    },
  },
  setMaxConcurrentSessions(MaxConcurrentSessions): {
    Properties+::: {
      MaxConcurrentSessions:
        if !std.isNumber(MaxConcurrentSessions) then (error 'MaxConcurrentSessions must be an number')
        else if MaxConcurrentSessions < 1 then error ('MaxConcurrentSessions should be at least 1')
        else if MaxConcurrentSessions > 5000 then error ('MaxConcurrentSessions should be not more than 5000')
        else MaxConcurrentSessions,
    },
  },
  setNetworkSettingsArn(NetworkSettingsArn): {
    Properties+::: {
      NetworkSettingsArn:
        if !std.isString(NetworkSettingsArn) then (error 'NetworkSettingsArn must be a string')
        else if std.isEmpty(NetworkSettingsArn) then (error 'NetworkSettingsArn must be not empty')
        else if std.length(NetworkSettingsArn) < 20 then error ('NetworkSettingsArn should have at least 20 characters')
        else if std.length(NetworkSettingsArn) > 2048 then error ('NetworkSettingsArn should have not more than 2048 characters')
        else NetworkSettingsArn,
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
  setPortalEndpoint(PortalEndpoint): {
    Properties+::: {
      PortalEndpoint:
        if !std.isString(PortalEndpoint) then (error 'PortalEndpoint must be a string')
        else if std.isEmpty(PortalEndpoint) then (error 'PortalEndpoint must be not empty')
        else if std.length(PortalEndpoint) < 1 then error ('PortalEndpoint should have at least 1 characters')
        else if std.length(PortalEndpoint) > 253 then error ('PortalEndpoint should have not more than 253 characters')
        else PortalEndpoint,
    },
  },
  setPortalStatus(PortalStatus): {
    Properties+::: {
      PortalStatus:
        if !std.isString(PortalStatus) then (error 'PortalStatus must be a string')
        else if std.isEmpty(PortalStatus) then (error 'PortalStatus must be not empty')
        else if PortalStatus != 'Incomplete' && PortalStatus != 'Pending' && PortalStatus != 'Active' then (error "PortalStatus should be 'Incomplete' or 'Pending' or 'Active'")
        else PortalStatus,
    },
  },
  setRendererType(RendererType): {
    Properties+::: {
      RendererType:
        if !std.isString(RendererType) then (error 'RendererType must be a string')
        else if std.isEmpty(RendererType) then (error 'RendererType must be not empty')
        else if RendererType != 'AppStream' then (error "RendererType should be 'AppStream'")
        else RendererType,
    },
  },
  setServiceProviderSamlMetadata(ServiceProviderSamlMetadata): {
    Properties+::: {
      ServiceProviderSamlMetadata:
        if !std.isString(ServiceProviderSamlMetadata) then (error 'ServiceProviderSamlMetadata must be a string')
        else if std.isEmpty(ServiceProviderSamlMetadata) then (error 'ServiceProviderSamlMetadata must be not empty')
        else if std.length(ServiceProviderSamlMetadata) > 204800 then error ('ServiceProviderSamlMetadata should have not more than 204800 characters')
        else ServiceProviderSamlMetadata,
    },
  },
  setStatusReason(StatusReason): {
    Properties+::: {
      StatusReason:
        if !std.isString(StatusReason) then (error 'StatusReason must be a string')
        else if std.isEmpty(StatusReason) then (error 'StatusReason must be not empty')
        else if std.length(StatusReason) < 1 then error ('StatusReason should have at least 1 characters')
        else if std.length(StatusReason) > 1024 then error ('StatusReason should have not more than 1024 characters')
        else StatusReason,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTrustStoreArn(TrustStoreArn): {
    Properties+::: {
      TrustStoreArn:
        if !std.isString(TrustStoreArn) then (error 'TrustStoreArn must be a string')
        else if std.isEmpty(TrustStoreArn) then (error 'TrustStoreArn must be not empty')
        else if std.length(TrustStoreArn) < 20 then error ('TrustStoreArn should have at least 20 characters')
        else if std.length(TrustStoreArn) > 2048 then error ('TrustStoreArn should have not more than 2048 characters')
        else TrustStoreArn,
    },
  },
  setUserAccessLoggingSettingsArn(UserAccessLoggingSettingsArn): {
    Properties+::: {
      UserAccessLoggingSettingsArn:
        if !std.isString(UserAccessLoggingSettingsArn) then (error 'UserAccessLoggingSettingsArn must be a string')
        else if std.isEmpty(UserAccessLoggingSettingsArn) then (error 'UserAccessLoggingSettingsArn must be not empty')
        else if std.length(UserAccessLoggingSettingsArn) < 20 then error ('UserAccessLoggingSettingsArn should have at least 20 characters')
        else if std.length(UserAccessLoggingSettingsArn) > 2048 then error ('UserAccessLoggingSettingsArn should have not more than 2048 characters')
        else UserAccessLoggingSettingsArn,
    },
  },
  setUserSettingsArn(UserSettingsArn): {
    Properties+::: {
      UserSettingsArn:
        if !std.isString(UserSettingsArn) then (error 'UserSettingsArn must be a string')
        else if std.isEmpty(UserSettingsArn) then (error 'UserSettingsArn must be not empty')
        else if std.length(UserSettingsArn) < 20 then error ('UserSettingsArn should have at least 20 characters')
        else if std.length(UserSettingsArn) > 2048 then error ('UserSettingsArn should have not more than 2048 characters')
        else UserSettingsArn,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
