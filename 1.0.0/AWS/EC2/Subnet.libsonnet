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
    Type: 'AWS::EC2::Subnet',
  },
  setAssignIpv6AddressOnCreation(AssignIpv6AddressOnCreation): {
    Properties+::: {
      AssignIpv6AddressOnCreation:
        if !std.isBoolean(AssignIpv6AddressOnCreation) then (error 'AssignIpv6AddressOnCreation must be a boolean') else AssignIpv6AddressOnCreation,
    },
  },
  setMapPublicIpOnLaunch(MapPublicIpOnLaunch): {
    Properties+::: {
      MapPublicIpOnLaunch:
        if !std.isBoolean(MapPublicIpOnLaunch) then (error 'MapPublicIpOnLaunch must be a boolean') else MapPublicIpOnLaunch,
    },
  },
  setEnableLniAtDeviceIndex(EnableLniAtDeviceIndex): {
    Properties+::: {
      EnableLniAtDeviceIndex:
        if !std.isNumber(EnableLniAtDeviceIndex) then (error 'EnableLniAtDeviceIndex must be an number')
        else EnableLniAtDeviceIndex,
    },
  },
  setNetworkAclAssociationId(NetworkAclAssociationId): {
    Properties+::: {
      NetworkAclAssociationId:
        if !std.isString(NetworkAclAssociationId) then (error 'NetworkAclAssociationId must be a string')
        else if std.isEmpty(NetworkAclAssociationId) then (error 'NetworkAclAssociationId must be not empty')
        else NetworkAclAssociationId,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else AvailabilityZone,
    },
  },
  setAvailabilityZoneId(AvailabilityZoneId): {
    Properties+::: {
      AvailabilityZoneId:
        if !std.isString(AvailabilityZoneId) then (error 'AvailabilityZoneId must be a string')
        else if std.isEmpty(AvailabilityZoneId) then (error 'AvailabilityZoneId must be not empty')
        else AvailabilityZoneId,
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
  setSubnetId(SubnetId): {
    Properties+::: {
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
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
  setIpv6CidrBlock(Ipv6CidrBlock): {
    Properties+::: {
      Ipv6CidrBlock:
        if !std.isString(Ipv6CidrBlock) then (error 'Ipv6CidrBlock must be a string')
        else if std.isEmpty(Ipv6CidrBlock) then (error 'Ipv6CidrBlock must be not empty')
        else Ipv6CidrBlock,
    },
  },
  setOutpostArn(OutpostArn): {
    Properties+::: {
      OutpostArn:
        if !std.isString(OutpostArn) then (error 'OutpostArn must be a string')
        else if std.isEmpty(OutpostArn) then (error 'OutpostArn must be not empty')
        else OutpostArn,
    },
  },
  setIpv6Native(Ipv6Native): {
    Properties+::: {
      Ipv6Native:
        if !std.isBoolean(Ipv6Native) then (error 'Ipv6Native must be a boolean') else Ipv6Native,
    },
  },
  setEnableDns64(EnableDns64): {
    Properties+::: {
      EnableDns64:
        if !std.isBoolean(EnableDns64) then (error 'EnableDns64 must be a boolean') else EnableDns64,
    },
  },
  setPrivateDnsNameOptionsOnLaunch(PrivateDnsNameOptionsOnLaunch): {
    Properties+::: {
      PrivateDnsNameOptionsOnLaunch:
        if !std.isObject(PrivateDnsNameOptionsOnLaunch) then (error 'PrivateDnsNameOptionsOnLaunch must be an object')
        else PrivateDnsNameOptionsOnLaunch,
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
