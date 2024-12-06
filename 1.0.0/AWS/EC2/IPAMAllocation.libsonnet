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
    Type: 'AWS::EC2::IPAMAllocation',
  },
  setIpamPoolAllocationId(IpamPoolAllocationId): {
    Properties+::: {
      IpamPoolAllocationId:
        if !std.isString(IpamPoolAllocationId) then (error 'IpamPoolAllocationId must be a string')
        else if std.isEmpty(IpamPoolAllocationId) then (error 'IpamPoolAllocationId must be not empty')
        else IpamPoolAllocationId,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
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
