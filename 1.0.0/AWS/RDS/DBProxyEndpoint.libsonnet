{
  new(
    DBProxyName,
    DBProxyEndpointName,
    VpcSubnetIds,
  ): {
    local base = self,
    Properties: {
      DBProxyName:
        if !std.isString(DBProxyName) then (error 'DBProxyName must be a string')
        else if std.isEmpty(DBProxyName) then (error 'DBProxyName must be not empty')
        else if std.length(DBProxyName) > 64 then error ('DBProxyName should have not more than 64 characters')
        else DBProxyName,
      DBProxyEndpointName:
        if !std.isString(DBProxyEndpointName) then (error 'DBProxyEndpointName must be a string')
        else if std.isEmpty(DBProxyEndpointName) then (error 'DBProxyEndpointName must be not empty')
        else if std.length(DBProxyEndpointName) > 64 then error ('DBProxyEndpointName should have not more than 64 characters')
        else DBProxyEndpointName,
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
    Type: 'AWS::RDS::DBProxyEndpoint',
  },
  setDBProxyEndpointArn(DBProxyEndpointArn): {
    Properties+::: {
      DBProxyEndpointArn:
        if !std.isString(DBProxyEndpointArn) then (error 'DBProxyEndpointArn must be a string')
        else if std.isEmpty(DBProxyEndpointArn) then (error 'DBProxyEndpointArn must be not empty')
        else DBProxyEndpointArn,
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
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else if std.length(Endpoint) > 256 then error ('Endpoint should have not more than 256 characters')
        else Endpoint,
    },
  },
  setTargetRole(TargetRole): {
    Properties+::: {
      TargetRole:
        if !std.isString(TargetRole) then (error 'TargetRole must be a string')
        else if std.isEmpty(TargetRole) then (error 'TargetRole must be not empty')
        else if TargetRole != 'READ_WRITE' && TargetRole != 'READ_ONLY' then (error "TargetRole should be 'READ_WRITE' or 'READ_ONLY'")
        else TargetRole,
    },
  },
  setIsDefault(IsDefault): {
    Properties+::: {
      IsDefault:
        if !std.isBoolean(IsDefault) then (error 'IsDefault must be a boolean') else IsDefault,
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
