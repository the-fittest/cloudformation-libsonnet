{
  // AWS WorkSpacesWeb BrowserSettings
  BrowserSettings: {
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
      Type: 'AWS::WorkSpacesWeb::BrowserSettings',
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
    withBrowserPolicy(BrowserPolicy): {
      assert std.isString(BrowserPolicy) : 'BrowserPolicy must be a string',
      Properties+::: {
        BrowserPolicy: BrowserPolicy,
      },
    },
    withBrowserSettingsArn(BrowserSettingsArn): {
      assert std.isString(BrowserSettingsArn) : 'BrowserSettingsArn must be a string',
      Properties+::: {
        BrowserSettingsArn: BrowserSettingsArn,
      },
    },
    withCustomerManagedKey(CustomerManagedKey): {
      assert std.isString(CustomerManagedKey) : 'CustomerManagedKey must be a string',
      Properties+::: {
        CustomerManagedKey: CustomerManagedKey,
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
  },
}