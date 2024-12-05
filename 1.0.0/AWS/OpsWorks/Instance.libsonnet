{
  new(
    LayerIds,
    InstanceType,
    StackId,
  ): {
    local base = self,
    Properties: {
      LayerIds:
        if !std.isArray(LayerIds) then (error 'LayerIds must be an array')
        else LayerIds,
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else InstanceType,
      StackId:
        if !std.isString(StackId) then (error 'StackId must be a string')
        else if std.isEmpty(StackId) then (error 'StackId must be not empty')
        else StackId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorks::Instance',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
  setPrivateDnsName(PrivateDnsName): {
    Properties+::: {
      PrivateDnsName:
        if !std.isString(PrivateDnsName) then (error 'PrivateDnsName must be a string')
        else if std.isEmpty(PrivateDnsName) then (error 'PrivateDnsName must be not empty')
        else PrivateDnsName,
    },
  },
  setPrivateIp(PrivateIp): {
    Properties+::: {
      PrivateIp:
        if !std.isString(PrivateIp) then (error 'PrivateIp must be a string')
        else if std.isEmpty(PrivateIp) then (error 'PrivateIp must be not empty')
        else PrivateIp,
    },
  },
  setPublicDnsName(PublicDnsName): {
    Properties+::: {
      PublicDnsName:
        if !std.isString(PublicDnsName) then (error 'PublicDnsName must be a string')
        else if std.isEmpty(PublicDnsName) then (error 'PublicDnsName must be not empty')
        else PublicDnsName,
    },
  },
  setPublicIp(PublicIp): {
    Properties+::: {
      PublicIp:
        if !std.isString(PublicIp) then (error 'PublicIp must be a string')
        else if std.isEmpty(PublicIp) then (error 'PublicIp must be not empty')
        else PublicIp,
    },
  },
  setAgentVersion(AgentVersion): {
    Properties+::: {
      AgentVersion:
        if !std.isString(AgentVersion) then (error 'AgentVersion must be a string')
        else if std.isEmpty(AgentVersion) then (error 'AgentVersion must be not empty')
        else AgentVersion,
    },
  },
  setAmiId(AmiId): {
    Properties+::: {
      AmiId:
        if !std.isString(AmiId) then (error 'AmiId must be a string')
        else if std.isEmpty(AmiId) then (error 'AmiId must be not empty')
        else AmiId,
    },
  },
  setArchitecture(Architecture): {
    Properties+::: {
      Architecture:
        if !std.isString(Architecture) then (error 'Architecture must be a string')
        else if std.isEmpty(Architecture) then (error 'Architecture must be not empty')
        else Architecture,
    },
  },
  setAutoScalingType(AutoScalingType): {
    Properties+::: {
      AutoScalingType:
        if !std.isString(AutoScalingType) then (error 'AutoScalingType must be a string')
        else if std.isEmpty(AutoScalingType) then (error 'AutoScalingType must be not empty')
        else AutoScalingType,
    },
  },
  setBlockDeviceMappings(BlockDeviceMappings): {
    Properties+::: {
      BlockDeviceMappings:
        if !std.isArray(BlockDeviceMappings) then (error 'BlockDeviceMappings must be an array')
        else BlockDeviceMappings,
    },
  },
  setBlockDeviceMappingsMixin(BlockDeviceMappings): {
    Properties+::: {
      BlockDeviceMappings+: BlockDeviceMappings,
    },
  },
  setEbsOptimized(EbsOptimized): {
    Properties+::: {
      EbsOptimized:
        if !std.isBoolean(EbsOptimized) then (error 'EbsOptimized must be a boolean') else EbsOptimized,
    },
  },
  setElasticIps(ElasticIps): {
    Properties+::: {
      ElasticIps:
        if !std.isArray(ElasticIps) then (error 'ElasticIps must be an array')
        else ElasticIps,
    },
  },
  setElasticIpsMixin(ElasticIps): {
    Properties+::: {
      ElasticIps+: ElasticIps,
    },
  },
  setHostname(Hostname): {
    Properties+::: {
      Hostname:
        if !std.isString(Hostname) then (error 'Hostname must be a string')
        else if std.isEmpty(Hostname) then (error 'Hostname must be not empty')
        else Hostname,
    },
  },
  setInstallUpdatesOnBoot(InstallUpdatesOnBoot): {
    Properties+::: {
      InstallUpdatesOnBoot:
        if !std.isBoolean(InstallUpdatesOnBoot) then (error 'InstallUpdatesOnBoot must be a boolean') else InstallUpdatesOnBoot,
    },
  },
  setOs(Os): {
    Properties+::: {
      Os:
        if !std.isString(Os) then (error 'Os must be a string')
        else if std.isEmpty(Os) then (error 'Os must be not empty')
        else Os,
    },
  },
  setRootDeviceType(RootDeviceType): {
    Properties+::: {
      RootDeviceType:
        if !std.isString(RootDeviceType) then (error 'RootDeviceType must be a string')
        else if std.isEmpty(RootDeviceType) then (error 'RootDeviceType must be not empty')
        else RootDeviceType,
    },
  },
  setSshKeyName(SshKeyName): {
    Properties+::: {
      SshKeyName:
        if !std.isString(SshKeyName) then (error 'SshKeyName must be a string')
        else if std.isEmpty(SshKeyName) then (error 'SshKeyName must be not empty')
        else SshKeyName,
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
  setTenancy(Tenancy): {
    Properties+::: {
      Tenancy:
        if !std.isString(Tenancy) then (error 'Tenancy must be a string')
        else if std.isEmpty(Tenancy) then (error 'Tenancy must be not empty')
        else Tenancy,
    },
  },
  setTimeBasedAutoScaling(TimeBasedAutoScaling): {
    Properties+::: {
      TimeBasedAutoScaling:
        if !std.isObject(TimeBasedAutoScaling) then (error 'TimeBasedAutoScaling must be an object')
        else TimeBasedAutoScaling,
    },
  },
  setVirtualizationType(VirtualizationType): {
    Properties+::: {
      VirtualizationType:
        if !std.isString(VirtualizationType) then (error 'VirtualizationType must be a string')
        else if std.isEmpty(VirtualizationType) then (error 'VirtualizationType must be not empty')
        else VirtualizationType,
    },
  },
  setVolumes(Volumes): {
    Properties+::: {
      Volumes:
        if !std.isArray(Volumes) then (error 'Volumes must be an array')
        else Volumes,
    },
  },
  setVolumesMixin(Volumes): {
    Properties+::: {
      Volumes+: Volumes,
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
