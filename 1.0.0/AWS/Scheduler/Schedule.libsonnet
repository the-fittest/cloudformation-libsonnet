{
  new(
    FlexibleTimeWindow,
    ScheduleExpression,
    Target,
  ): {
    local base = self,
    Properties: {
      FlexibleTimeWindow:
        if !std.isObject(FlexibleTimeWindow) then (error 'FlexibleTimeWindow must be an object')
        else if !std.objectHas(FlexibleTimeWindow, 'Mode') then (error ' have attribute Mode')
        else FlexibleTimeWindow,
      ScheduleExpression:
        if !std.isString(ScheduleExpression) then (error 'ScheduleExpression must be a string')
        else if std.isEmpty(ScheduleExpression) then (error 'ScheduleExpression must be not empty')
        else if std.length(ScheduleExpression) < 1 then error ('ScheduleExpression should have at least 1 characters')
        else if std.length(ScheduleExpression) > 256 then error ('ScheduleExpression should have not more than 256 characters')
        else ScheduleExpression,
      Target:
        if !std.isObject(Target) then (error 'Target must be an object')
        else if !std.objectHas(Target, 'Arn') then (error ' have attribute Arn')
        else if !std.objectHas(Target, 'RoleArn') then (error ' have attribute RoleArn')
        else Target,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Scheduler::Schedule',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1224 then error ('Arn should have not more than 1224 characters')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
    },
  },
  setEndDate(EndDate): {
    Properties+::: {
      EndDate:
        if !std.isString(EndDate) then (error 'EndDate must be a string')
        else if std.isEmpty(EndDate) then (error 'EndDate must be not empty')
        else EndDate,
    },
  },
  setGroupName(GroupName): {
    Properties+::: {
      GroupName:
        if !std.isString(GroupName) then (error 'GroupName must be a string')
        else if std.isEmpty(GroupName) then (error 'GroupName must be not empty')
        else if std.length(GroupName) < 1 then error ('GroupName should have at least 1 characters')
        else if std.length(GroupName) > 64 then error ('GroupName should have not more than 64 characters')
        else GroupName,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 1 then error ('KmsKeyArn should have at least 1 characters')
        else if std.length(KmsKeyArn) > 2048 then error ('KmsKeyArn should have not more than 2048 characters')
        else KmsKeyArn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
  },
  setScheduleExpressionTimezone(ScheduleExpressionTimezone): {
    Properties+::: {
      ScheduleExpressionTimezone:
        if !std.isString(ScheduleExpressionTimezone) then (error 'ScheduleExpressionTimezone must be a string')
        else if std.isEmpty(ScheduleExpressionTimezone) then (error 'ScheduleExpressionTimezone must be not empty')
        else if std.length(ScheduleExpressionTimezone) < 1 then error ('ScheduleExpressionTimezone should have at least 1 characters')
        else if std.length(ScheduleExpressionTimezone) > 50 then error ('ScheduleExpressionTimezone should have not more than 50 characters')
        else ScheduleExpressionTimezone,
    },
  },
  setStartDate(StartDate): {
    Properties+::: {
      StartDate:
        if !std.isString(StartDate) then (error 'StartDate must be a string')
        else if std.isEmpty(StartDate) then (error 'StartDate must be not empty')
        else StartDate,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'ENABLED' && State != 'DISABLED' then (error "State should be 'ENABLED' or 'DISABLED'")
        else State,
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
