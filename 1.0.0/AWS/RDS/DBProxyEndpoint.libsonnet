{
  new(
    DBProxyName,
    DBProxyEndpointName,
    VpcSubnetIds,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DBProxyName) : 'DBProxyName must be a string',
      DBProxyName: DBProxyName,
      assert std.isString(DBProxyEndpointName) : 'DBProxyEndpointName must be a string',
      DBProxyEndpointName: DBProxyEndpointName,
      VpcSubnetIds: (if std.isArray(VpcSubnetIds) then VpcSubnetIds else [VpcSubnetIds]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::DBProxyEndpoint',
  },
  withDBProxyEndpointArn(DBProxyEndpointArn): {
    assert std.isString(DBProxyEndpointArn) : 'DBProxyEndpointArn must be a string',
    Properties+::: {
      DBProxyEndpointArn: DBProxyEndpointArn,
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
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
    },
  },
  withTargetRole(TargetRole): {
    assert std.isString(TargetRole) : 'TargetRole must be a string',
    assert TargetRole == 'READ_WRITE' || TargetRole == 'READ_ONLY' : "TargetRole should be 'READ_WRITE' or 'READ_ONLY'",
    Properties+::: {
      TargetRole: TargetRole,
    },
  },
  withIsDefault(IsDefault): {
    assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
    Properties+::: {
      IsDefault: IsDefault,
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
