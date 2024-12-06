{
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
      LicenseName:
        if !std.isString(LicenseName) then (error 'LicenseName must be a string')
        else if std.isEmpty(LicenseName) then (error 'LicenseName must be not empty')
        else LicenseName,
      ProductName:
        if !std.isString(ProductName) then (error 'ProductName must be a string')
        else if std.isEmpty(ProductName) then (error 'ProductName must be not empty')
        else ProductName,
      Issuer:
        if !std.isObject(Issuer) then (error 'Issuer must be an object')
        else if !std.objectHas(Issuer, 'Name') then (error ' have attribute Name')
        else Issuer,
      HomeRegion:
        if !std.isString(HomeRegion) then (error 'HomeRegion must be a string')
        else if std.isEmpty(HomeRegion) then (error 'HomeRegion must be not empty')
        else HomeRegion,
      Validity:
        if !std.isObject(Validity) then (error 'Validity must be an object')
        else if !std.objectHas(Validity, 'Begin') then (error ' have attribute Begin')
        else if !std.objectHas(Validity, 'End') then (error ' have attribute End')
        else Validity,
      ConsumptionConfiguration:
        if !std.isObject(ConsumptionConfiguration) then (error 'ConsumptionConfiguration must be an object')
        else ConsumptionConfiguration,
      Entitlements:
        if !std.isArray(Entitlements) then (error 'Entitlements must be an array')
        else Entitlements,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LicenseManager::License',
  },
  setProductSKU(ProductSKU): {
    Properties+::: {
      ProductSKU:
        if !std.isString(ProductSKU) then (error 'ProductSKU must be a string')
        else if std.isEmpty(ProductSKU) then (error 'ProductSKU must be not empty')
        else if std.length(ProductSKU) < 1 then error ('ProductSKU should have at least 1 characters')
        else if std.length(ProductSKU) > 1024 then error ('ProductSKU should have not more than 1024 characters')
        else ProductSKU,
    },
  },
  setBeneficiary(Beneficiary): {
    Properties+::: {
      Beneficiary:
        if !std.isString(Beneficiary) then (error 'Beneficiary must be a string')
        else if std.isEmpty(Beneficiary) then (error 'Beneficiary must be not empty')
        else Beneficiary,
    },
  },
  setLicenseMetadata(LicenseMetadata): {
    Properties+::: {
      LicenseMetadata:
        if !std.isArray(LicenseMetadata) then (error 'LicenseMetadata must be an array')
        else LicenseMetadata,
    },
  },
  pushLicenseMetadata(LicenseMetadata): {
    Properties+::: {
      LicenseMetadata+: LicenseMetadata,
    },
  },
  setLicenseArn(LicenseArn): {
    Properties+::: {
      LicenseArn:
        if !std.isString(LicenseArn) then (error 'LicenseArn must be a string')
        else if std.isEmpty(LicenseArn) then (error 'LicenseArn must be not empty')
        else if std.length(LicenseArn) > 2048 then error ('LicenseArn should have not more than 2048 characters')
        else LicenseArn,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
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
