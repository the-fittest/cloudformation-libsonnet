{
  new(
    SubnetId,
  ): {
    local base = self,
    Properties: {
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::SubnetCidrBlock',
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
        else if std.length(Ipv6CidrBlock) > 42 then error ('Ipv6CidrBlock should have not more than 42 characters')
        else Ipv6CidrBlock,
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
        else if Ipv6NetmaskLength > 128 then error ('Ipv6NetmaskLength should be not more than 128')
        else Ipv6NetmaskLength,
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
