{
  new(
    FlexibleTimeWindow,
    ScheduleExpression,
    Target,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(FlexibleTimeWindow) : 'FlexibleTimeWindow must be an object',
      FlexibleTimeWindow: FlexibleTimeWindow,
      assert std.isString(ScheduleExpression) : 'ScheduleExpression must be a string',
      ScheduleExpression: ScheduleExpression,
      assert std.isObject(Target) : 'Target must be an object',
      Target: Target,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Scheduler::Schedule',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withEndDate(EndDate): {
    assert std.isString(EndDate) : 'EndDate must be a string',
    Properties+::: {
      EndDate: EndDate,
    },
  },
  withGroupName(GroupName): {
    assert std.isString(GroupName) : 'GroupName must be a string',
    Properties+::: {
      GroupName: GroupName,
    },
  },
  withKmsKeyArn(KmsKeyArn): {
    assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
    Properties+::: {
      KmsKeyArn: KmsKeyArn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withScheduleExpressionTimezone(ScheduleExpressionTimezone): {
    assert std.isString(ScheduleExpressionTimezone) : 'ScheduleExpressionTimezone must be a string',
    Properties+::: {
      ScheduleExpressionTimezone: ScheduleExpressionTimezone,
    },
  },
  withStartDate(StartDate): {
    assert std.isString(StartDate) : 'StartDate must be a string',
    Properties+::: {
      StartDate: StartDate,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    assert State == 'ENABLED' || State == 'DISABLED' : "State should be 'ENABLED' or 'DISABLED'",
    Properties+::: {
      State: State,
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
