{
  // AWS IoTEvents AlarmModel
  AlarmModel: {
    new(
      RoleArn,
      AlarmRule,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(AlarmRule) : 'AlarmRule must be an object',
        AlarmRule: AlarmRule,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoTEvents::AlarmModel',
    },
    withAlarmModelName(AlarmModelName): {
      assert std.isString(AlarmModelName) : 'AlarmModelName must be a string',
      Properties+::: {
        AlarmModelName: AlarmModelName,
      },
    },
    withAlarmModelDescription(AlarmModelDescription): {
      assert std.isString(AlarmModelDescription) : 'AlarmModelDescription must be a string',
      Properties+::: {
        AlarmModelDescription: AlarmModelDescription,
      },
    },
    withKey(Key): {
      assert std.isString(Key) : 'Key must be a string',
      Properties+::: {
        Key: Key,
      },
    },
    withSeverity(Severity): {
      assert std.isNumber(Severity) : 'Severity must be a number',
      Properties+::: {
        Severity: Severity,
      },
    },
    withAlarmEventActions(AlarmEventActions): {
      assert std.isObject(AlarmEventActions) : 'AlarmEventActions must be a object',
      Properties+::: {
        AlarmEventActions: AlarmEventActions,
      },
    },
    withAlarmCapabilities(AlarmCapabilities): {
      assert std.isObject(AlarmCapabilities) : 'AlarmCapabilities must be a object',
      Properties+::: {
        AlarmCapabilities: AlarmCapabilities,
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
