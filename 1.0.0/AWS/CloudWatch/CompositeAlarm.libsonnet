{
  new(
    AlarmRule,
  ): {
    local base = self,
    Properties: {
      AlarmRule:
        if !std.isString(AlarmRule) then (error 'AlarmRule must be a string')
        else if std.isEmpty(AlarmRule) then (error 'AlarmRule must be not empty')
        else if std.length(AlarmRule) < 1 then error ('AlarmRule should have at least 1 characters')
        else if std.length(AlarmRule) > 10240 then error ('AlarmRule should have not more than 10240 characters')
        else AlarmRule,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudWatch::CompositeAlarm',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
    },
  },
  setAlarmName(AlarmName): {
    Properties+::: {
      AlarmName:
        if !std.isString(AlarmName) then (error 'AlarmName must be a string')
        else if std.isEmpty(AlarmName) then (error 'AlarmName must be not empty')
        else if std.length(AlarmName) < 1 then error ('AlarmName should have at least 1 characters')
        else if std.length(AlarmName) > 255 then error ('AlarmName should have not more than 255 characters')
        else AlarmName,
    },
  },
  setAlarmDescription(AlarmDescription): {
    Properties+::: {
      AlarmDescription:
        if !std.isString(AlarmDescription) then (error 'AlarmDescription must be a string')
        else if std.isEmpty(AlarmDescription) then (error 'AlarmDescription must be not empty')
        else if std.length(AlarmDescription) > 1024 then error ('AlarmDescription should have not more than 1024 characters')
        else AlarmDescription,
    },
  },
  setActionsEnabled(ActionsEnabled): {
    Properties+::: {
      ActionsEnabled:
        if !std.isBoolean(ActionsEnabled) then (error 'ActionsEnabled must be a boolean') else ActionsEnabled,
    },
  },
  setOKActions(OKActions): {
    Properties+::: {
      OKActions:
        if !std.isArray(OKActions) then (error 'OKActions must be an array')
        else if std.length(OKActions) > 5 then error ('OKActions cannot have more than 5 items')
        else OKActions,
    },
  },
  pushOKActions(OKActions): {
    Properties+::: {
      OKActions+: OKActions,
    },
  },
  setAlarmActions(AlarmActions): {
    Properties+::: {
      AlarmActions:
        if !std.isArray(AlarmActions) then (error 'AlarmActions must be an array')
        else if std.length(AlarmActions) > 5 then error ('AlarmActions cannot have more than 5 items')
        else AlarmActions,
    },
  },
  pushAlarmActions(AlarmActions): {
    Properties+::: {
      AlarmActions+: AlarmActions,
    },
  },
  setInsufficientDataActions(InsufficientDataActions): {
    Properties+::: {
      InsufficientDataActions:
        if !std.isArray(InsufficientDataActions) then (error 'InsufficientDataActions must be an array')
        else if std.length(InsufficientDataActions) > 5 then error ('InsufficientDataActions cannot have more than 5 items')
        else InsufficientDataActions,
    },
  },
  pushInsufficientDataActions(InsufficientDataActions): {
    Properties+::: {
      InsufficientDataActions+: InsufficientDataActions,
    },
  },
  setActionsSuppressor(ActionsSuppressor): {
    Properties+::: {
      ActionsSuppressor:
        if !std.isString(ActionsSuppressor) then (error 'ActionsSuppressor must be a string')
        else if std.isEmpty(ActionsSuppressor) then (error 'ActionsSuppressor must be not empty')
        else if std.length(ActionsSuppressor) < 1 then error ('ActionsSuppressor should have at least 1 characters')
        else if std.length(ActionsSuppressor) > 1600 then error ('ActionsSuppressor should have not more than 1600 characters')
        else ActionsSuppressor,
    },
  },
  setActionsSuppressorWaitPeriod(ActionsSuppressorWaitPeriod): {
    Properties+::: {
      ActionsSuppressorWaitPeriod:
        if !std.isNumber(ActionsSuppressorWaitPeriod) then (error 'ActionsSuppressorWaitPeriod must be an number')
        else ActionsSuppressorWaitPeriod,
    },
  },
  setActionsSuppressorExtensionPeriod(ActionsSuppressorExtensionPeriod): {
    Properties+::: {
      ActionsSuppressorExtensionPeriod:
        if !std.isNumber(ActionsSuppressorExtensionPeriod) then (error 'ActionsSuppressorExtensionPeriod must be an number')
        else ActionsSuppressorExtensionPeriod,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
