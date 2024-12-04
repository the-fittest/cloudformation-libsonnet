{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPC',
  },
  withVpcId(VpcId): {
    assert std.isString(VpcId) : 'VpcId must be a string',
    Properties+::: {
      VpcId: VpcId,
    },
  },
  withInstanceTenancy(InstanceTenancy): {
    assert std.isString(InstanceTenancy) : 'InstanceTenancy must be a string',
    Properties+::: {
      InstanceTenancy: InstanceTenancy,
    },
  },
  withIpv4NetmaskLength(Ipv4NetmaskLength): {
    assert std.isNumber(Ipv4NetmaskLength) : 'Ipv4NetmaskLength must be a number',
    Properties+::: {
      Ipv4NetmaskLength: Ipv4NetmaskLength,
    },
  },
  withCidrBlockAssociations(CidrBlockAssociations): {
    Properties+::: {
      CidrBlockAssociations: (if std.isArray(CidrBlockAssociations) then CidrBlockAssociations else [CidrBlockAssociations]),
    },
  },
  withCidrBlockAssociationsMixin(CidrBlockAssociations): {
    Properties+::: {
      CidrBlockAssociations+: (if std.isArray(CidrBlockAssociations) then CidrBlockAssociations else [CidrBlockAssociations]),
    },
  },
  withCidrBlock(CidrBlock): {
    assert std.isString(CidrBlock) : 'CidrBlock must be a string',
    Properties+::: {
      CidrBlock: CidrBlock,
    },
  },
  withIpv4IpamPoolId(Ipv4IpamPoolId): {
    assert std.isString(Ipv4IpamPoolId) : 'Ipv4IpamPoolId must be a string',
    Properties+::: {
      Ipv4IpamPoolId: Ipv4IpamPoolId,
    },
  },
  withDefaultNetworkAcl(DefaultNetworkAcl): {
    assert std.isString(DefaultNetworkAcl) : 'DefaultNetworkAcl must be a string',
    Properties+::: {
      DefaultNetworkAcl: DefaultNetworkAcl,
    },
  },
  withEnableDnsSupport(EnableDnsSupport): {
    assert std.isBoolean(EnableDnsSupport) : 'EnableDnsSupport must be a boolean',
    Properties+::: {
      EnableDnsSupport: EnableDnsSupport,
    },
  },
  withIpv6CidrBlocks(Ipv6CidrBlocks): {
    Properties+::: {
      Ipv6CidrBlocks: (if std.isArray(Ipv6CidrBlocks) then Ipv6CidrBlocks else [Ipv6CidrBlocks]),
    },
  },
  withIpv6CidrBlocksMixin(Ipv6CidrBlocks): {
    Properties+::: {
      Ipv6CidrBlocks+: (if std.isArray(Ipv6CidrBlocks) then Ipv6CidrBlocks else [Ipv6CidrBlocks]),
    },
  },
  withDefaultSecurityGroup(DefaultSecurityGroup): {
    assert std.isString(DefaultSecurityGroup) : 'DefaultSecurityGroup must be a string',
    Properties+::: {
      DefaultSecurityGroup: DefaultSecurityGroup,
    },
  },
  withEnableDnsHostnames(EnableDnsHostnames): {
    assert std.isBoolean(EnableDnsHostnames) : 'EnableDnsHostnames must be a boolean',
    Properties+::: {
      EnableDnsHostnames: EnableDnsHostnames,
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
