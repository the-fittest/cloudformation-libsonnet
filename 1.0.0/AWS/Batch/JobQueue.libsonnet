{
  new(
    ComputeEnvironmentOrder,
    Priority,
  ): {
    local base = self,
    Properties: {
      ComputeEnvironmentOrder:
        if !std.isArray(ComputeEnvironmentOrder) then (error 'ComputeEnvironmentOrder must be an array')
        else ComputeEnvironmentOrder,
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else if Priority > 1000 then error ('Priority should be not more than 1000')
        else Priority,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Batch::JobQueue',
  },
  setJobQueueName(JobQueueName): {
    Properties+::: {
      JobQueueName:
        if !std.isString(JobQueueName) then (error 'JobQueueName must be a string')
        else if std.isEmpty(JobQueueName) then (error 'JobQueueName must be not empty')
        else if std.length(JobQueueName) < 1 then error ('JobQueueName should have at least 1 characters')
        else if std.length(JobQueueName) > 128 then error ('JobQueueName should have not more than 128 characters')
        else JobQueueName,
    },
  },
  setJobQueueArn(JobQueueArn): {
    Properties+::: {
      JobQueueArn:
        if !std.isString(JobQueueArn) then (error 'JobQueueArn must be a string')
        else if std.isEmpty(JobQueueArn) then (error 'JobQueueArn must be not empty')
        else JobQueueArn,
    },
  },
  setJobStateTimeLimitActions(JobStateTimeLimitActions): {
    Properties+::: {
      JobStateTimeLimitActions:
        if !std.isArray(JobStateTimeLimitActions) then (error 'JobStateTimeLimitActions must be an array')
        else JobStateTimeLimitActions,
    },
  },
  pushJobStateTimeLimitActions(JobStateTimeLimitActions): {
    Properties+::: {
      JobStateTimeLimitActions+: JobStateTimeLimitActions,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'DISABLED' && State != 'ENABLED' then (error "State should be 'DISABLED' or 'ENABLED'")
        else State,
    },
  },
  setSchedulingPolicyArn(SchedulingPolicyArn): {
    Properties+::: {
      SchedulingPolicyArn:
        if !std.isString(SchedulingPolicyArn) then (error 'SchedulingPolicyArn must be a string')
        else if std.isEmpty(SchedulingPolicyArn) then (error 'SchedulingPolicyArn must be not empty')
        else SchedulingPolicyArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
