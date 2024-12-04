{
  // AWS DMS MigrationProject
  MigrationProject: {
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
      Type: 'AWS::DMS::MigrationProject',
    },
    withMigrationProjectName(MigrationProjectName): {
      assert std.isString(MigrationProjectName) : 'MigrationProjectName must be a string',
      Properties+::: {
        MigrationProjectName: MigrationProjectName,
      },
    },
    withMigrationProjectIdentifier(MigrationProjectIdentifier): {
      assert std.isString(MigrationProjectIdentifier) : 'MigrationProjectIdentifier must be a string',
      Properties+::: {
        MigrationProjectIdentifier: MigrationProjectIdentifier,
      },
    },
    withMigrationProjectArn(MigrationProjectArn): {
      assert std.isString(MigrationProjectArn) : 'MigrationProjectArn must be a string',
      Properties+::: {
        MigrationProjectArn: MigrationProjectArn,
      },
    },
    withMigrationProjectCreationTime(MigrationProjectCreationTime): {
      assert std.isString(MigrationProjectCreationTime) : 'MigrationProjectCreationTime must be a string',
      Properties+::: {
        MigrationProjectCreationTime: MigrationProjectCreationTime,
      },
    },
    withInstanceProfileIdentifier(InstanceProfileIdentifier): {
      assert std.isString(InstanceProfileIdentifier) : 'InstanceProfileIdentifier must be a string',
      Properties+::: {
        InstanceProfileIdentifier: InstanceProfileIdentifier,
      },
    },
    withInstanceProfileName(InstanceProfileName): {
      assert std.isString(InstanceProfileName) : 'InstanceProfileName must be a string',
      Properties+::: {
        InstanceProfileName: InstanceProfileName,
      },
    },
    withInstanceProfileArn(InstanceProfileArn): {
      assert std.isString(InstanceProfileArn) : 'InstanceProfileArn must be a string',
      Properties+::: {
        InstanceProfileArn: InstanceProfileArn,
      },
    },
    withTransformationRules(TransformationRules): {
      assert std.isString(TransformationRules) : 'TransformationRules must be a string',
      Properties+::: {
        TransformationRules: TransformationRules,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withSchemaConversionApplicationAttributes(SchemaConversionApplicationAttributes): {
      assert std.isObject(SchemaConversionApplicationAttributes) : 'SchemaConversionApplicationAttributes must be a object',
      Properties+::: {
        SchemaConversionApplicationAttributes: SchemaConversionApplicationAttributes,
      },
    },
    withSourceDataProviderDescriptors(SourceDataProviderDescriptors): {
      Properties+::: {
        SourceDataProviderDescriptors: (if std.isArray(SourceDataProviderDescriptors) then SourceDataProviderDescriptors else [SourceDataProviderDescriptors]),
      },
    },
    withSourceDataProviderDescriptorsMixin(SourceDataProviderDescriptors): {
      Properties+::: {
        SourceDataProviderDescriptors+: (if std.isArray(SourceDataProviderDescriptors) then SourceDataProviderDescriptors else [SourceDataProviderDescriptors]),
      },
    },
    withTargetDataProviderDescriptors(TargetDataProviderDescriptors): {
      Properties+::: {
        TargetDataProviderDescriptors: (if std.isArray(TargetDataProviderDescriptors) then TargetDataProviderDescriptors else [TargetDataProviderDescriptors]),
      },
    },
    withTargetDataProviderDescriptorsMixin(TargetDataProviderDescriptors): {
      Properties+::: {
        TargetDataProviderDescriptors+: (if std.isArray(TargetDataProviderDescriptors) then TargetDataProviderDescriptors else [TargetDataProviderDescriptors]),
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
