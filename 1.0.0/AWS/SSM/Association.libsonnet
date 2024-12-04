{
  // AWS SSM Association
  Association: {
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SSM::Association',
    },
    withAssociationName(AssociationName): {
      assert std.isString(AssociationName) : 'AssociationName must be a string',
      Properties+::: {
        AssociationName: AssociationName,
      },
    },
    withCalendarNames(CalendarNames): {
      Properties+::: {
        CalendarNames: (if std.isArray(CalendarNames) then CalendarNames else [CalendarNames]),
      },
    },
    withCalendarNamesMixin(CalendarNames): {
      Properties+::: {
        CalendarNames+: (if std.isArray(CalendarNames) then CalendarNames else [CalendarNames]),
      },
    },
    withScheduleExpression(ScheduleExpression): {
      assert std.isString(ScheduleExpression) : 'ScheduleExpression must be a string',
      Properties+::: {
        ScheduleExpression: ScheduleExpression,
      },
    },
    withMaxErrors(MaxErrors): {
      assert std.isString(MaxErrors) : 'MaxErrors must be a string',
      Properties+::: {
        MaxErrors: MaxErrors,
      },
    },
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: {
        Parameters: Parameters,
      },
    },
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: {
        InstanceId: InstanceId,
      },
    },
    withWaitForSuccessTimeoutSeconds(WaitForSuccessTimeoutSeconds): {
      assert std.isNumber(WaitForSuccessTimeoutSeconds) : 'WaitForSuccessTimeoutSeconds must be a number',
      Properties+::: {
        WaitForSuccessTimeoutSeconds: WaitForSuccessTimeoutSeconds,
      },
    },
    withMaxConcurrency(MaxConcurrency): {
      assert std.isString(MaxConcurrency) : 'MaxConcurrency must be a string',
      Properties+::: {
        MaxConcurrency: MaxConcurrency,
      },
    },
    withComplianceSeverity(ComplianceSeverity): {
      assert std.isString(ComplianceSeverity) : 'ComplianceSeverity must be a string',
      Properties+::: {
        ComplianceSeverity: ComplianceSeverity,
      },
    },
    withTargets(Targets): {
      Properties+::: {
        Targets: (if std.isArray(Targets) then Targets else [Targets]),
      },
    },
    withTargetsMixin(Targets): {
      Properties+::: {
        Targets+: (if std.isArray(Targets) then Targets else [Targets]),
      },
    },
    withSyncCompliance(SyncCompliance): {
      assert std.isString(SyncCompliance) : 'SyncCompliance must be a string',
      Properties+::: {
        SyncCompliance: SyncCompliance,
      },
    },
    withOutputLocation(OutputLocation): {
      assert std.isObject(OutputLocation) : 'OutputLocation must be a object',
      Properties+::: {
        OutputLocation: OutputLocation,
      },
    },
    withScheduleOffset(ScheduleOffset): {
      assert std.isNumber(ScheduleOffset) : 'ScheduleOffset must be a number',
      Properties+::: {
        ScheduleOffset: ScheduleOffset,
      },
    },
    withApplyOnlyAtCronInterval(ApplyOnlyAtCronInterval): {
      assert std.isBoolean(ApplyOnlyAtCronInterval) : 'ApplyOnlyAtCronInterval must be a boolean',
      Properties+::: {
        ApplyOnlyAtCronInterval: ApplyOnlyAtCronInterval,
      },
    },
    withDocumentVersion(DocumentVersion): {
      assert std.isString(DocumentVersion) : 'DocumentVersion must be a string',
      Properties+::: {
        DocumentVersion: DocumentVersion,
      },
    },
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: {
        AssociationId: AssociationId,
      },
    },
    withAutomationTargetParameterName(AutomationTargetParameterName): {
      assert std.isString(AutomationTargetParameterName) : 'AutomationTargetParameterName must be a string',
      Properties+::: {
        AutomationTargetParameterName: AutomationTargetParameterName,
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
