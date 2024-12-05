{
  new(
    VpcId,
    ServiceName,
  ): {
    local base = self,
    Properties: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
      ServiceName:
        if !std.isString(ServiceName) then (error 'ServiceName must be a string')
        else if std.isEmpty(ServiceName) then (error 'ServiceName must be not empty')
        else ServiceName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPCEndpoint',
  },
  setPrivateDnsEnabled(PrivateDnsEnabled): {
    Properties+::: {
      PrivateDnsEnabled:
        if !std.isBoolean(PrivateDnsEnabled) then (error 'PrivateDnsEnabled must be a boolean') else PrivateDnsEnabled,
    },
  },
  setCreationTimestamp(CreationTimestamp): {
    Properties+::: {
      CreationTimestamp:
        if !std.isString(CreationTimestamp) then (error 'CreationTimestamp must be a string')
        else if std.isEmpty(CreationTimestamp) then (error 'CreationTimestamp must be not empty')
        else CreationTimestamp,
    },
  },
  setRouteTableIds(RouteTableIds): {
    Properties+::: {
      RouteTableIds:
        if !std.isArray(RouteTableIds) then (error 'RouteTableIds must be an array')
        else RouteTableIds,
    },
  },
  setRouteTableIdsMixin(RouteTableIds): {
    Properties+::: {
      RouteTableIds+: RouteTableIds,
    },
  },
  setPolicyDocument(PolicyDocument): {
    Properties+::: {
      PolicyDocument: PolicyDocument,
    },
  },
  setVpcEndpointType(VpcEndpointType): {
    Properties+::: {
      VpcEndpointType:
        if !std.isString(VpcEndpointType) then (error 'VpcEndpointType must be a string')
        else if std.isEmpty(VpcEndpointType) then (error 'VpcEndpointType must be not empty')
        else if VpcEndpointType != 'Interface' && VpcEndpointType != 'Gateway' && VpcEndpointType != 'GatewayLoadBalancer' then (error "VpcEndpointType should be 'Interface' or 'Gateway' or 'GatewayLoadBalancer'")
        else VpcEndpointType,
    },
  },
  setNetworkInterfaceIds(NetworkInterfaceIds): {
    Properties+::: {
      NetworkInterfaceIds:
        if !std.isArray(NetworkInterfaceIds) then (error 'NetworkInterfaceIds must be an array')
        else NetworkInterfaceIds,
    },
  },
  setNetworkInterfaceIdsMixin(NetworkInterfaceIds): {
    Properties+::: {
      NetworkInterfaceIds+: NetworkInterfaceIds,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setDnsEntries(DnsEntries): {
    Properties+::: {
      DnsEntries:
        if !std.isArray(DnsEntries) then (error 'DnsEntries must be an array')
        else DnsEntries,
    },
  },
  setDnsEntriesMixin(DnsEntries): {
    Properties+::: {
      DnsEntries+: DnsEntries,
    },
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
