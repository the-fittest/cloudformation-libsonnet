{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::GameSessionQueue',
  },
  setTimeoutInSeconds(TimeoutInSeconds): {
    Properties+::: {
      TimeoutInSeconds:
        if !std.isNumber(TimeoutInSeconds) then (error 'TimeoutInSeconds must be an number')
        else TimeoutInSeconds,
    },
  },
  setDestinations(Destinations): {
    Properties+::: {
      Destinations:
        if !std.isArray(Destinations) then (error 'Destinations must be an array')
        else Destinations,
    },
  },
  setDestinationsMixin(Destinations): {
    Properties+::: {
      Destinations+: Destinations,
    },
  },
  setPlayerLatencyPolicies(PlayerLatencyPolicies): {
    Properties+::: {
      PlayerLatencyPolicies:
        if !std.isArray(PlayerLatencyPolicies) then (error 'PlayerLatencyPolicies must be an array')
        else PlayerLatencyPolicies,
    },
  },
  setPlayerLatencyPoliciesMixin(PlayerLatencyPolicies): {
    Properties+::: {
      PlayerLatencyPolicies+: PlayerLatencyPolicies,
    },
  },
  setCustomEventData(CustomEventData): {
    Properties+::: {
      CustomEventData:
        if !std.isString(CustomEventData) then (error 'CustomEventData must be a string')
        else if std.isEmpty(CustomEventData) then (error 'CustomEventData must be not empty')
        else if std.length(CustomEventData) < 1 then error ('CustomEventData should have at least 1 characters')
        else if std.length(CustomEventData) > 256 then error ('CustomEventData should have not more than 256 characters')
        else CustomEventData,
    },
  },
  setNotificationTarget(NotificationTarget): {
    Properties+::: {
      NotificationTarget:
        if !std.isString(NotificationTarget) then (error 'NotificationTarget must be a string')
        else if std.isEmpty(NotificationTarget) then (error 'NotificationTarget must be not empty')
        else if std.length(NotificationTarget) < 1 then error ('NotificationTarget should have at least 1 characters')
        else if std.length(NotificationTarget) > 300 then error ('NotificationTarget should have not more than 300 characters')
        else NotificationTarget,
    },
  },
  setFilterConfiguration(FilterConfiguration): {
    Properties+::: {
      FilterConfiguration:
        if !std.isObject(FilterConfiguration) then (error 'FilterConfiguration must be an object')
        else FilterConfiguration,
    },
  },
  setPriorityConfiguration(PriorityConfiguration): {
    Properties+::: {
      PriorityConfiguration:
        if !std.isObject(PriorityConfiguration) then (error 'PriorityConfiguration must be an object')
        else PriorityConfiguration,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 256 then error ('Arn should have not more than 256 characters')
        else Arn,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
