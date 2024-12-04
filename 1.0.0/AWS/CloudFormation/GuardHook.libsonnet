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
      assert std.isObject(RuleLocation) : 'RuleLocation must be an object',
      RuleLocation: RuleLocation,
      assert std.isString(HookStatus) : 'HookStatus must be a string',
      assert HookStatus == 'ENABLED' || HookStatus == 'DISABLED' : "HookStatus should be 'ENABLED' or 'DISABLED'",
      HookStatus: HookStatus,
      TargetOperations: (if std.isArray(TargetOperations) then TargetOperations else [TargetOperations]),
      assert std.isString(FailureMode) : 'FailureMode must be a string',
      assert FailureMode == 'FAIL' || FailureMode == 'WARN' : "FailureMode should be 'FAIL' or 'WARN'",
      FailureMode: FailureMode,
      assert std.isString(Alias) : 'Alias must be a string',
      Alias: Alias,
      assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
      ExecutionRole: ExecutionRole,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::GuardHook',
  },
  withLogBucket(LogBucket): {
    assert std.isString(LogBucket) : 'LogBucket must be a string',
    Properties+::: {
      LogBucket: LogBucket,
    },
  },
  withTargetFilters(TargetFilters): {
    assert std.isObject(TargetFilters) : 'TargetFilters must be a object',
    Properties+::: {
      TargetFilters: TargetFilters,
    },
  },
  withStackFilters(StackFilters): {
    assert std.isObject(StackFilters) : 'StackFilters must be a object',
    Properties+::: {
      StackFilters: StackFilters,
    },
  },
  withHookArn(HookArn): {
    assert std.isString(HookArn) : 'HookArn must be a string',
    Properties+::: {
      HookArn: HookArn,
    },
  },
  withOptions(Options): {
    Properties+::: {
      Options: Options,
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
