local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Grant: {
    '#': d.pkg(
      name='Grant',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LicenseManager.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LicenseManager::Grant Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::LicenseManager::Grant',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withGrantArn': d.fn('`withGrantArn` GrantArn ', [d.arg('GrantArn', d.T.string)]),
    withGrantArn(GrantArn): {
      assert std.isString(GrantArn) : 'GrantArn must be a string',
      Properties+::: { GrantArn: GrantArn },
    },
    '#withGrantName': d.fn('`withGrantName` GrantName ', [d.arg('GrantName', d.T.string)]),
    withGrantName(GrantName): {
      assert std.isString(GrantName) : 'GrantName must be a string',
      Properties+::: { GrantName: GrantName },
    },
    '#withLicenseArn': d.fn('`withLicenseArn` LicenseArn ', [d.arg('LicenseArn', d.T.string)]),
    withLicenseArn(LicenseArn): {
      assert std.isString(LicenseArn) : 'LicenseArn must be a string',
      Properties+::: { LicenseArn: LicenseArn },
    },
    '#withHomeRegion': d.fn('`withHomeRegion` HomeRegion ', [d.arg('HomeRegion', d.T.string)]),
    withHomeRegion(HomeRegion): {
      assert std.isString(HomeRegion) : 'HomeRegion must be a string',
      Properties+::: { HomeRegion: HomeRegion },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withAllowedOperations': d.fn('`withAllowedOperations` AllowedOperations ', [d.arg('AllowedOperations', d.T.array)]),
    withAllowedOperations(AllowedOperations): {
      assert std.isArray(AllowedOperations) : 'AllowedOperations must be a array',
      Properties+::: { AllowedOperations: AllowedOperations },
    },
    '#withPrincipals': d.fn('`withPrincipals` Principals ', [d.arg('Principals', d.T.array)]),
    withPrincipals(Principals): {
      assert std.isArray(Principals) : 'Principals must be a array',
      Properties+::: { Principals: Principals },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
  },
  License: {
    '#': d.pkg(
      name='License',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LicenseManager.libsonnet',
      help='Resource Type definition for AWS::LicenseManager::License',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LicenseManager::License Resource
        * LicenseName Name for the created license.
        * ProductName Product name for the created license.
        * Issuer 
        * HomeRegion Home region for the created license.
        * Validity 
        * ConsumptionConfiguration 
        * Entitlements 
      |||,
      args=[
        d.arg('LicenseName', 'd.T.string'),
        d.arg('ProductName', 'd.T.string'),
        d.arg('Issuer', 'd.T.object'),
        d.arg('HomeRegion', 'd.T.string'),
        d.arg('Validity', 'd.T.object'),
        d.arg('ConsumptionConfiguration', 'd.T.object'),
        d.arg('Entitlements', 'd.T.array'),
      ]
    ),
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
        assert std.isObject(Issuer) : 'Issuer must be a object',
        Issuer: Issuer,
        assert std.isString(HomeRegion) : 'HomeRegion must be a string',
        HomeRegion: HomeRegion,
        assert std.isObject(Validity) : 'Validity must be a object',
        Validity: Validity,
        assert std.isObject(ConsumptionConfiguration) : 'ConsumptionConfiguration must be a object',
        ConsumptionConfiguration: ConsumptionConfiguration,
        assert std.isArray(Entitlements) : 'Entitlements must be a array',
        Entitlements: Entitlements,
      },
      DependsOn:: [],
      Type: 'AWS::LicenseManager::License',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProductSKU': d.fn('`withProductSKU` ProductSKU ', [d.arg('ProductSKU', d.T.string)]),
    withProductSKU(ProductSKU): {
      assert std.isString(ProductSKU) : 'ProductSKU must be a string',
      Properties+::: { ProductSKU: ProductSKU },
    },
    '#withBeneficiary': d.fn('`withBeneficiary` Beneficiary ', [d.arg('Beneficiary', d.T.string)]),
    withBeneficiary(Beneficiary): {
      assert std.isString(Beneficiary) : 'Beneficiary must be a string',
      Properties+::: { Beneficiary: Beneficiary },
    },
    '#withLicenseMetadata': d.fn('`withLicenseMetadata` LicenseMetadata ', [d.arg('LicenseMetadata', d.T.array)]),
    withLicenseMetadata(LicenseMetadata): {
      assert std.isArray(LicenseMetadata) : 'LicenseMetadata must be a array',
      Properties+::: { LicenseMetadata: LicenseMetadata },
    },
    '#withLicenseArn': d.fn('`withLicenseArn` LicenseArn ', [d.arg('LicenseArn', d.T.string)]),
    withLicenseArn(LicenseArn): {
      assert std.isString(LicenseArn) : 'LicenseArn must be a string',
      Properties+::: { LicenseArn: LicenseArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
  },
}
