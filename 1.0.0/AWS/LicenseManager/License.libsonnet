{
  // AWS LicenseManager License
  License: {
    new(
      LicenseName,
      ProductName,
      Issuer,
      HomeRegion,
      Validity,
      ConsumptionConfiguration,
      Entitlements,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LicenseName) : 'LicenseName must be a string',
        LicenseName: LicenseName,
        assert std.isString(ProductName) : 'ProductName must be a string',
        ProductName: ProductName,
        assert std.isObject(Issuer) : 'Issuer must be an object',
        Issuer: Issuer,
        assert std.isString(HomeRegion) : 'HomeRegion must be a string',
        HomeRegion: HomeRegion,
        assert std.isObject(Validity) : 'Validity must be an object',
        Validity: Validity,
        assert std.isObject(ConsumptionConfiguration) : 'ConsumptionConfiguration must be an object',
        ConsumptionConfiguration: ConsumptionConfiguration,
        Entitlements: (if std.isArray(Entitlements) then Entitlements else [Entitlements]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::LicenseManager::License',
    },
    withProductSKU(ProductSKU): {
      assert std.isString(ProductSKU) : 'ProductSKU must be a string',
      Properties+::: {
        ProductSKU: ProductSKU,
      },
    },
    withBeneficiary(Beneficiary): {
      assert std.isString(Beneficiary) : 'Beneficiary must be a string',
      Properties+::: {
        Beneficiary: Beneficiary,
      },
    },
    withLicenseMetadata(LicenseMetadata): {
      Properties+::: {
        LicenseMetadata: (if std.isArray(LicenseMetadata) then LicenseMetadata else [LicenseMetadata]),
      },
    },
    withLicenseMetadataMixin(LicenseMetadata): {
      Properties+::: {
        LicenseMetadata+: (if std.isArray(LicenseMetadata) then LicenseMetadata else [LicenseMetadata]),
      },
    },
    withLicenseArn(LicenseArn): {
      assert std.isString(LicenseArn) : 'LicenseArn must be a string',
      Properties+::: {
        LicenseArn: LicenseArn,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: {
        Version: Version,
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
