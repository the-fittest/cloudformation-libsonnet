{
  // AWS DataSync LocationAzureBlob
  LocationAzureBlob: {
    new(
      AzureBlobAuthenticationType,
      AgentArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AzureBlobAuthenticationType) : 'AzureBlobAuthenticationType must be a string',
        AzureBlobAuthenticationType: AzureBlobAuthenticationType,
        AgentArns: (if std.isArray(AgentArns) then AgentArns else [AgentArns]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DataSync::LocationAzureBlob',
    },
    withAzureBlobSasConfiguration(AzureBlobSasConfiguration): {
      assert std.isObject(AzureBlobSasConfiguration) : 'AzureBlobSasConfiguration must be a object',
      Properties+::: {
        AzureBlobSasConfiguration: AzureBlobSasConfiguration,
      },
    },
    withAzureBlobContainerUrl(AzureBlobContainerUrl): {
      assert std.isString(AzureBlobContainerUrl) : 'AzureBlobContainerUrl must be a string',
      Properties+::: {
        AzureBlobContainerUrl: AzureBlobContainerUrl,
      },
    },
    withAzureBlobType(AzureBlobType): {
      assert std.isString(AzureBlobType) : 'AzureBlobType must be a string',
      Properties+::: {
        AzureBlobType: AzureBlobType,
      },
    },
    withAzureAccessTier(AzureAccessTier): {
      assert std.isString(AzureAccessTier) : 'AzureAccessTier must be a string',
      Properties+::: {
        AzureAccessTier: AzureAccessTier,
      },
    },
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: {
        Subdirectory: Subdirectory,
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
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: {
        LocationArn: LocationArn,
      },
    },
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: {
        LocationUri: LocationUri,
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
