{
  new(
    AcceptanceRequired,
    Name,
    RequestTimeoutSeconds,
    RuleSetName,
  ): {
    local base = self,
    Properties: {
      assert std.isBoolean(AcceptanceRequired) : 'AcceptanceRequired must be a boolean',
      AcceptanceRequired: AcceptanceRequired,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isNumber(RequestTimeoutSeconds) : 'RequestTimeoutSeconds must be a number',
      RequestTimeoutSeconds: RequestTimeoutSeconds,
      assert std.isString(RuleSetName) : 'RuleSetName must be a string',
      RuleSetName: RuleSetName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::MatchmakingConfiguration',
  },
  withAcceptanceTimeoutSeconds(AcceptanceTimeoutSeconds): {
    assert std.isNumber(AcceptanceTimeoutSeconds) : 'AcceptanceTimeoutSeconds must be a number',
    Properties+::: {
      AcceptanceTimeoutSeconds: AcceptanceTimeoutSeconds,
    },
  },
  withAdditionalPlayerCount(AdditionalPlayerCount): {
    assert std.isNumber(AdditionalPlayerCount) : 'AdditionalPlayerCount must be a number',
    Properties+::: {
      AdditionalPlayerCount: AdditionalPlayerCount,
    },
  },
  withBackfillMode(BackfillMode): {
    assert std.isString(BackfillMode) : 'BackfillMode must be a string',
    assert BackfillMode == 'AUTOMATIC' || BackfillMode == 'MANUAL' : "BackfillMode should be 'AUTOMATIC' or 'MANUAL'",
    Properties+::: {
      BackfillMode: BackfillMode,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withCustomEventData(CustomEventData): {
    assert std.isString(CustomEventData) : 'CustomEventData must be a string',
    Properties+::: {
      CustomEventData: CustomEventData,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withFlexMatchMode(FlexMatchMode): {
    assert std.isString(FlexMatchMode) : 'FlexMatchMode must be a string',
    assert FlexMatchMode == 'STANDALONE' || FlexMatchMode == 'WITH_QUEUE' : "FlexMatchMode should be 'STANDALONE' or 'WITH_QUEUE'",
    Properties+::: {
      FlexMatchMode: FlexMatchMode,
    },
  },
  withGameProperties(GameProperties): {
    Properties+::: {
      GameProperties: (if std.isArray(GameProperties) then GameProperties else [GameProperties]),
    },
  },
  withGamePropertiesMixin(GameProperties): {
    Properties+::: {
      GameProperties+: (if std.isArray(GameProperties) then GameProperties else [GameProperties]),
    },
  },
  withGameSessionData(GameSessionData): {
    assert std.isString(GameSessionData) : 'GameSessionData must be a string',
    Properties+::: {
      GameSessionData: GameSessionData,
    },
  },
  withGameSessionQueueArns(GameSessionQueueArns): {
    Properties+::: {
      GameSessionQueueArns: (if std.isArray(GameSessionQueueArns) then GameSessionQueueArns else [GameSessionQueueArns]),
    },
  },
  withGameSessionQueueArnsMixin(GameSessionQueueArns): {
    Properties+::: {
      GameSessionQueueArns+: (if std.isArray(GameSessionQueueArns) then GameSessionQueueArns else [GameSessionQueueArns]),
    },
  },
  withNotificationTarget(NotificationTarget): {
    assert std.isString(NotificationTarget) : 'NotificationTarget must be a string',
    Properties+::: {
      NotificationTarget: NotificationTarget,
    },
  },
  withRuleSetArn(RuleSetArn): {
    assert std.isString(RuleSetArn) : 'RuleSetArn must be a string',
    Properties+::: {
      RuleSetArn: RuleSetArn,
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
}
