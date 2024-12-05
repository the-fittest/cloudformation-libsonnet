{
  new(
    AvailabilityZone,
  ): {
    local base = self,
    Properties: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else AvailabilityZone,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::Host',
  },
  setHostId(HostId): {
    Properties+::: {
      HostId:
        if !std.isString(HostId) then (error 'HostId must be a string')
        else if std.isEmpty(HostId) then (error 'HostId must be not empty')
        else HostId,
    },
  },
  setAutoPlacement(AutoPlacement): {
    Properties+::: {
      AutoPlacement:
        if !std.isString(AutoPlacement) then (error 'AutoPlacement must be a string')
        else if std.isEmpty(AutoPlacement) then (error 'AutoPlacement must be not empty')
        else AutoPlacement,
    },
  },
  setHostRecovery(HostRecovery): {
    Properties+::: {
      HostRecovery:
        if !std.isString(HostRecovery) then (error 'HostRecovery must be a string')
        else if std.isEmpty(HostRecovery) then (error 'HostRecovery must be not empty')
        else HostRecovery,
    },
  },
  setInstanceType(InstanceType): {
    Properties+::: {
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else InstanceType,
    },
  },
  setInstanceFamily(InstanceFamily): {
    Properties+::: {
      InstanceFamily:
        if !std.isString(InstanceFamily) then (error 'InstanceFamily must be a string')
        else if std.isEmpty(InstanceFamily) then (error 'InstanceFamily must be not empty')
        else InstanceFamily,
    },
  },
  setOutpostArn(OutpostArn): {
    Properties+::: {
      OutpostArn:
        if !std.isString(OutpostArn) then (error 'OutpostArn must be a string')
        else if std.isEmpty(OutpostArn) then (error 'OutpostArn must be not empty')
        else OutpostArn,
    },
  },
  setHostMaintenance(HostMaintenance): {
    Properties+::: {
      HostMaintenance:
        if !std.isString(HostMaintenance) then (error 'HostMaintenance must be a string')
        else if std.isEmpty(HostMaintenance) then (error 'HostMaintenance must be not empty')
        else HostMaintenance,
    },
  },
  setAssetId(AssetId): {
    Properties+::: {
      AssetId:
        if !std.isString(AssetId) then (error 'AssetId must be a string')
        else if std.isEmpty(AssetId) then (error 'AssetId must be not empty')
        else AssetId,
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
