{
  new(
    AllowUnassociatedTargets,
    Cutoff,
    Schedule,
    Duration,
    Name,
  ): {
    local base = self,
    Properties: {
      AllowUnassociatedTargets:
        if !std.isBoolean(AllowUnassociatedTargets) then (error 'AllowUnassociatedTargets must be a boolean') else AllowUnassociatedTargets,
      Cutoff:
        if !std.isNumber(Cutoff) then (error 'Cutoff must be an number')
        else Cutoff,
      Schedule:
        if !std.isString(Schedule) then (error 'Schedule must be a string')
        else if std.isEmpty(Schedule) then (error 'Schedule must be not empty')
        else Schedule,
      Duration:
        if !std.isNumber(Duration) then (error 'Duration must be an number')
        else Duration,
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
    Type: 'AWS::SSM::MaintenanceWindow',
  },
  setStartDate(StartDate): {
    Properties+::: {
      StartDate:
        if !std.isString(StartDate) then (error 'StartDate must be a string')
        else if std.isEmpty(StartDate) then (error 'StartDate must be not empty')
        else StartDate,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setScheduleOffset(ScheduleOffset): {
    Properties+::: {
      ScheduleOffset:
        if !std.isNumber(ScheduleOffset) then (error 'ScheduleOffset must be an number')
        else ScheduleOffset,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setScheduleTimezone(ScheduleTimezone): {
    Properties+::: {
      ScheduleTimezone:
        if !std.isString(ScheduleTimezone) then (error 'ScheduleTimezone must be a string')
        else if std.isEmpty(ScheduleTimezone) then (error 'ScheduleTimezone must be not empty')
        else ScheduleTimezone,
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
