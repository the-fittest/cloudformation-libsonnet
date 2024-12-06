{
  new(
    RecoveryPointSelection,
    ScheduleExpression,
    RestoreTestingPlanName,
  ): {
    local base = self,
    Properties: {
      RecoveryPointSelection:
        if !std.isObject(RecoveryPointSelection) then (error 'RecoveryPointSelection must be an object')
        else if !std.objectHas(RecoveryPointSelection, 'Algorithm') then (error ' have attribute Algorithm')
        else if !std.objectHas(RecoveryPointSelection, 'RecoveryPointTypes') then (error ' have attribute RecoveryPointTypes')
        else if !std.objectHas(RecoveryPointSelection, 'IncludeVaults') then (error ' have attribute IncludeVaults')
        else RecoveryPointSelection,
      ScheduleExpression:
        if !std.isString(ScheduleExpression) then (error 'ScheduleExpression must be a string')
        else if std.isEmpty(ScheduleExpression) then (error 'ScheduleExpression must be not empty')
        else ScheduleExpression,
      RestoreTestingPlanName:
        if !std.isString(RestoreTestingPlanName) then (error 'RestoreTestingPlanName must be a string')
        else if std.isEmpty(RestoreTestingPlanName) then (error 'RestoreTestingPlanName must be not empty')
        else RestoreTestingPlanName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::RestoreTestingPlan',
  },
  setRestoreTestingPlanArn(RestoreTestingPlanArn): {
    Properties+::: {
      RestoreTestingPlanArn:
        if !std.isString(RestoreTestingPlanArn) then (error 'RestoreTestingPlanArn must be a string')
        else if std.isEmpty(RestoreTestingPlanArn) then (error 'RestoreTestingPlanArn must be not empty')
        else RestoreTestingPlanArn,
    },
  },
  setScheduleExpressionTimezone(ScheduleExpressionTimezone): {
    Properties+::: {
      ScheduleExpressionTimezone:
        if !std.isString(ScheduleExpressionTimezone) then (error 'ScheduleExpressionTimezone must be a string')
        else if std.isEmpty(ScheduleExpressionTimezone) then (error 'ScheduleExpressionTimezone must be not empty')
        else ScheduleExpressionTimezone,
    },
  },
  setScheduleStatus(ScheduleStatus): {
    Properties+::: {
      ScheduleStatus:
        if !std.isString(ScheduleStatus) then (error 'ScheduleStatus must be a string')
        else if std.isEmpty(ScheduleStatus) then (error 'ScheduleStatus must be not empty')
        else if ScheduleStatus != 'ACTIVE' && ScheduleStatus != 'SUSPENDED' then (error "ScheduleStatus should be 'ACTIVE' or 'SUSPENDED'")
        else ScheduleStatus,
    },
  },
  setStartWindowHours(StartWindowHours): {
    Properties+::: {
      StartWindowHours:
        if !std.isNumber(StartWindowHours) then (error 'StartWindowHours must be an number')
        else StartWindowHours,
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
