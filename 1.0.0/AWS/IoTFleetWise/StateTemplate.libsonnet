{
  // AWS IoTFleetWise StateTemplate
  StateTemplate: {
    new(
      Name,
      SignalCatalogArn,
      StateTemplateProperties,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(SignalCatalogArn) : 'SignalCatalogArn must be a string',
        SignalCatalogArn: SignalCatalogArn,
        StateTemplateProperties: (if std.isArray(StateTemplateProperties) then StateTemplateProperties else [StateTemplateProperties]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoTFleetWise::StateTemplate',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: {
        LastModificationTime: LastModificationTime,
      },
    },
    withDataExtraDimensions(DataExtraDimensions): {
      Properties+::: {
        DataExtraDimensions: (if std.isArray(DataExtraDimensions) then DataExtraDimensions else [DataExtraDimensions]),
      },
    },
    withDataExtraDimensionsMixin(DataExtraDimensions): {
      Properties+::: {
        DataExtraDimensions+: (if std.isArray(DataExtraDimensions) then DataExtraDimensions else [DataExtraDimensions]),
      },
    },
    withMetadataExtraDimensions(MetadataExtraDimensions): {
      Properties+::: {
        MetadataExtraDimensions: (if std.isArray(MetadataExtraDimensions) then MetadataExtraDimensions else [MetadataExtraDimensions]),
      },
    },
    withMetadataExtraDimensionsMixin(MetadataExtraDimensions): {
      Properties+::: {
        MetadataExtraDimensions+: (if std.isArray(MetadataExtraDimensions) then MetadataExtraDimensions else [MetadataExtraDimensions]),
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