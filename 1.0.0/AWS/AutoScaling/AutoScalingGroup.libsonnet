{
  new(
    MinSize,
    MaxSize,
  ): {
    local base = self,
    Properties: {
      MinSize:
        if !std.isString(MinSize) then (error 'MinSize must be a string')
        else if std.isEmpty(MinSize) then (error 'MinSize must be not empty')
        else MinSize,
      MaxSize:
        if !std.isString(MaxSize) then (error 'MaxSize must be a string')
        else if std.isEmpty(MaxSize) then (error 'MaxSize must be not empty')
        else MaxSize,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::AutoScalingGroup',
  },
  setLifecycleHookSpecificationList(LifecycleHookSpecificationList): {
    Properties+::: {
      LifecycleHookSpecificationList:
        if !std.isArray(LifecycleHookSpecificationList) then (error 'LifecycleHookSpecificationList must be an array')
        else LifecycleHookSpecificationList,
    },
  },
  setLifecycleHookSpecificationListMixin(LifecycleHookSpecificationList): {
    Properties+::: {
      LifecycleHookSpecificationList+: LifecycleHookSpecificationList,
    },
  },
  setLoadBalancerNames(LoadBalancerNames): {
    Properties+::: {
      LoadBalancerNames:
        if !std.isArray(LoadBalancerNames) then (error 'LoadBalancerNames must be an array')
        else LoadBalancerNames,
    },
  },
  setLoadBalancerNamesMixin(LoadBalancerNames): {
    Properties+::: {
      LoadBalancerNames+: LoadBalancerNames,
    },
  },
  setLaunchConfigurationName(LaunchConfigurationName): {
    Properties+::: {
      LaunchConfigurationName:
        if !std.isString(LaunchConfigurationName) then (error 'LaunchConfigurationName must be a string')
        else if std.isEmpty(LaunchConfigurationName) then (error 'LaunchConfigurationName must be not empty')
        else LaunchConfigurationName,
    },
  },
  setServiceLinkedRoleARN(ServiceLinkedRoleARN): {
    Properties+::: {
      ServiceLinkedRoleARN:
        if !std.isString(ServiceLinkedRoleARN) then (error 'ServiceLinkedRoleARN must be a string')
        else if std.isEmpty(ServiceLinkedRoleARN) then (error 'ServiceLinkedRoleARN must be not empty')
        else ServiceLinkedRoleARN,
    },
  },
  setAvailabilityZoneImpairmentPolicy(AvailabilityZoneImpairmentPolicy): {
    Properties+::: {
      AvailabilityZoneImpairmentPolicy:
        if !std.isObject(AvailabilityZoneImpairmentPolicy) then (error 'AvailabilityZoneImpairmentPolicy must be an object')
        else if !std.objectHas(AvailabilityZoneImpairmentPolicy, 'ImpairedZoneHealthCheckBehavior') then (error ' have attribute ImpairedZoneHealthCheckBehavior')
        else if !std.objectHas(AvailabilityZoneImpairmentPolicy, 'ZonalShiftEnabled') then (error ' have attribute ZonalShiftEnabled')
        else AvailabilityZoneImpairmentPolicy,
    },
  },
  setTargetGroupARNs(TargetGroupARNs): {
    Properties+::: {
      TargetGroupARNs:
        if !std.isArray(TargetGroupARNs) then (error 'TargetGroupARNs must be an array')
        else TargetGroupARNs,
    },
  },
  setTargetGroupARNsMixin(TargetGroupARNs): {
    Properties+::: {
      TargetGroupARNs+: TargetGroupARNs,
    },
  },
  setCooldown(Cooldown): {
    Properties+::: {
      Cooldown:
        if !std.isString(Cooldown) then (error 'Cooldown must be a string')
        else if std.isEmpty(Cooldown) then (error 'Cooldown must be not empty')
        else Cooldown,
    },
  },
  setNotificationConfigurations(NotificationConfigurations): {
    Properties+::: {
      NotificationConfigurations:
        if !std.isArray(NotificationConfigurations) then (error 'NotificationConfigurations must be an array')
        else NotificationConfigurations,
    },
  },
  setNotificationConfigurationsMixin(NotificationConfigurations): {
    Properties+::: {
      NotificationConfigurations+: NotificationConfigurations,
    },
  },
  setDesiredCapacity(DesiredCapacity): {
    Properties+::: {
      DesiredCapacity:
        if !std.isString(DesiredCapacity) then (error 'DesiredCapacity must be a string')
        else if std.isEmpty(DesiredCapacity) then (error 'DesiredCapacity must be not empty')
        else DesiredCapacity,
    },
  },
  setHealthCheckGracePeriod(HealthCheckGracePeriod): {
    Properties+::: {
      HealthCheckGracePeriod:
        if !std.isNumber(HealthCheckGracePeriod) then (error 'HealthCheckGracePeriod must be an number')
        else HealthCheckGracePeriod,
    },
  },
  setDefaultInstanceWarmup(DefaultInstanceWarmup): {
    Properties+::: {
      DefaultInstanceWarmup:
        if !std.isNumber(DefaultInstanceWarmup) then (error 'DefaultInstanceWarmup must be an number')
        else DefaultInstanceWarmup,
    },
  },
  setSkipZonalShiftValidation(SkipZonalShiftValidation): {
    Properties+::: {
      SkipZonalShiftValidation:
        if !std.isBoolean(SkipZonalShiftValidation) then (error 'SkipZonalShiftValidation must be a boolean') else SkipZonalShiftValidation,
    },
  },
  setNewInstancesProtectedFromScaleIn(NewInstancesProtectedFromScaleIn): {
    Properties+::: {
      NewInstancesProtectedFromScaleIn:
        if !std.isBoolean(NewInstancesProtectedFromScaleIn) then (error 'NewInstancesProtectedFromScaleIn must be a boolean') else NewInstancesProtectedFromScaleIn,
    },
  },
  setLaunchTemplate(LaunchTemplate): {
    Properties+::: {
      LaunchTemplate:
        if !std.isObject(LaunchTemplate) then (error 'LaunchTemplate must be an object')
        else if !std.objectHas(LaunchTemplate, 'Version') then (error ' have attribute Version')
        else LaunchTemplate,
    },
  },
  setMixedInstancesPolicy(MixedInstancesPolicy): {
    Properties+::: {
      MixedInstancesPolicy:
        if !std.isObject(MixedInstancesPolicy) then (error 'MixedInstancesPolicy must be an object')
        else if !std.objectHas(MixedInstancesPolicy, 'LaunchTemplate') then (error ' have attribute LaunchTemplate')
        else MixedInstancesPolicy,
    },
  },
  setVPCZoneIdentifier(VPCZoneIdentifier): {
    Properties+::: {
      VPCZoneIdentifier:
        if !std.isArray(VPCZoneIdentifier) then (error 'VPCZoneIdentifier must be an array')
        else VPCZoneIdentifier,
    },
  },
  setVPCZoneIdentifierMixin(VPCZoneIdentifier): {
    Properties+::: {
      VPCZoneIdentifier+: VPCZoneIdentifier,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setContext(Context): {
    Properties+::: {
      Context:
        if !std.isString(Context) then (error 'Context must be a string')
        else if std.isEmpty(Context) then (error 'Context must be not empty')
        else Context,
    },
  },
  setCapacityRebalance(CapacityRebalance): {
    Properties+::: {
      CapacityRebalance:
        if !std.isBoolean(CapacityRebalance) then (error 'CapacityRebalance must be a boolean') else CapacityRebalance,
    },
  },
  setInstanceId(InstanceId): {
    Properties+::: {
      InstanceId:
        if !std.isString(InstanceId) then (error 'InstanceId must be a string')
        else if std.isEmpty(InstanceId) then (error 'InstanceId must be not empty')
        else InstanceId,
    },
  },
  setAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones:
        if !std.isArray(AvailabilityZones) then (error 'AvailabilityZones must be an array')
        else AvailabilityZones,
    },
  },
  setAvailabilityZonesMixin(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones+: AvailabilityZones,
    },
  },
  setNotificationConfiguration(NotificationConfiguration): {
    Properties+::: {
      NotificationConfiguration:
        if !std.isObject(NotificationConfiguration) then (error 'NotificationConfiguration must be an object')
        else if !std.objectHas(NotificationConfiguration, 'TopicARN') then (error ' have attribute TopicARN')
        else NotificationConfiguration,
    },
  },
  setAvailabilityZoneDistribution(AvailabilityZoneDistribution): {
    Properties+::: {
      AvailabilityZoneDistribution:
        if !std.isObject(AvailabilityZoneDistribution) then (error 'AvailabilityZoneDistribution must be an object')
        else AvailabilityZoneDistribution,
    },
  },
  setMetricsCollection(MetricsCollection): {
    Properties+::: {
      MetricsCollection:
        if !std.isArray(MetricsCollection) then (error 'MetricsCollection must be an array')
        else MetricsCollection,
    },
  },
  setMetricsCollectionMixin(MetricsCollection): {
    Properties+::: {
      MetricsCollection+: MetricsCollection,
    },
  },
  setInstanceMaintenancePolicy(InstanceMaintenancePolicy): {
    Properties+::: {
      InstanceMaintenancePolicy:
        if !std.isObject(InstanceMaintenancePolicy) then (error 'InstanceMaintenancePolicy must be an object')
        else InstanceMaintenancePolicy,
    },
  },
  setTerminationPolicies(TerminationPolicies): {
    Properties+::: {
      TerminationPolicies:
        if !std.isArray(TerminationPolicies) then (error 'TerminationPolicies must be an array')
        else TerminationPolicies,
    },
  },
  setTerminationPoliciesMixin(TerminationPolicies): {
    Properties+::: {
      TerminationPolicies+: TerminationPolicies,
    },
  },
  setAutoScalingGroupName(AutoScalingGroupName): {
    Properties+::: {
      AutoScalingGroupName:
        if !std.isString(AutoScalingGroupName) then (error 'AutoScalingGroupName must be a string')
        else if std.isEmpty(AutoScalingGroupName) then (error 'AutoScalingGroupName must be not empty')
        else AutoScalingGroupName,
    },
  },
  setTrafficSources(TrafficSources): {
    Properties+::: {
      TrafficSources:
        if !std.isArray(TrafficSources) then (error 'TrafficSources must be an array')
        else TrafficSources,
    },
  },
  setTrafficSourcesMixin(TrafficSources): {
    Properties+::: {
      TrafficSources+: TrafficSources,
    },
  },
  setDesiredCapacityType(DesiredCapacityType): {
    Properties+::: {
      DesiredCapacityType:
        if !std.isString(DesiredCapacityType) then (error 'DesiredCapacityType must be a string')
        else if std.isEmpty(DesiredCapacityType) then (error 'DesiredCapacityType must be not empty')
        else DesiredCapacityType,
    },
  },
  setPlacementGroup(PlacementGroup): {
    Properties+::: {
      PlacementGroup:
        if !std.isString(PlacementGroup) then (error 'PlacementGroup must be a string')
        else if std.isEmpty(PlacementGroup) then (error 'PlacementGroup must be not empty')
        else PlacementGroup,
    },
  },
  setCapacityReservationSpecification(CapacityReservationSpecification): {
    Properties+::: {
      CapacityReservationSpecification:
        if !std.isObject(CapacityReservationSpecification) then (error 'CapacityReservationSpecification must be an object')
        else if !std.objectHas(CapacityReservationSpecification, 'CapacityReservationPreference') then (error ' have attribute CapacityReservationPreference')
        else CapacityReservationSpecification,
    },
  },
  setHealthCheckType(HealthCheckType): {
    Properties+::: {
      HealthCheckType:
        if !std.isString(HealthCheckType) then (error 'HealthCheckType must be a string')
        else if std.isEmpty(HealthCheckType) then (error 'HealthCheckType must be not empty')
        else HealthCheckType,
    },
  },
  setMaxInstanceLifetime(MaxInstanceLifetime): {
    Properties+::: {
      MaxInstanceLifetime:
        if !std.isNumber(MaxInstanceLifetime) then (error 'MaxInstanceLifetime must be an number')
        else MaxInstanceLifetime,
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
