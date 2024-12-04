{
  // AWS ServiceCatalog CloudFormationProduct
  CloudFormationProduct: {
    new(
      Owner,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Owner) : 'Owner must be a string',
        Owner: Owner,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ServiceCatalog::CloudFormationProduct',
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withProductName(ProductName): {
      assert std.isString(ProductName) : 'ProductName must be a string',
      Properties+::: {
        ProductName: ProductName,
      },
    },
    withSupportEmail(SupportEmail): {
      assert std.isString(SupportEmail) : 'SupportEmail must be a string',
      Properties+::: {
        SupportEmail: SupportEmail,
      },
    },
    withProductType(ProductType): {
      assert std.isString(ProductType) : 'ProductType must be a string',
      Properties+::: {
        ProductType: ProductType,
      },
    },
    withProvisioningArtifactNames(ProvisioningArtifactNames): {
      assert std.isString(ProvisioningArtifactNames) : 'ProvisioningArtifactNames must be a string',
      Properties+::: {
        ProvisioningArtifactNames: ProvisioningArtifactNames,
      },
    },
    withReplaceProvisioningArtifacts(ReplaceProvisioningArtifacts): {
      assert std.isBoolean(ReplaceProvisioningArtifacts) : 'ReplaceProvisioningArtifacts must be a boolean',
      Properties+::: {
        ReplaceProvisioningArtifacts: ReplaceProvisioningArtifacts,
      },
    },
    withSupportDescription(SupportDescription): {
      assert std.isString(SupportDescription) : 'SupportDescription must be a string',
      Properties+::: {
        SupportDescription: SupportDescription,
      },
    },
    withDistributor(Distributor): {
      assert std.isString(Distributor) : 'Distributor must be a string',
      Properties+::: {
        Distributor: Distributor,
      },
    },
    withProvisioningArtifactIds(ProvisioningArtifactIds): {
      assert std.isString(ProvisioningArtifactIds) : 'ProvisioningArtifactIds must be a string',
      Properties+::: {
        ProvisioningArtifactIds: ProvisioningArtifactIds,
      },
    },
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: {
        AcceptLanguage: AcceptLanguage,
      },
    },
    withSupportUrl(SupportUrl): {
      assert std.isString(SupportUrl) : 'SupportUrl must be a string',
      Properties+::: {
        SupportUrl: SupportUrl,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withSourceConnection(SourceConnection): {
      assert std.isObject(SourceConnection) : 'SourceConnection must be a object',
      Properties+::: {
        SourceConnection: SourceConnection,
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
    withProvisioningArtifactParameters(ProvisioningArtifactParameters): {
      Properties+::: {
        ProvisioningArtifactParameters: (if std.isArray(ProvisioningArtifactParameters) then ProvisioningArtifactParameters else [ProvisioningArtifactParameters]),
      },
    },
    withProvisioningArtifactParametersMixin(ProvisioningArtifactParameters): {
      Properties+::: {
        ProvisioningArtifactParameters+: (if std.isArray(ProvisioningArtifactParameters) then ProvisioningArtifactParameters else [ProvisioningArtifactParameters]),
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
