{
  new(
    AvailabilityZone,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      AvailabilityZone: AvailabilityZone,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::Host',
  },
  withHostId(HostId): {
    assert std.isString(HostId) : 'HostId must be a string',
    Properties+::: {
      HostId: HostId,
    },
  },
  withAutoPlacement(AutoPlacement): {
    assert std.isString(AutoPlacement) : 'AutoPlacement must be a string',
    Properties+::: {
      AutoPlacement: AutoPlacement,
    },
  },
  withHostRecovery(HostRecovery): {
    assert std.isString(HostRecovery) : 'HostRecovery must be a string',
    Properties+::: {
      HostRecovery: HostRecovery,
    },
  },
  withInstanceType(InstanceType): {
    assert std.isString(InstanceType) : 'InstanceType must be a string',
    Properties+::: {
      InstanceType: InstanceType,
    },
  },
  withInstanceFamily(InstanceFamily): {
    assert std.isString(InstanceFamily) : 'InstanceFamily must be a string',
    Properties+::: {
      InstanceFamily: InstanceFamily,
    },
  },
  withOutpostArn(OutpostArn): {
    assert std.isString(OutpostArn) : 'OutpostArn must be a string',
    Properties+::: {
      OutpostArn: OutpostArn,
    },
  },
  withHostMaintenance(HostMaintenance): {
    assert std.isString(HostMaintenance) : 'HostMaintenance must be a string',
    Properties+::: {
      HostMaintenance: HostMaintenance,
    },
  },
  withAssetId(AssetId): {
    assert std.isString(AssetId) : 'AssetId must be a string',
    Properties+::: {
      AssetId: AssetId,
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
