{
  new(
    LambdaFunction,
    FailureMode,
    Alias,
    ExecutionRole,
    TargetOperations,
    HookStatus,
  ): {
    local base = self,
    Properties: {
      LambdaFunction:
        if !std.isString(LambdaFunction) then (error 'LambdaFunction must be a string')
        else if std.isEmpty(LambdaFunction) then (error 'LambdaFunction must be not empty')
        else if std.length(LambdaFunction) < 1 then error ('LambdaFunction should have at least 1 characters')
        else if std.length(LambdaFunction) > 170 then error ('LambdaFunction should have not more than 170 characters')
        else LambdaFunction,
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
      TargetOperations:
        if !std.isArray(TargetOperations) then (error 'TargetOperations must be an array')
        else TargetOperations,
      HookStatus:
        if !std.isString(HookStatus) then (error 'HookStatus must be a string')
        else if std.isEmpty(HookStatus) then (error 'HookStatus must be not empty')
        else if HookStatus != 'ENABLED' && HookStatus != 'DISABLED' then (error "HookStatus should be 'ENABLED' or 'DISABLED'")
        else HookStatus,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::LambdaHook',
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
