{
  // AWS RDS DBProxy
  DBProxy: {
    new(
      Auth,
      DBProxyName,
      EngineFamily,
      RoleArn,
      VpcSubnetIds,
    ): {
      local base = self,
      Properties: {
        Auth: (if std.isArray(Auth) then Auth else [Auth]),
        assert std.isString(DBProxyName) : 'DBProxyName must be a string',
        DBProxyName: DBProxyName,
        assert std.isString(EngineFamily) : 'EngineFamily must be a string',
        EngineFamily: EngineFamily,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        VpcSubnetIds: (if std.isArray(VpcSubnetIds) then VpcSubnetIds else [VpcSubnetIds]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RDS::DBProxy',
    },
    withDBProxyArn(DBProxyArn): {
      assert std.isString(DBProxyArn) : 'DBProxyArn must be a string',
      Properties+::: {
        DBProxyArn: DBProxyArn,
      },
    },
    withDebugLogging(DebugLogging): {
      assert std.isBoolean(DebugLogging) : 'DebugLogging must be a boolean',
      Properties+::: {
        DebugLogging: DebugLogging,
      },
    },
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: {
        Endpoint: Endpoint,
      },
    },
    withIdleClientTimeout(IdleClientTimeout): {
      assert std.isNumber(IdleClientTimeout) : 'IdleClientTimeout must be a number',
      Properties+::: {
        IdleClientTimeout: IdleClientTimeout,
      },
    },
    withRequireTLS(RequireTLS): {
      assert std.isBoolean(RequireTLS) : 'RequireTLS must be a boolean',
      Properties+::: {
        RequireTLS: RequireTLS,
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
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: {
        VpcId: VpcId,
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
