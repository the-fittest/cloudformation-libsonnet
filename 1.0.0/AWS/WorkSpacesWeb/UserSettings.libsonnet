{
  // AWS WorkSpacesWeb UserSettings
  UserSettings: {
    new(
      CopyAllowed,
      DownloadAllowed,
      PasteAllowed,
      PrintAllowed,
      UploadAllowed,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CopyAllowed) : 'CopyAllowed must be a string',
        CopyAllowed: CopyAllowed,
        assert std.isString(DownloadAllowed) : 'DownloadAllowed must be a string',
        DownloadAllowed: DownloadAllowed,
        assert std.isString(PasteAllowed) : 'PasteAllowed must be a string',
        PasteAllowed: PasteAllowed,
        assert std.isString(PrintAllowed) : 'PrintAllowed must be a string',
        PrintAllowed: PrintAllowed,
        assert std.isString(UploadAllowed) : 'UploadAllowed must be a string',
        UploadAllowed: UploadAllowed,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::WorkSpacesWeb::UserSettings',
    },
    withAdditionalEncryptionContext(AdditionalEncryptionContext): {
      assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
      Properties+::: {
        AdditionalEncryptionContext: AdditionalEncryptionContext,
      },
    },
    withAssociatedPortalArns(AssociatedPortalArns): {
      Properties+::: {
        AssociatedPortalArns: (if std.isArray(AssociatedPortalArns) then AssociatedPortalArns else [AssociatedPortalArns]),
      },
    },
    withAssociatedPortalArnsMixin(AssociatedPortalArns): {
      Properties+::: {
        AssociatedPortalArns+: (if std.isArray(AssociatedPortalArns) then AssociatedPortalArns else [AssociatedPortalArns]),
      },
    },
    withCookieSynchronizationConfiguration(CookieSynchronizationConfiguration): {
      assert std.isObject(CookieSynchronizationConfiguration) : 'CookieSynchronizationConfiguration must be a object',
      Properties+::: {
        CookieSynchronizationConfiguration: CookieSynchronizationConfiguration,
      },
    },
    withCustomerManagedKey(CustomerManagedKey): {
      assert std.isString(CustomerManagedKey) : 'CustomerManagedKey must be a string',
      Properties+::: {
        CustomerManagedKey: CustomerManagedKey,
      },
    },
    withDisconnectTimeoutInMinutes(DisconnectTimeoutInMinutes): {
      assert std.isNumber(DisconnectTimeoutInMinutes) : 'DisconnectTimeoutInMinutes must be a number',
      Properties+::: {
        DisconnectTimeoutInMinutes: DisconnectTimeoutInMinutes,
      },
    },
    withIdleDisconnectTimeoutInMinutes(IdleDisconnectTimeoutInMinutes): {
      assert std.isNumber(IdleDisconnectTimeoutInMinutes) : 'IdleDisconnectTimeoutInMinutes must be a number',
      Properties+::: {
        IdleDisconnectTimeoutInMinutes: IdleDisconnectTimeoutInMinutes,
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
    withUserSettingsArn(UserSettingsArn): {
      assert std.isString(UserSettingsArn) : 'UserSettingsArn must be a string',
      Properties+::: {
        UserSettingsArn: UserSettingsArn,
      },
    },
    withDeepLinkAllowed(DeepLinkAllowed): {
      assert std.isString(DeepLinkAllowed) : 'DeepLinkAllowed must be a string',
      Properties+::: {
        DeepLinkAllowed: DeepLinkAllowed,
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
  },
}
