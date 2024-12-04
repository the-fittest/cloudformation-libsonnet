{
  // AWS GameLift ContainerFleet
  ContainerFleet: {
    new(
      FleetRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FleetRoleArn) : 'FleetRoleArn must be a string',
        FleetRoleArn: FleetRoleArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::GameLift::ContainerFleet',
    },
    withFleetId(FleetId): {
      assert std.isString(FleetId) : 'FleetId must be a string',
      Properties+::: {
        FleetId: FleetId,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withGameServerContainerGroupDefinitionName(GameServerContainerGroupDefinitionName): {
      assert std.isString(GameServerContainerGroupDefinitionName) : 'GameServerContainerGroupDefinitionName must be a string',
      Properties+::: {
        GameServerContainerGroupDefinitionName: GameServerContainerGroupDefinitionName,
      },
    },
    withGameServerContainerGroupDefinitionArn(GameServerContainerGroupDefinitionArn): {
      assert std.isString(GameServerContainerGroupDefinitionArn) : 'GameServerContainerGroupDefinitionArn must be a string',
      Properties+::: {
        GameServerContainerGroupDefinitionArn: GameServerContainerGroupDefinitionArn,
      },
    },
    withPerInstanceContainerGroupDefinitionName(PerInstanceContainerGroupDefinitionName): {
      assert std.isString(PerInstanceContainerGroupDefinitionName) : 'PerInstanceContainerGroupDefinitionName must be a string',
      Properties+::: {
        PerInstanceContainerGroupDefinitionName: PerInstanceContainerGroupDefinitionName,
      },
    },
    withPerInstanceContainerGroupDefinitionArn(PerInstanceContainerGroupDefinitionArn): {
      assert std.isString(PerInstanceContainerGroupDefinitionArn) : 'PerInstanceContainerGroupDefinitionArn must be a string',
      Properties+::: {
        PerInstanceContainerGroupDefinitionArn: PerInstanceContainerGroupDefinitionArn,
      },
    },
    withInstanceConnectionPortRange(InstanceConnectionPortRange): {
      assert std.isObject(InstanceConnectionPortRange) : 'InstanceConnectionPortRange must be a object',
      Properties+::: {
        InstanceConnectionPortRange: InstanceConnectionPortRange,
      },
    },
    withInstanceInboundPermissions(InstanceInboundPermissions): {
      Properties+::: {
        InstanceInboundPermissions: (if std.isArray(InstanceInboundPermissions) then InstanceInboundPermissions else [InstanceInboundPermissions]),
      },
    },
    withInstanceInboundPermissionsMixin(InstanceInboundPermissions): {
      Properties+::: {
        InstanceInboundPermissions+: (if std.isArray(InstanceInboundPermissions) then InstanceInboundPermissions else [InstanceInboundPermissions]),
      },
    },
    withGameServerContainerGroupsPerInstance(GameServerContainerGroupsPerInstance): {
      assert std.isNumber(GameServerContainerGroupsPerInstance) : 'GameServerContainerGroupsPerInstance must be a number',
      Properties+::: {
        GameServerContainerGroupsPerInstance: GameServerContainerGroupsPerInstance,
      },
    },
    withMaximumGameServerContainerGroupsPerInstance(MaximumGameServerContainerGroupsPerInstance): {
      assert std.isNumber(MaximumGameServerContainerGroupsPerInstance) : 'MaximumGameServerContainerGroupsPerInstance must be a number',
      Properties+::: {
        MaximumGameServerContainerGroupsPerInstance: MaximumGameServerContainerGroupsPerInstance,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withDeploymentDetails(DeploymentDetails): {
      assert std.isObject(DeploymentDetails) : 'DeploymentDetails must be a object',
      Properties+::: {
        DeploymentDetails: DeploymentDetails,
      },
    },
    withDeploymentConfiguration(DeploymentConfiguration): {
      assert std.isObject(DeploymentConfiguration) : 'DeploymentConfiguration must be a object',
      Properties+::: {
        DeploymentConfiguration: DeploymentConfiguration,
      },
    },
    withInstanceType(InstanceType): {
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      Properties+::: {
        InstanceType: InstanceType,
      },
    },
    withBillingType(BillingType): {
      assert std.isString(BillingType) : 'BillingType must be a string',
      Properties+::: {
        BillingType: BillingType,
      },
    },
    withLocations(Locations): {
      Properties+::: {
        Locations: (if std.isArray(Locations) then Locations else [Locations]),
      },
    },
    withLocationsMixin(Locations): {
      Properties+::: {
        Locations+: (if std.isArray(Locations) then Locations else [Locations]),
      },
    },
    withScalingPolicies(ScalingPolicies): {
      Properties+::: {
        ScalingPolicies: (if std.isArray(ScalingPolicies) then ScalingPolicies else [ScalingPolicies]),
      },
    },
    withScalingPoliciesMixin(ScalingPolicies): {
      Properties+::: {
        ScalingPolicies+: (if std.isArray(ScalingPolicies) then ScalingPolicies else [ScalingPolicies]),
      },
    },
    withMetricGroups(MetricGroups): {
      Properties+::: {
        MetricGroups: (if std.isArray(MetricGroups) then MetricGroups else [MetricGroups]),
      },
    },
    withMetricGroupsMixin(MetricGroups): {
      Properties+::: {
        MetricGroups+: (if std.isArray(MetricGroups) then MetricGroups else [MetricGroups]),
      },
    },
    withNewGameSessionProtectionPolicy(NewGameSessionProtectionPolicy): {
      assert std.isString(NewGameSessionProtectionPolicy) : 'NewGameSessionProtectionPolicy must be a string',
      Properties+::: {
        NewGameSessionProtectionPolicy: NewGameSessionProtectionPolicy,
      },
    },
    withGameSessionCreationLimitPolicy(GameSessionCreationLimitPolicy): {
      assert std.isObject(GameSessionCreationLimitPolicy) : 'GameSessionCreationLimitPolicy must be a object',
      Properties+::: {
        GameSessionCreationLimitPolicy: GameSessionCreationLimitPolicy,
      },
    },
    withLogConfiguration(LogConfiguration): {
      assert std.isObject(LogConfiguration) : 'LogConfiguration must be a object',
      Properties+::: {
        LogConfiguration: LogConfiguration,
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
    withFleetArn(FleetArn): {
      assert std.isString(FleetArn) : 'FleetArn must be a string',
      Properties+::: {
        FleetArn: FleetArn,
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
