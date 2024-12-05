{
  new(
    Name,
    Project,
    Groups,
    ScheduledSplitsConfig,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
      Project:
        if !std.isString(Project) then (error 'Project must be a string')
        else if std.isEmpty(Project) then (error 'Project must be not empty')
        else if std.length(Project) > 2048 then error ('Project should have not more than 2048 characters')
        else Project,
      Groups:
        if !std.isArray(Groups) then (error 'Groups must be an array')
        else if std.length(Groups) < 1 then error ('Groups cannot have less than 1 items')
        else if std.length(Groups) > 5 then error ('Groups cannot have more than 5 items')
        else Groups,
      ScheduledSplitsConfig:
        if !std.isArray(ScheduledSplitsConfig) then (error 'ScheduledSplitsConfig must be an array')
        else if std.length(ScheduledSplitsConfig) < 1 then error ('ScheduledSplitsConfig cannot have less than 1 items')
        else if std.length(ScheduledSplitsConfig) > 6 then error ('ScheduledSplitsConfig cannot have more than 6 items')
        else ScheduledSplitsConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Evidently::Launch',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 160 then error ('Description should have not more than 160 characters')
        else Description,
    },
  },
  setRandomizationSalt(RandomizationSalt): {
    Properties+::: {
      RandomizationSalt:
        if !std.isString(RandomizationSalt) then (error 'RandomizationSalt must be a string')
        else if std.isEmpty(RandomizationSalt) then (error 'RandomizationSalt must be not empty')
        else if std.length(RandomizationSalt) > 127 then error ('RandomizationSalt should have not more than 127 characters')
        else RandomizationSalt,
    },
  },
  setMetricMonitors(MetricMonitors): {
    Properties+::: {
      MetricMonitors:
        if !std.isArray(MetricMonitors) then (error 'MetricMonitors must be an array')
        else if std.length(MetricMonitors) > 3 then error ('MetricMonitors cannot have more than 3 items')
        else MetricMonitors,
    },
  },
  setMetricMonitorsMixin(MetricMonitors): {
    Properties+::: {
      MetricMonitors+: MetricMonitors,
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
  setExecutionStatus(ExecutionStatus): {
    Properties+::: {
      ExecutionStatus:
        if !std.isObject(ExecutionStatus) then (error 'ExecutionStatus must be an object')
        else if !std.objectHas(ExecutionStatus, 'Status') then (error ' have attribute Status')
        else ExecutionStatus,
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
