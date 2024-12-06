{
  new(
    IpamPoolId,
  ): {
    local base = self,
    Properties: {
      IpamPoolId:
        if !std.isString(IpamPoolId) then (error 'IpamPoolId must be a string')
        else if std.isEmpty(IpamPoolId) then (error 'IpamPoolId must be not empty')
        else IpamPoolId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::IPAMPoolCidr',
  },
  setIpamPoolCidrId(IpamPoolCidrId): {
    Properties+::: {
      IpamPoolCidrId:
        if !std.isString(IpamPoolCidrId) then (error 'IpamPoolCidrId must be a string')
        else if std.isEmpty(IpamPoolCidrId) then (error 'IpamPoolCidrId must be not empty')
        else IpamPoolCidrId,
    },
  },
  setCidr(Cidr): {
    Properties+::: {
      Cidr:
        if !std.isString(Cidr) then (error 'Cidr must be a string')
        else if std.isEmpty(Cidr) then (error 'Cidr must be not empty')
        else Cidr,
    },
  },
  setNetmaskLength(NetmaskLength): {
    Properties+::: {
      NetmaskLength:
        if !std.isNumber(NetmaskLength) then (error 'NetmaskLength must be an number')
        else NetmaskLength,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
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
