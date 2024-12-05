{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSM::Association',
  },
  setAssociationName(AssociationName): {
    Properties+::: {
      AssociationName:
        if !std.isString(AssociationName) then (error 'AssociationName must be a string')
        else if std.isEmpty(AssociationName) then (error 'AssociationName must be not empty')
        else AssociationName,
    },
  },
  setCalendarNames(CalendarNames): {
    Properties+::: {
      CalendarNames:
        if !std.isArray(CalendarNames) then (error 'CalendarNames must be an array')
        else CalendarNames,
    },
  },
  setCalendarNamesMixin(CalendarNames): {
    Properties+::: {
      CalendarNames+: CalendarNames,
    },
  },
  setScheduleExpression(ScheduleExpression): {
    Properties+::: {
      ScheduleExpression:
        if !std.isString(ScheduleExpression) then (error 'ScheduleExpression must be a string')
        else if std.isEmpty(ScheduleExpression) then (error 'ScheduleExpression must be not empty')
        else if std.length(ScheduleExpression) < 1 then error ('ScheduleExpression should have at least 1 characters')
        else if std.length(ScheduleExpression) > 256 then error ('ScheduleExpression should have not more than 256 characters')
        else ScheduleExpression,
    },
  },
  setMaxErrors(MaxErrors): {
    Properties+::: {
      MaxErrors:
        if !std.isString(MaxErrors) then (error 'MaxErrors must be a string')
        else if std.isEmpty(MaxErrors) then (error 'MaxErrors must be not empty')
        else MaxErrors,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isObject(Parameters) then (error 'Parameters must be an object')
        else Parameters,
    },
  },
  setInstanceId(InstanceId): {
    Properties+::: {
      InstanceId:
        if !std.isString(InstanceId) then (error 'InstanceId must be a string')
        else if std.isEmpty(InstanceId) then (error 'InstanceId must be not empty')
        else InstanceId,
    },
  },
  setWaitForSuccessTimeoutSeconds(WaitForSuccessTimeoutSeconds): {
    Properties+::: {
      WaitForSuccessTimeoutSeconds:
        if !std.isNumber(WaitForSuccessTimeoutSeconds) then (error 'WaitForSuccessTimeoutSeconds must be an number')
        else if WaitForSuccessTimeoutSeconds < 15 then error ('WaitForSuccessTimeoutSeconds should be at least 15')
        else if WaitForSuccessTimeoutSeconds > 172800 then error ('WaitForSuccessTimeoutSeconds should be not more than 172800')
        else WaitForSuccessTimeoutSeconds,
    },
  },
  setMaxConcurrency(MaxConcurrency): {
    Properties+::: {
      MaxConcurrency:
        if !std.isString(MaxConcurrency) then (error 'MaxConcurrency must be a string')
        else if std.isEmpty(MaxConcurrency) then (error 'MaxConcurrency must be not empty')
        else MaxConcurrency,
    },
  },
  setComplianceSeverity(ComplianceSeverity): {
    Properties+::: {
      ComplianceSeverity:
        if !std.isString(ComplianceSeverity) then (error 'ComplianceSeverity must be a string')
        else if std.isEmpty(ComplianceSeverity) then (error 'ComplianceSeverity must be not empty')
        else if ComplianceSeverity != 'CRITICAL' && ComplianceSeverity != 'HIGH' && ComplianceSeverity != 'MEDIUM' && ComplianceSeverity != 'LOW' && ComplianceSeverity != 'UNSPECIFIED' then (error "ComplianceSeverity should be 'CRITICAL' or 'HIGH' or 'MEDIUM' or 'LOW' or 'UNSPECIFIED'")
        else ComplianceSeverity,
    },
  },
  setTargets(Targets): {
    Properties+::: {
      Targets:
        if !std.isArray(Targets) then (error 'Targets must be an array')
        else if std.length(Targets) > 5 then error ('Targets cannot have more than 5 items')
        else Targets,
    },
  },
  setTargetsMixin(Targets): {
    Properties+::: {
      Targets+: Targets,
    },
  },
  setSyncCompliance(SyncCompliance): {
    Properties+::: {
      SyncCompliance:
        if !std.isString(SyncCompliance) then (error 'SyncCompliance must be a string')
        else if std.isEmpty(SyncCompliance) then (error 'SyncCompliance must be not empty')
        else if SyncCompliance != 'AUTO' && SyncCompliance != 'MANUAL' then (error "SyncCompliance should be 'AUTO' or 'MANUAL'")
        else SyncCompliance,
    },
  },
  setOutputLocation(OutputLocation): {
    Properties+::: {
      OutputLocation:
        if !std.isObject(OutputLocation) then (error 'OutputLocation must be an object')
        else OutputLocation,
    },
  },
  setScheduleOffset(ScheduleOffset): {
    Properties+::: {
      ScheduleOffset:
        if !std.isNumber(ScheduleOffset) then (error 'ScheduleOffset must be an number')
        else if ScheduleOffset < 1 then error ('ScheduleOffset should be at least 1')
        else if ScheduleOffset > 6 then error ('ScheduleOffset should be not more than 6')
        else ScheduleOffset,
    },
  },
  setApplyOnlyAtCronInterval(ApplyOnlyAtCronInterval): {
    Properties+::: {
      ApplyOnlyAtCronInterval:
        if !std.isBoolean(ApplyOnlyAtCronInterval) then (error 'ApplyOnlyAtCronInterval must be a boolean') else ApplyOnlyAtCronInterval,
    },
  },
  setDocumentVersion(DocumentVersion): {
    Properties+::: {
      DocumentVersion:
        if !std.isString(DocumentVersion) then (error 'DocumentVersion must be a string')
        else if std.isEmpty(DocumentVersion) then (error 'DocumentVersion must be not empty')
        else DocumentVersion,
    },
  },
  setAssociationId(AssociationId): {
    Properties+::: {
      AssociationId:
        if !std.isString(AssociationId) then (error 'AssociationId must be a string')
        else if std.isEmpty(AssociationId) then (error 'AssociationId must be not empty')
        else AssociationId,
    },
  },
  setAutomationTargetParameterName(AutomationTargetParameterName): {
    Properties+::: {
      AutomationTargetParameterName:
        if !std.isString(AutomationTargetParameterName) then (error 'AutomationTargetParameterName must be a string')
        else if std.isEmpty(AutomationTargetParameterName) then (error 'AutomationTargetParameterName must be not empty')
        else if std.length(AutomationTargetParameterName) < 1 then error ('AutomationTargetParameterName should have at least 1 characters')
        else if std.length(AutomationTargetParameterName) > 50 then error ('AutomationTargetParameterName should have not more than 50 characters')
        else AutomationTargetParameterName,
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
