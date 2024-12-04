{
  new(
    InstanceCount,
    AvailabilityZone,
    InstancePlatform,
    InstanceType,
  ): {
    local base = self,
    Properties: {
      assert std.isNumber(InstanceCount) : 'InstanceCount must be a number',
      InstanceCount: InstanceCount,
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      AvailabilityZone: AvailabilityZone,
      assert std.isString(InstancePlatform) : 'InstancePlatform must be a string',
      InstancePlatform: InstancePlatform,
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      InstanceType: InstanceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::CapacityReservation',
  },
  withTenancy(Tenancy): {
    assert std.isString(Tenancy) : 'Tenancy must be a string',
    Properties+::: {
      Tenancy: Tenancy,
    },
  },
  withEndDateType(EndDateType): {
    assert std.isString(EndDateType) : 'EndDateType must be a string',
    Properties+::: {
      EndDateType: EndDateType,
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
  withTotalInstanceCount(TotalInstanceCount): {
    assert std.isNumber(TotalInstanceCount) : 'TotalInstanceCount must be a number',
    Properties+::: {
      TotalInstanceCount: TotalInstanceCount,
    },
  },
  withEndDate(EndDate): {
    assert std.isString(EndDate) : 'EndDate must be a string',
    Properties+::: {
      EndDate: EndDate,
    },
  },
  withEbsOptimized(EbsOptimized): {
    assert std.isBoolean(EbsOptimized) : 'EbsOptimized must be a boolean',
    Properties+::: {
      EbsOptimized: EbsOptimized,
    },
  },
  withOutPostArn(OutPostArn): {
    assert std.isString(OutPostArn) : 'OutPostArn must be a string',
    Properties+::: {
      OutPostArn: OutPostArn,
    },
  },
  withPlacementGroupArn(PlacementGroupArn): {
    assert std.isString(PlacementGroupArn) : 'PlacementGroupArn must be a string',
    Properties+::: {
      PlacementGroupArn: PlacementGroupArn,
    },
  },
  withAvailableInstanceCount(AvailableInstanceCount): {
    assert std.isNumber(AvailableInstanceCount) : 'AvailableInstanceCount must be a number',
    Properties+::: {
      AvailableInstanceCount: AvailableInstanceCount,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withEphemeralStorage(EphemeralStorage): {
    assert std.isBoolean(EphemeralStorage) : 'EphemeralStorage must be a boolean',
    Properties+::: {
      EphemeralStorage: EphemeralStorage,
    },
  },
  withInstanceMatchCriteria(InstanceMatchCriteria): {
    assert std.isString(InstanceMatchCriteria) : 'InstanceMatchCriteria must be a string',
    Properties+::: {
      InstanceMatchCriteria: InstanceMatchCriteria,
    },
  },
  withUnusedReservationBillingOwnerId(UnusedReservationBillingOwnerId): {
    assert std.isString(UnusedReservationBillingOwnerId) : 'UnusedReservationBillingOwnerId must be a string',
    Properties+::: {
      UnusedReservationBillingOwnerId: UnusedReservationBillingOwnerId,
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
