{
  new(
    OrganizationConformancePackName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(OrganizationConformancePackName) : 'OrganizationConformancePackName must be a string',
      OrganizationConformancePackName: OrganizationConformancePackName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::OrganizationConformancePack',
  },
  withTemplateS3Uri(TemplateS3Uri): {
    assert std.isString(TemplateS3Uri) : 'TemplateS3Uri must be a string',
    Properties+::: {
      TemplateS3Uri: TemplateS3Uri,
    },
  },
  withTemplateBody(TemplateBody): {
    assert std.isString(TemplateBody) : 'TemplateBody must be a string',
    Properties+::: {
      TemplateBody: TemplateBody,
    },
  },
  withDeliveryS3Bucket(DeliveryS3Bucket): {
    assert std.isString(DeliveryS3Bucket) : 'DeliveryS3Bucket must be a string',
    Properties+::: {
      DeliveryS3Bucket: DeliveryS3Bucket,
    },
  },
  withDeliveryS3KeyPrefix(DeliveryS3KeyPrefix): {
    assert std.isString(DeliveryS3KeyPrefix) : 'DeliveryS3KeyPrefix must be a string',
    Properties+::: {
      DeliveryS3KeyPrefix: DeliveryS3KeyPrefix,
    },
  },
  withConformancePackInputParameters(ConformancePackInputParameters): {
    Properties+::: {
      ConformancePackInputParameters: (if std.isArray(ConformancePackInputParameters) then ConformancePackInputParameters else [ConformancePackInputParameters]),
    },
  },
  withConformancePackInputParametersMixin(ConformancePackInputParameters): {
    Properties+::: {
      ConformancePackInputParameters+: (if std.isArray(ConformancePackInputParameters) then ConformancePackInputParameters else [ConformancePackInputParameters]),
    },
  },
  withExcludedAccounts(ExcludedAccounts): {
    Properties+::: {
      ExcludedAccounts: (if std.isArray(ExcludedAccounts) then ExcludedAccounts else [ExcludedAccounts]),
    },
  },
  withExcludedAccountsMixin(ExcludedAccounts): {
    Properties+::: {
      ExcludedAccounts+: (if std.isArray(ExcludedAccounts) then ExcludedAccounts else [ExcludedAccounts]),
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
