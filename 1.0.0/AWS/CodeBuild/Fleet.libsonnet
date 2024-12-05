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
    Type: 'AWS::CodeBuild::Fleet',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 2 then error ('Name should have at least 2 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setBaseCapacity(BaseCapacity): {
    Properties+::: {
      BaseCapacity:
        if !std.isNumber(BaseCapacity) then (error 'BaseCapacity must be an number')
        else if BaseCapacity < 1 then error ('BaseCapacity should be at least 1')
        else BaseCapacity,
    },
  },
  setEnvironmentType(EnvironmentType): {
    Properties+::: {
      EnvironmentType:
        if !std.isString(EnvironmentType) then (error 'EnvironmentType must be a string')
        else if std.isEmpty(EnvironmentType) then (error 'EnvironmentType must be not empty')
        else if EnvironmentType != 'WINDOWS_SERVER_2019_CONTAINER' && EnvironmentType != 'WINDOWS_SERVER_2022_CONTAINER' && EnvironmentType != 'LINUX_CONTAINER' && EnvironmentType != 'LINUX_GPU_CONTAINER' && EnvironmentType != 'ARM_CONTAINER' && EnvironmentType != 'MAC_ARM' then (error "EnvironmentType should be 'WINDOWS_SERVER_2019_CONTAINER' or 'WINDOWS_SERVER_2022_CONTAINER' or 'LINUX_CONTAINER' or 'LINUX_GPU_CONTAINER' or 'ARM_CONTAINER' or 'MAC_ARM'")
        else EnvironmentType,
    },
  },
  setComputeType(ComputeType): {
    Properties+::: {
      ComputeType:
        if !std.isString(ComputeType) then (error 'ComputeType must be a string')
        else if std.isEmpty(ComputeType) then (error 'ComputeType must be not empty')
        else if ComputeType != 'BUILD_GENERAL1_SMALL' && ComputeType != 'BUILD_GENERAL1_MEDIUM' && ComputeType != 'BUILD_GENERAL1_LARGE' && ComputeType != 'BUILD_GENERAL1_XLARGE' && ComputeType != 'BUILD_GENERAL1_2XLARGE' && ComputeType != 'ATTRIBUTE_BASED_COMPUTE' then (error "ComputeType should be 'BUILD_GENERAL1_SMALL' or 'BUILD_GENERAL1_MEDIUM' or 'BUILD_GENERAL1_LARGE' or 'BUILD_GENERAL1_XLARGE' or 'BUILD_GENERAL1_2XLARGE' or 'ATTRIBUTE_BASED_COMPUTE'")
        else ComputeType,
    },
  },
  setOverflowBehavior(OverflowBehavior): {
    Properties+::: {
      OverflowBehavior:
        if !std.isString(OverflowBehavior) then (error 'OverflowBehavior must be a string')
        else if std.isEmpty(OverflowBehavior) then (error 'OverflowBehavior must be not empty')
        else if OverflowBehavior != 'QUEUE' && OverflowBehavior != 'ON_DEMAND' then (error "OverflowBehavior should be 'QUEUE' or 'ON_DEMAND'")
        else OverflowBehavior,
    },
  },
  setFleetServiceRole(FleetServiceRole): {
    Properties+::: {
      FleetServiceRole:
        if !std.isString(FleetServiceRole) then (error 'FleetServiceRole must be a string')
        else if std.isEmpty(FleetServiceRole) then (error 'FleetServiceRole must be not empty')
        else FleetServiceRole,
    },
  },
  setFleetVpcConfig(FleetVpcConfig): {
    Properties+::: {
      FleetVpcConfig:
        if !std.isObject(FleetVpcConfig) then (error 'FleetVpcConfig must be an object')
        else FleetVpcConfig,
    },
  },
  setFleetProxyConfiguration(FleetProxyConfiguration): {
    Properties+::: {
      FleetProxyConfiguration:
        if !std.isObject(FleetProxyConfiguration) then (error 'FleetProxyConfiguration must be an object')
        else FleetProxyConfiguration,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else Arn,
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
  setScalingConfiguration(ScalingConfiguration): {
    Properties+::: {
      ScalingConfiguration:
        if !std.isObject(ScalingConfiguration) then (error 'ScalingConfiguration must be an object')
        else ScalingConfiguration,
    },
  },
  setComputeConfiguration(ComputeConfiguration): {
    Properties+::: {
      ComputeConfiguration:
        if !std.isObject(ComputeConfiguration) then (error 'ComputeConfiguration must be an object')
        else ComputeConfiguration,
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
