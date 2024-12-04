{
  // AWS DMS DataMigration
  DataMigration: {
    new(
      DataMigrationType,
      MigrationProjectIdentifier,
      ServiceAccessRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DataMigrationType) : 'DataMigrationType must be a string',
        DataMigrationType: DataMigrationType,
        assert std.isString(MigrationProjectIdentifier) : 'MigrationProjectIdentifier must be a string',
        MigrationProjectIdentifier: MigrationProjectIdentifier,
        assert std.isString(ServiceAccessRoleArn) : 'ServiceAccessRoleArn must be a string',
        ServiceAccessRoleArn: ServiceAccessRoleArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DMS::DataMigration',
    },
    withDataMigrationName(DataMigrationName): {
      assert std.isString(DataMigrationName) : 'DataMigrationName must be a string',
      Properties+::: {
        DataMigrationName: DataMigrationName,
      },
    },
    withDataMigrationArn(DataMigrationArn): {
      assert std.isString(DataMigrationArn) : 'DataMigrationArn must be a string',
      Properties+::: {
        DataMigrationArn: DataMigrationArn,
      },
    },
    withDataMigrationIdentifier(DataMigrationIdentifier): {
      assert std.isString(DataMigrationIdentifier) : 'DataMigrationIdentifier must be a string',
      Properties+::: {
        DataMigrationIdentifier: DataMigrationIdentifier,
      },
    },
    withDataMigrationCreateTime(DataMigrationCreateTime): {
      assert std.isString(DataMigrationCreateTime) : 'DataMigrationCreateTime must be a string',
      Properties+::: {
        DataMigrationCreateTime: DataMigrationCreateTime,
      },
    },
    withDataMigrationSettings(DataMigrationSettings): {
      assert std.isObject(DataMigrationSettings) : 'DataMigrationSettings must be a object',
      Properties+::: {
        DataMigrationSettings: DataMigrationSettings,
      },
    },
    withSourceDataSettings(SourceDataSettings): {
      Properties+::: {
        SourceDataSettings: (if std.isArray(SourceDataSettings) then SourceDataSettings else [SourceDataSettings]),
      },
    },
    withSourceDataSettingsMixin(SourceDataSettings): {
      Properties+::: {
        SourceDataSettings+: (if std.isArray(SourceDataSettings) then SourceDataSettings else [SourceDataSettings]),
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
