{
  new(
    TargetType,
    ConfigRuleName,
    TargetId,
  ): {
    local base = self,
    Properties: {
      TargetType:
        if !std.isString(TargetType) then (error 'TargetType must be a string')
        else if std.isEmpty(TargetType) then (error 'TargetType must be not empty')
        else TargetType,
      ConfigRuleName:
        if !std.isString(ConfigRuleName) then (error 'ConfigRuleName must be a string')
        else if std.isEmpty(ConfigRuleName) then (error 'ConfigRuleName must be not empty')
        else ConfigRuleName,
      TargetId:
        if !std.isString(TargetId) then (error 'TargetId must be a string')
        else if std.isEmpty(TargetId) then (error 'TargetId must be not empty')
        else TargetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::RemediationConfiguration',
  },
  setTargetVersion(TargetVersion): {
    Properties+::: {
      TargetVersion:
        if !std.isString(TargetVersion) then (error 'TargetVersion must be a string')
        else if std.isEmpty(TargetVersion) then (error 'TargetVersion must be not empty')
        else TargetVersion,
    },
  },
  setExecutionControls(ExecutionControls): {
    Properties+::: {
      ExecutionControls:
        if !std.isObject(ExecutionControls) then (error 'ExecutionControls must be an object')
        else ExecutionControls,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isObject(Parameters) then (error 'Parameters must be an object')
        else Parameters,
    },
  },
  setResourceType(ResourceType): {
    Properties+::: {
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else ResourceType,
    },
  },
  setRetryAttemptSeconds(RetryAttemptSeconds): {
    Properties+::: {
      RetryAttemptSeconds:
        if !std.isNumber(RetryAttemptSeconds) then (error 'RetryAttemptSeconds must be an number')
        else RetryAttemptSeconds,
    },
  },
  setMaximumAutomaticAttempts(MaximumAutomaticAttempts): {
    Properties+::: {
      MaximumAutomaticAttempts:
        if !std.isNumber(MaximumAutomaticAttempts) then (error 'MaximumAutomaticAttempts must be an number')
        else MaximumAutomaticAttempts,
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
  setAutomatic(Automatic): {
    Properties+::: {
      Automatic:
        if !std.isBoolean(Automatic) then (error 'Automatic must be a boolean') else Automatic,
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
