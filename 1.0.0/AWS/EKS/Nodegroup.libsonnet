{
  new(
    ClusterName,
    NodeRole,
    Subnets,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      ClusterName: ClusterName,
      assert std.isString(NodeRole) : 'NodeRole must be a string',
      NodeRole: NodeRole,
      Subnets: (if std.isArray(Subnets) then Subnets else [Subnets]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::Nodegroup',
  },
  withAmiType(AmiType): {
    assert std.isString(AmiType) : 'AmiType must be a string',
    Properties+::: {
      AmiType: AmiType,
    },
  },
  withCapacityType(CapacityType): {
    assert std.isString(CapacityType) : 'CapacityType must be a string',
    Properties+::: {
      CapacityType: CapacityType,
    },
  },
  withDiskSize(DiskSize): {
    assert std.isNumber(DiskSize) : 'DiskSize must be a number',
    Properties+::: {
      DiskSize: DiskSize,
    },
  },
  withForceUpdateEnabled(ForceUpdateEnabled): {
    assert std.isBoolean(ForceUpdateEnabled) : 'ForceUpdateEnabled must be a boolean',
    Properties+::: {
      ForceUpdateEnabled: ForceUpdateEnabled,
    },
  },
  withInstanceTypes(InstanceTypes): {
    Properties+::: {
      InstanceTypes: (if std.isArray(InstanceTypes) then InstanceTypes else [InstanceTypes]),
    },
  },
  withInstanceTypesMixin(InstanceTypes): {
    Properties+::: {
      InstanceTypes+: (if std.isArray(InstanceTypes) then InstanceTypes else [InstanceTypes]),
    },
  },
  withLabels(Labels): {
    assert std.isObject(Labels) : 'Labels must be a object',
    Properties+::: {
      Labels: Labels,
    },
  },
  withLaunchTemplate(LaunchTemplate): {
    assert std.isObject(LaunchTemplate) : 'LaunchTemplate must be a object',
    Properties+::: {
      LaunchTemplate: LaunchTemplate,
    },
  },
  withNodegroupName(NodegroupName): {
    assert std.isString(NodegroupName) : 'NodegroupName must be a string',
    Properties+::: {
      NodegroupName: NodegroupName,
    },
  },
  withReleaseVersion(ReleaseVersion): {
    assert std.isString(ReleaseVersion) : 'ReleaseVersion must be a string',
    Properties+::: {
      ReleaseVersion: ReleaseVersion,
    },
  },
  withRemoteAccess(RemoteAccess): {
    assert std.isObject(RemoteAccess) : 'RemoteAccess must be a object',
    Properties+::: {
      RemoteAccess: RemoteAccess,
    },
  },
  withScalingConfig(ScalingConfig): {
    assert std.isObject(ScalingConfig) : 'ScalingConfig must be a object',
    Properties+::: {
      ScalingConfig: ScalingConfig,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withTaints(Taints): {
    Properties+::: {
      Taints: (if std.isArray(Taints) then Taints else [Taints]),
    },
  },
  withTaintsMixin(Taints): {
    Properties+::: {
      Taints+: (if std.isArray(Taints) then Taints else [Taints]),
    },
  },
  withUpdateConfig(UpdateConfig): {
    assert std.isObject(UpdateConfig) : 'UpdateConfig must be a object',
    Properties+::: {
      UpdateConfig: UpdateConfig,
    },
  },
  withNodeRepairConfig(NodeRepairConfig): {
    assert std.isObject(NodeRepairConfig) : 'NodeRepairConfig must be a object',
    Properties+::: {
      NodeRepairConfig: NodeRepairConfig,
    },
  },
  withVersion(Version): {
    assert std.isString(Version) : 'Version must be a string',
    Properties+::: {
      Version: Version,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
