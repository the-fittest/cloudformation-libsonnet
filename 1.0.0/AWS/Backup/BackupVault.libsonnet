{
  // AWS Backup BackupVault
  BackupVault: {
    new(
      BackupVaultName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BackupVaultName) : 'BackupVaultName must be a string',
        BackupVaultName: BackupVaultName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Backup::BackupVault',
    },
    withAccessPolicy(AccessPolicy): {
      Properties+::: {
        AccessPolicy: AccessPolicy,
      },
    },
    withBackupVaultTags(BackupVaultTags): {
      assert std.isObject(BackupVaultTags) : 'BackupVaultTags must be a object',
      Properties+::: {
        BackupVaultTags: BackupVaultTags,
      },
    },
    withEncryptionKeyArn(EncryptionKeyArn): {
      assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
      Properties+::: {
        EncryptionKeyArn: EncryptionKeyArn,
      },
    },
    withNotifications(Notifications): {
      assert std.isObject(Notifications) : 'Notifications must be a object',
      Properties+::: {
        Notifications: Notifications,
      },
    },
    withLockConfiguration(LockConfiguration): {
      assert std.isObject(LockConfiguration) : 'LockConfiguration must be a object',
      Properties+::: {
        LockConfiguration: LockConfiguration,
      },
    },
    withBackupVaultArn(BackupVaultArn): {
      assert std.isString(BackupVaultArn) : 'BackupVaultArn must be a string',
      Properties+::: {
        BackupVaultArn: BackupVaultArn,
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
