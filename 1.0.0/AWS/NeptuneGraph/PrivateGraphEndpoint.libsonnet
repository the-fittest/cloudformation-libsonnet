{
  new(
    GraphIdentifier,
    VpcId,
  ): {
    local base = self,
    Properties: {
      GraphIdentifier:
        if !std.isString(GraphIdentifier) then (error 'GraphIdentifier must be a string')
        else if std.isEmpty(GraphIdentifier) then (error 'GraphIdentifier must be not empty')
        else GraphIdentifier,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NeptuneGraph::PrivateGraphEndpoint',
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  setSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
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
  setPrivateGraphEndpointIdentifier(PrivateGraphEndpointIdentifier): {
    Properties+::: {
      PrivateGraphEndpointIdentifier:
        if !std.isString(PrivateGraphEndpointIdentifier) then (error 'PrivateGraphEndpointIdentifier must be a string')
        else if std.isEmpty(PrivateGraphEndpointIdentifier) then (error 'PrivateGraphEndpointIdentifier must be not empty')
        else PrivateGraphEndpointIdentifier,
    },
  },
  setVpcEndpointId(VpcEndpointId): {
    Properties+::: {
      VpcEndpointId:
        if !std.isString(VpcEndpointId) then (error 'VpcEndpointId must be a string')
        else if std.isEmpty(VpcEndpointId) then (error 'VpcEndpointId must be not empty')
        else VpcEndpointId,
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
