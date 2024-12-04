{
  new(
    GameServerGroupName,
    InstanceDefinitions,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(GameServerGroupName) : 'GameServerGroupName must be a string',
      GameServerGroupName: GameServerGroupName,
      InstanceDefinitions: (if std.isArray(InstanceDefinitions) then InstanceDefinitions else [InstanceDefinitions]),
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::GameServerGroup',
  },
  withAutoScalingGroupArn(AutoScalingGroupArn): {
    assert std.isString(AutoScalingGroupArn) : 'AutoScalingGroupArn must be a string',
    Properties+::: {
      AutoScalingGroupArn: AutoScalingGroupArn,
    },
  },
  withAutoScalingPolicy(AutoScalingPolicy): {
    assert std.isObject(AutoScalingPolicy) : 'AutoScalingPolicy must be a object',
    Properties+::: {
      AutoScalingPolicy: AutoScalingPolicy,
    },
  },
  withBalancingStrategy(BalancingStrategy): {
    assert std.isString(BalancingStrategy) : 'BalancingStrategy must be a string',
    assert BalancingStrategy == 'SPOT_ONLY' || BalancingStrategy == 'SPOT_PREFERRED' || BalancingStrategy == 'ON_DEMAND_ONLY' : "BalancingStrategy should be 'SPOT_ONLY' or 'SPOT_PREFERRED' or 'ON_DEMAND_ONLY'",
    Properties+::: {
      BalancingStrategy: BalancingStrategy,
    },
  },
  withDeleteOption(DeleteOption): {
    assert std.isString(DeleteOption) : 'DeleteOption must be a string',
    assert DeleteOption == 'SAFE_DELETE' || DeleteOption == 'FORCE_DELETE' || DeleteOption == 'RETAIN' : "DeleteOption should be 'SAFE_DELETE' or 'FORCE_DELETE' or 'RETAIN'",
    Properties+::: {
      DeleteOption: DeleteOption,
    },
  },
  withGameServerGroupArn(GameServerGroupArn): {
    assert std.isString(GameServerGroupArn) : 'GameServerGroupArn must be a string',
    Properties+::: {
      GameServerGroupArn: GameServerGroupArn,
    },
  },
  withGameServerProtectionPolicy(GameServerProtectionPolicy): {
    assert std.isString(GameServerProtectionPolicy) : 'GameServerProtectionPolicy must be a string',
    assert GameServerProtectionPolicy == 'NO_PROTECTION' || GameServerProtectionPolicy == 'FULL_PROTECTION' : "GameServerProtectionPolicy should be 'NO_PROTECTION' or 'FULL_PROTECTION'",
    Properties+::: {
      GameServerProtectionPolicy: GameServerProtectionPolicy,
    },
  },
  withLaunchTemplate(LaunchTemplate): {
    assert std.isObject(LaunchTemplate) : 'LaunchTemplate must be a object',
    Properties+::: {
      LaunchTemplate: LaunchTemplate,
    },
  },
  withMaxSize(MaxSize): {
    assert std.isNumber(MaxSize) : 'MaxSize must be a number',
    Properties+::: {
      MaxSize: MaxSize,
    },
  },
  withMinSize(MinSize): {
    assert std.isNumber(MinSize) : 'MinSize must be a number',
    Properties+::: {
      MinSize: MinSize,
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
  withVpcSubnets(VpcSubnets): {
    Properties+::: {
      VpcSubnets: (if std.isArray(VpcSubnets) then VpcSubnets else [VpcSubnets]),
    },
  },
  withVpcSubnetsMixin(VpcSubnets): {
    Properties+::: {
      VpcSubnets+: (if std.isArray(VpcSubnets) then VpcSubnets else [VpcSubnets]),
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
