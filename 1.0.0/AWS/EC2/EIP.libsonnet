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
    Type: 'AWS::EC2::EIP',
  },
  setPublicIp(PublicIp): {
    Properties+::: {
      PublicIp:
        if !std.isString(PublicIp) then (error 'PublicIp must be a string')
        else if std.isEmpty(PublicIp) then (error 'PublicIp must be not empty')
        else PublicIp,
    },
  },
  setAllocationId(AllocationId): {
    Properties+::: {
      AllocationId:
        if !std.isString(AllocationId) then (error 'AllocationId must be a string')
        else if std.isEmpty(AllocationId) then (error 'AllocationId must be not empty')
        else AllocationId,
    },
  },
  setDomain(Domain): {
    Properties+::: {
      Domain:
        if !std.isString(Domain) then (error 'Domain must be a string')
        else if std.isEmpty(Domain) then (error 'Domain must be not empty')
        else Domain,
    },
  },
  setNetworkBorderGroup(NetworkBorderGroup): {
    Properties+::: {
      NetworkBorderGroup:
        if !std.isString(NetworkBorderGroup) then (error 'NetworkBorderGroup must be a string')
        else if std.isEmpty(NetworkBorderGroup) then (error 'NetworkBorderGroup must be not empty')
        else NetworkBorderGroup,
    },
  },
  setTransferAddress(TransferAddress): {
    Properties+::: {
      TransferAddress:
        if !std.isString(TransferAddress) then (error 'TransferAddress must be a string')
        else if std.isEmpty(TransferAddress) then (error 'TransferAddress must be not empty')
        else TransferAddress,
    },
  },
  setInstanceId(InstanceId): {
    Properties+::: {
      InstanceId:
        if !std.isString(InstanceId) then (error 'InstanceId must be a string')
        else if std.isEmpty(InstanceId) then (error 'InstanceId must be not empty')
        else InstanceId,
    },
  },
  setPublicIpv4Pool(PublicIpv4Pool): {
    Properties+::: {
      PublicIpv4Pool:
        if !std.isString(PublicIpv4Pool) then (error 'PublicIpv4Pool must be a string')
        else if std.isEmpty(PublicIpv4Pool) then (error 'PublicIpv4Pool must be not empty')
        else PublicIpv4Pool,
    },
  },
  setIpamPoolId(IpamPoolId): {
    Properties+::: {
      IpamPoolId:
        if !std.isString(IpamPoolId) then (error 'IpamPoolId must be a string')
        else if std.isEmpty(IpamPoolId) then (error 'IpamPoolId must be not empty')
        else IpamPoolId,
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
