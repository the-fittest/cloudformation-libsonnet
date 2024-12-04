{
  // AWS Redshift EndpointAccess
  EndpointAccess: {
    new(
      ClusterIdentifier,
      SubnetGroupName,
      EndpointName,
      VpcSecurityGroupIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterIdentifier) : 'ClusterIdentifier must be a string',
        ClusterIdentifier: ClusterIdentifier,
        assert std.isString(SubnetGroupName) : 'SubnetGroupName must be a string',
        SubnetGroupName: SubnetGroupName,
        assert std.isString(EndpointName) : 'EndpointName must be a string',
        EndpointName: EndpointName,
        VpcSecurityGroupIds: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Redshift::EndpointAccess',
    },
    withEndpointStatus(EndpointStatus): {
      assert std.isString(EndpointStatus) : 'EndpointStatus must be a string',
      Properties+::: {
        EndpointStatus: EndpointStatus,
      },
    },
    withVpcEndpoint(VpcEndpoint): {
      assert std.isObject(VpcEndpoint) : 'VpcEndpoint must be a object',
      Properties+::: {
        VpcEndpoint: VpcEndpoint,
      },
    },
    withAddress(Address): {
      assert std.isString(Address) : 'Address must be a string',
      Properties+::: {
        Address: Address,
      },
    },
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: {
        ResourceOwner: ResourceOwner,
      },
    },
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a number',
      Properties+::: {
        Port: Port,
      },
    },
    withEndpointCreateTime(EndpointCreateTime): {
      assert std.isString(EndpointCreateTime) : 'EndpointCreateTime must be a string',
      Properties+::: {
        EndpointCreateTime: EndpointCreateTime,
      },
    },
    withVpcSecurityGroups(VpcSecurityGroups): {
      Properties+::: {
        VpcSecurityGroups: (if std.isArray(VpcSecurityGroups) then VpcSecurityGroups else [VpcSecurityGroups]),
      },
    },
    withVpcSecurityGroupsMixin(VpcSecurityGroups): {
      Properties+::: {
        VpcSecurityGroups+: (if std.isArray(VpcSecurityGroups) then VpcSecurityGroups else [VpcSecurityGroups]),
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
