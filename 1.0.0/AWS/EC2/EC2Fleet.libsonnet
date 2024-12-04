{
  new(
    TargetCapacitySpecification,
    LaunchTemplateConfigs,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(TargetCapacitySpecification) : 'TargetCapacitySpecification must be an object',
      TargetCapacitySpecification: TargetCapacitySpecification,
      LaunchTemplateConfigs: (if std.isArray(LaunchTemplateConfigs) then LaunchTemplateConfigs else [LaunchTemplateConfigs]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::EC2Fleet',
  },
  withContext(Context): {
    assert std.isString(Context) : 'Context must be a string',
    Properties+::: {
      Context: Context,
    },
  },
  withOnDemandOptions(OnDemandOptions): {
    assert std.isObject(OnDemandOptions) : 'OnDemandOptions must be a object',
    Properties+::: {
      OnDemandOptions: OnDemandOptions,
    },
  },
  withExcessCapacityTerminationPolicy(ExcessCapacityTerminationPolicy): {
    assert std.isString(ExcessCapacityTerminationPolicy) : 'ExcessCapacityTerminationPolicy must be a string',
    Properties+::: {
      ExcessCapacityTerminationPolicy: ExcessCapacityTerminationPolicy,
    },
  },
  withTagSpecifications(TagSpecifications): {
    Properties+::: {
      TagSpecifications: (if std.isArray(TagSpecifications) then TagSpecifications else [TagSpecifications]),
    },
  },
  withTagSpecificationsMixin(TagSpecifications): {
    Properties+::: {
      TagSpecifications+: (if std.isArray(TagSpecifications) then TagSpecifications else [TagSpecifications]),
    },
  },
  withSpotOptions(SpotOptions): {
    assert std.isObject(SpotOptions) : 'SpotOptions must be a object',
    Properties+::: {
      SpotOptions: SpotOptions,
    },
  },
  withTerminateInstancesWithExpiration(TerminateInstancesWithExpiration): {
    assert std.isBoolean(TerminateInstancesWithExpiration) : 'TerminateInstancesWithExpiration must be a boolean',
    Properties+::: {
      TerminateInstancesWithExpiration: TerminateInstancesWithExpiration,
    },
  },
  withValidUntil(ValidUntil): {
    assert std.isString(ValidUntil) : 'ValidUntil must be a string',
    Properties+::: {
      ValidUntil: ValidUntil,
    },
  },
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    Properties+::: {
      Type: Type,
    },
  },
  withFleetId(FleetId): {
    assert std.isString(FleetId) : 'FleetId must be a string',
    Properties+::: {
      FleetId: FleetId,
    },
  },
  withValidFrom(ValidFrom): {
    assert std.isString(ValidFrom) : 'ValidFrom must be a string',
    Properties+::: {
      ValidFrom: ValidFrom,
    },
  },
  withReplaceUnhealthyInstances(ReplaceUnhealthyInstances): {
    assert std.isBoolean(ReplaceUnhealthyInstances) : 'ReplaceUnhealthyInstances must be a boolean',
    Properties+::: {
      ReplaceUnhealthyInstances: ReplaceUnhealthyInstances,
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
