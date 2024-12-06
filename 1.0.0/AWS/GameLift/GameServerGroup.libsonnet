{
  new(
    GameServerGroupName,
    InstanceDefinitions,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      GameServerGroupName:
        if !std.isString(GameServerGroupName) then (error 'GameServerGroupName must be a string')
        else if std.isEmpty(GameServerGroupName) then (error 'GameServerGroupName must be not empty')
        else if std.length(GameServerGroupName) < 1 then error ('GameServerGroupName should have at least 1 characters')
        else if std.length(GameServerGroupName) > 128 then error ('GameServerGroupName should have not more than 128 characters')
        else GameServerGroupName,
      InstanceDefinitions:
        if !std.isArray(InstanceDefinitions) then (error 'InstanceDefinitions must be an array')
        else if std.length(InstanceDefinitions) < 2 then error ('InstanceDefinitions cannot have less than 2 items')
        else if std.length(InstanceDefinitions) > 20 then error ('InstanceDefinitions cannot have more than 20 items')
        else InstanceDefinitions,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 256 then error ('RoleArn should have not more than 256 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::GameServerGroup',
  },
  setAutoScalingGroupArn(AutoScalingGroupArn): {
    Properties+::: {
      AutoScalingGroupArn:
        if !std.isString(AutoScalingGroupArn) then (error 'AutoScalingGroupArn must be a string')
        else if std.isEmpty(AutoScalingGroupArn) then (error 'AutoScalingGroupArn must be not empty')
        else if std.length(AutoScalingGroupArn) > 256 then error ('AutoScalingGroupArn should have not more than 256 characters')
        else AutoScalingGroupArn,
    },
  },
  setAutoScalingPolicy(AutoScalingPolicy): {
    Properties+::: {
      AutoScalingPolicy:
        if !std.isObject(AutoScalingPolicy) then (error 'AutoScalingPolicy must be an object')
        else if !std.objectHas(AutoScalingPolicy, 'TargetTrackingConfiguration') then (error ' have attribute TargetTrackingConfiguration')
        else AutoScalingPolicy,
    },
  },
  setBalancingStrategy(BalancingStrategy): {
    Properties+::: {
      BalancingStrategy:
        if !std.isString(BalancingStrategy) then (error 'BalancingStrategy must be a string')
        else if std.isEmpty(BalancingStrategy) then (error 'BalancingStrategy must be not empty')
        else if BalancingStrategy != 'SPOT_ONLY' && BalancingStrategy != 'SPOT_PREFERRED' && BalancingStrategy != 'ON_DEMAND_ONLY' then (error "BalancingStrategy should be 'SPOT_ONLY' or 'SPOT_PREFERRED' or 'ON_DEMAND_ONLY'")
        else BalancingStrategy,
    },
  },
  setDeleteOption(DeleteOption): {
    Properties+::: {
      DeleteOption:
        if !std.isString(DeleteOption) then (error 'DeleteOption must be a string')
        else if std.isEmpty(DeleteOption) then (error 'DeleteOption must be not empty')
        else if DeleteOption != 'SAFE_DELETE' && DeleteOption != 'FORCE_DELETE' && DeleteOption != 'RETAIN' then (error "DeleteOption should be 'SAFE_DELETE' or 'FORCE_DELETE' or 'RETAIN'")
        else DeleteOption,
    },
  },
  setGameServerGroupArn(GameServerGroupArn): {
    Properties+::: {
      GameServerGroupArn:
        if !std.isString(GameServerGroupArn) then (error 'GameServerGroupArn must be a string')
        else if std.isEmpty(GameServerGroupArn) then (error 'GameServerGroupArn must be not empty')
        else if std.length(GameServerGroupArn) < 1 then error ('GameServerGroupArn should have at least 1 characters')
        else if std.length(GameServerGroupArn) > 256 then error ('GameServerGroupArn should have not more than 256 characters')
        else GameServerGroupArn,
    },
  },
  setGameServerProtectionPolicy(GameServerProtectionPolicy): {
    Properties+::: {
      GameServerProtectionPolicy:
        if !std.isString(GameServerProtectionPolicy) then (error 'GameServerProtectionPolicy must be a string')
        else if std.isEmpty(GameServerProtectionPolicy) then (error 'GameServerProtectionPolicy must be not empty')
        else if GameServerProtectionPolicy != 'NO_PROTECTION' && GameServerProtectionPolicy != 'FULL_PROTECTION' then (error "GameServerProtectionPolicy should be 'NO_PROTECTION' or 'FULL_PROTECTION'")
        else GameServerProtectionPolicy,
    },
  },
  setLaunchTemplate(LaunchTemplate): {
    Properties+::: {
      LaunchTemplate:
        if !std.isObject(LaunchTemplate) then (error 'LaunchTemplate must be an object')
        else LaunchTemplate,
    },
  },
  setMaxSize(MaxSize): {
    Properties+::: {
      MaxSize:
        if !std.isNumber(MaxSize) then (error 'MaxSize must be an number')
        else if MaxSize < 1 then error ('MaxSize should be at least 1')
        else MaxSize,
    },
  },
  setMinSize(MinSize): {
    Properties+::: {
      MinSize:
        if !std.isNumber(MinSize) then (error 'MinSize must be an number')
        else MinSize,
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
  setVpcSubnets(VpcSubnets): {
    Properties+::: {
      VpcSubnets:
        if !std.isArray(VpcSubnets) then (error 'VpcSubnets must be an array')
        else if std.length(VpcSubnets) < 1 then error ('VpcSubnets cannot have less than 1 items')
        else if std.length(VpcSubnets) > 20 then error ('VpcSubnets cannot have more than 20 items')
        else VpcSubnets,
    },
  },
  pushVpcSubnets(VpcSubnets): {
    Properties+::: {
      VpcSubnets+: VpcSubnets,
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
