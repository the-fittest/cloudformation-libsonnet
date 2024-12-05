{
  new(
    Instances,
    ServiceRole,
    JobFlowRole,
    Name,
  ): {
    local base = self,
    Properties: {
      Instances:
        if !std.isObject(Instances) then (error 'Instances must be an object')
        else Instances,
      ServiceRole:
        if !std.isString(ServiceRole) then (error 'ServiceRole must be a string')
        else if std.isEmpty(ServiceRole) then (error 'ServiceRole must be not empty')
        else ServiceRole,
      JobFlowRole:
        if !std.isString(JobFlowRole) then (error 'JobFlowRole must be a string')
        else if std.isEmpty(JobFlowRole) then (error 'JobFlowRole must be not empty')
        else JobFlowRole,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMR::Cluster',
  },
  setSteps(Steps): {
    Properties+::: {
      Steps:
        if !std.isArray(Steps) then (error 'Steps must be an array')
        else Steps,
    },
  },
  setStepsMixin(Steps): {
    Properties+::: {
      Steps+: Steps,
    },
  },
  setPlacementGroupConfigs(PlacementGroupConfigs): {
    Properties+::: {
      PlacementGroupConfigs:
        if !std.isArray(PlacementGroupConfigs) then (error 'PlacementGroupConfigs must be an array')
        else PlacementGroupConfigs,
    },
  },
  setPlacementGroupConfigsMixin(PlacementGroupConfigs): {
    Properties+::: {
      PlacementGroupConfigs+: PlacementGroupConfigs,
    },
  },
  setStepConcurrencyLevel(StepConcurrencyLevel): {
    Properties+::: {
      StepConcurrencyLevel:
        if !std.isNumber(StepConcurrencyLevel) then (error 'StepConcurrencyLevel must be an number')
        else StepConcurrencyLevel,
    },
  },
  setEbsRootVolumeSize(EbsRootVolumeSize): {
    Properties+::: {
      EbsRootVolumeSize:
        if !std.isNumber(EbsRootVolumeSize) then (error 'EbsRootVolumeSize must be an number')
        else EbsRootVolumeSize,
    },
  },
  setOSReleaseLabel(OSReleaseLabel): {
    Properties+::: {
      OSReleaseLabel:
        if !std.isString(OSReleaseLabel) then (error 'OSReleaseLabel must be a string')
        else if std.isEmpty(OSReleaseLabel) then (error 'OSReleaseLabel must be not empty')
        else OSReleaseLabel,
    },
  },
  setLogUri(LogUri): {
    Properties+::: {
      LogUri:
        if !std.isString(LogUri) then (error 'LogUri must be a string')
        else if std.isEmpty(LogUri) then (error 'LogUri must be not empty')
        else LogUri,
    },
  },
  setBootstrapActions(BootstrapActions): {
    Properties+::: {
      BootstrapActions:
        if !std.isArray(BootstrapActions) then (error 'BootstrapActions must be an array')
        else BootstrapActions,
    },
  },
  setBootstrapActionsMixin(BootstrapActions): {
    Properties+::: {
      BootstrapActions+: BootstrapActions,
    },
  },
  setMasterPublicDNS(MasterPublicDNS): {
    Properties+::: {
      MasterPublicDNS:
        if !std.isString(MasterPublicDNS) then (error 'MasterPublicDNS must be a string')
        else if std.isEmpty(MasterPublicDNS) then (error 'MasterPublicDNS must be not empty')
        else MasterPublicDNS,
    },
  },
  setConfigurations(Configurations): {
    Properties+::: {
      Configurations:
        if !std.isArray(Configurations) then (error 'Configurations must be an array')
        else Configurations,
    },
  },
  setConfigurationsMixin(Configurations): {
    Properties+::: {
      Configurations+: Configurations,
    },
  },
  setReleaseLabel(ReleaseLabel): {
    Properties+::: {
      ReleaseLabel:
        if !std.isString(ReleaseLabel) then (error 'ReleaseLabel must be a string')
        else if std.isEmpty(ReleaseLabel) then (error 'ReleaseLabel must be not empty')
        else ReleaseLabel,
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
  setManagedScalingPolicy(ManagedScalingPolicy): {
    Properties+::: {
      ManagedScalingPolicy:
        if !std.isObject(ManagedScalingPolicy) then (error 'ManagedScalingPolicy must be an object')
        else ManagedScalingPolicy,
    },
  },
  setLogEncryptionKmsKeyId(LogEncryptionKmsKeyId): {
    Properties+::: {
      LogEncryptionKmsKeyId:
        if !std.isString(LogEncryptionKmsKeyId) then (error 'LogEncryptionKmsKeyId must be a string')
        else if std.isEmpty(LogEncryptionKmsKeyId) then (error 'LogEncryptionKmsKeyId must be not empty')
        else LogEncryptionKmsKeyId,
    },
  },
  setAdditionalInfo(AdditionalInfo): {
    Properties+::: {
      AdditionalInfo:
        if !std.isObject(AdditionalInfo) then (error 'AdditionalInfo must be an object')
        else AdditionalInfo,
    },
  },
  setAutoTerminationPolicy(AutoTerminationPolicy): {
    Properties+::: {
      AutoTerminationPolicy:
        if !std.isObject(AutoTerminationPolicy) then (error 'AutoTerminationPolicy must be an object')
        else AutoTerminationPolicy,
    },
  },
  setKerberosAttributes(KerberosAttributes): {
    Properties+::: {
      KerberosAttributes:
        if !std.isObject(KerberosAttributes) then (error 'KerberosAttributes must be an object')
        else if !std.objectHas(KerberosAttributes, 'KdcAdminPassword') then (error ' have attribute KdcAdminPassword')
        else if !std.objectHas(KerberosAttributes, 'Realm') then (error ' have attribute Realm')
        else KerberosAttributes,
    },
  },
  setApplications(Applications): {
    Properties+::: {
      Applications:
        if !std.isArray(Applications) then (error 'Applications must be an array')
        else Applications,
    },
  },
  setApplicationsMixin(Applications): {
    Properties+::: {
      Applications+: Applications,
    },
  },
  setAutoScalingRole(AutoScalingRole): {
    Properties+::: {
      AutoScalingRole:
        if !std.isString(AutoScalingRole) then (error 'AutoScalingRole must be a string')
        else if std.isEmpty(AutoScalingRole) then (error 'AutoScalingRole must be not empty')
        else AutoScalingRole,
    },
  },
  setCustomAmiId(CustomAmiId): {
    Properties+::: {
      CustomAmiId:
        if !std.isString(CustomAmiId) then (error 'CustomAmiId must be a string')
        else if std.isEmpty(CustomAmiId) then (error 'CustomAmiId must be not empty')
        else CustomAmiId,
    },
  },
  setEbsRootVolumeIops(EbsRootVolumeIops): {
    Properties+::: {
      EbsRootVolumeIops:
        if !std.isNumber(EbsRootVolumeIops) then (error 'EbsRootVolumeIops must be an number')
        else EbsRootVolumeIops,
    },
  },
  setScaleDownBehavior(ScaleDownBehavior): {
    Properties+::: {
      ScaleDownBehavior:
        if !std.isString(ScaleDownBehavior) then (error 'ScaleDownBehavior must be a string')
        else if std.isEmpty(ScaleDownBehavior) then (error 'ScaleDownBehavior must be not empty')
        else ScaleDownBehavior,
    },
  },
  setEbsRootVolumeThroughput(EbsRootVolumeThroughput): {
    Properties+::: {
      EbsRootVolumeThroughput:
        if !std.isNumber(EbsRootVolumeThroughput) then (error 'EbsRootVolumeThroughput must be an number')
        else EbsRootVolumeThroughput,
    },
  },
  setVisibleToAllUsers(VisibleToAllUsers): {
    Properties+::: {
      VisibleToAllUsers:
        if !std.isBoolean(VisibleToAllUsers) then (error 'VisibleToAllUsers must be a boolean') else VisibleToAllUsers,
    },
  },
  setSecurityConfiguration(SecurityConfiguration): {
    Properties+::: {
      SecurityConfiguration:
        if !std.isString(SecurityConfiguration) then (error 'SecurityConfiguration must be a string')
        else if std.isEmpty(SecurityConfiguration) then (error 'SecurityConfiguration must be not empty')
        else SecurityConfiguration,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
