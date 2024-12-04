{
  new(
    NamespaceName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(NamespaceName) : 'NamespaceName must be a string',
      NamespaceName: NamespaceName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RedshiftServerless::Namespace',
  },
  withAdminPasswordSecretKmsKeyId(AdminPasswordSecretKmsKeyId): {
    assert std.isString(AdminPasswordSecretKmsKeyId) : 'AdminPasswordSecretKmsKeyId must be a string',
    Properties+::: {
      AdminPasswordSecretKmsKeyId: AdminPasswordSecretKmsKeyId,
    },
  },
  withAdminUserPassword(AdminUserPassword): {
    assert std.isString(AdminUserPassword) : 'AdminUserPassword must be a string',
    Properties+::: {
      AdminUserPassword: AdminUserPassword,
    },
  },
  withAdminUsername(AdminUsername): {
    assert std.isString(AdminUsername) : 'AdminUsername must be a string',
    Properties+::: {
      AdminUsername: AdminUsername,
    },
  },
  withDbName(DbName): {
    assert std.isString(DbName) : 'DbName must be a string',
    Properties+::: {
      DbName: DbName,
    },
  },
  withDefaultIamRoleArn(DefaultIamRoleArn): {
    assert std.isString(DefaultIamRoleArn) : 'DefaultIamRoleArn must be a string',
    Properties+::: {
      DefaultIamRoleArn: DefaultIamRoleArn,
    },
  },
  withIamRoles(IamRoles): {
    Properties+::: {
      IamRoles: (if std.isArray(IamRoles) then IamRoles else [IamRoles]),
    },
  },
  withIamRolesMixin(IamRoles): {
    Properties+::: {
      IamRoles+: (if std.isArray(IamRoles) then IamRoles else [IamRoles]),
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withLogExports(LogExports): {
    Properties+::: {
      LogExports: (if std.isArray(LogExports) then LogExports else [LogExports]),
    },
  },
  withLogExportsMixin(LogExports): {
    Properties+::: {
      LogExports+: (if std.isArray(LogExports) then LogExports else [LogExports]),
    },
  },
  withManageAdminPassword(ManageAdminPassword): {
    assert std.isBoolean(ManageAdminPassword) : 'ManageAdminPassword must be a boolean',
    Properties+::: {
      ManageAdminPassword: ManageAdminPassword,
    },
  },
  withNamespace(Namespace): {
    assert std.isObject(Namespace) : 'Namespace must be a object',
    Properties+::: {
      Namespace: Namespace,
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
  withFinalSnapshotName(FinalSnapshotName): {
    assert std.isString(FinalSnapshotName) : 'FinalSnapshotName must be a string',
    Properties+::: {
      FinalSnapshotName: FinalSnapshotName,
    },
  },
  withFinalSnapshotRetentionPeriod(FinalSnapshotRetentionPeriod): {
    assert std.isNumber(FinalSnapshotRetentionPeriod) : 'FinalSnapshotRetentionPeriod must be a number',
    Properties+::: {
      FinalSnapshotRetentionPeriod: FinalSnapshotRetentionPeriod,
    },
  },
  withNamespaceResourcePolicy(NamespaceResourcePolicy): {
    assert std.isObject(NamespaceResourcePolicy) : 'NamespaceResourcePolicy must be a object',
    Properties+::: {
      NamespaceResourcePolicy: NamespaceResourcePolicy,
    },
  },
  withRedshiftIdcApplicationArn(RedshiftIdcApplicationArn): {
    assert std.isString(RedshiftIdcApplicationArn) : 'RedshiftIdcApplicationArn must be a string',
    Properties+::: {
      RedshiftIdcApplicationArn: RedshiftIdcApplicationArn,
    },
  },
  withSnapshotCopyConfigurations(SnapshotCopyConfigurations): {
    Properties+::: {
      SnapshotCopyConfigurations: (if std.isArray(SnapshotCopyConfigurations) then SnapshotCopyConfigurations else [SnapshotCopyConfigurations]),
    },
  },
  withSnapshotCopyConfigurationsMixin(SnapshotCopyConfigurations): {
    Properties+::: {
      SnapshotCopyConfigurations+: (if std.isArray(SnapshotCopyConfigurations) then SnapshotCopyConfigurations else [SnapshotCopyConfigurations]),
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
