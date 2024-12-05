{
  new(
    VpcId,
  ): {
    local base = self,
    Properties: {
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
    Type: 'AWS::EC2::VPCCidrBlock',
  },
  setCidrBlock(CidrBlock): {
    Properties+::: {
      CidrBlock:
        if !std.isString(CidrBlock) then (error 'CidrBlock must be a string')
        else if std.isEmpty(CidrBlock) then (error 'CidrBlock must be not empty')
        else CidrBlock,
    },
  },
  setIpv6Pool(Ipv6Pool): {
    Properties+::: {
      Ipv6Pool:
        if !std.isString(Ipv6Pool) then (error 'Ipv6Pool must be a string')
        else if std.isEmpty(Ipv6Pool) then (error 'Ipv6Pool must be not empty')
        else Ipv6Pool,
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
  setIpv6CidrBlock(Ipv6CidrBlock): {
    Properties+::: {
      Ipv6CidrBlock:
        if !std.isString(Ipv6CidrBlock) then (error 'Ipv6CidrBlock must be a string')
        else if std.isEmpty(Ipv6CidrBlock) then (error 'Ipv6CidrBlock must be not empty')
        else Ipv6CidrBlock,
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
  setIpv4NetmaskLength(Ipv4NetmaskLength): {
    Properties+::: {
      Ipv4NetmaskLength:
        if !std.isNumber(Ipv4NetmaskLength) then (error 'Ipv4NetmaskLength must be an number')
        else Ipv4NetmaskLength,
    },
  },
  setIpv6IpamPoolId(Ipv6IpamPoolId): {
    Properties+::: {
      Ipv6IpamPoolId:
        if !std.isString(Ipv6IpamPoolId) then (error 'Ipv6IpamPoolId must be a string')
        else if std.isEmpty(Ipv6IpamPoolId) then (error 'Ipv6IpamPoolId must be not empty')
        else Ipv6IpamPoolId,
    },
  },
  setIpv6NetmaskLength(Ipv6NetmaskLength): {
    Properties+::: {
      Ipv6NetmaskLength:
        if !std.isNumber(Ipv6NetmaskLength) then (error 'Ipv6NetmaskLength must be an number')
        else Ipv6NetmaskLength,
    },
  },
  setAmazonProvidedIpv6CidrBlock(AmazonProvidedIpv6CidrBlock): {
    Properties+::: {
      AmazonProvidedIpv6CidrBlock:
        if !std.isBoolean(AmazonProvidedIpv6CidrBlock) then (error 'AmazonProvidedIpv6CidrBlock must be a boolean') else AmazonProvidedIpv6CidrBlock,
    },
  },
  setIpv6AddressAttribute(Ipv6AddressAttribute): {
    Properties+::: {
      Ipv6AddressAttribute:
        if !std.isString(Ipv6AddressAttribute) then (error 'Ipv6AddressAttribute must be a string')
        else if std.isEmpty(Ipv6AddressAttribute) then (error 'Ipv6AddressAttribute must be not empty')
        else Ipv6AddressAttribute,
    },
  },
  setIpSource(IpSource): {
    Properties+::: {
      IpSource:
        if !std.isString(IpSource) then (error 'IpSource must be a string')
        else if std.isEmpty(IpSource) then (error 'IpSource must be not empty')
        else IpSource,
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
