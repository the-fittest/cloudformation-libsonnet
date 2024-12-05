{
  new(
    RuleLocation,
    HookStatus,
    TargetOperations,
    FailureMode,
    Alias,
    ExecutionRole,
  ): {
    local base = self,
    Properties: {
      RuleLocation:
        if !std.isObject(RuleLocation) then (error 'RuleLocation must be an object')
        else if !std.objectHas(RuleLocation, 'Uri') then (error ' have attribute Uri')
        else RuleLocation,
      HookStatus:
        if !std.isString(HookStatus) then (error 'HookStatus must be a string')
        else if std.isEmpty(HookStatus) then (error 'HookStatus must be not empty')
        else if HookStatus != 'ENABLED' && HookStatus != 'DISABLED' then (error "HookStatus should be 'ENABLED' or 'DISABLED'")
        else HookStatus,
      TargetOperations:
        if !std.isArray(TargetOperations) then (error 'TargetOperations must be an array')
        else TargetOperations,
      FailureMode:
        if !std.isString(FailureMode) then (error 'FailureMode must be a string')
        else if std.isEmpty(FailureMode) then (error 'FailureMode must be not empty')
        else if FailureMode != 'FAIL' && FailureMode != 'WARN' then (error "FailureMode should be 'FAIL' or 'WARN'")
        else FailureMode,
      Alias:
        if !std.isString(Alias) then (error 'Alias must be a string')
        else if std.isEmpty(Alias) then (error 'Alias must be not empty')
        else Alias,
      ExecutionRole:
        if !std.isString(ExecutionRole) then (error 'ExecutionRole must be a string')
        else if std.isEmpty(ExecutionRole) then (error 'ExecutionRole must be not empty')
        else if std.length(ExecutionRole) > 256 then error ('ExecutionRole should have not more than 256 characters')
        else ExecutionRole,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::GuardHook',
  },
  setLogBucket(LogBucket): {
    Properties+::: {
      LogBucket:
        if !std.isString(LogBucket) then (error 'LogBucket must be a string')
        else if std.isEmpty(LogBucket) then (error 'LogBucket must be not empty')
        else LogBucket,
    },
  },
  setTargetFilters(TargetFilters): {
    Properties+::: {
      TargetFilters:
        if !std.isObject(TargetFilters) then (error 'TargetFilters must be an object')
        else TargetFilters,
    },
  },
  setStackFilters(StackFilters): {
    Properties+::: {
      StackFilters:
        if !std.isObject(StackFilters) then (error 'StackFilters must be an object')
        else if !std.objectHas(StackFilters, 'FilteringCriteria') then (error ' have attribute FilteringCriteria')
        else StackFilters,
    },
  },
  setHookArn(HookArn): {
    Properties+::: {
      HookArn:
        if !std.isString(HookArn) then (error 'HookArn must be a string')
        else if std.isEmpty(HookArn) then (error 'HookArn must be not empty')
        else HookArn,
    },
  },
  setOptions(Options): {
    Properties+::: {
      Options: Options,
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
