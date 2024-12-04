{
  new(
    SubnetId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      SubnetId: SubnetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NatGateway',
  },
  withSecondaryAllocationIds(SecondaryAllocationIds): {
    Properties+::: {
      SecondaryAllocationIds: (if std.isArray(SecondaryAllocationIds) then SecondaryAllocationIds else [SecondaryAllocationIds]),
    },
  },
  withSecondaryAllocationIdsMixin(SecondaryAllocationIds): {
    Properties+::: {
      SecondaryAllocationIds+: (if std.isArray(SecondaryAllocationIds) then SecondaryAllocationIds else [SecondaryAllocationIds]),
    },
  },
  withPrivateIpAddress(PrivateIpAddress): {
    assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
    Properties+::: {
      PrivateIpAddress: PrivateIpAddress,
    },
  },
  withConnectivityType(ConnectivityType): {
    assert std.isString(ConnectivityType) : 'ConnectivityType must be a string',
    Properties+::: {
      ConnectivityType: ConnectivityType,
    },
  },
  withSecondaryPrivateIpAddresses(SecondaryPrivateIpAddresses): {
    Properties+::: {
      SecondaryPrivateIpAddresses: (if std.isArray(SecondaryPrivateIpAddresses) then SecondaryPrivateIpAddresses else [SecondaryPrivateIpAddresses]),
    },
  },
  withSecondaryPrivateIpAddressesMixin(SecondaryPrivateIpAddresses): {
    Properties+::: {
      SecondaryPrivateIpAddresses+: (if std.isArray(SecondaryPrivateIpAddresses) then SecondaryPrivateIpAddresses else [SecondaryPrivateIpAddresses]),
    },
  },
  withSecondaryPrivateIpAddressCount(SecondaryPrivateIpAddressCount): {
    assert std.isNumber(SecondaryPrivateIpAddressCount) : 'SecondaryPrivateIpAddressCount must be a number',
    Properties+::: {
      SecondaryPrivateIpAddressCount: SecondaryPrivateIpAddressCount,
    },
  },
  withAllocationId(AllocationId): {
    assert std.isString(AllocationId) : 'AllocationId must be a string',
    Properties+::: {
      AllocationId: AllocationId,
    },
  },
  withNatGatewayId(NatGatewayId): {
    assert std.isString(NatGatewayId) : 'NatGatewayId must be a string',
    Properties+::: {
      NatGatewayId: NatGatewayId,
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
  withMaxDrainDurationSeconds(MaxDrainDurationSeconds): {
    assert std.isNumber(MaxDrainDurationSeconds) : 'MaxDrainDurationSeconds must be a number',
    Properties+::: {
      MaxDrainDurationSeconds: MaxDrainDurationSeconds,
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
