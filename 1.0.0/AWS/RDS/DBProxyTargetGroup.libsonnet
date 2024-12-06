{
  new(
    DBProxyName,
    TargetGroupName,
  ): {
    local base = self,
    Properties: {
      DBProxyName:
        if !std.isString(DBProxyName) then (error 'DBProxyName must be a string')
        else if std.isEmpty(DBProxyName) then (error 'DBProxyName must be not empty')
        else if std.length(DBProxyName) > 64 then error ('DBProxyName should have not more than 64 characters')
        else DBProxyName,
      TargetGroupName:
        if !std.isString(TargetGroupName) then (error 'TargetGroupName must be a string')
        else if std.isEmpty(TargetGroupName) then (error 'TargetGroupName must be not empty')
        else if TargetGroupName != 'default' then (error "TargetGroupName should be 'default'")
        else TargetGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::DBProxyTargetGroup',
  },
  setTargetGroupArn(TargetGroupArn): {
    Properties+::: {
      TargetGroupArn:
        if !std.isString(TargetGroupArn) then (error 'TargetGroupArn must be a string')
        else if std.isEmpty(TargetGroupArn) then (error 'TargetGroupArn must be not empty')
        else TargetGroupArn,
    },
  },
  setConnectionPoolConfigurationInfo(ConnectionPoolConfigurationInfo): {
    Properties+::: {
      ConnectionPoolConfigurationInfo:
        if !std.isObject(ConnectionPoolConfigurationInfo) then (error 'ConnectionPoolConfigurationInfo must be an object')
        else ConnectionPoolConfigurationInfo,
    },
  },
  setDBInstanceIdentifiers(DBInstanceIdentifiers): {
    Properties+::: {
      DBInstanceIdentifiers:
        if !std.isArray(DBInstanceIdentifiers) then (error 'DBInstanceIdentifiers must be an array')
        else DBInstanceIdentifiers,
    },
  },
  pushDBInstanceIdentifiers(DBInstanceIdentifiers): {
    Properties+::: {
      DBInstanceIdentifiers+: DBInstanceIdentifiers,
    },
  },
  setDBClusterIdentifiers(DBClusterIdentifiers): {
    Properties+::: {
      DBClusterIdentifiers:
        if !std.isArray(DBClusterIdentifiers) then (error 'DBClusterIdentifiers must be an array')
        else DBClusterIdentifiers,
    },
  },
  pushDBClusterIdentifiers(DBClusterIdentifiers): {
    Properties+::: {
      DBClusterIdentifiers+: DBClusterIdentifiers,
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
