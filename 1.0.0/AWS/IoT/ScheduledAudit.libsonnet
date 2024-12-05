{
  new(
    Frequency,
    TargetCheckNames,
  ): {
    local base = self,
    Properties: {
      Frequency:
        if !std.isString(Frequency) then (error 'Frequency must be a string')
        else if std.isEmpty(Frequency) then (error 'Frequency must be not empty')
        else if Frequency != 'DAILY' && Frequency != 'WEEKLY' && Frequency != 'BIWEEKLY' && Frequency != 'MONTHLY' then (error "Frequency should be 'DAILY' or 'WEEKLY' or 'BIWEEKLY' or 'MONTHLY'")
        else Frequency,
      TargetCheckNames:
        if !std.isArray(TargetCheckNames) then (error 'TargetCheckNames must be an array')
        else TargetCheckNames,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::ScheduledAudit',
  },
  setScheduledAuditName(ScheduledAuditName): {
    Properties+::: {
      ScheduledAuditName:
        if !std.isString(ScheduledAuditName) then (error 'ScheduledAuditName must be a string')
        else if std.isEmpty(ScheduledAuditName) then (error 'ScheduledAuditName must be not empty')
        else if std.length(ScheduledAuditName) < 1 then error ('ScheduledAuditName should have at least 1 characters')
        else if std.length(ScheduledAuditName) > 128 then error ('ScheduledAuditName should have not more than 128 characters')
        else ScheduledAuditName,
    },
  },
  setDayOfMonth(DayOfMonth): {
    Properties+::: {
      DayOfMonth:
        if !std.isString(DayOfMonth) then (error 'DayOfMonth must be a string')
        else if std.isEmpty(DayOfMonth) then (error 'DayOfMonth must be not empty')
        else DayOfMonth,
    },
  },
  setDayOfWeek(DayOfWeek): {
    Properties+::: {
      DayOfWeek:
        if !std.isString(DayOfWeek) then (error 'DayOfWeek must be a string')
        else if std.isEmpty(DayOfWeek) then (error 'DayOfWeek must be not empty')
        else if DayOfWeek != 'SUN' && DayOfWeek != 'MON' && DayOfWeek != 'TUE' && DayOfWeek != 'WED' && DayOfWeek != 'THU' && DayOfWeek != 'FRI' && DayOfWeek != 'SAT' && DayOfWeek != 'UNSET_VALUE' then (error "DayOfWeek should be 'SUN' or 'MON' or 'TUE' or 'WED' or 'THU' or 'FRI' or 'SAT' or 'UNSET_VALUE'")
        else DayOfWeek,
    },
  },
  setScheduledAuditArn(ScheduledAuditArn): {
    Properties+::: {
      ScheduledAuditArn:
        if !std.isString(ScheduledAuditArn) then (error 'ScheduledAuditArn must be a string')
        else if std.isEmpty(ScheduledAuditArn) then (error 'ScheduledAuditArn must be not empty')
        else if std.length(ScheduledAuditArn) < 20 then error ('ScheduledAuditArn should have at least 20 characters')
        else if std.length(ScheduledAuditArn) > 2048 then error ('ScheduledAuditArn should have not more than 2048 characters')
        else ScheduledAuditArn,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
