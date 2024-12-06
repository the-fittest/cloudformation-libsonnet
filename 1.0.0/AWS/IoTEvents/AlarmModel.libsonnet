{
  new(
    RoleArn,
    AlarmRule,
  ): {
    local base = self,
    Properties: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
      AlarmRule:
        if !std.isObject(AlarmRule) then (error 'AlarmRule must be an object')
        else AlarmRule,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTEvents::AlarmModel',
  },
  setAlarmModelName(AlarmModelName): {
    Properties+::: {
      AlarmModelName:
        if !std.isString(AlarmModelName) then (error 'AlarmModelName must be a string')
        else if std.isEmpty(AlarmModelName) then (error 'AlarmModelName must be not empty')
        else if std.length(AlarmModelName) < 1 then error ('AlarmModelName should have at least 1 characters')
        else if std.length(AlarmModelName) > 128 then error ('AlarmModelName should have not more than 128 characters')
        else AlarmModelName,
    },
  },
  setAlarmModelDescription(AlarmModelDescription): {
    Properties+::: {
      AlarmModelDescription:
        if !std.isString(AlarmModelDescription) then (error 'AlarmModelDescription must be a string')
        else if std.isEmpty(AlarmModelDescription) then (error 'AlarmModelDescription must be not empty')
        else if std.length(AlarmModelDescription) > 1024 then error ('AlarmModelDescription should have not more than 1024 characters')
        else AlarmModelDescription,
    },
  },
  setKey(Key): {
    Properties+::: {
      Key:
        if !std.isString(Key) then (error 'Key must be a string')
        else if std.isEmpty(Key) then (error 'Key must be not empty')
        else if std.length(Key) < 1 then error ('Key should have at least 1 characters')
        else if std.length(Key) > 128 then error ('Key should have not more than 128 characters')
        else Key,
    },
  },
  setSeverity(Severity): {
    Properties+::: {
      Severity:
        if !std.isNumber(Severity) then (error 'Severity must be an number')
        else if Severity > 2147483647 then error ('Severity should be not more than 2147483647')
        else Severity,
    },
  },
  setAlarmEventActions(AlarmEventActions): {
    Properties+::: {
      AlarmEventActions:
        if !std.isObject(AlarmEventActions) then (error 'AlarmEventActions must be an object')
        else AlarmEventActions,
    },
  },
  setAlarmCapabilities(AlarmCapabilities): {
    Properties+::: {
      AlarmCapabilities:
        if !std.isObject(AlarmCapabilities) then (error 'AlarmCapabilities must be an object')
        else AlarmCapabilities,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
