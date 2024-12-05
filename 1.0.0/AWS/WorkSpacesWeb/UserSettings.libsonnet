{
  new(
    CopyAllowed,
    DownloadAllowed,
    PasteAllowed,
    PrintAllowed,
    UploadAllowed,
  ): {
    local base = self,
    Properties: {
      CopyAllowed:
        if !std.isString(CopyAllowed) then (error 'CopyAllowed must be a string')
        else if std.isEmpty(CopyAllowed) then (error 'CopyAllowed must be not empty')
        else if CopyAllowed != 'Disabled' && CopyAllowed != 'Enabled' then (error "CopyAllowed should be 'Disabled' or 'Enabled'")
        else CopyAllowed,
      DownloadAllowed:
        if !std.isString(DownloadAllowed) then (error 'DownloadAllowed must be a string')
        else if std.isEmpty(DownloadAllowed) then (error 'DownloadAllowed must be not empty')
        else if DownloadAllowed != 'Disabled' && DownloadAllowed != 'Enabled' then (error "DownloadAllowed should be 'Disabled' or 'Enabled'")
        else DownloadAllowed,
      PasteAllowed:
        if !std.isString(PasteAllowed) then (error 'PasteAllowed must be a string')
        else if std.isEmpty(PasteAllowed) then (error 'PasteAllowed must be not empty')
        else if PasteAllowed != 'Disabled' && PasteAllowed != 'Enabled' then (error "PasteAllowed should be 'Disabled' or 'Enabled'")
        else PasteAllowed,
      PrintAllowed:
        if !std.isString(PrintAllowed) then (error 'PrintAllowed must be a string')
        else if std.isEmpty(PrintAllowed) then (error 'PrintAllowed must be not empty')
        else if PrintAllowed != 'Disabled' && PrintAllowed != 'Enabled' then (error "PrintAllowed should be 'Disabled' or 'Enabled'")
        else PrintAllowed,
      UploadAllowed:
        if !std.isString(UploadAllowed) then (error 'UploadAllowed must be a string')
        else if std.isEmpty(UploadAllowed) then (error 'UploadAllowed must be not empty')
        else if UploadAllowed != 'Disabled' && UploadAllowed != 'Enabled' then (error "UploadAllowed should be 'Disabled' or 'Enabled'")
        else UploadAllowed,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesWeb::UserSettings',
  },
  setAdditionalEncryptionContext(AdditionalEncryptionContext): {
    Properties+::: {
      AdditionalEncryptionContext:
        if !std.isObject(AdditionalEncryptionContext) then (error 'AdditionalEncryptionContext must be an object')
        else AdditionalEncryptionContext,
    },
  },
  setAssociatedPortalArns(AssociatedPortalArns): {
    Properties+::: {
      AssociatedPortalArns:
        if !std.isArray(AssociatedPortalArns) then (error 'AssociatedPortalArns must be an array')
        else AssociatedPortalArns,
    },
  },
  setAssociatedPortalArnsMixin(AssociatedPortalArns): {
    Properties+::: {
      AssociatedPortalArns+: AssociatedPortalArns,
    },
  },
  setCookieSynchronizationConfiguration(CookieSynchronizationConfiguration): {
    Properties+::: {
      CookieSynchronizationConfiguration:
        if !std.isObject(CookieSynchronizationConfiguration) then (error 'CookieSynchronizationConfiguration must be an object')
        else if !std.objectHas(CookieSynchronizationConfiguration, 'Allowlist') then (error ' have attribute Allowlist')
        else CookieSynchronizationConfiguration,
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
  setDisconnectTimeoutInMinutes(DisconnectTimeoutInMinutes): {
    Properties+::: {
      DisconnectTimeoutInMinutes:
        if !std.isNumber(DisconnectTimeoutInMinutes) then (error 'DisconnectTimeoutInMinutes must be an number')
        else if DisconnectTimeoutInMinutes < 1 then error ('DisconnectTimeoutInMinutes should be at least 1')
        else if DisconnectTimeoutInMinutes > 600 then error ('DisconnectTimeoutInMinutes should be not more than 600')
        else DisconnectTimeoutInMinutes,
    },
  },
  setIdleDisconnectTimeoutInMinutes(IdleDisconnectTimeoutInMinutes): {
    Properties+::: {
      IdleDisconnectTimeoutInMinutes:
        if !std.isNumber(IdleDisconnectTimeoutInMinutes) then (error 'IdleDisconnectTimeoutInMinutes must be an number')
        else if IdleDisconnectTimeoutInMinutes > 60 then error ('IdleDisconnectTimeoutInMinutes should be not more than 60')
        else IdleDisconnectTimeoutInMinutes,
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
  setDeepLinkAllowed(DeepLinkAllowed): {
    Properties+::: {
      DeepLinkAllowed:
        if !std.isString(DeepLinkAllowed) then (error 'DeepLinkAllowed must be a string')
        else if std.isEmpty(DeepLinkAllowed) then (error 'DeepLinkAllowed must be not empty')
        else if DeepLinkAllowed != 'Disabled' && DeepLinkAllowed != 'Enabled' then (error "DeepLinkAllowed should be 'Disabled' or 'Enabled'")
        else DeepLinkAllowed,
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
