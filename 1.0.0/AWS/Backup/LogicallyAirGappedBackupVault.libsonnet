{
  new(
    BackupVaultName,
    MinRetentionDays,
    MaxRetentionDays,
  ): {
    local base = self,
    Properties: {
      assert std.isString(BackupVaultName) : 'BackupVaultName must be a string',
      BackupVaultName: BackupVaultName,
      assert std.isNumber(MinRetentionDays) : 'MinRetentionDays must be a number',
      MinRetentionDays: MinRetentionDays,
      assert std.isNumber(MaxRetentionDays) : 'MaxRetentionDays must be a number',
      MaxRetentionDays: MaxRetentionDays,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::LogicallyAirGappedBackupVault',
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
  withNotifications(Notifications): {
    assert std.isObject(Notifications) : 'Notifications must be a object',
    Properties+::: {
      Notifications: Notifications,
    },
  },
  withEncryptionKeyArn(EncryptionKeyArn): {
    assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
    Properties+::: {
      EncryptionKeyArn: EncryptionKeyArn,
    },
  },
  withBackupVaultArn(BackupVaultArn): {
    assert std.isString(BackupVaultArn) : 'BackupVaultArn must be a string',
    Properties+::: {
      BackupVaultArn: BackupVaultArn,
    },
  },
  withVaultState(VaultState): {
    assert std.isString(VaultState) : 'VaultState must be a string',
    Properties+::: {
      VaultState: VaultState,
    },
  },
  withVaultType(VaultType): {
    assert std.isString(VaultType) : 'VaultType must be a string',
    Properties+::: {
      VaultType: VaultType,
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
