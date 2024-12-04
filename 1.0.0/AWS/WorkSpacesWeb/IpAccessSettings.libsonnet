{
  new(
    IpRules,
  ): {
    local base = self,
    Properties: {
      IpRules: (if std.isArray(IpRules) then IpRules else [IpRules]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesWeb::IpAccessSettings',
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
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withDisplayName(DisplayName): {
    assert std.isString(DisplayName) : 'DisplayName must be a string',
    Properties+::: {
      DisplayName: DisplayName,
    },
  },
  withIpAccessSettingsArn(IpAccessSettingsArn): {
    assert std.isString(IpAccessSettingsArn) : 'IpAccessSettingsArn must be a string',
    Properties+::: {
      IpAccessSettingsArn: IpAccessSettingsArn,
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
