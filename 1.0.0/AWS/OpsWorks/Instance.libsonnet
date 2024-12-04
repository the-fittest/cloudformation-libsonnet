{
  new(
    LayerIds,
    InstanceType,
    StackId,
  ): {
    local base = self,
    Properties: {
      LayerIds: (if std.isArray(LayerIds) then LayerIds else [LayerIds]),
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      InstanceType: InstanceType,
      assert std.isString(StackId) : 'StackId must be a string',
      StackId: StackId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorks::Instance',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withAvailabilityZone(AvailabilityZone): {
    assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
    Properties+::: {
      AvailabilityZone: AvailabilityZone,
    },
  },
  withPrivateDnsName(PrivateDnsName): {
    assert std.isString(PrivateDnsName) : 'PrivateDnsName must be a string',
    Properties+::: {
      PrivateDnsName: PrivateDnsName,
    },
  },
  withPrivateIp(PrivateIp): {
    assert std.isString(PrivateIp) : 'PrivateIp must be a string',
    Properties+::: {
      PrivateIp: PrivateIp,
    },
  },
  withPublicDnsName(PublicDnsName): {
    assert std.isString(PublicDnsName) : 'PublicDnsName must be a string',
    Properties+::: {
      PublicDnsName: PublicDnsName,
    },
  },
  withPublicIp(PublicIp): {
    assert std.isString(PublicIp) : 'PublicIp must be a string',
    Properties+::: {
      PublicIp: PublicIp,
    },
  },
  withAgentVersion(AgentVersion): {
    assert std.isString(AgentVersion) : 'AgentVersion must be a string',
    Properties+::: {
      AgentVersion: AgentVersion,
    },
  },
  withAmiId(AmiId): {
    assert std.isString(AmiId) : 'AmiId must be a string',
    Properties+::: {
      AmiId: AmiId,
    },
  },
  withArchitecture(Architecture): {
    assert std.isString(Architecture) : 'Architecture must be a string',
    Properties+::: {
      Architecture: Architecture,
    },
  },
  withAutoScalingType(AutoScalingType): {
    assert std.isString(AutoScalingType) : 'AutoScalingType must be a string',
    Properties+::: {
      AutoScalingType: AutoScalingType,
    },
  },
  withBlockDeviceMappings(BlockDeviceMappings): {
    Properties+::: {
      BlockDeviceMappings: (if std.isArray(BlockDeviceMappings) then BlockDeviceMappings else [BlockDeviceMappings]),
    },
  },
  withBlockDeviceMappingsMixin(BlockDeviceMappings): {
    Properties+::: {
      BlockDeviceMappings+: (if std.isArray(BlockDeviceMappings) then BlockDeviceMappings else [BlockDeviceMappings]),
    },
  },
  withEbsOptimized(EbsOptimized): {
    assert std.isBoolean(EbsOptimized) : 'EbsOptimized must be a boolean',
    Properties+::: {
      EbsOptimized: EbsOptimized,
    },
  },
  withElasticIps(ElasticIps): {
    Properties+::: {
      ElasticIps: (if std.isArray(ElasticIps) then ElasticIps else [ElasticIps]),
    },
  },
  withElasticIpsMixin(ElasticIps): {
    Properties+::: {
      ElasticIps+: (if std.isArray(ElasticIps) then ElasticIps else [ElasticIps]),
    },
  },
  withHostname(Hostname): {
    assert std.isString(Hostname) : 'Hostname must be a string',
    Properties+::: {
      Hostname: Hostname,
    },
  },
  withInstallUpdatesOnBoot(InstallUpdatesOnBoot): {
    assert std.isBoolean(InstallUpdatesOnBoot) : 'InstallUpdatesOnBoot must be a boolean',
    Properties+::: {
      InstallUpdatesOnBoot: InstallUpdatesOnBoot,
    },
  },
  withOs(Os): {
    assert std.isString(Os) : 'Os must be a string',
    Properties+::: {
      Os: Os,
    },
  },
  withRootDeviceType(RootDeviceType): {
    assert std.isString(RootDeviceType) : 'RootDeviceType must be a string',
    Properties+::: {
      RootDeviceType: RootDeviceType,
    },
  },
  withSshKeyName(SshKeyName): {
    assert std.isString(SshKeyName) : 'SshKeyName must be a string',
    Properties+::: {
      SshKeyName: SshKeyName,
    },
  },
  withSubnetId(SubnetId): {
    assert std.isString(SubnetId) : 'SubnetId must be a string',
    Properties+::: {
      SubnetId: SubnetId,
    },
  },
  withTenancy(Tenancy): {
    assert std.isString(Tenancy) : 'Tenancy must be a string',
    Properties+::: {
      Tenancy: Tenancy,
    },
  },
  withTimeBasedAutoScaling(TimeBasedAutoScaling): {
    assert std.isObject(TimeBasedAutoScaling) : 'TimeBasedAutoScaling must be a object',
    Properties+::: {
      TimeBasedAutoScaling: TimeBasedAutoScaling,
    },
  },
  withVirtualizationType(VirtualizationType): {
    assert std.isString(VirtualizationType) : 'VirtualizationType must be a string',
    Properties+::: {
      VirtualizationType: VirtualizationType,
    },
  },
  withVolumes(Volumes): {
    Properties+::: {
      Volumes: (if std.isArray(Volumes) then Volumes else [Volumes]),
    },
  },
  withVolumesMixin(Volumes): {
    Properties+::: {
      Volumes+: (if std.isArray(Volumes) then Volumes else [Volumes]),
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
