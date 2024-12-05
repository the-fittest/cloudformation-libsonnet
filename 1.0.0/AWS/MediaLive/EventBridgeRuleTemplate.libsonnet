{
  new(
    EventType,
    GroupIdentifier,
    Name,
  ): {
    local base = self,
    Properties: {
      EventType:
        if !std.isString(EventType) then (error 'EventType must be a string')
        else if std.isEmpty(EventType) then (error 'EventType must be not empty')
        else if EventType != 'MEDIALIVE_MULTIPLEX_ALERT' && EventType != 'MEDIALIVE_MULTIPLEX_STATE_CHANGE' && EventType != 'MEDIALIVE_CHANNEL_ALERT' && EventType != 'MEDIALIVE_CHANNEL_INPUT_CHANGE' && EventType != 'MEDIALIVE_CHANNEL_STATE_CHANGE' && EventType != 'MEDIAPACKAGE_INPUT_NOTIFICATION' && EventType != 'MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION' && EventType != 'MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION' && EventType != 'SIGNAL_MAP_ACTIVE_ALARM' && EventType != 'MEDIACONNECT_ALERT' && EventType != 'MEDIACONNECT_SOURCE_HEALTH' && EventType != 'MEDIACONNECT_OUTPUT_HEALTH' && EventType != 'MEDIACONNECT_FLOW_STATUS_CHANGE' then (error "EventType should be 'MEDIALIVE_MULTIPLEX_ALERT' or 'MEDIALIVE_MULTIPLEX_STATE_CHANGE' or 'MEDIALIVE_CHANNEL_ALERT' or 'MEDIALIVE_CHANNEL_INPUT_CHANGE' or 'MEDIALIVE_CHANNEL_STATE_CHANGE' or 'MEDIAPACKAGE_INPUT_NOTIFICATION' or 'MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION' or 'MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION' or 'SIGNAL_MAP_ACTIVE_ALARM' or 'MEDIACONNECT_ALERT' or 'MEDIACONNECT_SOURCE_HEALTH' or 'MEDIACONNECT_OUTPUT_HEALTH' or 'MEDIACONNECT_FLOW_STATUS_CHANGE'")
        else EventType,
      GroupIdentifier:
        if !std.isString(GroupIdentifier) then (error 'GroupIdentifier must be a string')
        else if std.isEmpty(GroupIdentifier) then (error 'GroupIdentifier must be not empty')
        else GroupIdentifier,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::EventBridgeRuleTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setEventTargets(EventTargets): {
    Properties+::: {
      EventTargets:
        if !std.isArray(EventTargets) then (error 'EventTargets must be an array')
        else EventTargets,
    },
  },
  setEventTargetsMixin(EventTargets): {
    Properties+::: {
      EventTargets+: EventTargets,
    },
  },
  setGroupId(GroupId): {
    Properties+::: {
      GroupId:
        if !std.isString(GroupId) then (error 'GroupId must be a string')
        else if std.isEmpty(GroupId) then (error 'GroupId must be not empty')
        else if std.length(GroupId) < 7 then error ('GroupId should have at least 7 characters')
        else if std.length(GroupId) > 11 then error ('GroupId should have not more than 11 characters')
        else GroupId,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 7 then error ('Id should have at least 7 characters')
        else if std.length(Id) > 11 then error ('Id should have not more than 11 characters')
        else Id,
    },
  },
  setIdentifier(Identifier): {
    Properties+::: {
      Identifier:
        if !std.isString(Identifier) then (error 'Identifier must be a string')
        else if std.isEmpty(Identifier) then (error 'Identifier must be not empty')
        else Identifier,
    },
  },
  setModifiedAt(ModifiedAt): {
    Properties+::: {
      ModifiedAt:
        if !std.isString(ModifiedAt) then (error 'ModifiedAt must be a string')
        else if std.isEmpty(ModifiedAt) then (error 'ModifiedAt must be not empty')
        else ModifiedAt,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
