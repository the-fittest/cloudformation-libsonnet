{
  new(
    Auth,
    DBProxyName,
    EngineFamily,
    RoleArn,
    VpcSubnetIds,
  ): {
    local base = self,
    Properties: {
      Auth:
        if !std.isArray(Auth) then (error 'Auth must be an array')
        else if std.length(Auth) < 1 then error ('Auth cannot have less than 1 items')
        else Auth,
      DBProxyName:
        if !std.isString(DBProxyName) then (error 'DBProxyName must be a string')
        else if std.isEmpty(DBProxyName) then (error 'DBProxyName must be not empty')
        else if std.length(DBProxyName) > 64 then error ('DBProxyName should have not more than 64 characters')
        else DBProxyName,
      EngineFamily:
        if !std.isString(EngineFamily) then (error 'EngineFamily must be a string')
        else if std.isEmpty(EngineFamily) then (error 'EngineFamily must be not empty')
        else if EngineFamily != 'MYSQL' && EngineFamily != 'POSTGRESQL' && EngineFamily != 'SQLSERVER' then (error "EngineFamily should be 'MYSQL' or 'POSTGRESQL' or 'SQLSERVER'")
        else EngineFamily,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
      VpcSubnetIds:
        if !std.isArray(VpcSubnetIds) then (error 'VpcSubnetIds must be an array')
        else if std.length(VpcSubnetIds) < 2 then error ('VpcSubnetIds cannot have less than 2 items')
        else VpcSubnetIds,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::DBProxy',
  },
  setDBProxyArn(DBProxyArn): {
    Properties+::: {
      DBProxyArn:
        if !std.isString(DBProxyArn) then (error 'DBProxyArn must be a string')
        else if std.isEmpty(DBProxyArn) then (error 'DBProxyArn must be not empty')
        else DBProxyArn,
    },
  },
  setDebugLogging(DebugLogging): {
    Properties+::: {
      DebugLogging:
        if !std.isBoolean(DebugLogging) then (error 'DebugLogging must be a boolean') else DebugLogging,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else Endpoint,
    },
  },
  setIdleClientTimeout(IdleClientTimeout): {
    Properties+::: {
      IdleClientTimeout:
        if !std.isNumber(IdleClientTimeout) then (error 'IdleClientTimeout must be an number')
        else IdleClientTimeout,
    },
  },
  setRequireTLS(RequireTLS): {
    Properties+::: {
      RequireTLS:
        if !std.isBoolean(RequireTLS) then (error 'RequireTLS must be a boolean') else RequireTLS,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setVpcId(VpcId): {
    Properties+::: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
  },
  setVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds:
        if !std.isArray(VpcSecurityGroupIds) then (error 'VpcSecurityGroupIds must be an array')
        else if std.length(VpcSecurityGroupIds) < 1 then error ('VpcSecurityGroupIds cannot have less than 1 items')
        else VpcSecurityGroupIds,
    },
  },
  setVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: VpcSecurityGroupIds,
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
