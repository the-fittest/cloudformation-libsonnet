{
  new(
    EventType,
    GroupIdentifier,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(EventType) : 'EventType must be a string',
      assert EventType == 'MEDIALIVE_MULTIPLEX_ALERT' || EventType == 'MEDIALIVE_MULTIPLEX_STATE_CHANGE' || EventType == 'MEDIALIVE_CHANNEL_ALERT' || EventType == 'MEDIALIVE_CHANNEL_INPUT_CHANGE' || EventType == 'MEDIALIVE_CHANNEL_STATE_CHANGE' || EventType == 'MEDIAPACKAGE_INPUT_NOTIFICATION' || EventType == 'MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION' || EventType == 'MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION' || EventType == 'SIGNAL_MAP_ACTIVE_ALARM' || EventType == 'MEDIACONNECT_ALERT' || EventType == 'MEDIACONNECT_SOURCE_HEALTH' || EventType == 'MEDIACONNECT_OUTPUT_HEALTH' || EventType == 'MEDIACONNECT_FLOW_STATUS_CHANGE' : "EventType should be 'MEDIALIVE_MULTIPLEX_ALERT' or 'MEDIALIVE_MULTIPLEX_STATE_CHANGE' or 'MEDIALIVE_CHANNEL_ALERT' or 'MEDIALIVE_CHANNEL_INPUT_CHANGE' or 'MEDIALIVE_CHANNEL_STATE_CHANGE' or 'MEDIAPACKAGE_INPUT_NOTIFICATION' or 'MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION' or 'MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION' or 'SIGNAL_MAP_ACTIVE_ALARM' or 'MEDIACONNECT_ALERT' or 'MEDIACONNECT_SOURCE_HEALTH' or 'MEDIACONNECT_OUTPUT_HEALTH' or 'MEDIACONNECT_FLOW_STATUS_CHANGE'",
      EventType: EventType,
      assert std.isString(GroupIdentifier) : 'GroupIdentifier must be a string',
      GroupIdentifier: GroupIdentifier,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::EventBridgeRuleTemplate',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withEventTargets(EventTargets): {
    Properties+::: {
      EventTargets: (if std.isArray(EventTargets) then EventTargets else [EventTargets]),
    },
  },
  withEventTargetsMixin(EventTargets): {
    Properties+::: {
      EventTargets+: (if std.isArray(EventTargets) then EventTargets else [EventTargets]),
    },
  },
  withGroupId(GroupId): {
    assert std.isString(GroupId) : 'GroupId must be a string',
    Properties+::: {
      GroupId: GroupId,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withIdentifier(Identifier): {
    assert std.isString(Identifier) : 'Identifier must be a string',
    Properties+::: {
      Identifier: Identifier,
    },
  },
  withModifiedAt(ModifiedAt): {
    assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
    Properties+::: {
      ModifiedAt: ModifiedAt,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
