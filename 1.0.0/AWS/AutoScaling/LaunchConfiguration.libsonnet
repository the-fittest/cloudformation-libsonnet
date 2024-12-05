{
  new(
    ImageId,
    InstanceType,
  ): {
    local base = self,
    Properties: {
      ImageId:
        if !std.isString(ImageId) then (error 'ImageId must be a string')
        else if std.isEmpty(ImageId) then (error 'ImageId must be not empty')
        else ImageId,
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else InstanceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::LaunchConfiguration',
  },
  setPlacementTenancy(PlacementTenancy): {
    Properties+::: {
      PlacementTenancy:
        if !std.isString(PlacementTenancy) then (error 'PlacementTenancy must be a string')
        else if std.isEmpty(PlacementTenancy) then (error 'PlacementTenancy must be not empty')
        else PlacementTenancy,
    },
  },
  setSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups:
        if !std.isArray(SecurityGroups) then (error 'SecurityGroups must be an array')
        else SecurityGroups,
    },
  },
  setSecurityGroupsMixin(SecurityGroups): {
    Properties+::: {
      SecurityGroups+: SecurityGroups,
    },
  },
  setLaunchConfigurationName(LaunchConfigurationName): {
    Properties+::: {
      LaunchConfigurationName:
        if !std.isString(LaunchConfigurationName) then (error 'LaunchConfigurationName must be a string')
        else if std.isEmpty(LaunchConfigurationName) then (error 'LaunchConfigurationName must be not empty')
        else if std.length(LaunchConfigurationName) < 1 then error ('LaunchConfigurationName should have at least 1 characters')
        else if std.length(LaunchConfigurationName) > 255 then error ('LaunchConfigurationName should have not more than 255 characters')
        else LaunchConfigurationName,
    },
  },
  setMetadataOptions(MetadataOptions): {
    Properties+::: {
      MetadataOptions:
        if !std.isObject(MetadataOptions) then (error 'MetadataOptions must be an object')
        else MetadataOptions,
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
  setUserData(UserData): {
    Properties+::: {
      UserData:
        if !std.isString(UserData) then (error 'UserData must be a string')
        else if std.isEmpty(UserData) then (error 'UserData must be not empty')
        else if std.length(UserData) > 21847 then error ('UserData should have not more than 21847 characters')
        else UserData,
    },
  },
  setClassicLinkVPCSecurityGroups(ClassicLinkVPCSecurityGroups): {
    Properties+::: {
      ClassicLinkVPCSecurityGroups:
        if !std.isArray(ClassicLinkVPCSecurityGroups) then (error 'ClassicLinkVPCSecurityGroups must be an array')
        else ClassicLinkVPCSecurityGroups,
    },
  },
  setClassicLinkVPCSecurityGroupsMixin(ClassicLinkVPCSecurityGroups): {
    Properties+::: {
      ClassicLinkVPCSecurityGroups+: ClassicLinkVPCSecurityGroups,
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
  setIamInstanceProfile(IamInstanceProfile): {
    Properties+::: {
      IamInstanceProfile:
        if !std.isString(IamInstanceProfile) then (error 'IamInstanceProfile must be a string')
        else if std.isEmpty(IamInstanceProfile) then (error 'IamInstanceProfile must be not empty')
        else IamInstanceProfile,
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
  setAssociatePublicIpAddress(AssociatePublicIpAddress): {
    Properties+::: {
      AssociatePublicIpAddress:
        if !std.isBoolean(AssociatePublicIpAddress) then (error 'AssociatePublicIpAddress must be a boolean') else AssociatePublicIpAddress,
    },
  },
  setClassicLinkVPCId(ClassicLinkVPCId): {
    Properties+::: {
      ClassicLinkVPCId:
        if !std.isString(ClassicLinkVPCId) then (error 'ClassicLinkVPCId must be a string')
        else if std.isEmpty(ClassicLinkVPCId) then (error 'ClassicLinkVPCId must be not empty')
        else ClassicLinkVPCId,
    },
  },
  setEbsOptimized(EbsOptimized): {
    Properties+::: {
      EbsOptimized:
        if !std.isBoolean(EbsOptimized) then (error 'EbsOptimized must be a boolean') else EbsOptimized,
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
  setSpotPrice(SpotPrice): {
    Properties+::: {
      SpotPrice:
        if !std.isString(SpotPrice) then (error 'SpotPrice must be a string')
        else if std.isEmpty(SpotPrice) then (error 'SpotPrice must be not empty')
        else SpotPrice,
    },
  },
  setRamDiskId(RamDiskId): {
    Properties+::: {
      RamDiskId:
        if !std.isString(RamDiskId) then (error 'RamDiskId must be a string')
        else if std.isEmpty(RamDiskId) then (error 'RamDiskId must be not empty')
        else RamDiskId,
    },
  },
  setInstanceMonitoring(InstanceMonitoring): {
    Properties+::: {
      InstanceMonitoring:
        if !std.isBoolean(InstanceMonitoring) then (error 'InstanceMonitoring must be a boolean') else InstanceMonitoring,
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
