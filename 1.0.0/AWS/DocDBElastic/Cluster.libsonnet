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
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      ClusterName: ClusterName,
      assert std.isString(AdminUserName) : 'AdminUserName must be a string',
      AdminUserName: AdminUserName,
      assert std.isNumber(ShardCapacity) : 'ShardCapacity must be a number',
      ShardCapacity: ShardCapacity,
      assert std.isNumber(ShardCount) : 'ShardCount must be a number',
      ShardCount: ShardCount,
      assert std.isString(AuthType) : 'AuthType must be a string',
      AuthType: AuthType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DocDBElastic::Cluster',
  },
  withClusterArn(ClusterArn): {
    assert std.isString(ClusterArn) : 'ClusterArn must be a string',
    Properties+::: {
      ClusterArn: ClusterArn,
    },
  },
  withClusterEndpoint(ClusterEndpoint): {
    assert std.isString(ClusterEndpoint) : 'ClusterEndpoint must be a string',
    Properties+::: {
      ClusterEndpoint: ClusterEndpoint,
    },
  },
  withAdminUserPassword(AdminUserPassword): {
    assert std.isString(AdminUserPassword) : 'AdminUserPassword must be a string',
    Properties+::: {
      AdminUserPassword: AdminUserPassword,
    },
  },
  withVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
    },
  },
  withVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
    },
  },
  withSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
    },
  },
  withSubnetIdsMixin(SubnetIds): {
    Properties+::: {
      SubnetIds+: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
    },
  },
  withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
    Properties+::: {
      PreferredMaintenanceWindow: PreferredMaintenanceWindow,
    },
  },
  withPreferredBackupWindow(PreferredBackupWindow): {
    assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
    Properties+::: {
      PreferredBackupWindow: PreferredBackupWindow,
    },
  },
  withBackupRetentionPeriod(BackupRetentionPeriod): {
    assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a number',
    Properties+::: {
      BackupRetentionPeriod: BackupRetentionPeriod,
    },
  },
  withShardInstanceCount(ShardInstanceCount): {
    assert std.isNumber(ShardInstanceCount) : 'ShardInstanceCount must be a number',
    Properties+::: {
      ShardInstanceCount: ShardInstanceCount,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
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
}
