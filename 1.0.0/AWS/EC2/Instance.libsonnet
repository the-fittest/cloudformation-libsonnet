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
    Type: 'AWS::EC2::Instance',
  },
  setTenancy(Tenancy): {
    Properties+::: {
      Tenancy:
        if !std.isString(Tenancy) then (error 'Tenancy must be a string')
        else if std.isEmpty(Tenancy) then (error 'Tenancy must be not empty')
        else Tenancy,
    },
  },
  setSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups:
        if !std.isArray(SecurityGroups) then (error 'SecurityGroups must be an array')
        else SecurityGroups,
    },
  },
  pushSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups+: SecurityGroups,
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
  setPrivateIpAddress(PrivateIpAddress): {
    Properties+::: {
      PrivateIpAddress:
        if !std.isString(PrivateIpAddress) then (error 'PrivateIpAddress must be a string')
        else if std.isEmpty(PrivateIpAddress) then (error 'PrivateIpAddress must be not empty')
        else PrivateIpAddress,
    },
  },
  setUserData(UserData): {
    Properties+::: {
      UserData:
        if !std.isString(UserData) then (error 'UserData must be a string')
        else if std.isEmpty(UserData) then (error 'UserData must be not empty')
        else UserData,
    },
  },
  setBlockDeviceMappings(BlockDeviceMappings): {
    Properties+::: {
      BlockDeviceMappings:
        if !std.isArray(BlockDeviceMappings) then (error 'BlockDeviceMappings must be an array')
        else BlockDeviceMappings,
    },
  },
  pushBlockDeviceMappings(BlockDeviceMappings): {
    Properties+::: {
      BlockDeviceMappings+: BlockDeviceMappings,
    },
  },
  setIamInstanceProfile(IamInstanceProfile): {
    Properties+::: {
      IamInstanceProfile:
        if !std.isString(IamInstanceProfile) then (error 'IamInstanceProfile must be a string')
        else if std.isEmpty(IamInstanceProfile) then (error 'IamInstanceProfile must be not empty')
        else IamInstanceProfile,
    },
  },
  setIpv6Addresses(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses:
        if !std.isArray(Ipv6Addresses) then (error 'Ipv6Addresses must be an array')
        else Ipv6Addresses,
    },
  },
  pushIpv6Addresses(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses+: Ipv6Addresses,
    },
  },
  setKernelId(KernelId): {
    Properties+::: {
      KernelId:
        if !std.isString(KernelId) then (error 'KernelId must be a string')
        else if std.isEmpty(KernelId) then (error 'KernelId must be not empty')
        else KernelId,
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
  setEbsOptimized(EbsOptimized): {
    Properties+::: {
      EbsOptimized:
        if !std.isBoolean(EbsOptimized) then (error 'EbsOptimized must be a boolean') else EbsOptimized,
    },
  },
  setPropagateTagsToVolumeOnCreation(PropagateTagsToVolumeOnCreation): {
    Properties+::: {
      PropagateTagsToVolumeOnCreation:
        if !std.isBoolean(PropagateTagsToVolumeOnCreation) then (error 'PropagateTagsToVolumeOnCreation must be a boolean') else PropagateTagsToVolumeOnCreation,
    },
  },
  setElasticGpuSpecifications(ElasticGpuSpecifications): {
    Properties+::: {
      ElasticGpuSpecifications:
        if !std.isArray(ElasticGpuSpecifications) then (error 'ElasticGpuSpecifications must be an array')
        else ElasticGpuSpecifications,
    },
  },
  pushElasticGpuSpecifications(ElasticGpuSpecifications): {
    Properties+::: {
      ElasticGpuSpecifications+: ElasticGpuSpecifications,
    },
  },
  setElasticInferenceAccelerators(ElasticInferenceAccelerators): {
    Properties+::: {
      ElasticInferenceAccelerators:
        if !std.isArray(ElasticInferenceAccelerators) then (error 'ElasticInferenceAccelerators must be an array')
        else ElasticInferenceAccelerators,
    },
  },
  pushElasticInferenceAccelerators(ElasticInferenceAccelerators): {
    Properties+::: {
      ElasticInferenceAccelerators+: ElasticInferenceAccelerators,
    },
  },
  setVolumes(Volumes): {
    Properties+::: {
      Volumes:
        if !std.isArray(Volumes) then (error 'Volumes must be an array')
        else Volumes,
    },
  },
  pushVolumes(Volumes): {
    Properties+::: {
      Volumes+: Volumes,
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
  setIpv6AddressCount(Ipv6AddressCount): {
    Properties+::: {
      Ipv6AddressCount:
        if !std.isNumber(Ipv6AddressCount) then (error 'Ipv6AddressCount must be an number')
        else Ipv6AddressCount,
    },
  },
  setLaunchTemplate(LaunchTemplate): {
    Properties+::: {
      LaunchTemplate:
        if !std.isObject(LaunchTemplate) then (error 'LaunchTemplate must be an object')
        else LaunchTemplate,
    },
  },
  setEnclaveOptions(EnclaveOptions): {
    Properties+::: {
      EnclaveOptions:
        if !std.isObject(EnclaveOptions) then (error 'EnclaveOptions must be an object')
        else EnclaveOptions,
    },
  },
  setNetworkInterfaces(NetworkInterfaces): {
    Properties+::: {
      NetworkInterfaces:
        if !std.isArray(NetworkInterfaces) then (error 'NetworkInterfaces must be an array')
        else NetworkInterfaces,
    },
  },
  pushNetworkInterfaces(NetworkInterfaces): {
    Properties+::: {
      NetworkInterfaces+: NetworkInterfaces,
    },
  },
  setImageId(ImageId): {
    Properties+::: {
      ImageId:
        if !std.isString(ImageId) then (error 'ImageId must be a string')
        else if std.isEmpty(ImageId) then (error 'ImageId must be not empty')
        else ImageId,
    },
  },
  setInstanceType(InstanceType): {
    Properties+::: {
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else InstanceType,
    },
  },
  setMonitoring(Monitoring): {
    Properties+::: {
      Monitoring:
        if !std.isBoolean(Monitoring) then (error 'Monitoring must be a boolean') else Monitoring,
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
  setAdditionalInfo(AdditionalInfo): {
    Properties+::: {
      AdditionalInfo:
        if !std.isString(AdditionalInfo) then (error 'AdditionalInfo must be a string')
        else if std.isEmpty(AdditionalInfo) then (error 'AdditionalInfo must be not empty')
        else AdditionalInfo,
    },
  },
  setHibernationOptions(HibernationOptions): {
    Properties+::: {
      HibernationOptions:
        if !std.isObject(HibernationOptions) then (error 'HibernationOptions must be an object')
        else HibernationOptions,
    },
  },
  setLicenseSpecifications(LicenseSpecifications): {
    Properties+::: {
      LicenseSpecifications:
        if !std.isArray(LicenseSpecifications) then (error 'LicenseSpecifications must be an array')
        else LicenseSpecifications,
    },
  },
  pushLicenseSpecifications(LicenseSpecifications): {
    Properties+::: {
      LicenseSpecifications+: LicenseSpecifications,
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
  setPublicIp(PublicIp): {
    Properties+::: {
      PublicIp:
        if !std.isString(PublicIp) then (error 'PublicIp must be a string')
        else if std.isEmpty(PublicIp) then (error 'PublicIp must be not empty')
        else PublicIp,
    },
  },
  setInstanceInitiatedShutdownBehavior(InstanceInitiatedShutdownBehavior): {
    Properties+::: {
      InstanceInitiatedShutdownBehavior:
        if !std.isString(InstanceInitiatedShutdownBehavior) then (error 'InstanceInitiatedShutdownBehavior must be a string')
        else if std.isEmpty(InstanceInitiatedShutdownBehavior) then (error 'InstanceInitiatedShutdownBehavior must be not empty')
        else InstanceInitiatedShutdownBehavior,
    },
  },
  setCpuOptions(CpuOptions): {
    Properties+::: {
      CpuOptions:
        if !std.isObject(CpuOptions) then (error 'CpuOptions must be an object')
        else CpuOptions,
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
  setPrivateDnsNameOptions(PrivateDnsNameOptions): {
    Properties+::: {
      PrivateDnsNameOptions:
        if !std.isObject(PrivateDnsNameOptions) then (error 'PrivateDnsNameOptions must be an object')
        else PrivateDnsNameOptions,
    },
  },
  setHostId(HostId): {
    Properties+::: {
      HostId:
        if !std.isString(HostId) then (error 'HostId must be a string')
        else if std.isEmpty(HostId) then (error 'HostId must be not empty')
        else HostId,
    },
  },
  setHostResourceGroupArn(HostResourceGroupArn): {
    Properties+::: {
      HostResourceGroupArn:
        if !std.isString(HostResourceGroupArn) then (error 'HostResourceGroupArn must be a string')
        else if std.isEmpty(HostResourceGroupArn) then (error 'HostResourceGroupArn must be not empty')
        else HostResourceGroupArn,
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
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  pushSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setDisableApiTermination(DisableApiTermination): {
    Properties+::: {
      DisableApiTermination:
        if !std.isBoolean(DisableApiTermination) then (error 'DisableApiTermination must be a boolean') else DisableApiTermination,
    },
  },
  setKeyName(KeyName): {
    Properties+::: {
      KeyName:
        if !std.isString(KeyName) then (error 'KeyName must be a string')
        else if std.isEmpty(KeyName) then (error 'KeyName must be not empty')
        else KeyName,
    },
  },
  setRamdiskId(RamdiskId): {
    Properties+::: {
      RamdiskId:
        if !std.isString(RamdiskId) then (error 'RamdiskId must be a string')
        else if std.isEmpty(RamdiskId) then (error 'RamdiskId must be not empty')
        else RamdiskId,
    },
  },
  setSourceDestCheck(SourceDestCheck): {
    Properties+::: {
      SourceDestCheck:
        if !std.isBoolean(SourceDestCheck) then (error 'SourceDestCheck must be a boolean') else SourceDestCheck,
    },
  },
  setPlacementGroupName(PlacementGroupName): {
    Properties+::: {
      PlacementGroupName:
        if !std.isString(PlacementGroupName) then (error 'PlacementGroupName must be a string')
        else if std.isEmpty(PlacementGroupName) then (error 'PlacementGroupName must be not empty')
        else PlacementGroupName,
    },
  },
  setSsmAssociations(SsmAssociations): {
    Properties+::: {
      SsmAssociations:
        if !std.isArray(SsmAssociations) then (error 'SsmAssociations must be an array')
        else SsmAssociations,
    },
  },
  pushSsmAssociations(SsmAssociations): {
    Properties+::: {
      SsmAssociations+: SsmAssociations,
    },
  },
  setVpcId(VpcId): {
    Properties+::: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isObject(State) then (error 'State must be an object')
        else State,
    },
  },
  setAffinity(Affinity): {
    Properties+::: {
      Affinity:
        if !std.isString(Affinity) then (error 'Affinity must be a string')
        else if std.isEmpty(Affinity) then (error 'Affinity must be not empty')
        else if Affinity != 'default' && Affinity != 'host' then (error "Affinity should be 'default' or 'host'")
        else Affinity,
    },
  },
  setCreditSpecification(CreditSpecification): {
    Properties+::: {
      CreditSpecification:
        if !std.isObject(CreditSpecification) then (error 'CreditSpecification must be an object')
        else CreditSpecification,
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
