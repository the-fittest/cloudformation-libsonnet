{
  new(
    DBProxyName,
    TargetGroupName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DBProxyName) : 'DBProxyName must be a string',
      DBProxyName: DBProxyName,
      assert std.isString(TargetGroupName) : 'TargetGroupName must be a string',
      TargetGroupName: TargetGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::DBProxyTargetGroup',
  },
  withTargetGroupArn(TargetGroupArn): {
    assert std.isString(TargetGroupArn) : 'TargetGroupArn must be a string',
    Properties+::: {
      TargetGroupArn: TargetGroupArn,
    },
  },
  withConnectionPoolConfigurationInfo(ConnectionPoolConfigurationInfo): {
    assert std.isObject(ConnectionPoolConfigurationInfo) : 'ConnectionPoolConfigurationInfo must be a object',
    Properties+::: {
      ConnectionPoolConfigurationInfo: ConnectionPoolConfigurationInfo,
    },
  },
  withDBInstanceIdentifiers(DBInstanceIdentifiers): {
    Properties+::: {
      DBInstanceIdentifiers: (if std.isArray(DBInstanceIdentifiers) then DBInstanceIdentifiers else [DBInstanceIdentifiers]),
    },
  },
  withDBInstanceIdentifiersMixin(DBInstanceIdentifiers): {
    Properties+::: {
      DBInstanceIdentifiers+: (if std.isArray(DBInstanceIdentifiers) then DBInstanceIdentifiers else [DBInstanceIdentifiers]),
    },
  },
  withDBClusterIdentifiers(DBClusterIdentifiers): {
    Properties+::: {
      DBClusterIdentifiers: (if std.isArray(DBClusterIdentifiers) then DBClusterIdentifiers else [DBClusterIdentifiers]),
    },
  },
  withDBClusterIdentifiersMixin(DBClusterIdentifiers): {
    Properties+::: {
      DBClusterIdentifiers+: (if std.isArray(DBClusterIdentifiers) then DBClusterIdentifiers else [DBClusterIdentifiers]),
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
