{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::Fleet',
  },
  withScalingPolicies(ScalingPolicies): {
    Properties+::: {
      ScalingPolicies: (if std.isArray(ScalingPolicies) then ScalingPolicies else [ScalingPolicies]),
    },
  },
  withScalingPoliciesMixin(ScalingPolicies): {
    Properties+::: {
      ScalingPolicies+: (if std.isArray(ScalingPolicies) then ScalingPolicies else [ScalingPolicies]),
    },
  },
  withAnywhereConfiguration(AnywhereConfiguration): {
    Properties+::: {
      AnywhereConfiguration: AnywhereConfiguration,
    },
  },
  withApplyCapacity(ApplyCapacity): {
    assert std.isString(ApplyCapacity) : 'ApplyCapacity must be a string',
    Properties+::: {
      ApplyCapacity: ApplyCapacity,
    },
  },
  withCertificateConfiguration(CertificateConfiguration): {
    assert std.isObject(CertificateConfiguration) : 'CertificateConfiguration must be a object',
    Properties+::: {
      CertificateConfiguration: CertificateConfiguration,
    },
  },
  withComputeType(ComputeType): {
    assert std.isString(ComputeType) : 'ComputeType must be a string',
    Properties+::: {
      ComputeType: ComputeType,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withDesiredEC2Instances(DesiredEC2Instances): {
    assert std.isNumber(DesiredEC2Instances) : 'DesiredEC2Instances must be a number',
    Properties+::: {
      DesiredEC2Instances: DesiredEC2Instances,
    },
  },
  withEC2InboundPermissions(EC2InboundPermissions): {
    Properties+::: {
      EC2InboundPermissions: (if std.isArray(EC2InboundPermissions) then EC2InboundPermissions else [EC2InboundPermissions]),
    },
  },
  withEC2InboundPermissionsMixin(EC2InboundPermissions): {
    Properties+::: {
      EC2InboundPermissions+: (if std.isArray(EC2InboundPermissions) then EC2InboundPermissions else [EC2InboundPermissions]),
    },
  },
  withEC2InstanceType(EC2InstanceType): {
    assert std.isString(EC2InstanceType) : 'EC2InstanceType must be a string',
    Properties+::: {
      EC2InstanceType: EC2InstanceType,
    },
  },
  withFleetType(FleetType): {
    assert std.isString(FleetType) : 'FleetType must be a string',
    Properties+::: {
      FleetType: FleetType,
    },
  },
  withInstanceRoleARN(InstanceRoleARN): {
    assert std.isString(InstanceRoleARN) : 'InstanceRoleARN must be a string',
    Properties+::: {
      InstanceRoleARN: InstanceRoleARN,
    },
  },
  withInstanceRoleCredentialsProvider(InstanceRoleCredentialsProvider): {
    assert std.isString(InstanceRoleCredentialsProvider) : 'InstanceRoleCredentialsProvider must be a string',
    Properties+::: {
      InstanceRoleCredentialsProvider: InstanceRoleCredentialsProvider,
    },
  },
  withLocations(Locations): {
    Properties+::: {
      Locations: (if std.isArray(Locations) then Locations else [Locations]),
    },
  },
  withLocationsMixin(Locations): {
    Properties+::: {
      Locations+: (if std.isArray(Locations) then Locations else [Locations]),
    },
  },
  withLogPaths(LogPaths): {
    Properties+::: {
      LogPaths: (if std.isArray(LogPaths) then LogPaths else [LogPaths]),
    },
  },
  withLogPathsMixin(LogPaths): {
    Properties+::: {
      LogPaths+: (if std.isArray(LogPaths) then LogPaths else [LogPaths]),
    },
  },
  withMaxSize(MaxSize): {
    assert std.isNumber(MaxSize) : 'MaxSize must be a number',
    Properties+::: {
      MaxSize: MaxSize,
    },
  },
  withMetricGroups(MetricGroups): {
    Properties+::: {
      MetricGroups: (if std.isArray(MetricGroups) then MetricGroups else [MetricGroups]),
    },
  },
  withMetricGroupsMixin(MetricGroups): {
    Properties+::: {
      MetricGroups+: (if std.isArray(MetricGroups) then MetricGroups else [MetricGroups]),
    },
  },
  withMinSize(MinSize): {
    assert std.isNumber(MinSize) : 'MinSize must be a number',
    Properties+::: {
      MinSize: MinSize,
    },
  },
  withNewGameSessionProtectionPolicy(NewGameSessionProtectionPolicy): {
    assert std.isString(NewGameSessionProtectionPolicy) : 'NewGameSessionProtectionPolicy must be a string',
    Properties+::: {
      NewGameSessionProtectionPolicy: NewGameSessionProtectionPolicy,
    },
  },
  withPeerVpcAwsAccountId(PeerVpcAwsAccountId): {
    assert std.isString(PeerVpcAwsAccountId) : 'PeerVpcAwsAccountId must be a string',
    Properties+::: {
      PeerVpcAwsAccountId: PeerVpcAwsAccountId,
    },
  },
  withPeerVpcId(PeerVpcId): {
    assert std.isString(PeerVpcId) : 'PeerVpcId must be a string',
    Properties+::: {
      PeerVpcId: PeerVpcId,
    },
  },
  withResourceCreationLimitPolicy(ResourceCreationLimitPolicy): {
    assert std.isObject(ResourceCreationLimitPolicy) : 'ResourceCreationLimitPolicy must be a object',
    Properties+::: {
      ResourceCreationLimitPolicy: ResourceCreationLimitPolicy,
    },
  },
  withFleetId(FleetId): {
    assert std.isString(FleetId) : 'FleetId must be a string',
    Properties+::: {
      FleetId: FleetId,
    },
  },
  withBuildId(BuildId): {
    assert std.isString(BuildId) : 'BuildId must be a string',
    Properties+::: {
      BuildId: BuildId,
    },
  },
  withScriptId(ScriptId): {
    assert std.isString(ScriptId) : 'ScriptId must be a string',
    Properties+::: {
      ScriptId: ScriptId,
    },
  },
  withRuntimeConfiguration(RuntimeConfiguration): {
    assert std.isObject(RuntimeConfiguration) : 'RuntimeConfiguration must be a object',
    Properties+::: {
      RuntimeConfiguration: RuntimeConfiguration,
    },
  },
  withServerLaunchParameters(ServerLaunchParameters): {
    assert std.isString(ServerLaunchParameters) : 'ServerLaunchParameters must be a string',
    Properties+::: {
      ServerLaunchParameters: ServerLaunchParameters,
    },
  },
  withServerLaunchPath(ServerLaunchPath): {
    assert std.isString(ServerLaunchPath) : 'ServerLaunchPath must be a string',
    Properties+::: {
      ServerLaunchPath: ServerLaunchPath,
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
