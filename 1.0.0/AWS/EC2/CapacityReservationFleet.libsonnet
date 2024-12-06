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
    Type: 'AWS::EC2::CapacityReservationFleet',
  },
  setAllocationStrategy(AllocationStrategy): {
    Properties+::: {
      AllocationStrategy:
        if !std.isString(AllocationStrategy) then (error 'AllocationStrategy must be a string')
        else if std.isEmpty(AllocationStrategy) then (error 'AllocationStrategy must be not empty')
        else AllocationStrategy,
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
  setInstanceTypeSpecifications(InstanceTypeSpecifications): {
    Properties+::: {
      InstanceTypeSpecifications:
        if !std.isArray(InstanceTypeSpecifications) then (error 'InstanceTypeSpecifications must be an array')
        else if std.length(InstanceTypeSpecifications) > 50 then error ('InstanceTypeSpecifications cannot have more than 50 items')
        else InstanceTypeSpecifications,
    },
  },
  pushInstanceTypeSpecifications(InstanceTypeSpecifications): {
    Properties+::: {
      InstanceTypeSpecifications+: InstanceTypeSpecifications,
    },
  },
  setTotalTargetCapacity(TotalTargetCapacity): {
    Properties+::: {
      TotalTargetCapacity:
        if !std.isNumber(TotalTargetCapacity) then (error 'TotalTargetCapacity must be an number')
        else if TotalTargetCapacity < 1 then error ('TotalTargetCapacity should be at least 1')
        else if TotalTargetCapacity > 25000 then error ('TotalTargetCapacity should be not more than 25000')
        else TotalTargetCapacity,
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
  setInstanceMatchCriteria(InstanceMatchCriteria): {
    Properties+::: {
      InstanceMatchCriteria:
        if !std.isString(InstanceMatchCriteria) then (error 'InstanceMatchCriteria must be a string')
        else if std.isEmpty(InstanceMatchCriteria) then (error 'InstanceMatchCriteria must be not empty')
        else if InstanceMatchCriteria != 'open' then (error "InstanceMatchCriteria should be 'open'")
        else InstanceMatchCriteria,
    },
  },
  setCapacityReservationFleetId(CapacityReservationFleetId): {
    Properties+::: {
      CapacityReservationFleetId:
        if !std.isString(CapacityReservationFleetId) then (error 'CapacityReservationFleetId must be a string')
        else if std.isEmpty(CapacityReservationFleetId) then (error 'CapacityReservationFleetId must be not empty')
        else CapacityReservationFleetId,
    },
  },
  setTenancy(Tenancy): {
    Properties+::: {
      Tenancy:
        if !std.isString(Tenancy) then (error 'Tenancy must be a string')
        else if std.isEmpty(Tenancy) then (error 'Tenancy must be not empty')
        else if Tenancy != 'default' then (error "Tenancy should be 'default'")
        else Tenancy,
    },
  },
  setRemoveEndDate(RemoveEndDate): {
    Properties+::: {
      RemoveEndDate:
        if !std.isBoolean(RemoveEndDate) then (error 'RemoveEndDate must be a boolean') else RemoveEndDate,
    },
  },
  setNoRemoveEndDate(NoRemoveEndDate): {
    Properties+::: {
      NoRemoveEndDate:
        if !std.isBoolean(NoRemoveEndDate) then (error 'NoRemoveEndDate must be a boolean') else NoRemoveEndDate,
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
