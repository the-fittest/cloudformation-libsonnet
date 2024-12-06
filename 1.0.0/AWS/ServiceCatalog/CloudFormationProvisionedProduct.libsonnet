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
    Type: 'AWS::ServiceCatalog::CloudFormationProvisionedProduct',
  },
  setAcceptLanguage(AcceptLanguage): {
    Properties+::: {
      AcceptLanguage:
        if !std.isString(AcceptLanguage) then (error 'AcceptLanguage must be a string')
        else if std.isEmpty(AcceptLanguage) then (error 'AcceptLanguage must be not empty')
        else if AcceptLanguage != 'en' && AcceptLanguage != 'jp' && AcceptLanguage != 'zh' then (error "AcceptLanguage should be 'en' or 'jp' or 'zh'")
        else AcceptLanguage,
    },
  },
  setNotificationArns(NotificationArns): {
    Properties+::: {
      NotificationArns:
        if !std.isArray(NotificationArns) then (error 'NotificationArns must be an array')
        else if std.length(NotificationArns) > 5 then error ('NotificationArns cannot have more than 5 items')
        else NotificationArns,
    },
  },
  pushNotificationArns(NotificationArns): {
    Properties+::: {
      NotificationArns+: NotificationArns,
    },
  },
  setPathId(PathId): {
    Properties+::: {
      PathId:
        if !std.isString(PathId) then (error 'PathId must be a string')
        else if std.isEmpty(PathId) then (error 'PathId must be not empty')
        else if std.length(PathId) < 1 then error ('PathId should have at least 1 characters')
        else if std.length(PathId) > 100 then error ('PathId should have not more than 100 characters')
        else PathId,
    },
  },
  setPathName(PathName): {
    Properties+::: {
      PathName:
        if !std.isString(PathName) then (error 'PathName must be a string')
        else if std.isEmpty(PathName) then (error 'PathName must be not empty')
        else if std.length(PathName) < 1 then error ('PathName should have at least 1 characters')
        else if std.length(PathName) > 100 then error ('PathName should have not more than 100 characters')
        else PathName,
    },
  },
  setProductId(ProductId): {
    Properties+::: {
      ProductId:
        if !std.isString(ProductId) then (error 'ProductId must be a string')
        else if std.isEmpty(ProductId) then (error 'ProductId must be not empty')
        else if std.length(ProductId) < 1 then error ('ProductId should have at least 1 characters')
        else if std.length(ProductId) > 100 then error ('ProductId should have not more than 100 characters')
        else ProductId,
    },
  },
  setProductName(ProductName): {
    Properties+::: {
      ProductName:
        if !std.isString(ProductName) then (error 'ProductName must be a string')
        else if std.isEmpty(ProductName) then (error 'ProductName must be not empty')
        else if std.length(ProductName) < 1 then error ('ProductName should have at least 1 characters')
        else if std.length(ProductName) > 128 then error ('ProductName should have not more than 128 characters')
        else ProductName,
    },
  },
  setProvisionedProductName(ProvisionedProductName): {
    Properties+::: {
      ProvisionedProductName:
        if !std.isString(ProvisionedProductName) then (error 'ProvisionedProductName must be a string')
        else if std.isEmpty(ProvisionedProductName) then (error 'ProvisionedProductName must be not empty')
        else if std.length(ProvisionedProductName) < 1 then error ('ProvisionedProductName should have at least 1 characters')
        else if std.length(ProvisionedProductName) > 128 then error ('ProvisionedProductName should have not more than 128 characters')
        else ProvisionedProductName,
    },
  },
  setProvisioningArtifactId(ProvisioningArtifactId): {
    Properties+::: {
      ProvisioningArtifactId:
        if !std.isString(ProvisioningArtifactId) then (error 'ProvisioningArtifactId must be a string')
        else if std.isEmpty(ProvisioningArtifactId) then (error 'ProvisioningArtifactId must be not empty')
        else if std.length(ProvisioningArtifactId) < 1 then error ('ProvisioningArtifactId should have at least 1 characters')
        else if std.length(ProvisioningArtifactId) > 100 then error ('ProvisioningArtifactId should have not more than 100 characters')
        else ProvisioningArtifactId,
    },
  },
  setProvisioningArtifactName(ProvisioningArtifactName): {
    Properties+::: {
      ProvisioningArtifactName:
        if !std.isString(ProvisioningArtifactName) then (error 'ProvisioningArtifactName must be a string')
        else if std.isEmpty(ProvisioningArtifactName) then (error 'ProvisioningArtifactName must be not empty')
        else ProvisioningArtifactName,
    },
  },
  setProvisioningParameters(ProvisioningParameters): {
    Properties+::: {
      ProvisioningParameters:
        if !std.isArray(ProvisioningParameters) then (error 'ProvisioningParameters must be an array')
        else ProvisioningParameters,
    },
  },
  pushProvisioningParameters(ProvisioningParameters): {
    Properties+::: {
      ProvisioningParameters+: ProvisioningParameters,
    },
  },
  setProvisioningPreferences(ProvisioningPreferences): {
    Properties+::: {
      ProvisioningPreferences:
        if !std.isObject(ProvisioningPreferences) then (error 'ProvisioningPreferences must be an object')
        else ProvisioningPreferences,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setProvisionedProductId(ProvisionedProductId): {
    Properties+::: {
      ProvisionedProductId:
        if !std.isString(ProvisionedProductId) then (error 'ProvisionedProductId must be a string')
        else if std.isEmpty(ProvisionedProductId) then (error 'ProvisionedProductId must be not empty')
        else if std.length(ProvisionedProductId) < 1 then error ('ProvisionedProductId should have at least 1 characters')
        else if std.length(ProvisionedProductId) > 50 then error ('ProvisionedProductId should have not more than 50 characters')
        else ProvisionedProductId,
    },
  },
  setRecordId(RecordId): {
    Properties+::: {
      RecordId:
        if !std.isString(RecordId) then (error 'RecordId must be a string')
        else if std.isEmpty(RecordId) then (error 'RecordId must be not empty')
        else if std.length(RecordId) < 1 then error ('RecordId should have at least 1 characters')
        else if std.length(RecordId) > 50 then error ('RecordId should have not more than 50 characters')
        else RecordId,
    },
  },
  setCloudformationStackArn(CloudformationStackArn): {
    Properties+::: {
      CloudformationStackArn:
        if !std.isString(CloudformationStackArn) then (error 'CloudformationStackArn must be a string')
        else if std.isEmpty(CloudformationStackArn) then (error 'CloudformationStackArn must be not empty')
        else if std.length(CloudformationStackArn) < 1 then error ('CloudformationStackArn should have at least 1 characters')
        else if std.length(CloudformationStackArn) > 256 then error ('CloudformationStackArn should have not more than 256 characters')
        else CloudformationStackArn,
    },
  },
  setOutputs(Outputs): {
    Properties+::: {
      Outputs:
        if !std.isObject(Outputs) then (error 'Outputs must be an object')
        else Outputs,
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
