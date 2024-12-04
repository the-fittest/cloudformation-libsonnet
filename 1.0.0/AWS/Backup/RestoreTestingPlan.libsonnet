{
  new(
    RecoveryPointSelection,
    ScheduleExpression,
    RestoreTestingPlanName,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(RecoveryPointSelection) : 'RecoveryPointSelection must be an object',
      RecoveryPointSelection: RecoveryPointSelection,
      assert std.isString(ScheduleExpression) : 'ScheduleExpression must be a string',
      ScheduleExpression: ScheduleExpression,
      assert std.isString(RestoreTestingPlanName) : 'RestoreTestingPlanName must be a string',
      RestoreTestingPlanName: RestoreTestingPlanName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::RestoreTestingPlan',
  },
  withRestoreTestingPlanArn(RestoreTestingPlanArn): {
    assert std.isString(RestoreTestingPlanArn) : 'RestoreTestingPlanArn must be a string',
    Properties+::: {
      RestoreTestingPlanArn: RestoreTestingPlanArn,
    },
  },
  withScheduleExpressionTimezone(ScheduleExpressionTimezone): {
    assert std.isString(ScheduleExpressionTimezone) : 'ScheduleExpressionTimezone must be a string',
    Properties+::: {
      ScheduleExpressionTimezone: ScheduleExpressionTimezone,
    },
  },
  withScheduleStatus(ScheduleStatus): {
    assert std.isString(ScheduleStatus) : 'ScheduleStatus must be a string',
    Properties+::: {
      ScheduleStatus: ScheduleStatus,
    },
  },
  withStartWindowHours(StartWindowHours): {
    assert std.isNumber(StartWindowHours) : 'StartWindowHours must be a number',
    Properties+::: {
      StartWindowHours: StartWindowHours,
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
