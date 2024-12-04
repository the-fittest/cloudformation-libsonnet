{
  new(
    AlarmRule,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AlarmRule) : 'AlarmRule must be a string',
      AlarmRule: AlarmRule,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudWatch::CompositeAlarm',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAlarmName(AlarmName): {
    assert std.isString(AlarmName) : 'AlarmName must be a string',
    Properties+::: {
      AlarmName: AlarmName,
    },
  },
  withAlarmDescription(AlarmDescription): {
    assert std.isString(AlarmDescription) : 'AlarmDescription must be a string',
    Properties+::: {
      AlarmDescription: AlarmDescription,
    },
  },
  withActionsEnabled(ActionsEnabled): {
    assert std.isBoolean(ActionsEnabled) : 'ActionsEnabled must be a boolean',
    Properties+::: {
      ActionsEnabled: ActionsEnabled,
    },
  },
  withOKActions(OKActions): {
    Properties+::: {
      OKActions: (if std.isArray(OKActions) then OKActions else [OKActions]),
    },
  },
  withOKActionsMixin(OKActions): {
    Properties+::: {
      OKActions+: (if std.isArray(OKActions) then OKActions else [OKActions]),
    },
  },
  withAlarmActions(AlarmActions): {
    Properties+::: {
      AlarmActions: (if std.isArray(AlarmActions) then AlarmActions else [AlarmActions]),
    },
  },
  withAlarmActionsMixin(AlarmActions): {
    Properties+::: {
      AlarmActions+: (if std.isArray(AlarmActions) then AlarmActions else [AlarmActions]),
    },
  },
  withInsufficientDataActions(InsufficientDataActions): {
    Properties+::: {
      InsufficientDataActions: (if std.isArray(InsufficientDataActions) then InsufficientDataActions else [InsufficientDataActions]),
    },
  },
  withInsufficientDataActionsMixin(InsufficientDataActions): {
    Properties+::: {
      InsufficientDataActions+: (if std.isArray(InsufficientDataActions) then InsufficientDataActions else [InsufficientDataActions]),
    },
  },
  withActionsSuppressor(ActionsSuppressor): {
    assert std.isString(ActionsSuppressor) : 'ActionsSuppressor must be a string',
    Properties+::: {
      ActionsSuppressor: ActionsSuppressor,
    },
  },
  withActionsSuppressorWaitPeriod(ActionsSuppressorWaitPeriod): {
    assert std.isNumber(ActionsSuppressorWaitPeriod) : 'ActionsSuppressorWaitPeriod must be a number',
    Properties+::: {
      ActionsSuppressorWaitPeriod: ActionsSuppressorWaitPeriod,
    },
  },
  withActionsSuppressorExtensionPeriod(ActionsSuppressorExtensionPeriod): {
    assert std.isNumber(ActionsSuppressorExtensionPeriod) : 'ActionsSuppressorExtensionPeriod must be a number',
    Properties+::: {
      ActionsSuppressorExtensionPeriod: ActionsSuppressorExtensionPeriod,
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
