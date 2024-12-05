{
  new(
    ClusterName,
    AdminUserName,
    ShardCapacity,
    ShardCount,
    AuthType,
  ): {
    local base = self,
    Properties: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else if std.length(ClusterName) < 1 then error ('ClusterName should have at least 1 characters')
        else if std.length(ClusterName) > 50 then error ('ClusterName should have not more than 50 characters')
        else ClusterName,
      AdminUserName:
        if !std.isString(AdminUserName) then (error 'AdminUserName must be a string')
        else if std.isEmpty(AdminUserName) then (error 'AdminUserName must be not empty')
        else AdminUserName,
      ShardCapacity:
        if !std.isNumber(ShardCapacity) then (error 'ShardCapacity must be an number')
        else ShardCapacity,
      ShardCount:
        if !std.isNumber(ShardCount) then (error 'ShardCount must be an number')
        else ShardCount,
      AuthType:
        if !std.isString(AuthType) then (error 'AuthType must be a string')
        else if std.isEmpty(AuthType) then (error 'AuthType must be not empty')
        else AuthType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DocDBElastic::Cluster',
  },
  setClusterArn(ClusterArn): {
    Properties+::: {
      ClusterArn:
        if !std.isString(ClusterArn) then (error 'ClusterArn must be a string')
        else if std.isEmpty(ClusterArn) then (error 'ClusterArn must be not empty')
        else ClusterArn,
    },
  },
  setClusterEndpoint(ClusterEndpoint): {
    Properties+::: {
      ClusterEndpoint:
        if !std.isString(ClusterEndpoint) then (error 'ClusterEndpoint must be a string')
        else if std.isEmpty(ClusterEndpoint) then (error 'ClusterEndpoint must be not empty')
        else ClusterEndpoint,
    },
  },
  setAdminUserPassword(AdminUserPassword): {
    Properties+::: {
      AdminUserPassword:
        if !std.isString(AdminUserPassword) then (error 'AdminUserPassword must be a string')
        else if std.isEmpty(AdminUserPassword) then (error 'AdminUserPassword must be not empty')
        else AdminUserPassword,
    },
  },
  setVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds:
        if !std.isArray(VpcSecurityGroupIds) then (error 'VpcSecurityGroupIds must be an array')
        else VpcSecurityGroupIds,
    },
  },
  setVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: VpcSecurityGroupIds,
    },
  },
  setSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else SubnetIds,
    },
  },
  setSubnetIdsMixin(SubnetIds): {
    Properties+::: {
      SubnetIds+: SubnetIds,
    },
  },
  setPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    Properties+::: {
      PreferredMaintenanceWindow:
        if !std.isString(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be a string')
        else if std.isEmpty(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be not empty')
        else PreferredMaintenanceWindow,
    },
  },
  setPreferredBackupWindow(PreferredBackupWindow): {
    Properties+::: {
      PreferredBackupWindow:
        if !std.isString(PreferredBackupWindow) then (error 'PreferredBackupWindow must be a string')
        else if std.isEmpty(PreferredBackupWindow) then (error 'PreferredBackupWindow must be not empty')
        else PreferredBackupWindow,
    },
  },
  setBackupRetentionPeriod(BackupRetentionPeriod): {
    Properties+::: {
      BackupRetentionPeriod:
        if !std.isNumber(BackupRetentionPeriod) then (error 'BackupRetentionPeriod must be an number')
        else BackupRetentionPeriod,
    },
  },
  setShardInstanceCount(ShardInstanceCount): {
    Properties+::: {
      ShardInstanceCount:
        if !std.isNumber(ShardInstanceCount) then (error 'ShardInstanceCount must be an number')
        else ShardInstanceCount,
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
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
