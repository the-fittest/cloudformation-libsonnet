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
    Type: 'AWS::EC2::CapacityReservationFleet',
  },
  withAllocationStrategy(AllocationStrategy): {
    assert std.isString(AllocationStrategy) : 'AllocationStrategy must be a string',
    Properties+::: {
      AllocationStrategy: AllocationStrategy,
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
  withInstanceTypeSpecifications(InstanceTypeSpecifications): {
    Properties+::: {
      InstanceTypeSpecifications: (if std.isArray(InstanceTypeSpecifications) then InstanceTypeSpecifications else [InstanceTypeSpecifications]),
    },
  },
  withInstanceTypeSpecificationsMixin(InstanceTypeSpecifications): {
    Properties+::: {
      InstanceTypeSpecifications+: (if std.isArray(InstanceTypeSpecifications) then InstanceTypeSpecifications else [InstanceTypeSpecifications]),
    },
  },
  withTotalTargetCapacity(TotalTargetCapacity): {
    assert std.isNumber(TotalTargetCapacity) : 'TotalTargetCapacity must be a number',
    Properties+::: {
      TotalTargetCapacity: TotalTargetCapacity,
    },
  },
  withEndDate(EndDate): {
    assert std.isString(EndDate) : 'EndDate must be a string',
    Properties+::: {
      EndDate: EndDate,
    },
  },
  withInstanceMatchCriteria(InstanceMatchCriteria): {
    assert std.isString(InstanceMatchCriteria) : 'InstanceMatchCriteria must be a string',
    Properties+::: {
      InstanceMatchCriteria: InstanceMatchCriteria,
    },
  },
  withCapacityReservationFleetId(CapacityReservationFleetId): {
    assert std.isString(CapacityReservationFleetId) : 'CapacityReservationFleetId must be a string',
    Properties+::: {
      CapacityReservationFleetId: CapacityReservationFleetId,
    },
  },
  withTenancy(Tenancy): {
    assert std.isString(Tenancy) : 'Tenancy must be a string',
    Properties+::: {
      Tenancy: Tenancy,
    },
  },
  withRemoveEndDate(RemoveEndDate): {
    assert std.isBoolean(RemoveEndDate) : 'RemoveEndDate must be a boolean',
    Properties+::: {
      RemoveEndDate: RemoveEndDate,
    },
  },
  withNoRemoveEndDate(NoRemoveEndDate): {
    assert std.isBoolean(NoRemoveEndDate) : 'NoRemoveEndDate must be a boolean',
    Properties+::: {
      NoRemoveEndDate: NoRemoveEndDate,
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
