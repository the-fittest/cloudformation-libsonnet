{
  // AWS Lambda Version
  Version: {
    new(
      FunctionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FunctionName) : 'FunctionName must be a string',
        FunctionName: FunctionName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Lambda::Version',
    },
    withFunctionArn(FunctionArn): {
      assert std.isString(FunctionArn) : 'FunctionArn must be a string',
      Properties+::: {
        FunctionArn: FunctionArn,
      },
    },
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: {
        Version: Version,
      },
    },
    withCodeSha256(CodeSha256): {
      assert std.isString(CodeSha256) : 'CodeSha256 must be a string',
      Properties+::: {
        CodeSha256: CodeSha256,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withProvisionedConcurrencyConfig(ProvisionedConcurrencyConfig): {
      assert std.isObject(ProvisionedConcurrencyConfig) : 'ProvisionedConcurrencyConfig must be a object',
      Properties+::: {
        ProvisionedConcurrencyConfig: ProvisionedConcurrencyConfig,
      },
    },
    withRuntimePolicy(RuntimePolicy): {
      assert std.isObject(RuntimePolicy) : 'RuntimePolicy must be a object',
      Properties+::: {
        RuntimePolicy: RuntimePolicy,
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
