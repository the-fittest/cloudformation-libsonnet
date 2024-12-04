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
    Type: 'AWS::EC2::EIP',
  },
  withPublicIp(PublicIp): {
    assert std.isString(PublicIp) : 'PublicIp must be a string',
    Properties+::: {
      PublicIp: PublicIp,
    },
  },
  withAllocationId(AllocationId): {
    assert std.isString(AllocationId) : 'AllocationId must be a string',
    Properties+::: {
      AllocationId: AllocationId,
    },
  },
  withDomain(Domain): {
    assert std.isString(Domain) : 'Domain must be a string',
    Properties+::: {
      Domain: Domain,
    },
  },
  withNetworkBorderGroup(NetworkBorderGroup): {
    assert std.isString(NetworkBorderGroup) : 'NetworkBorderGroup must be a string',
    Properties+::: {
      NetworkBorderGroup: NetworkBorderGroup,
    },
  },
  withTransferAddress(TransferAddress): {
    assert std.isString(TransferAddress) : 'TransferAddress must be a string',
    Properties+::: {
      TransferAddress: TransferAddress,
    },
  },
  withInstanceId(InstanceId): {
    assert std.isString(InstanceId) : 'InstanceId must be a string',
    Properties+::: {
      InstanceId: InstanceId,
    },
  },
  withPublicIpv4Pool(PublicIpv4Pool): {
    assert std.isString(PublicIpv4Pool) : 'PublicIpv4Pool must be a string',
    Properties+::: {
      PublicIpv4Pool: PublicIpv4Pool,
    },
  },
  withIpamPoolId(IpamPoolId): {
    assert std.isString(IpamPoolId) : 'IpamPoolId must be a string',
    Properties+::: {
      IpamPoolId: IpamPoolId,
    },
  },
  withAddress(Address): {
    assert std.isString(Address) : 'Address must be a string',
    Properties+::: {
      Address: Address,
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
