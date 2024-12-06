{
  new(
    NamespaceName,
  ): {
    local base = self,
    Properties: {
      NamespaceName:
        if !std.isString(NamespaceName) then (error 'NamespaceName must be a string')
        else if std.isEmpty(NamespaceName) then (error 'NamespaceName must be not empty')
        else if std.length(NamespaceName) < 3 then error ('NamespaceName should have at least 3 characters')
        else if std.length(NamespaceName) > 64 then error ('NamespaceName should have not more than 64 characters')
        else NamespaceName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RedshiftServerless::Namespace',
  },
  setAdminPasswordSecretKmsKeyId(AdminPasswordSecretKmsKeyId): {
    Properties+::: {
      AdminPasswordSecretKmsKeyId:
        if !std.isString(AdminPasswordSecretKmsKeyId) then (error 'AdminPasswordSecretKmsKeyId must be a string')
        else if std.isEmpty(AdminPasswordSecretKmsKeyId) then (error 'AdminPasswordSecretKmsKeyId must be not empty')
        else AdminPasswordSecretKmsKeyId,
    },
  },
  setAdminUserPassword(AdminUserPassword): {
    Properties+::: {
      AdminUserPassword:
        if !std.isString(AdminUserPassword) then (error 'AdminUserPassword must be a string')
        else if std.isEmpty(AdminUserPassword) then (error 'AdminUserPassword must be not empty')
        else if std.length(AdminUserPassword) < 8 then error ('AdminUserPassword should have at least 8 characters')
        else if std.length(AdminUserPassword) > 64 then error ('AdminUserPassword should have not more than 64 characters')
        else AdminUserPassword,
    },
  },
  setAdminUsername(AdminUsername): {
    Properties+::: {
      AdminUsername:
        if !std.isString(AdminUsername) then (error 'AdminUsername must be a string')
        else if std.isEmpty(AdminUsername) then (error 'AdminUsername must be not empty')
        else AdminUsername,
    },
  },
  setDbName(DbName): {
    Properties+::: {
      DbName:
        if !std.isString(DbName) then (error 'DbName must be a string')
        else if std.isEmpty(DbName) then (error 'DbName must be not empty')
        else if std.length(DbName) > 127 then error ('DbName should have not more than 127 characters')
        else DbName,
    },
  },
  setDefaultIamRoleArn(DefaultIamRoleArn): {
    Properties+::: {
      DefaultIamRoleArn:
        if !std.isString(DefaultIamRoleArn) then (error 'DefaultIamRoleArn must be a string')
        else if std.isEmpty(DefaultIamRoleArn) then (error 'DefaultIamRoleArn must be not empty')
        else DefaultIamRoleArn,
    },
  },
  setIamRoles(IamRoles): {
    Properties+::: {
      IamRoles:
        if !std.isArray(IamRoles) then (error 'IamRoles must be an array')
        else IamRoles,
    },
  },
  pushIamRoles(IamRoles): {
    Properties+::: {
      IamRoles+: IamRoles,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setLogExports(LogExports): {
    Properties+::: {
      LogExports:
        if !std.isArray(LogExports) then (error 'LogExports must be an array')
        else if std.length(LogExports) > 16 then error ('LogExports cannot have more than 16 items')
        else LogExports,
    },
  },
  pushLogExports(LogExports): {
    Properties+::: {
      LogExports+: LogExports,
    },
  },
  setManageAdminPassword(ManageAdminPassword): {
    Properties+::: {
      ManageAdminPassword:
        if !std.isBoolean(ManageAdminPassword) then (error 'ManageAdminPassword must be a boolean') else ManageAdminPassword,
    },
  },
  setNamespace(Namespace): {
    Properties+::: {
      Namespace:
        if !std.isObject(Namespace) then (error 'Namespace must be an object')
        else Namespace,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setFinalSnapshotName(FinalSnapshotName): {
    Properties+::: {
      FinalSnapshotName:
        if !std.isString(FinalSnapshotName) then (error 'FinalSnapshotName must be a string')
        else if std.isEmpty(FinalSnapshotName) then (error 'FinalSnapshotName must be not empty')
        else if std.length(FinalSnapshotName) > 255 then error ('FinalSnapshotName should have not more than 255 characters')
        else FinalSnapshotName,
    },
  },
  setFinalSnapshotRetentionPeriod(FinalSnapshotRetentionPeriod): {
    Properties+::: {
      FinalSnapshotRetentionPeriod:
        if !std.isNumber(FinalSnapshotRetentionPeriod) then (error 'FinalSnapshotRetentionPeriod must be an number')
        else FinalSnapshotRetentionPeriod,
    },
  },
  setNamespaceResourcePolicy(NamespaceResourcePolicy): {
    Properties+::: {
      NamespaceResourcePolicy:
        if !std.isObject(NamespaceResourcePolicy) then (error 'NamespaceResourcePolicy must be an object')
        else NamespaceResourcePolicy,
    },
  },
  setRedshiftIdcApplicationArn(RedshiftIdcApplicationArn): {
    Properties+::: {
      RedshiftIdcApplicationArn:
        if !std.isString(RedshiftIdcApplicationArn) then (error 'RedshiftIdcApplicationArn must be a string')
        else if std.isEmpty(RedshiftIdcApplicationArn) then (error 'RedshiftIdcApplicationArn must be not empty')
        else RedshiftIdcApplicationArn,
    },
  },
  setSnapshotCopyConfigurations(SnapshotCopyConfigurations): {
    Properties+::: {
      SnapshotCopyConfigurations:
        if !std.isArray(SnapshotCopyConfigurations) then (error 'SnapshotCopyConfigurations must be an array')
        else if std.length(SnapshotCopyConfigurations) > 1 then error ('SnapshotCopyConfigurations cannot have more than 1 items')
        else SnapshotCopyConfigurations,
    },
  },
  pushSnapshotCopyConfigurations(SnapshotCopyConfigurations): {
    Properties+::: {
      SnapshotCopyConfigurations+: SnapshotCopyConfigurations,
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
