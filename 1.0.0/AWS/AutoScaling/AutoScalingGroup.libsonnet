{
  // AWS AutoScaling AutoScalingGroup
  AutoScalingGroup: {
    new(
      MinSize,
      MaxSize,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MinSize) : 'MinSize must be a string',
        MinSize: MinSize,
        assert std.isString(MaxSize) : 'MaxSize must be a string',
        MaxSize: MaxSize,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AutoScaling::AutoScalingGroup',
    },
    withLifecycleHookSpecificationList(LifecycleHookSpecificationList): {
      Properties+::: {
        LifecycleHookSpecificationList: (if std.isArray(LifecycleHookSpecificationList) then LifecycleHookSpecificationList else [LifecycleHookSpecificationList]),
      },
    },
    withLifecycleHookSpecificationListMixin(LifecycleHookSpecificationList): {
      Properties+::: {
        LifecycleHookSpecificationList+: (if std.isArray(LifecycleHookSpecificationList) then LifecycleHookSpecificationList else [LifecycleHookSpecificationList]),
      },
    },
    withLoadBalancerNames(LoadBalancerNames): {
      Properties+::: {
        LoadBalancerNames: (if std.isArray(LoadBalancerNames) then LoadBalancerNames else [LoadBalancerNames]),
      },
    },
    withLoadBalancerNamesMixin(LoadBalancerNames): {
      Properties+::: {
        LoadBalancerNames+: (if std.isArray(LoadBalancerNames) then LoadBalancerNames else [LoadBalancerNames]),
      },
    },
    withLaunchConfigurationName(LaunchConfigurationName): {
      assert std.isString(LaunchConfigurationName) : 'LaunchConfigurationName must be a string',
      Properties+::: {
        LaunchConfigurationName: LaunchConfigurationName,
      },
    },
    withServiceLinkedRoleARN(ServiceLinkedRoleARN): {
      assert std.isString(ServiceLinkedRoleARN) : 'ServiceLinkedRoleARN must be a string',
      Properties+::: {
        ServiceLinkedRoleARN: ServiceLinkedRoleARN,
      },
    },
    withAvailabilityZoneImpairmentPolicy(AvailabilityZoneImpairmentPolicy): {
      assert std.isObject(AvailabilityZoneImpairmentPolicy) : 'AvailabilityZoneImpairmentPolicy must be a object',
      Properties+::: {
        AvailabilityZoneImpairmentPolicy: AvailabilityZoneImpairmentPolicy,
      },
    },
    withTargetGroupARNs(TargetGroupARNs): {
      Properties+::: {
        TargetGroupARNs: (if std.isArray(TargetGroupARNs) then TargetGroupARNs else [TargetGroupARNs]),
      },
    },
    withTargetGroupARNsMixin(TargetGroupARNs): {
      Properties+::: {
        TargetGroupARNs+: (if std.isArray(TargetGroupARNs) then TargetGroupARNs else [TargetGroupARNs]),
      },
    },
    withCooldown(Cooldown): {
      assert std.isString(Cooldown) : 'Cooldown must be a string',
      Properties+::: {
        Cooldown: Cooldown,
      },
    },
    withNotificationConfigurations(NotificationConfigurations): {
      Properties+::: {
        NotificationConfigurations: (if std.isArray(NotificationConfigurations) then NotificationConfigurations else [NotificationConfigurations]),
      },
    },
    withNotificationConfigurationsMixin(NotificationConfigurations): {
      Properties+::: {
        NotificationConfigurations+: (if std.isArray(NotificationConfigurations) then NotificationConfigurations else [NotificationConfigurations]),
      },
    },
    withDesiredCapacity(DesiredCapacity): {
      assert std.isString(DesiredCapacity) : 'DesiredCapacity must be a string',
      Properties+::: {
        DesiredCapacity: DesiredCapacity,
      },
    },
    withHealthCheckGracePeriod(HealthCheckGracePeriod): {
      assert std.isNumber(HealthCheckGracePeriod) : 'HealthCheckGracePeriod must be a number',
      Properties+::: {
        HealthCheckGracePeriod: HealthCheckGracePeriod,
      },
    },
    withDefaultInstanceWarmup(DefaultInstanceWarmup): {
      assert std.isNumber(DefaultInstanceWarmup) : 'DefaultInstanceWarmup must be a number',
      Properties+::: {
        DefaultInstanceWarmup: DefaultInstanceWarmup,
      },
    },
    withSkipZonalShiftValidation(SkipZonalShiftValidation): {
      assert std.isBoolean(SkipZonalShiftValidation) : 'SkipZonalShiftValidation must be a boolean',
      Properties+::: {
        SkipZonalShiftValidation: SkipZonalShiftValidation,
      },
    },
    withNewInstancesProtectedFromScaleIn(NewInstancesProtectedFromScaleIn): {
      assert std.isBoolean(NewInstancesProtectedFromScaleIn) : 'NewInstancesProtectedFromScaleIn must be a boolean',
      Properties+::: {
        NewInstancesProtectedFromScaleIn: NewInstancesProtectedFromScaleIn,
      },
    },
    withLaunchTemplate(LaunchTemplate): {
      assert std.isObject(LaunchTemplate) : 'LaunchTemplate must be a object',
      Properties+::: {
        LaunchTemplate: LaunchTemplate,
      },
    },
    withMixedInstancesPolicy(MixedInstancesPolicy): {
      assert std.isObject(MixedInstancesPolicy) : 'MixedInstancesPolicy must be a object',
      Properties+::: {
        MixedInstancesPolicy: MixedInstancesPolicy,
      },
    },
    withVPCZoneIdentifier(VPCZoneIdentifier): {
      Properties+::: {
        VPCZoneIdentifier: (if std.isArray(VPCZoneIdentifier) then VPCZoneIdentifier else [VPCZoneIdentifier]),
      },
    },
    withVPCZoneIdentifierMixin(VPCZoneIdentifier): {
      Properties+::: {
        VPCZoneIdentifier+: (if std.isArray(VPCZoneIdentifier) then VPCZoneIdentifier else [VPCZoneIdentifier]),
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withContext(Context): {
      assert std.isString(Context) : 'Context must be a string',
      Properties+::: {
        Context: Context,
      },
    },
    withCapacityRebalance(CapacityRebalance): {
      assert std.isBoolean(CapacityRebalance) : 'CapacityRebalance must be a boolean',
      Properties+::: {
        CapacityRebalance: CapacityRebalance,
      },
    },
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: {
        InstanceId: InstanceId,
      },
    },
    withAvailabilityZones(AvailabilityZones): {
      Properties+::: {
        AvailabilityZones: (if std.isArray(AvailabilityZones) then AvailabilityZones else [AvailabilityZones]),
      },
    },
    withAvailabilityZonesMixin(AvailabilityZones): {
      Properties+::: {
        AvailabilityZones+: (if std.isArray(AvailabilityZones) then AvailabilityZones else [AvailabilityZones]),
      },
    },
    withNotificationConfiguration(NotificationConfiguration): {
      assert std.isObject(NotificationConfiguration) : 'NotificationConfiguration must be a object',
      Properties+::: {
        NotificationConfiguration: NotificationConfiguration,
      },
    },
    withAvailabilityZoneDistribution(AvailabilityZoneDistribution): {
      assert std.isObject(AvailabilityZoneDistribution) : 'AvailabilityZoneDistribution must be a object',
      Properties+::: {
        AvailabilityZoneDistribution: AvailabilityZoneDistribution,
      },
    },
    withMetricsCollection(MetricsCollection): {
      Properties+::: {
        MetricsCollection: (if std.isArray(MetricsCollection) then MetricsCollection else [MetricsCollection]),
      },
    },
    withMetricsCollectionMixin(MetricsCollection): {
      Properties+::: {
        MetricsCollection+: (if std.isArray(MetricsCollection) then MetricsCollection else [MetricsCollection]),
      },
    },
    withInstanceMaintenancePolicy(InstanceMaintenancePolicy): {
      assert std.isObject(InstanceMaintenancePolicy) : 'InstanceMaintenancePolicy must be a object',
      Properties+::: {
        InstanceMaintenancePolicy: InstanceMaintenancePolicy,
      },
    },
    withTerminationPolicies(TerminationPolicies): {
      Properties+::: {
        TerminationPolicies: (if std.isArray(TerminationPolicies) then TerminationPolicies else [TerminationPolicies]),
      },
    },
    withTerminationPoliciesMixin(TerminationPolicies): {
      Properties+::: {
        TerminationPolicies+: (if std.isArray(TerminationPolicies) then TerminationPolicies else [TerminationPolicies]),
      },
    },
    withAutoScalingGroupName(AutoScalingGroupName): {
      assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
      Properties+::: {
        AutoScalingGroupName: AutoScalingGroupName,
      },
    },
    withTrafficSources(TrafficSources): {
      Properties+::: {
        TrafficSources: (if std.isArray(TrafficSources) then TrafficSources else [TrafficSources]),
      },
    },
    withTrafficSourcesMixin(TrafficSources): {
      Properties+::: {
        TrafficSources+: (if std.isArray(TrafficSources) then TrafficSources else [TrafficSources]),
      },
    },
    withDesiredCapacityType(DesiredCapacityType): {
      assert std.isString(DesiredCapacityType) : 'DesiredCapacityType must be a string',
      Properties+::: {
        DesiredCapacityType: DesiredCapacityType,
      },
    },
    withPlacementGroup(PlacementGroup): {
      assert std.isString(PlacementGroup) : 'PlacementGroup must be a string',
      Properties+::: {
        PlacementGroup: PlacementGroup,
      },
    },
    withCapacityReservationSpecification(CapacityReservationSpecification): {
      assert std.isObject(CapacityReservationSpecification) : 'CapacityReservationSpecification must be a object',
      Properties+::: {
        CapacityReservationSpecification: CapacityReservationSpecification,
      },
    },
    withHealthCheckType(HealthCheckType): {
      assert std.isString(HealthCheckType) : 'HealthCheckType must be a string',
      Properties+::: {
        HealthCheckType: HealthCheckType,
      },
    },
    withMaxInstanceLifetime(MaxInstanceLifetime): {
      assert std.isNumber(MaxInstanceLifetime) : 'MaxInstanceLifetime must be a number',
      Properties+::: {
        MaxInstanceLifetime: MaxInstanceLifetime,
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
  },
}
