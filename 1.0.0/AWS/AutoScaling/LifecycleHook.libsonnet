{
  new(
    LifecycleTransition,
    AutoScalingGroupName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(LifecycleTransition) : 'LifecycleTransition must be a string',
      LifecycleTransition: LifecycleTransition,
      assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
      AutoScalingGroupName: AutoScalingGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::LifecycleHook',
  },
  withDefaultResult(DefaultResult): {
    assert std.isString(DefaultResult) : 'DefaultResult must be a string',
    Properties+::: {
      DefaultResult: DefaultResult,
    },
  },
  withHeartbeatTimeout(HeartbeatTimeout): {
    assert std.isNumber(HeartbeatTimeout) : 'HeartbeatTimeout must be a number',
    Properties+::: {
      HeartbeatTimeout: HeartbeatTimeout,
    },
  },
  withLifecycleHookName(LifecycleHookName): {
    assert std.isString(LifecycleHookName) : 'LifecycleHookName must be a string',
    Properties+::: {
      LifecycleHookName: LifecycleHookName,
    },
  },
  withNotificationMetadata(NotificationMetadata): {
    assert std.isString(NotificationMetadata) : 'NotificationMetadata must be a string',
    Properties+::: {
      NotificationMetadata: NotificationMetadata,
    },
  },
  withNotificationTargetARN(NotificationTargetARN): {
    assert std.isString(NotificationTargetARN) : 'NotificationTargetARN must be a string',
    Properties+::: {
      NotificationTargetARN: NotificationTargetARN,
    },
  },
  withRoleARN(RoleARN): {
    assert std.isString(RoleARN) : 'RoleARN must be a string',
    Properties+::: {
      RoleARN: RoleARN,
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
