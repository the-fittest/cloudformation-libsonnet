{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPC',
  },
  setVpcId(VpcId): {
    Properties+::: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
  },
  setInstanceTenancy(InstanceTenancy): {
    Properties+::: {
      InstanceTenancy:
        if !std.isString(InstanceTenancy) then (error 'InstanceTenancy must be a string')
        else if std.isEmpty(InstanceTenancy) then (error 'InstanceTenancy must be not empty')
        else InstanceTenancy,
    },
  },
  setIpv4NetmaskLength(Ipv4NetmaskLength): {
    Properties+::: {
      Ipv4NetmaskLength:
        if !std.isNumber(Ipv4NetmaskLength) then (error 'Ipv4NetmaskLength must be an number')
        else Ipv4NetmaskLength,
    },
  },
  setCidrBlockAssociations(CidrBlockAssociations): {
    Properties+::: {
      CidrBlockAssociations:
        if !std.isArray(CidrBlockAssociations) then (error 'CidrBlockAssociations must be an array')
        else CidrBlockAssociations,
    },
  },
  pushCidrBlockAssociations(CidrBlockAssociations): {
    Properties+::: {
      CidrBlockAssociations+: CidrBlockAssociations,
    },
  },
  setCidrBlock(CidrBlock): {
    Properties+::: {
      CidrBlock:
        if !std.isString(CidrBlock) then (error 'CidrBlock must be a string')
        else if std.isEmpty(CidrBlock) then (error 'CidrBlock must be not empty')
        else CidrBlock,
    },
  },
  setIpv4IpamPoolId(Ipv4IpamPoolId): {
    Properties+::: {
      Ipv4IpamPoolId:
        if !std.isString(Ipv4IpamPoolId) then (error 'Ipv4IpamPoolId must be a string')
        else if std.isEmpty(Ipv4IpamPoolId) then (error 'Ipv4IpamPoolId must be not empty')
        else Ipv4IpamPoolId,
    },
  },
  setDefaultNetworkAcl(DefaultNetworkAcl): {
    Properties+::: {
      DefaultNetworkAcl:
        if !std.isString(DefaultNetworkAcl) then (error 'DefaultNetworkAcl must be a string')
        else if std.isEmpty(DefaultNetworkAcl) then (error 'DefaultNetworkAcl must be not empty')
        else DefaultNetworkAcl,
    },
  },
  setEnableDnsSupport(EnableDnsSupport): {
    Properties+::: {
      EnableDnsSupport:
        if !std.isBoolean(EnableDnsSupport) then (error 'EnableDnsSupport must be a boolean') else EnableDnsSupport,
    },
  },
  setIpv6CidrBlocks(Ipv6CidrBlocks): {
    Properties+::: {
      Ipv6CidrBlocks:
        if !std.isArray(Ipv6CidrBlocks) then (error 'Ipv6CidrBlocks must be an array')
        else Ipv6CidrBlocks,
    },
  },
  pushIpv6CidrBlocks(Ipv6CidrBlocks): {
    Properties+::: {
      Ipv6CidrBlocks+: Ipv6CidrBlocks,
    },
  },
  setDefaultSecurityGroup(DefaultSecurityGroup): {
    Properties+::: {
      DefaultSecurityGroup:
        if !std.isString(DefaultSecurityGroup) then (error 'DefaultSecurityGroup must be a string')
        else if std.isEmpty(DefaultSecurityGroup) then (error 'DefaultSecurityGroup must be not empty')
        else DefaultSecurityGroup,
    },
  },
  setEnableDnsHostnames(EnableDnsHostnames): {
    Properties+::: {
      EnableDnsHostnames:
        if !std.isBoolean(EnableDnsHostnames) then (error 'EnableDnsHostnames must be a boolean') else EnableDnsHostnames,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
