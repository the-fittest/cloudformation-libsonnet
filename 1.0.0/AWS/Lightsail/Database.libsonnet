{
  // AWS Lightsail Database
  Database: {
    new(
      RelationalDatabaseName,
      RelationalDatabaseBlueprintId,
      RelationalDatabaseBundleId,
      MasterDatabaseName,
      MasterUsername,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RelationalDatabaseName) : 'RelationalDatabaseName must be a string',
        RelationalDatabaseName: RelationalDatabaseName,
        assert std.isString(RelationalDatabaseBlueprintId) : 'RelationalDatabaseBlueprintId must be a string',
        RelationalDatabaseBlueprintId: RelationalDatabaseBlueprintId,
        assert std.isString(RelationalDatabaseBundleId) : 'RelationalDatabaseBundleId must be a string',
        RelationalDatabaseBundleId: RelationalDatabaseBundleId,
        assert std.isString(MasterDatabaseName) : 'MasterDatabaseName must be a string',
        MasterDatabaseName: MasterDatabaseName,
        assert std.isString(MasterUsername) : 'MasterUsername must be a string',
        MasterUsername: MasterUsername,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Lightsail::Database',
    },
    withDatabaseArn(DatabaseArn): {
      assert std.isString(DatabaseArn) : 'DatabaseArn must be a string',
      Properties+::: {
        DatabaseArn: DatabaseArn,
      },
    },
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: {
        AvailabilityZone: AvailabilityZone,
      },
    },
    withMasterUserPassword(MasterUserPassword): {
      assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
      Properties+::: {
        MasterUserPassword: MasterUserPassword,
      },
    },
    withPreferredBackupWindow(PreferredBackupWindow): {
      assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
      Properties+::: {
        PreferredBackupWindow: PreferredBackupWindow,
      },
    },
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: {
        PreferredMaintenanceWindow: PreferredMaintenanceWindow,
      },
    },
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: {
        PubliclyAccessible: PubliclyAccessible,
      },
    },
    withCaCertificateIdentifier(CaCertificateIdentifier): {
      assert std.isString(CaCertificateIdentifier) : 'CaCertificateIdentifier must be a string',
      Properties+::: {
        CaCertificateIdentifier: CaCertificateIdentifier,
      },
    },
    withBackupRetention(BackupRetention): {
      assert std.isBoolean(BackupRetention) : 'BackupRetention must be a boolean',
      Properties+::: {
        BackupRetention: BackupRetention,
      },
    },
    withRotateMasterUserPassword(RotateMasterUserPassword): {
      assert std.isBoolean(RotateMasterUserPassword) : 'RotateMasterUserPassword must be a boolean',
      Properties+::: {
        RotateMasterUserPassword: RotateMasterUserPassword,
      },
    },
    withRelationalDatabaseParameters(RelationalDatabaseParameters): {
      Properties+::: {
        RelationalDatabaseParameters: (if std.isArray(RelationalDatabaseParameters) then RelationalDatabaseParameters else [RelationalDatabaseParameters]),
      },
    },
    withRelationalDatabaseParametersMixin(RelationalDatabaseParameters): {
      Properties+::: {
        RelationalDatabaseParameters+: (if std.isArray(RelationalDatabaseParameters) then RelationalDatabaseParameters else [RelationalDatabaseParameters]),
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
