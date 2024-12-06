{
  new(
    ClusterIdentifier,
    SubnetGroupName,
    EndpointName,
    VpcSecurityGroupIds,
  ): {
    local base = self,
    Properties: {
      ClusterIdentifier:
        if !std.isString(ClusterIdentifier) then (error 'ClusterIdentifier must be a string')
        else if std.isEmpty(ClusterIdentifier) then (error 'ClusterIdentifier must be not empty')
        else ClusterIdentifier,
      SubnetGroupName:
        if !std.isString(SubnetGroupName) then (error 'SubnetGroupName must be a string')
        else if std.isEmpty(SubnetGroupName) then (error 'SubnetGroupName must be not empty')
        else SubnetGroupName,
      EndpointName:
        if !std.isString(EndpointName) then (error 'EndpointName must be a string')
        else if std.isEmpty(EndpointName) then (error 'EndpointName must be not empty')
        else EndpointName,
      VpcSecurityGroupIds:
        if !std.isArray(VpcSecurityGroupIds) then (error 'VpcSecurityGroupIds must be an array')
        else VpcSecurityGroupIds,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::EndpointAccess',
  },
  setEndpointStatus(EndpointStatus): {
    Properties+::: {
      EndpointStatus:
        if !std.isString(EndpointStatus) then (error 'EndpointStatus must be a string')
        else if std.isEmpty(EndpointStatus) then (error 'EndpointStatus must be not empty')
        else EndpointStatus,
    },
  },
  setVpcEndpoint(VpcEndpoint): {
    Properties+::: {
      VpcEndpoint:
        if !std.isObject(VpcEndpoint) then (error 'VpcEndpoint must be an object')
        else VpcEndpoint,
    },
  },
  setAddress(Address): {
    Properties+::: {
      Address:
        if !std.isString(Address) then (error 'Address must be a string')
        else if std.isEmpty(Address) then (error 'Address must be not empty')
        else Address,
    },
  },
  setResourceOwner(ResourceOwner): {
    Properties+::: {
      ResourceOwner:
        if !std.isString(ResourceOwner) then (error 'ResourceOwner must be a string')
        else if std.isEmpty(ResourceOwner) then (error 'ResourceOwner must be not empty')
        else ResourceOwner,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setEndpointCreateTime(EndpointCreateTime): {
    Properties+::: {
      EndpointCreateTime:
        if !std.isString(EndpointCreateTime) then (error 'EndpointCreateTime must be a string')
        else if std.isEmpty(EndpointCreateTime) then (error 'EndpointCreateTime must be not empty')
        else EndpointCreateTime,
    },
  },
  setVpcSecurityGroups(VpcSecurityGroups): {
    Properties+::: {
      VpcSecurityGroups:
        if !std.isArray(VpcSecurityGroups) then (error 'VpcSecurityGroups must be an array')
        else VpcSecurityGroups,
    },
  },
  pushVpcSecurityGroups(VpcSecurityGroups): {
    Properties+::: {
      VpcSecurityGroups+: VpcSecurityGroups,
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
