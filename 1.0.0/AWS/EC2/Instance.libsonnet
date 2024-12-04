{
  // AWS EC2 Instance
  Instance: {
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
      Type: 'AWS::EC2::Instance',
    },
    withTenancy(Tenancy): {
      assert std.isString(Tenancy) : 'Tenancy must be a string',
      Properties+::: {
        Tenancy: Tenancy,
      },
    },
    withSecurityGroups(SecurityGroups): {
      Properties+::: {
        SecurityGroups: (if std.isArray(SecurityGroups) then SecurityGroups else [SecurityGroups]),
      },
    },
    withSecurityGroupsMixin(SecurityGroups): {
      Properties+::: {
        SecurityGroups+: (if std.isArray(SecurityGroups) then SecurityGroups else [SecurityGroups]),
      },
    },
    withPrivateDnsName(PrivateDnsName): {
      assert std.isString(PrivateDnsName) : 'PrivateDnsName must be a string',
      Properties+::: {
        PrivateDnsName: PrivateDnsName,
      },
    },
    withPrivateIpAddress(PrivateIpAddress): {
      assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
      Properties+::: {
        PrivateIpAddress: PrivateIpAddress,
      },
    },
    withUserData(UserData): {
      assert std.isString(UserData) : 'UserData must be a string',
      Properties+::: {
        UserData: UserData,
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
    withIamInstanceProfile(IamInstanceProfile): {
      assert std.isString(IamInstanceProfile) : 'IamInstanceProfile must be a string',
      Properties+::: {
        IamInstanceProfile: IamInstanceProfile,
      },
    },
    withIpv6Addresses(Ipv6Addresses): {
      Properties+::: {
        Ipv6Addresses: (if std.isArray(Ipv6Addresses) then Ipv6Addresses else [Ipv6Addresses]),
      },
    },
    withIpv6AddressesMixin(Ipv6Addresses): {
      Properties+::: {
        Ipv6Addresses+: (if std.isArray(Ipv6Addresses) then Ipv6Addresses else [Ipv6Addresses]),
      },
    },
    withKernelId(KernelId): {
      assert std.isString(KernelId) : 'KernelId must be a string',
      Properties+::: {
        KernelId: KernelId,
      },
    },
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: {
        SubnetId: SubnetId,
      },
    },
    withEbsOptimized(EbsOptimized): {
      assert std.isBoolean(EbsOptimized) : 'EbsOptimized must be a boolean',
      Properties+::: {
        EbsOptimized: EbsOptimized,
      },
    },
    withPropagateTagsToVolumeOnCreation(PropagateTagsToVolumeOnCreation): {
      assert std.isBoolean(PropagateTagsToVolumeOnCreation) : 'PropagateTagsToVolumeOnCreation must be a boolean',
      Properties+::: {
        PropagateTagsToVolumeOnCreation: PropagateTagsToVolumeOnCreation,
      },
    },
    withElasticGpuSpecifications(ElasticGpuSpecifications): {
      Properties+::: {
        ElasticGpuSpecifications: (if std.isArray(ElasticGpuSpecifications) then ElasticGpuSpecifications else [ElasticGpuSpecifications]),
      },
    },
    withElasticGpuSpecificationsMixin(ElasticGpuSpecifications): {
      Properties+::: {
        ElasticGpuSpecifications+: (if std.isArray(ElasticGpuSpecifications) then ElasticGpuSpecifications else [ElasticGpuSpecifications]),
      },
    },
    withElasticInferenceAccelerators(ElasticInferenceAccelerators): {
      Properties+::: {
        ElasticInferenceAccelerators: (if std.isArray(ElasticInferenceAccelerators) then ElasticInferenceAccelerators else [ElasticInferenceAccelerators]),
      },
    },
    withElasticInferenceAcceleratorsMixin(ElasticInferenceAccelerators): {
      Properties+::: {
        ElasticInferenceAccelerators+: (if std.isArray(ElasticInferenceAccelerators) then ElasticInferenceAccelerators else [ElasticInferenceAccelerators]),
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
    withPrivateIp(PrivateIp): {
      assert std.isString(PrivateIp) : 'PrivateIp must be a string',
      Properties+::: {
        PrivateIp: PrivateIp,
      },
    },
    withIpv6AddressCount(Ipv6AddressCount): {
      assert std.isNumber(Ipv6AddressCount) : 'Ipv6AddressCount must be a number',
      Properties+::: {
        Ipv6AddressCount: Ipv6AddressCount,
      },
    },
    withLaunchTemplate(LaunchTemplate): {
      assert std.isObject(LaunchTemplate) : 'LaunchTemplate must be a object',
      Properties+::: {
        LaunchTemplate: LaunchTemplate,
      },
    },
    withEnclaveOptions(EnclaveOptions): {
      assert std.isObject(EnclaveOptions) : 'EnclaveOptions must be a object',
      Properties+::: {
        EnclaveOptions: EnclaveOptions,
      },
    },
    withNetworkInterfaces(NetworkInterfaces): {
      Properties+::: {
        NetworkInterfaces: (if std.isArray(NetworkInterfaces) then NetworkInterfaces else [NetworkInterfaces]),
      },
    },
    withNetworkInterfacesMixin(NetworkInterfaces): {
      Properties+::: {
        NetworkInterfaces+: (if std.isArray(NetworkInterfaces) then NetworkInterfaces else [NetworkInterfaces]),
      },
    },
    withImageId(ImageId): {
      assert std.isString(ImageId) : 'ImageId must be a string',
      Properties+::: {
        ImageId: ImageId,
      },
    },
    withInstanceType(InstanceType): {
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      Properties+::: {
        InstanceType: InstanceType,
      },
    },
    withMonitoring(Monitoring): {
      assert std.isBoolean(Monitoring) : 'Monitoring must be a boolean',
      Properties+::: {
        Monitoring: Monitoring,
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
    withAdditionalInfo(AdditionalInfo): {
      assert std.isString(AdditionalInfo) : 'AdditionalInfo must be a string',
      Properties+::: {
        AdditionalInfo: AdditionalInfo,
      },
    },
    withHibernationOptions(HibernationOptions): {
      assert std.isObject(HibernationOptions) : 'HibernationOptions must be a object',
      Properties+::: {
        HibernationOptions: HibernationOptions,
      },
    },
    withLicenseSpecifications(LicenseSpecifications): {
      Properties+::: {
        LicenseSpecifications: (if std.isArray(LicenseSpecifications) then LicenseSpecifications else [LicenseSpecifications]),
      },
    },
    withLicenseSpecificationsMixin(LicenseSpecifications): {
      Properties+::: {
        LicenseSpecifications+: (if std.isArray(LicenseSpecifications) then LicenseSpecifications else [LicenseSpecifications]),
      },
    },
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: {
        InstanceId: InstanceId,
      },
    },
    withPublicIp(PublicIp): {
      assert std.isString(PublicIp) : 'PublicIp must be a string',
      Properties+::: {
        PublicIp: PublicIp,
      },
    },
    withInstanceInitiatedShutdownBehavior(InstanceInitiatedShutdownBehavior): {
      assert std.isString(InstanceInitiatedShutdownBehavior) : 'InstanceInitiatedShutdownBehavior must be a string',
      Properties+::: {
        InstanceInitiatedShutdownBehavior: InstanceInitiatedShutdownBehavior,
      },
    },
    withCpuOptions(CpuOptions): {
      assert std.isObject(CpuOptions) : 'CpuOptions must be a object',
      Properties+::: {
        CpuOptions: CpuOptions,
      },
    },
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: {
        AvailabilityZone: AvailabilityZone,
      },
    },
    withPrivateDnsNameOptions(PrivateDnsNameOptions): {
      assert std.isObject(PrivateDnsNameOptions) : 'PrivateDnsNameOptions must be a object',
      Properties+::: {
        PrivateDnsNameOptions: PrivateDnsNameOptions,
      },
    },
    withHostId(HostId): {
      assert std.isString(HostId) : 'HostId must be a string',
      Properties+::: {
        HostId: HostId,
      },
    },
    withHostResourceGroupArn(HostResourceGroupArn): {
      assert std.isString(HostResourceGroupArn) : 'HostResourceGroupArn must be a string',
      Properties+::: {
        HostResourceGroupArn: HostResourceGroupArn,
      },
    },
    withPublicDnsName(PublicDnsName): {
      assert std.isString(PublicDnsName) : 'PublicDnsName must be a string',
      Properties+::: {
        PublicDnsName: PublicDnsName,
      },
    },
    withSecurityGroupIds(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSecurityGroupIdsMixin(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withDisableApiTermination(DisableApiTermination): {
      assert std.isBoolean(DisableApiTermination) : 'DisableApiTermination must be a boolean',
      Properties+::: {
        DisableApiTermination: DisableApiTermination,
      },
    },
    withKeyName(KeyName): {
      assert std.isString(KeyName) : 'KeyName must be a string',
      Properties+::: {
        KeyName: KeyName,
      },
    },
    withRamdiskId(RamdiskId): {
      assert std.isString(RamdiskId) : 'RamdiskId must be a string',
      Properties+::: {
        RamdiskId: RamdiskId,
      },
    },
    withSourceDestCheck(SourceDestCheck): {
      assert std.isBoolean(SourceDestCheck) : 'SourceDestCheck must be a boolean',
      Properties+::: {
        SourceDestCheck: SourceDestCheck,
      },
    },
    withPlacementGroupName(PlacementGroupName): {
      assert std.isString(PlacementGroupName) : 'PlacementGroupName must be a string',
      Properties+::: {
        PlacementGroupName: PlacementGroupName,
      },
    },
    withSsmAssociations(SsmAssociations): {
      Properties+::: {
        SsmAssociations: (if std.isArray(SsmAssociations) then SsmAssociations else [SsmAssociations]),
      },
    },
    withSsmAssociationsMixin(SsmAssociations): {
      Properties+::: {
        SsmAssociations+: (if std.isArray(SsmAssociations) then SsmAssociations else [SsmAssociations]),
      },
    },
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: {
        VpcId: VpcId,
      },
    },
    withState(State): {
      assert std.isObject(State) : 'State must be a object',
      Properties+::: {
        State: State,
      },
    },
    withAffinity(Affinity): {
      assert std.isString(Affinity) : 'Affinity must be a string',
      Properties+::: {
        Affinity: Affinity,
      },
    },
    withCreditSpecification(CreditSpecification): {
      assert std.isObject(CreditSpecification) : 'CreditSpecification must be a object',
      Properties+::: {
        CreditSpecification: CreditSpecification,
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
  },
}
