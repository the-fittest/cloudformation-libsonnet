{
  new(
    LifecycleTransition,
    AutoScalingGroupName,
  ): {
    local base = self,
    Properties: {
      LifecycleTransition:
        if !std.isString(LifecycleTransition) then (error 'LifecycleTransition must be a string')
        else if std.isEmpty(LifecycleTransition) then (error 'LifecycleTransition must be not empty')
        else LifecycleTransition,
      AutoScalingGroupName:
        if !std.isString(AutoScalingGroupName) then (error 'AutoScalingGroupName must be a string')
        else if std.isEmpty(AutoScalingGroupName) then (error 'AutoScalingGroupName must be not empty')
        else AutoScalingGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::LifecycleHook',
  },
  setDefaultResult(DefaultResult): {
    Properties+::: {
      DefaultResult:
        if !std.isString(DefaultResult) then (error 'DefaultResult must be a string')
        else if std.isEmpty(DefaultResult) then (error 'DefaultResult must be not empty')
        else DefaultResult,
    },
  },
  setHeartbeatTimeout(HeartbeatTimeout): {
    Properties+::: {
      HeartbeatTimeout:
        if !std.isNumber(HeartbeatTimeout) then (error 'HeartbeatTimeout must be an number')
        else HeartbeatTimeout,
    },
  },
  setLifecycleHookName(LifecycleHookName): {
    Properties+::: {
      LifecycleHookName:
        if !std.isString(LifecycleHookName) then (error 'LifecycleHookName must be a string')
        else if std.isEmpty(LifecycleHookName) then (error 'LifecycleHookName must be not empty')
        else if std.length(LifecycleHookName) < 1 then error ('LifecycleHookName should have at least 1 characters')
        else if std.length(LifecycleHookName) > 255 then error ('LifecycleHookName should have not more than 255 characters')
        else LifecycleHookName,
    },
  },
  setNotificationMetadata(NotificationMetadata): {
    Properties+::: {
      NotificationMetadata:
        if !std.isString(NotificationMetadata) then (error 'NotificationMetadata must be a string')
        else if std.isEmpty(NotificationMetadata) then (error 'NotificationMetadata must be not empty')
        else if std.length(NotificationMetadata) < 1 then error ('NotificationMetadata should have at least 1 characters')
        else if std.length(NotificationMetadata) > 1023 then error ('NotificationMetadata should have not more than 1023 characters')
        else NotificationMetadata,
    },
  },
  setNotificationTargetARN(NotificationTargetARN): {
    Properties+::: {
      NotificationTargetARN:
        if !std.isString(NotificationTargetARN) then (error 'NotificationTargetARN must be a string')
        else if std.isEmpty(NotificationTargetARN) then (error 'NotificationTargetARN must be not empty')
        else NotificationTargetARN,
    },
  },
  setRoleARN(RoleARN): {
    Properties+::: {
      RoleARN:
        if !std.isString(RoleARN) then (error 'RoleARN must be a string')
        else if std.isEmpty(RoleARN) then (error 'RoleARN must be not empty')
        else RoleARN,
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
