{
  new(
    BackupVaultName,
  ): {
    local base = self,
    Properties: {
      BackupVaultName:
        if !std.isString(BackupVaultName) then (error 'BackupVaultName must be a string')
        else if std.isEmpty(BackupVaultName) then (error 'BackupVaultName must be not empty')
        else BackupVaultName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::BackupVault',
  },
  setAccessPolicy(AccessPolicy): {
    Properties+::: {
      AccessPolicy: AccessPolicy,
    },
  },
  setBackupVaultTags(BackupVaultTags): {
    Properties+::: {
      BackupVaultTags:
        if !std.isObject(BackupVaultTags) then (error 'BackupVaultTags must be an object')
        else BackupVaultTags,
    },
  },
  setEncryptionKeyArn(EncryptionKeyArn): {
    Properties+::: {
      EncryptionKeyArn:
        if !std.isString(EncryptionKeyArn) then (error 'EncryptionKeyArn must be a string')
        else if std.isEmpty(EncryptionKeyArn) then (error 'EncryptionKeyArn must be not empty')
        else EncryptionKeyArn,
    },
  },
  setNotifications(Notifications): {
    Properties+::: {
      Notifications:
        if !std.isObject(Notifications) then (error 'Notifications must be an object')
        else if !std.objectHas(Notifications, 'SNSTopicArn') then (error ' have attribute SNSTopicArn')
        else if !std.objectHas(Notifications, 'BackupVaultEvents') then (error ' have attribute BackupVaultEvents')
        else Notifications,
    },
  },
  setLockConfiguration(LockConfiguration): {
    Properties+::: {
      LockConfiguration:
        if !std.isObject(LockConfiguration) then (error 'LockConfiguration must be an object')
        else if !std.objectHas(LockConfiguration, 'MinRetentionDays') then (error ' have attribute MinRetentionDays')
        else LockConfiguration,
    },
  },
  setBackupVaultArn(BackupVaultArn): {
    Properties+::: {
      BackupVaultArn:
        if !std.isString(BackupVaultArn) then (error 'BackupVaultArn must be a string')
        else if std.isEmpty(BackupVaultArn) then (error 'BackupVaultArn must be not empty')
        else BackupVaultArn,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
