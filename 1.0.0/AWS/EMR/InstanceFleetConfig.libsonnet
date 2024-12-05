{
  new(
    InstanceFleetType,
    ClusterId,
  ): {
    local base = self,
    Properties: {
      InstanceFleetType:
        if !std.isString(InstanceFleetType) then (error 'InstanceFleetType must be a string')
        else if std.isEmpty(InstanceFleetType) then (error 'InstanceFleetType must be not empty')
        else InstanceFleetType,
      ClusterId:
        if !std.isString(ClusterId) then (error 'ClusterId must be a string')
        else if std.isEmpty(ClusterId) then (error 'ClusterId must be not empty')
        else ClusterId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMR::InstanceFleetConfig',
  },
  setTargetOnDemandCapacity(TargetOnDemandCapacity): {
    Properties+::: {
      TargetOnDemandCapacity:
        if !std.isNumber(TargetOnDemandCapacity) then (error 'TargetOnDemandCapacity must be an number')
        else TargetOnDemandCapacity,
    },
  },
  setTargetSpotCapacity(TargetSpotCapacity): {
    Properties+::: {
      TargetSpotCapacity:
        if !std.isNumber(TargetSpotCapacity) then (error 'TargetSpotCapacity must be an number')
        else TargetSpotCapacity,
    },
  },
  setLaunchSpecifications(LaunchSpecifications): {
    Properties+::: {
      LaunchSpecifications:
        if !std.isObject(LaunchSpecifications) then (error 'LaunchSpecifications must be an object')
        else LaunchSpecifications,
    },
  },
  setResizeSpecifications(ResizeSpecifications): {
    Properties+::: {
      ResizeSpecifications:
        if !std.isObject(ResizeSpecifications) then (error 'ResizeSpecifications must be an object')
        else ResizeSpecifications,
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
  setInstanceTypeConfigs(InstanceTypeConfigs): {
    Properties+::: {
      InstanceTypeConfigs:
        if !std.isArray(InstanceTypeConfigs) then (error 'InstanceTypeConfigs must be an array')
        else InstanceTypeConfigs,
    },
  },
  setInstanceTypeConfigsMixin(InstanceTypeConfigs): {
    Properties+::: {
      InstanceTypeConfigs+: InstanceTypeConfigs,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
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
