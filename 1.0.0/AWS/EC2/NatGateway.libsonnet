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
    Type: 'AWS::EC2::NatGateway',
  },
  setSecondaryAllocationIds(SecondaryAllocationIds): {
    Properties+::: {
      SecondaryAllocationIds:
        if !std.isArray(SecondaryAllocationIds) then (error 'SecondaryAllocationIds must be an array')
        else SecondaryAllocationIds,
    },
  },
  setSecondaryAllocationIdsMixin(SecondaryAllocationIds): {
    Properties+::: {
      SecondaryAllocationIds+: SecondaryAllocationIds,
    },
  },
  setPrivateIpAddress(PrivateIpAddress): {
    Properties+::: {
      PrivateIpAddress:
        if !std.isString(PrivateIpAddress) then (error 'PrivateIpAddress must be a string')
        else if std.isEmpty(PrivateIpAddress) then (error 'PrivateIpAddress must be not empty')
        else PrivateIpAddress,
    },
  },
  setConnectivityType(ConnectivityType): {
    Properties+::: {
      ConnectivityType:
        if !std.isString(ConnectivityType) then (error 'ConnectivityType must be a string')
        else if std.isEmpty(ConnectivityType) then (error 'ConnectivityType must be not empty')
        else ConnectivityType,
    },
  },
  setSecondaryPrivateIpAddresses(SecondaryPrivateIpAddresses): {
    Properties+::: {
      SecondaryPrivateIpAddresses:
        if !std.isArray(SecondaryPrivateIpAddresses) then (error 'SecondaryPrivateIpAddresses must be an array')
        else SecondaryPrivateIpAddresses,
    },
  },
  setSecondaryPrivateIpAddressesMixin(SecondaryPrivateIpAddresses): {
    Properties+::: {
      SecondaryPrivateIpAddresses+: SecondaryPrivateIpAddresses,
    },
  },
  setSecondaryPrivateIpAddressCount(SecondaryPrivateIpAddressCount): {
    Properties+::: {
      SecondaryPrivateIpAddressCount:
        if !std.isNumber(SecondaryPrivateIpAddressCount) then (error 'SecondaryPrivateIpAddressCount must be an number')
        else if SecondaryPrivateIpAddressCount < 1 then error ('SecondaryPrivateIpAddressCount should be at least 1')
        else SecondaryPrivateIpAddressCount,
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
  setNatGatewayId(NatGatewayId): {
    Properties+::: {
      NatGatewayId:
        if !std.isString(NatGatewayId) then (error 'NatGatewayId must be a string')
        else if std.isEmpty(NatGatewayId) then (error 'NatGatewayId must be not empty')
        else NatGatewayId,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setMaxDrainDurationSeconds(MaxDrainDurationSeconds): {
    Properties+::: {
      MaxDrainDurationSeconds:
        if !std.isNumber(MaxDrainDurationSeconds) then (error 'MaxDrainDurationSeconds must be an number')
        else MaxDrainDurationSeconds,
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
