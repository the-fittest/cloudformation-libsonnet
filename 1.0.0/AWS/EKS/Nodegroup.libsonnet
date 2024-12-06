{
  new(
    ClusterName,
    NodeRole,
    Subnets,
  ): {
    local base = self,
    Properties: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else if std.length(ClusterName) < 1 then error ('ClusterName should have at least 1 characters')
        else ClusterName,
      NodeRole:
        if !std.isString(NodeRole) then (error 'NodeRole must be a string')
        else if std.isEmpty(NodeRole) then (error 'NodeRole must be not empty')
        else NodeRole,
      Subnets:
        if !std.isArray(Subnets) then (error 'Subnets must be an array')
        else Subnets,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::Nodegroup',
  },
  setAmiType(AmiType): {
    Properties+::: {
      AmiType:
        if !std.isString(AmiType) then (error 'AmiType must be a string')
        else if std.isEmpty(AmiType) then (error 'AmiType must be not empty')
        else AmiType,
    },
  },
  setCapacityType(CapacityType): {
    Properties+::: {
      CapacityType:
        if !std.isString(CapacityType) then (error 'CapacityType must be a string')
        else if std.isEmpty(CapacityType) then (error 'CapacityType must be not empty')
        else CapacityType,
    },
  },
  setDiskSize(DiskSize): {
    Properties+::: {
      DiskSize:
        if !std.isNumber(DiskSize) then (error 'DiskSize must be an number')
        else DiskSize,
    },
  },
  setForceUpdateEnabled(ForceUpdateEnabled): {
    Properties+::: {
      ForceUpdateEnabled:
        if !std.isBoolean(ForceUpdateEnabled) then (error 'ForceUpdateEnabled must be a boolean') else ForceUpdateEnabled,
    },
  },
  setInstanceTypes(InstanceTypes): {
    Properties+::: {
      InstanceTypes:
        if !std.isArray(InstanceTypes) then (error 'InstanceTypes must be an array')
        else InstanceTypes,
    },
  },
  pushInstanceTypes(InstanceTypes): {
    Properties+::: {
      InstanceTypes+: InstanceTypes,
    },
  },
  setLabels(Labels): {
    Properties+::: {
      Labels:
        if !std.isObject(Labels) then (error 'Labels must be an object')
        else Labels,
    },
  },
  setLaunchTemplate(LaunchTemplate): {
    Properties+::: {
      LaunchTemplate:
        if !std.isObject(LaunchTemplate) then (error 'LaunchTemplate must be an object')
        else LaunchTemplate,
    },
  },
  setNodegroupName(NodegroupName): {
    Properties+::: {
      NodegroupName:
        if !std.isString(NodegroupName) then (error 'NodegroupName must be a string')
        else if std.isEmpty(NodegroupName) then (error 'NodegroupName must be not empty')
        else if std.length(NodegroupName) < 1 then error ('NodegroupName should have at least 1 characters')
        else NodegroupName,
    },
  },
  setReleaseVersion(ReleaseVersion): {
    Properties+::: {
      ReleaseVersion:
        if !std.isString(ReleaseVersion) then (error 'ReleaseVersion must be a string')
        else if std.isEmpty(ReleaseVersion) then (error 'ReleaseVersion must be not empty')
        else ReleaseVersion,
    },
  },
  setRemoteAccess(RemoteAccess): {
    Properties+::: {
      RemoteAccess:
        if !std.isObject(RemoteAccess) then (error 'RemoteAccess must be an object')
        else if !std.objectHas(RemoteAccess, 'Ec2SshKey') then (error ' have attribute Ec2SshKey')
        else RemoteAccess,
    },
  },
  setScalingConfig(ScalingConfig): {
    Properties+::: {
      ScalingConfig:
        if !std.isObject(ScalingConfig) then (error 'ScalingConfig must be an object')
        else ScalingConfig,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setTaints(Taints): {
    Properties+::: {
      Taints:
        if !std.isArray(Taints) then (error 'Taints must be an array')
        else Taints,
    },
  },
  pushTaints(Taints): {
    Properties+::: {
      Taints+: Taints,
    },
  },
  setUpdateConfig(UpdateConfig): {
    Properties+::: {
      UpdateConfig:
        if !std.isObject(UpdateConfig) then (error 'UpdateConfig must be an object')
        else UpdateConfig,
    },
  },
  setNodeRepairConfig(NodeRepairConfig): {
    Properties+::: {
      NodeRepairConfig:
        if !std.isObject(NodeRepairConfig) then (error 'NodeRepairConfig must be an object')
        else NodeRepairConfig,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
