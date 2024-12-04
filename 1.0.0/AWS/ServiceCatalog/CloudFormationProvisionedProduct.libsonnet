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
    Type: 'AWS::ServiceCatalog::CloudFormationProvisionedProduct',
  },
  withAcceptLanguage(AcceptLanguage): {
    assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
    assert AcceptLanguage == 'en' || AcceptLanguage == 'jp' || AcceptLanguage == 'zh' : "AcceptLanguage should be 'en' or 'jp' or 'zh'",
    Properties+::: {
      AcceptLanguage: AcceptLanguage,
    },
  },
  withNotificationArns(NotificationArns): {
    Properties+::: {
      NotificationArns: (if std.isArray(NotificationArns) then NotificationArns else [NotificationArns]),
    },
  },
  withNotificationArnsMixin(NotificationArns): {
    Properties+::: {
      NotificationArns+: (if std.isArray(NotificationArns) then NotificationArns else [NotificationArns]),
    },
  },
  withPathId(PathId): {
    assert std.isString(PathId) : 'PathId must be a string',
    Properties+::: {
      PathId: PathId,
    },
  },
  withPathName(PathName): {
    assert std.isString(PathName) : 'PathName must be a string',
    Properties+::: {
      PathName: PathName,
    },
  },
  withProductId(ProductId): {
    assert std.isString(ProductId) : 'ProductId must be a string',
    Properties+::: {
      ProductId: ProductId,
    },
  },
  withProductName(ProductName): {
    assert std.isString(ProductName) : 'ProductName must be a string',
    Properties+::: {
      ProductName: ProductName,
    },
  },
  withProvisionedProductName(ProvisionedProductName): {
    assert std.isString(ProvisionedProductName) : 'ProvisionedProductName must be a string',
    Properties+::: {
      ProvisionedProductName: ProvisionedProductName,
    },
  },
  withProvisioningArtifactId(ProvisioningArtifactId): {
    assert std.isString(ProvisioningArtifactId) : 'ProvisioningArtifactId must be a string',
    Properties+::: {
      ProvisioningArtifactId: ProvisioningArtifactId,
    },
  },
  withProvisioningArtifactName(ProvisioningArtifactName): {
    assert std.isString(ProvisioningArtifactName) : 'ProvisioningArtifactName must be a string',
    Properties+::: {
      ProvisioningArtifactName: ProvisioningArtifactName,
    },
  },
  withProvisioningParameters(ProvisioningParameters): {
    Properties+::: {
      ProvisioningParameters: (if std.isArray(ProvisioningParameters) then ProvisioningParameters else [ProvisioningParameters]),
    },
  },
  withProvisioningParametersMixin(ProvisioningParameters): {
    Properties+::: {
      ProvisioningParameters+: (if std.isArray(ProvisioningParameters) then ProvisioningParameters else [ProvisioningParameters]),
    },
  },
  withProvisioningPreferences(ProvisioningPreferences): {
    assert std.isObject(ProvisioningPreferences) : 'ProvisioningPreferences must be a object',
    Properties+::: {
      ProvisioningPreferences: ProvisioningPreferences,
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
  withProvisionedProductId(ProvisionedProductId): {
    assert std.isString(ProvisionedProductId) : 'ProvisionedProductId must be a string',
    Properties+::: {
      ProvisionedProductId: ProvisionedProductId,
    },
  },
  withRecordId(RecordId): {
    assert std.isString(RecordId) : 'RecordId must be a string',
    Properties+::: {
      RecordId: RecordId,
    },
  },
  withCloudformationStackArn(CloudformationStackArn): {
    assert std.isString(CloudformationStackArn) : 'CloudformationStackArn must be a string',
    Properties+::: {
      CloudformationStackArn: CloudformationStackArn,
    },
  },
  withOutputs(Outputs): {
    assert std.isObject(Outputs) : 'Outputs must be a object',
    Properties+::: {
      Outputs: Outputs,
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
