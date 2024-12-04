{
  // AWS GameLift GameSessionQueue
  GameSessionQueue: {
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::GameLift::GameSessionQueue',
    },
    withTimeoutInSeconds(TimeoutInSeconds): {
      assert std.isNumber(TimeoutInSeconds) : 'TimeoutInSeconds must be a number',
      Properties+::: {
        TimeoutInSeconds: TimeoutInSeconds,
      },
    },
    withDestinations(Destinations): {
      Properties+::: {
        Destinations: (if std.isArray(Destinations) then Destinations else [Destinations]),
      },
    },
    withDestinationsMixin(Destinations): {
      Properties+::: {
        Destinations+: (if std.isArray(Destinations) then Destinations else [Destinations]),
      },
    },
    withPlayerLatencyPolicies(PlayerLatencyPolicies): {
      Properties+::: {
        PlayerLatencyPolicies: (if std.isArray(PlayerLatencyPolicies) then PlayerLatencyPolicies else [PlayerLatencyPolicies]),
      },
    },
    withPlayerLatencyPoliciesMixin(PlayerLatencyPolicies): {
      Properties+::: {
        PlayerLatencyPolicies+: (if std.isArray(PlayerLatencyPolicies) then PlayerLatencyPolicies else [PlayerLatencyPolicies]),
      },
    },
    withCustomEventData(CustomEventData): {
      assert std.isString(CustomEventData) : 'CustomEventData must be a string',
      Properties+::: {
        CustomEventData: CustomEventData,
      },
    },
    withNotificationTarget(NotificationTarget): {
      assert std.isString(NotificationTarget) : 'NotificationTarget must be a string',
      Properties+::: {
        NotificationTarget: NotificationTarget,
      },
    },
    withFilterConfiguration(FilterConfiguration): {
      assert std.isObject(FilterConfiguration) : 'FilterConfiguration must be a object',
      Properties+::: {
        FilterConfiguration: FilterConfiguration,
      },
    },
    withPriorityConfiguration(PriorityConfiguration): {
      assert std.isObject(PriorityConfiguration) : 'PriorityConfiguration must be a object',
      Properties+::: {
        PriorityConfiguration: PriorityConfiguration,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
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
