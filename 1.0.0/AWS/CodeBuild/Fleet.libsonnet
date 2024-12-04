{
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
    Type: 'AWS::CodeBuild::Fleet',
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withBaseCapacity(BaseCapacity): {
    assert std.isNumber(BaseCapacity) : 'BaseCapacity must be a number',
    Properties+::: {
      BaseCapacity: BaseCapacity,
    },
  },
  withEnvironmentType(EnvironmentType): {
    assert std.isString(EnvironmentType) : 'EnvironmentType must be a string',
    assert EnvironmentType == 'WINDOWS_SERVER_2019_CONTAINER' || EnvironmentType == 'WINDOWS_SERVER_2022_CONTAINER' || EnvironmentType == 'LINUX_CONTAINER' || EnvironmentType == 'LINUX_GPU_CONTAINER' || EnvironmentType == 'ARM_CONTAINER' || EnvironmentType == 'MAC_ARM' : "EnvironmentType should be 'WINDOWS_SERVER_2019_CONTAINER' or 'WINDOWS_SERVER_2022_CONTAINER' or 'LINUX_CONTAINER' or 'LINUX_GPU_CONTAINER' or 'ARM_CONTAINER' or 'MAC_ARM'",
    Properties+::: {
      EnvironmentType: EnvironmentType,
    },
  },
  withComputeType(ComputeType): {
    assert std.isString(ComputeType) : 'ComputeType must be a string',
    assert ComputeType == 'BUILD_GENERAL1_SMALL' || ComputeType == 'BUILD_GENERAL1_MEDIUM' || ComputeType == 'BUILD_GENERAL1_LARGE' || ComputeType == 'BUILD_GENERAL1_XLARGE' || ComputeType == 'BUILD_GENERAL1_2XLARGE' || ComputeType == 'ATTRIBUTE_BASED_COMPUTE' : "ComputeType should be 'BUILD_GENERAL1_SMALL' or 'BUILD_GENERAL1_MEDIUM' or 'BUILD_GENERAL1_LARGE' or 'BUILD_GENERAL1_XLARGE' or 'BUILD_GENERAL1_2XLARGE' or 'ATTRIBUTE_BASED_COMPUTE'",
    Properties+::: {
      ComputeType: ComputeType,
    },
  },
  withOverflowBehavior(OverflowBehavior): {
    assert std.isString(OverflowBehavior) : 'OverflowBehavior must be a string',
    assert OverflowBehavior == 'QUEUE' || OverflowBehavior == 'ON_DEMAND' : "OverflowBehavior should be 'QUEUE' or 'ON_DEMAND'",
    Properties+::: {
      OverflowBehavior: OverflowBehavior,
    },
  },
  withFleetServiceRole(FleetServiceRole): {
    assert std.isString(FleetServiceRole) : 'FleetServiceRole must be a string',
    Properties+::: {
      FleetServiceRole: FleetServiceRole,
    },
  },
  withFleetVpcConfig(FleetVpcConfig): {
    assert std.isObject(FleetVpcConfig) : 'FleetVpcConfig must be a object',
    Properties+::: {
      FleetVpcConfig: FleetVpcConfig,
    },
  },
  withFleetProxyConfiguration(FleetProxyConfiguration): {
    assert std.isObject(FleetProxyConfiguration) : 'FleetProxyConfiguration must be a object',
    Properties+::: {
      FleetProxyConfiguration: FleetProxyConfiguration,
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
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withImageId(ImageId): {
    assert std.isString(ImageId) : 'ImageId must be a string',
    Properties+::: {
      ImageId: ImageId,
    },
  },
  withScalingConfiguration(ScalingConfiguration): {
    assert std.isObject(ScalingConfiguration) : 'ScalingConfiguration must be a object',
    Properties+::: {
      ScalingConfiguration: ScalingConfiguration,
    },
  },
  withComputeConfiguration(ComputeConfiguration): {
    assert std.isObject(ComputeConfiguration) : 'ComputeConfiguration must be a object',
    Properties+::: {
      ComputeConfiguration: ComputeConfiguration,
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
