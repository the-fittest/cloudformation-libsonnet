{
  new(
    InstanceFleetType,
    ClusterId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(InstanceFleetType) : 'InstanceFleetType must be a string',
      InstanceFleetType: InstanceFleetType,
      assert std.isString(ClusterId) : 'ClusterId must be a string',
      ClusterId: ClusterId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMR::InstanceFleetConfig',
  },
  withTargetOnDemandCapacity(TargetOnDemandCapacity): {
    assert std.isNumber(TargetOnDemandCapacity) : 'TargetOnDemandCapacity must be a number',
    Properties+::: {
      TargetOnDemandCapacity: TargetOnDemandCapacity,
    },
  },
  withTargetSpotCapacity(TargetSpotCapacity): {
    assert std.isNumber(TargetSpotCapacity) : 'TargetSpotCapacity must be a number',
    Properties+::: {
      TargetSpotCapacity: TargetSpotCapacity,
    },
  },
  withLaunchSpecifications(LaunchSpecifications): {
    assert std.isObject(LaunchSpecifications) : 'LaunchSpecifications must be a object',
    Properties+::: {
      LaunchSpecifications: LaunchSpecifications,
    },
  },
  withResizeSpecifications(ResizeSpecifications): {
    assert std.isObject(ResizeSpecifications) : 'ResizeSpecifications must be a object',
    Properties+::: {
      ResizeSpecifications: ResizeSpecifications,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withInstanceTypeConfigs(InstanceTypeConfigs): {
    Properties+::: {
      InstanceTypeConfigs: (if std.isArray(InstanceTypeConfigs) then InstanceTypeConfigs else [InstanceTypeConfigs]),
    },
  },
  withInstanceTypeConfigsMixin(InstanceTypeConfigs): {
    Properties+::: {
      InstanceTypeConfigs+: (if std.isArray(InstanceTypeConfigs) then InstanceTypeConfigs else [InstanceTypeConfigs]),
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
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
