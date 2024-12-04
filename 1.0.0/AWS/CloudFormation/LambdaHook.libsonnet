{
  // AWS CloudFormation LambdaHook
  LambdaHook: {
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
        assert std.isString(LambdaFunction) : 'LambdaFunction must be a string',
        LambdaFunction: LambdaFunction,
        assert std.isString(FailureMode) : 'FailureMode must be a string',
        FailureMode: FailureMode,
        assert std.isString(Alias) : 'Alias must be a string',
        Alias: Alias,
        assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
        ExecutionRole: ExecutionRole,
        TargetOperations: (if std.isArray(TargetOperations) then TargetOperations else [TargetOperations]),
        assert std.isString(HookStatus) : 'HookStatus must be a string',
        HookStatus: HookStatus,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::CloudFormation::LambdaHook',
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
