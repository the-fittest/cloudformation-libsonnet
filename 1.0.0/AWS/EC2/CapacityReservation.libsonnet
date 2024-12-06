{
  new(
    InstanceCount,
    AvailabilityZone,
    InstancePlatform,
    InstanceType,
  ): {
    local base = self,
    Properties: {
      InstanceCount:
        if !std.isNumber(InstanceCount) then (error 'InstanceCount must be an number')
        else InstanceCount,
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else AvailabilityZone,
      InstancePlatform:
        if !std.isString(InstancePlatform) then (error 'InstancePlatform must be a string')
        else if std.isEmpty(InstancePlatform) then (error 'InstancePlatform must be not empty')
        else InstancePlatform,
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else InstanceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::CapacityReservation',
  },
  setTenancy(Tenancy): {
    Properties+::: {
      Tenancy:
        if !std.isString(Tenancy) then (error 'Tenancy must be a string')
        else if std.isEmpty(Tenancy) then (error 'Tenancy must be not empty')
        else Tenancy,
    },
  },
  setEndDateType(EndDateType): {
    Properties+::: {
      EndDateType:
        if !std.isString(EndDateType) then (error 'EndDateType must be a string')
        else if std.isEmpty(EndDateType) then (error 'EndDateType must be not empty')
        else EndDateType,
    },
  },
  setTagSpecifications(TagSpecifications): {
    Properties+::: {
      TagSpecifications:
        if !std.isArray(TagSpecifications) then (error 'TagSpecifications must be an array')
        else TagSpecifications,
    },
  },
  pushTagSpecifications(TagSpecifications): {
    Properties+::: {
      TagSpecifications+: TagSpecifications,
    },
  },
  setTotalInstanceCount(TotalInstanceCount): {
    Properties+::: {
      TotalInstanceCount:
        if !std.isNumber(TotalInstanceCount) then (error 'TotalInstanceCount must be an number')
        else TotalInstanceCount,
    },
  },
  setEndDate(EndDate): {
    Properties+::: {
      EndDate:
        if !std.isString(EndDate) then (error 'EndDate must be a string')
        else if std.isEmpty(EndDate) then (error 'EndDate must be not empty')
        else EndDate,
    },
  },
  setEbsOptimized(EbsOptimized): {
    Properties+::: {
      EbsOptimized:
        if !std.isBoolean(EbsOptimized) then (error 'EbsOptimized must be a boolean') else EbsOptimized,
    },
  },
  setOutPostArn(OutPostArn): {
    Properties+::: {
      OutPostArn:
        if !std.isString(OutPostArn) then (error 'OutPostArn must be a string')
        else if std.isEmpty(OutPostArn) then (error 'OutPostArn must be not empty')
        else OutPostArn,
    },
  },
  setPlacementGroupArn(PlacementGroupArn): {
    Properties+::: {
      PlacementGroupArn:
        if !std.isString(PlacementGroupArn) then (error 'PlacementGroupArn must be a string')
        else if std.isEmpty(PlacementGroupArn) then (error 'PlacementGroupArn must be not empty')
        else PlacementGroupArn,
    },
  },
  setAvailableInstanceCount(AvailableInstanceCount): {
    Properties+::: {
      AvailableInstanceCount:
        if !std.isNumber(AvailableInstanceCount) then (error 'AvailableInstanceCount must be an number')
        else AvailableInstanceCount,
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
  setEphemeralStorage(EphemeralStorage): {
    Properties+::: {
      EphemeralStorage:
        if !std.isBoolean(EphemeralStorage) then (error 'EphemeralStorage must be a boolean') else EphemeralStorage,
    },
  },
  setInstanceMatchCriteria(InstanceMatchCriteria): {
    Properties+::: {
      InstanceMatchCriteria:
        if !std.isString(InstanceMatchCriteria) then (error 'InstanceMatchCriteria must be a string')
        else if std.isEmpty(InstanceMatchCriteria) then (error 'InstanceMatchCriteria must be not empty')
        else InstanceMatchCriteria,
    },
  },
  setUnusedReservationBillingOwnerId(UnusedReservationBillingOwnerId): {
    Properties+::: {
      UnusedReservationBillingOwnerId:
        if !std.isString(UnusedReservationBillingOwnerId) then (error 'UnusedReservationBillingOwnerId must be a string')
        else if std.isEmpty(UnusedReservationBillingOwnerId) then (error 'UnusedReservationBillingOwnerId must be not empty')
        else UnusedReservationBillingOwnerId,
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
