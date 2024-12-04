{
  new(
    VpcId,
    ServiceName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(VpcId) : 'VpcId must be a string',
      VpcId: VpcId,
      assert std.isString(ServiceName) : 'ServiceName must be a string',
      ServiceName: ServiceName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPCEndpoint',
  },
  withPrivateDnsEnabled(PrivateDnsEnabled): {
    assert std.isBoolean(PrivateDnsEnabled) : 'PrivateDnsEnabled must be a boolean',
    Properties+::: {
      PrivateDnsEnabled: PrivateDnsEnabled,
    },
  },
  withCreationTimestamp(CreationTimestamp): {
    assert std.isString(CreationTimestamp) : 'CreationTimestamp must be a string',
    Properties+::: {
      CreationTimestamp: CreationTimestamp,
    },
  },
  withRouteTableIds(RouteTableIds): {
    Properties+::: {
      RouteTableIds: (if std.isArray(RouteTableIds) then RouteTableIds else [RouteTableIds]),
    },
  },
  withRouteTableIdsMixin(RouteTableIds): {
    Properties+::: {
      RouteTableIds+: (if std.isArray(RouteTableIds) then RouteTableIds else [RouteTableIds]),
    },
  },
  withPolicyDocument(PolicyDocument): {
    Properties+::: {
      PolicyDocument: PolicyDocument,
    },
  },
  withVpcEndpointType(VpcEndpointType): {
    assert std.isString(VpcEndpointType) : 'VpcEndpointType must be a string',
    assert VpcEndpointType == 'Interface' || VpcEndpointType == 'Gateway' || VpcEndpointType == 'GatewayLoadBalancer' : "VpcEndpointType should be 'Interface' or 'Gateway' or 'GatewayLoadBalancer'",
    Properties+::: {
      VpcEndpointType: VpcEndpointType,
    },
  },
  withNetworkInterfaceIds(NetworkInterfaceIds): {
    Properties+::: {
      NetworkInterfaceIds: (if std.isArray(NetworkInterfaceIds) then NetworkInterfaceIds else [NetworkInterfaceIds]),
    },
  },
  withNetworkInterfaceIdsMixin(NetworkInterfaceIds): {
    Properties+::: {
      NetworkInterfaceIds+: (if std.isArray(NetworkInterfaceIds) then NetworkInterfaceIds else [NetworkInterfaceIds]),
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withDnsEntries(DnsEntries): {
    Properties+::: {
      DnsEntries: (if std.isArray(DnsEntries) then DnsEntries else [DnsEntries]),
    },
  },
  withDnsEntriesMixin(DnsEntries): {
    Properties+::: {
      DnsEntries+: (if std.isArray(DnsEntries) then DnsEntries else [DnsEntries]),
    },
  },
  withSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
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
