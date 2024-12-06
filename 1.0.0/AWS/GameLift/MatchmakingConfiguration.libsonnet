{
  new(
    AcceptanceRequired,
    Name,
    RequestTimeoutSeconds,
    RuleSetName,
  ): {
    local base = self,
    Properties: {
      AcceptanceRequired:
        if !std.isBoolean(AcceptanceRequired) then (error 'AcceptanceRequired must be a boolean') else AcceptanceRequired,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
      RequestTimeoutSeconds:
        if !std.isNumber(RequestTimeoutSeconds) then (error 'RequestTimeoutSeconds must be an number')
        else if RequestTimeoutSeconds < 1 then error ('RequestTimeoutSeconds should be at least 1')
        else if RequestTimeoutSeconds > 43200 then error ('RequestTimeoutSeconds should be not more than 43200')
        else RequestTimeoutSeconds,
      RuleSetName:
        if !std.isString(RuleSetName) then (error 'RuleSetName must be a string')
        else if std.isEmpty(RuleSetName) then (error 'RuleSetName must be not empty')
        else if std.length(RuleSetName) > 128 then error ('RuleSetName should have not more than 128 characters')
        else RuleSetName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::MatchmakingConfiguration',
  },
  setAcceptanceTimeoutSeconds(AcceptanceTimeoutSeconds): {
    Properties+::: {
      AcceptanceTimeoutSeconds:
        if !std.isNumber(AcceptanceTimeoutSeconds) then (error 'AcceptanceTimeoutSeconds must be an number')
        else if AcceptanceTimeoutSeconds < 1 then error ('AcceptanceTimeoutSeconds should be at least 1')
        else if AcceptanceTimeoutSeconds > 600 then error ('AcceptanceTimeoutSeconds should be not more than 600')
        else AcceptanceTimeoutSeconds,
    },
  },
  setAdditionalPlayerCount(AdditionalPlayerCount): {
    Properties+::: {
      AdditionalPlayerCount:
        if !std.isNumber(AdditionalPlayerCount) then (error 'AdditionalPlayerCount must be an number')
        else AdditionalPlayerCount,
    },
  },
  setBackfillMode(BackfillMode): {
    Properties+::: {
      BackfillMode:
        if !std.isString(BackfillMode) then (error 'BackfillMode must be a string')
        else if std.isEmpty(BackfillMode) then (error 'BackfillMode must be not empty')
        else if BackfillMode != 'AUTOMATIC' && BackfillMode != 'MANUAL' then (error "BackfillMode should be 'AUTOMATIC' or 'MANUAL'")
        else BackfillMode,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setCustomEventData(CustomEventData): {
    Properties+::: {
      CustomEventData:
        if !std.isString(CustomEventData) then (error 'CustomEventData must be a string')
        else if std.isEmpty(CustomEventData) then (error 'CustomEventData must be not empty')
        else if std.length(CustomEventData) > 256 then error ('CustomEventData should have not more than 256 characters')
        else CustomEventData,
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
  setFlexMatchMode(FlexMatchMode): {
    Properties+::: {
      FlexMatchMode:
        if !std.isString(FlexMatchMode) then (error 'FlexMatchMode must be a string')
        else if std.isEmpty(FlexMatchMode) then (error 'FlexMatchMode must be not empty')
        else if FlexMatchMode != 'STANDALONE' && FlexMatchMode != 'WITH_QUEUE' then (error "FlexMatchMode should be 'STANDALONE' or 'WITH_QUEUE'")
        else FlexMatchMode,
    },
  },
  setGameProperties(GameProperties): {
    Properties+::: {
      GameProperties:
        if !std.isArray(GameProperties) then (error 'GameProperties must be an array')
        else if std.length(GameProperties) > 16 then error ('GameProperties cannot have more than 16 items')
        else GameProperties,
    },
  },
  pushGameProperties(GameProperties): {
    Properties+::: {
      GameProperties+: GameProperties,
    },
  },
  setGameSessionData(GameSessionData): {
    Properties+::: {
      GameSessionData:
        if !std.isString(GameSessionData) then (error 'GameSessionData must be a string')
        else if std.isEmpty(GameSessionData) then (error 'GameSessionData must be not empty')
        else if std.length(GameSessionData) < 1 then error ('GameSessionData should have at least 1 characters')
        else if std.length(GameSessionData) > 4096 then error ('GameSessionData should have not more than 4096 characters')
        else GameSessionData,
    },
  },
  setGameSessionQueueArns(GameSessionQueueArns): {
    Properties+::: {
      GameSessionQueueArns:
        if !std.isArray(GameSessionQueueArns) then (error 'GameSessionQueueArns must be an array')
        else GameSessionQueueArns,
    },
  },
  pushGameSessionQueueArns(GameSessionQueueArns): {
    Properties+::: {
      GameSessionQueueArns+: GameSessionQueueArns,
    },
  },
  setNotificationTarget(NotificationTarget): {
    Properties+::: {
      NotificationTarget:
        if !std.isString(NotificationTarget) then (error 'NotificationTarget must be a string')
        else if std.isEmpty(NotificationTarget) then (error 'NotificationTarget must be not empty')
        else if std.length(NotificationTarget) > 300 then error ('NotificationTarget should have not more than 300 characters')
        else NotificationTarget,
    },
  },
  setRuleSetArn(RuleSetArn): {
    Properties+::: {
      RuleSetArn:
        if !std.isString(RuleSetArn) then (error 'RuleSetArn must be a string')
        else if std.isEmpty(RuleSetArn) then (error 'RuleSetArn must be not empty')
        else RuleSetArn,
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
