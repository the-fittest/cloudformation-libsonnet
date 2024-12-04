{
  new(
    ImageId,
    InstanceType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ImageId) : 'ImageId must be a string',
      ImageId: ImageId,
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      InstanceType: InstanceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::LaunchConfiguration',
  },
  withPlacementTenancy(PlacementTenancy): {
    assert std.isString(PlacementTenancy) : 'PlacementTenancy must be a string',
    Properties+::: {
      PlacementTenancy: PlacementTenancy,
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
  withLaunchConfigurationName(LaunchConfigurationName): {
    assert std.isString(LaunchConfigurationName) : 'LaunchConfigurationName must be a string',
    Properties+::: {
      LaunchConfigurationName: LaunchConfigurationName,
    },
  },
  withMetadataOptions(MetadataOptions): {
    assert std.isObject(MetadataOptions) : 'MetadataOptions must be a object',
    Properties+::: {
      MetadataOptions: MetadataOptions,
    },
  },
  withInstanceId(InstanceId): {
    assert std.isString(InstanceId) : 'InstanceId must be a string',
    Properties+::: {
      InstanceId: InstanceId,
    },
  },
  withUserData(UserData): {
    assert std.isString(UserData) : 'UserData must be a string',
    Properties+::: {
      UserData: UserData,
    },
  },
  withClassicLinkVPCSecurityGroups(ClassicLinkVPCSecurityGroups): {
    Properties+::: {
      ClassicLinkVPCSecurityGroups: (if std.isArray(ClassicLinkVPCSecurityGroups) then ClassicLinkVPCSecurityGroups else [ClassicLinkVPCSecurityGroups]),
    },
  },
  withClassicLinkVPCSecurityGroupsMixin(ClassicLinkVPCSecurityGroups): {
    Properties+::: {
      ClassicLinkVPCSecurityGroups+: (if std.isArray(ClassicLinkVPCSecurityGroups) then ClassicLinkVPCSecurityGroups else [ClassicLinkVPCSecurityGroups]),
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
  withKernelId(KernelId): {
    assert std.isString(KernelId) : 'KernelId must be a string',
    Properties+::: {
      KernelId: KernelId,
    },
  },
  withAssociatePublicIpAddress(AssociatePublicIpAddress): {
    assert std.isBoolean(AssociatePublicIpAddress) : 'AssociatePublicIpAddress must be a boolean',
    Properties+::: {
      AssociatePublicIpAddress: AssociatePublicIpAddress,
    },
  },
  withClassicLinkVPCId(ClassicLinkVPCId): {
    assert std.isString(ClassicLinkVPCId) : 'ClassicLinkVPCId must be a string',
    Properties+::: {
      ClassicLinkVPCId: ClassicLinkVPCId,
    },
  },
  withEbsOptimized(EbsOptimized): {
    assert std.isBoolean(EbsOptimized) : 'EbsOptimized must be a boolean',
    Properties+::: {
      EbsOptimized: EbsOptimized,
    },
  },
  withKeyName(KeyName): {
    assert std.isString(KeyName) : 'KeyName must be a string',
    Properties+::: {
      KeyName: KeyName,
    },
  },
  withSpotPrice(SpotPrice): {
    assert std.isString(SpotPrice) : 'SpotPrice must be a string',
    Properties+::: {
      SpotPrice: SpotPrice,
    },
  },
  withRamDiskId(RamDiskId): {
    assert std.isString(RamDiskId) : 'RamDiskId must be a string',
    Properties+::: {
      RamDiskId: RamDiskId,
    },
  },
  withInstanceMonitoring(InstanceMonitoring): {
    assert std.isBoolean(InstanceMonitoring) : 'InstanceMonitoring must be a boolean',
    Properties+::: {
      InstanceMonitoring: InstanceMonitoring,
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
