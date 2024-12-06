{
  new(
    FleetRoleArn,
  ): {
    local base = self,
    Properties: {
      FleetRoleArn:
        if !std.isString(FleetRoleArn) then (error 'FleetRoleArn must be a string')
        else if std.isEmpty(FleetRoleArn) then (error 'FleetRoleArn must be not empty')
        else if std.length(FleetRoleArn) < 1 then error ('FleetRoleArn should have at least 1 characters')
        else if std.length(FleetRoleArn) > 256 then error ('FleetRoleArn should have not more than 256 characters')
        else FleetRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::ContainerFleet',
  },
  setFleetId(FleetId): {
    Properties+::: {
      FleetId:
        if !std.isString(FleetId) then (error 'FleetId must be a string')
        else if std.isEmpty(FleetId) then (error 'FleetId must be not empty')
        else if std.length(FleetId) < 1 then error ('FleetId should have at least 1 characters')
        else if std.length(FleetId) > 128 then error ('FleetId should have not more than 128 characters')
        else FleetId,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setGameServerContainerGroupDefinitionName(GameServerContainerGroupDefinitionName): {
    Properties+::: {
      GameServerContainerGroupDefinitionName:
        if !std.isString(GameServerContainerGroupDefinitionName) then (error 'GameServerContainerGroupDefinitionName must be a string')
        else if std.isEmpty(GameServerContainerGroupDefinitionName) then (error 'GameServerContainerGroupDefinitionName must be not empty')
        else if std.length(GameServerContainerGroupDefinitionName) < 1 then error ('GameServerContainerGroupDefinitionName should have at least 1 characters')
        else if std.length(GameServerContainerGroupDefinitionName) > 512 then error ('GameServerContainerGroupDefinitionName should have not more than 512 characters')
        else GameServerContainerGroupDefinitionName,
    },
  },
  setGameServerContainerGroupDefinitionArn(GameServerContainerGroupDefinitionArn): {
    Properties+::: {
      GameServerContainerGroupDefinitionArn:
        if !std.isString(GameServerContainerGroupDefinitionArn) then (error 'GameServerContainerGroupDefinitionArn must be a string')
        else if std.isEmpty(GameServerContainerGroupDefinitionArn) then (error 'GameServerContainerGroupDefinitionArn must be not empty')
        else if std.length(GameServerContainerGroupDefinitionArn) > 512 then error ('GameServerContainerGroupDefinitionArn should have not more than 512 characters')
        else GameServerContainerGroupDefinitionArn,
    },
  },
  setPerInstanceContainerGroupDefinitionName(PerInstanceContainerGroupDefinitionName): {
    Properties+::: {
      PerInstanceContainerGroupDefinitionName:
        if !std.isString(PerInstanceContainerGroupDefinitionName) then (error 'PerInstanceContainerGroupDefinitionName must be a string')
        else if std.isEmpty(PerInstanceContainerGroupDefinitionName) then (error 'PerInstanceContainerGroupDefinitionName must be not empty')
        else if std.length(PerInstanceContainerGroupDefinitionName) < 1 then error ('PerInstanceContainerGroupDefinitionName should have at least 1 characters')
        else if std.length(PerInstanceContainerGroupDefinitionName) > 512 then error ('PerInstanceContainerGroupDefinitionName should have not more than 512 characters')
        else PerInstanceContainerGroupDefinitionName,
    },
  },
  setPerInstanceContainerGroupDefinitionArn(PerInstanceContainerGroupDefinitionArn): {
    Properties+::: {
      PerInstanceContainerGroupDefinitionArn:
        if !std.isString(PerInstanceContainerGroupDefinitionArn) then (error 'PerInstanceContainerGroupDefinitionArn must be a string')
        else if std.isEmpty(PerInstanceContainerGroupDefinitionArn) then (error 'PerInstanceContainerGroupDefinitionArn must be not empty')
        else if std.length(PerInstanceContainerGroupDefinitionArn) > 512 then error ('PerInstanceContainerGroupDefinitionArn should have not more than 512 characters')
        else PerInstanceContainerGroupDefinitionArn,
    },
  },
  setInstanceConnectionPortRange(InstanceConnectionPortRange): {
    Properties+::: {
      InstanceConnectionPortRange:
        if !std.isObject(InstanceConnectionPortRange) then (error 'InstanceConnectionPortRange must be an object')
        else if !std.objectHas(InstanceConnectionPortRange, 'FromPort') then (error ' have attribute FromPort')
        else if !std.objectHas(InstanceConnectionPortRange, 'ToPort') then (error ' have attribute ToPort')
        else InstanceConnectionPortRange,
    },
  },
  setInstanceInboundPermissions(InstanceInboundPermissions): {
    Properties+::: {
      InstanceInboundPermissions:
        if !std.isArray(InstanceInboundPermissions) then (error 'InstanceInboundPermissions must be an array')
        else if std.length(InstanceInboundPermissions) > 50 then error ('InstanceInboundPermissions cannot have more than 50 items')
        else InstanceInboundPermissions,
    },
  },
  pushInstanceInboundPermissions(InstanceInboundPermissions): {
    Properties+::: {
      InstanceInboundPermissions+: InstanceInboundPermissions,
    },
  },
  setGameServerContainerGroupsPerInstance(GameServerContainerGroupsPerInstance): {
    Properties+::: {
      GameServerContainerGroupsPerInstance:
        if !std.isNumber(GameServerContainerGroupsPerInstance) then (error 'GameServerContainerGroupsPerInstance must be an number')
        else if GameServerContainerGroupsPerInstance < 1 then error ('GameServerContainerGroupsPerInstance should be at least 1')
        else if GameServerContainerGroupsPerInstance > 5000 then error ('GameServerContainerGroupsPerInstance should be not more than 5000')
        else GameServerContainerGroupsPerInstance,
    },
  },
  setMaximumGameServerContainerGroupsPerInstance(MaximumGameServerContainerGroupsPerInstance): {
    Properties+::: {
      MaximumGameServerContainerGroupsPerInstance:
        if !std.isNumber(MaximumGameServerContainerGroupsPerInstance) then (error 'MaximumGameServerContainerGroupsPerInstance must be an number')
        else if MaximumGameServerContainerGroupsPerInstance < 1 then error ('MaximumGameServerContainerGroupsPerInstance should be at least 1')
        else if MaximumGameServerContainerGroupsPerInstance > 5000 then error ('MaximumGameServerContainerGroupsPerInstance should be not more than 5000')
        else MaximumGameServerContainerGroupsPerInstance,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'PENDING' && Status != 'CREATING' && Status != 'CREATED' && Status != 'ACTIVATING' && Status != 'ACTIVE' && Status != 'UPDATING' && Status != 'DELETING' then (error "Status should be 'PENDING' or 'CREATING' or 'CREATED' or 'ACTIVATING' or 'ACTIVE' or 'UPDATING' or 'DELETING'")
        else Status,
    },
  },
  setDeploymentDetails(DeploymentDetails): {
    Properties+::: {
      DeploymentDetails:
        if !std.isObject(DeploymentDetails) then (error 'DeploymentDetails must be an object')
        else DeploymentDetails,
    },
  },
  setDeploymentConfiguration(DeploymentConfiguration): {
    Properties+::: {
      DeploymentConfiguration:
        if !std.isObject(DeploymentConfiguration) then (error 'DeploymentConfiguration must be an object')
        else DeploymentConfiguration,
    },
  },
  setInstanceType(InstanceType): {
    Properties+::: {
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else if std.length(InstanceType) < 1 then error ('InstanceType should have at least 1 characters')
        else if std.length(InstanceType) > 1024 then error ('InstanceType should have not more than 1024 characters')
        else InstanceType,
    },
  },
  setBillingType(BillingType): {
    Properties+::: {
      BillingType:
        if !std.isString(BillingType) then (error 'BillingType must be a string')
        else if std.isEmpty(BillingType) then (error 'BillingType must be not empty')
        else if BillingType != 'ON_DEMAND' && BillingType != 'SPOT' then (error "BillingType should be 'ON_DEMAND' or 'SPOT'")
        else BillingType,
    },
  },
  setLocations(Locations): {
    Properties+::: {
      Locations:
        if !std.isArray(Locations) then (error 'Locations must be an array')
        else if std.length(Locations) > 100 then error ('Locations cannot have more than 100 items')
        else Locations,
    },
  },
  pushLocations(Locations): {
    Properties+::: {
      Locations+: Locations,
    },
  },
  setScalingPolicies(ScalingPolicies): {
    Properties+::: {
      ScalingPolicies:
        if !std.isArray(ScalingPolicies) then (error 'ScalingPolicies must be an array')
        else if std.length(ScalingPolicies) > 50 then error ('ScalingPolicies cannot have more than 50 items')
        else ScalingPolicies,
    },
  },
  pushScalingPolicies(ScalingPolicies): {
    Properties+::: {
      ScalingPolicies+: ScalingPolicies,
    },
  },
  setMetricGroups(MetricGroups): {
    Properties+::: {
      MetricGroups:
        if !std.isArray(MetricGroups) then (error 'MetricGroups must be an array')
        else if std.length(MetricGroups) > 1 then error ('MetricGroups cannot have more than 1 items')
        else MetricGroups,
    },
  },
  pushMetricGroups(MetricGroups): {
    Properties+::: {
      MetricGroups+: MetricGroups,
    },
  },
  setNewGameSessionProtectionPolicy(NewGameSessionProtectionPolicy): {
    Properties+::: {
      NewGameSessionProtectionPolicy:
        if !std.isString(NewGameSessionProtectionPolicy) then (error 'NewGameSessionProtectionPolicy must be a string')
        else if std.isEmpty(NewGameSessionProtectionPolicy) then (error 'NewGameSessionProtectionPolicy must be not empty')
        else if NewGameSessionProtectionPolicy != 'FullProtection' && NewGameSessionProtectionPolicy != 'NoProtection' then (error "NewGameSessionProtectionPolicy should be 'FullProtection' or 'NoProtection'")
        else NewGameSessionProtectionPolicy,
    },
  },
  setGameSessionCreationLimitPolicy(GameSessionCreationLimitPolicy): {
    Properties+::: {
      GameSessionCreationLimitPolicy:
        if !std.isObject(GameSessionCreationLimitPolicy) then (error 'GameSessionCreationLimitPolicy must be an object')
        else GameSessionCreationLimitPolicy,
    },
  },
  setLogConfiguration(LogConfiguration): {
    Properties+::: {
      LogConfiguration:
        if !std.isObject(LogConfiguration) then (error 'LogConfiguration must be an object')
        else LogConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setFleetArn(FleetArn): {
    Properties+::: {
      FleetArn:
        if !std.isString(FleetArn) then (error 'FleetArn must be a string')
        else if std.isEmpty(FleetArn) then (error 'FleetArn must be not empty')
        else if std.length(FleetArn) < 1 then error ('FleetArn should have at least 1 characters')
        else if std.length(FleetArn) > 512 then error ('FleetArn should have not more than 512 characters')
        else FleetArn,
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
