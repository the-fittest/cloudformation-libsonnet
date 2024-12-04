{
  new(
    Instances,
    ServiceRole,
    JobFlowRole,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(Instances) : 'Instances must be an object',
      Instances: Instances,
      assert std.isString(ServiceRole) : 'ServiceRole must be a string',
      ServiceRole: ServiceRole,
      assert std.isString(JobFlowRole) : 'JobFlowRole must be a string',
      JobFlowRole: JobFlowRole,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMR::Cluster',
  },
  withSteps(Steps): {
    Properties+::: {
      Steps: (if std.isArray(Steps) then Steps else [Steps]),
    },
  },
  withStepsMixin(Steps): {
    Properties+::: {
      Steps+: (if std.isArray(Steps) then Steps else [Steps]),
    },
  },
  withPlacementGroupConfigs(PlacementGroupConfigs): {
    Properties+::: {
      PlacementGroupConfigs: (if std.isArray(PlacementGroupConfigs) then PlacementGroupConfigs else [PlacementGroupConfigs]),
    },
  },
  withPlacementGroupConfigsMixin(PlacementGroupConfigs): {
    Properties+::: {
      PlacementGroupConfigs+: (if std.isArray(PlacementGroupConfigs) then PlacementGroupConfigs else [PlacementGroupConfigs]),
    },
  },
  withStepConcurrencyLevel(StepConcurrencyLevel): {
    assert std.isNumber(StepConcurrencyLevel) : 'StepConcurrencyLevel must be a number',
    Properties+::: {
      StepConcurrencyLevel: StepConcurrencyLevel,
    },
  },
  withEbsRootVolumeSize(EbsRootVolumeSize): {
    assert std.isNumber(EbsRootVolumeSize) : 'EbsRootVolumeSize must be a number',
    Properties+::: {
      EbsRootVolumeSize: EbsRootVolumeSize,
    },
  },
  withOSReleaseLabel(OSReleaseLabel): {
    assert std.isString(OSReleaseLabel) : 'OSReleaseLabel must be a string',
    Properties+::: {
      OSReleaseLabel: OSReleaseLabel,
    },
  },
  withLogUri(LogUri): {
    assert std.isString(LogUri) : 'LogUri must be a string',
    Properties+::: {
      LogUri: LogUri,
    },
  },
  withBootstrapActions(BootstrapActions): {
    Properties+::: {
      BootstrapActions: (if std.isArray(BootstrapActions) then BootstrapActions else [BootstrapActions]),
    },
  },
  withBootstrapActionsMixin(BootstrapActions): {
    Properties+::: {
      BootstrapActions+: (if std.isArray(BootstrapActions) then BootstrapActions else [BootstrapActions]),
    },
  },
  withMasterPublicDNS(MasterPublicDNS): {
    assert std.isString(MasterPublicDNS) : 'MasterPublicDNS must be a string',
    Properties+::: {
      MasterPublicDNS: MasterPublicDNS,
    },
  },
  withConfigurations(Configurations): {
    Properties+::: {
      Configurations: (if std.isArray(Configurations) then Configurations else [Configurations]),
    },
  },
  withConfigurationsMixin(Configurations): {
    Properties+::: {
      Configurations+: (if std.isArray(Configurations) then Configurations else [Configurations]),
    },
  },
  withReleaseLabel(ReleaseLabel): {
    assert std.isString(ReleaseLabel) : 'ReleaseLabel must be a string',
    Properties+::: {
      ReleaseLabel: ReleaseLabel,
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
  withManagedScalingPolicy(ManagedScalingPolicy): {
    assert std.isObject(ManagedScalingPolicy) : 'ManagedScalingPolicy must be a object',
    Properties+::: {
      ManagedScalingPolicy: ManagedScalingPolicy,
    },
  },
  withLogEncryptionKmsKeyId(LogEncryptionKmsKeyId): {
    assert std.isString(LogEncryptionKmsKeyId) : 'LogEncryptionKmsKeyId must be a string',
    Properties+::: {
      LogEncryptionKmsKeyId: LogEncryptionKmsKeyId,
    },
  },
  withAdditionalInfo(AdditionalInfo): {
    assert std.isObject(AdditionalInfo) : 'AdditionalInfo must be a object',
    Properties+::: {
      AdditionalInfo: AdditionalInfo,
    },
  },
  withAutoTerminationPolicy(AutoTerminationPolicy): {
    assert std.isObject(AutoTerminationPolicy) : 'AutoTerminationPolicy must be a object',
    Properties+::: {
      AutoTerminationPolicy: AutoTerminationPolicy,
    },
  },
  withKerberosAttributes(KerberosAttributes): {
    assert std.isObject(KerberosAttributes) : 'KerberosAttributes must be a object',
    Properties+::: {
      KerberosAttributes: KerberosAttributes,
    },
  },
  withApplications(Applications): {
    Properties+::: {
      Applications: (if std.isArray(Applications) then Applications else [Applications]),
    },
  },
  withApplicationsMixin(Applications): {
    Properties+::: {
      Applications+: (if std.isArray(Applications) then Applications else [Applications]),
    },
  },
  withAutoScalingRole(AutoScalingRole): {
    assert std.isString(AutoScalingRole) : 'AutoScalingRole must be a string',
    Properties+::: {
      AutoScalingRole: AutoScalingRole,
    },
  },
  withCustomAmiId(CustomAmiId): {
    assert std.isString(CustomAmiId) : 'CustomAmiId must be a string',
    Properties+::: {
      CustomAmiId: CustomAmiId,
    },
  },
  withEbsRootVolumeIops(EbsRootVolumeIops): {
    assert std.isNumber(EbsRootVolumeIops) : 'EbsRootVolumeIops must be a number',
    Properties+::: {
      EbsRootVolumeIops: EbsRootVolumeIops,
    },
  },
  withScaleDownBehavior(ScaleDownBehavior): {
    assert std.isString(ScaleDownBehavior) : 'ScaleDownBehavior must be a string',
    Properties+::: {
      ScaleDownBehavior: ScaleDownBehavior,
    },
  },
  withEbsRootVolumeThroughput(EbsRootVolumeThroughput): {
    assert std.isNumber(EbsRootVolumeThroughput) : 'EbsRootVolumeThroughput must be a number',
    Properties+::: {
      EbsRootVolumeThroughput: EbsRootVolumeThroughput,
    },
  },
  withVisibleToAllUsers(VisibleToAllUsers): {
    assert std.isBoolean(VisibleToAllUsers) : 'VisibleToAllUsers must be a boolean',
    Properties+::: {
      VisibleToAllUsers: VisibleToAllUsers,
    },
  },
  withSecurityConfiguration(SecurityConfiguration): {
    assert std.isString(SecurityConfiguration) : 'SecurityConfiguration must be a string',
    Properties+::: {
      SecurityConfiguration: SecurityConfiguration,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
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
