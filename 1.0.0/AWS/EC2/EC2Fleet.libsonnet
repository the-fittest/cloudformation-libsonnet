{
  new(
    TargetCapacitySpecification,
    LaunchTemplateConfigs,
  ): {
    local base = self,
    Properties: {
      TargetCapacitySpecification:
        if !std.isObject(TargetCapacitySpecification) then (error 'TargetCapacitySpecification must be an object')
        else if !std.objectHas(TargetCapacitySpecification, 'TotalTargetCapacity') then (error ' have attribute TotalTargetCapacity')
        else TargetCapacitySpecification,
      LaunchTemplateConfigs:
        if !std.isArray(LaunchTemplateConfigs) then (error 'LaunchTemplateConfigs must be an array')
        else if std.length(LaunchTemplateConfigs) > 50 then error ('LaunchTemplateConfigs cannot have more than 50 items')
        else LaunchTemplateConfigs,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::EC2Fleet',
  },
  setContext(Context): {
    Properties+::: {
      Context:
        if !std.isString(Context) then (error 'Context must be a string')
        else if std.isEmpty(Context) then (error 'Context must be not empty')
        else Context,
    },
  },
  setOnDemandOptions(OnDemandOptions): {
    Properties+::: {
      OnDemandOptions:
        if !std.isObject(OnDemandOptions) then (error 'OnDemandOptions must be an object')
        else OnDemandOptions,
    },
  },
  setExcessCapacityTerminationPolicy(ExcessCapacityTerminationPolicy): {
    Properties+::: {
      ExcessCapacityTerminationPolicy:
        if !std.isString(ExcessCapacityTerminationPolicy) then (error 'ExcessCapacityTerminationPolicy must be a string')
        else if std.isEmpty(ExcessCapacityTerminationPolicy) then (error 'ExcessCapacityTerminationPolicy must be not empty')
        else if ExcessCapacityTerminationPolicy != 'termination' && ExcessCapacityTerminationPolicy != 'no-termination' then (error "ExcessCapacityTerminationPolicy should be 'termination' or 'no-termination'")
        else ExcessCapacityTerminationPolicy,
    },
  },
  setTagSpecifications(TagSpecifications): {
    Properties+::: {
      TagSpecifications:
        if !std.isArray(TagSpecifications) then (error 'TagSpecifications must be an array')
        else TagSpecifications,
    },
  },
  setTagSpecificationsMixin(TagSpecifications): {
    Properties+::: {
      TagSpecifications+: TagSpecifications,
    },
  },
  setSpotOptions(SpotOptions): {
    Properties+::: {
      SpotOptions:
        if !std.isObject(SpotOptions) then (error 'SpotOptions must be an object')
        else SpotOptions,
    },
  },
  setTerminateInstancesWithExpiration(TerminateInstancesWithExpiration): {
    Properties+::: {
      TerminateInstancesWithExpiration:
        if !std.isBoolean(TerminateInstancesWithExpiration) then (error 'TerminateInstancesWithExpiration must be a boolean') else TerminateInstancesWithExpiration,
    },
  },
  setValidUntil(ValidUntil): {
    Properties+::: {
      ValidUntil:
        if !std.isString(ValidUntil) then (error 'ValidUntil must be a string')
        else if std.isEmpty(ValidUntil) then (error 'ValidUntil must be not empty')
        else ValidUntil,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'maintain' && Type != 'request' && Type != 'instant' then (error "Type should be 'maintain' or 'request' or 'instant'")
        else Type,
    },
  },
  setFleetId(FleetId): {
    Properties+::: {
      FleetId:
        if !std.isString(FleetId) then (error 'FleetId must be a string')
        else if std.isEmpty(FleetId) then (error 'FleetId must be not empty')
        else FleetId,
    },
  },
  setValidFrom(ValidFrom): {
    Properties+::: {
      ValidFrom:
        if !std.isString(ValidFrom) then (error 'ValidFrom must be a string')
        else if std.isEmpty(ValidFrom) then (error 'ValidFrom must be not empty')
        else ValidFrom,
    },
  },
  setReplaceUnhealthyInstances(ReplaceUnhealthyInstances): {
    Properties+::: {
      ReplaceUnhealthyInstances:
        if !std.isBoolean(ReplaceUnhealthyInstances) then (error 'ReplaceUnhealthyInstances must be a boolean') else ReplaceUnhealthyInstances,
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
