{
  new(
    TargetFunctionArn,
    AuthType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TargetFunctionArn) : 'TargetFunctionArn must be a string',
      TargetFunctionArn: TargetFunctionArn,
      assert std.isString(AuthType) : 'AuthType must be a string',
      AuthType: AuthType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::Url',
  },
  withQualifier(Qualifier): {
    assert std.isString(Qualifier) : 'Qualifier must be a string',
    Properties+::: {
      Qualifier: Qualifier,
    },
  },
  withInvokeMode(InvokeMode): {
    assert std.isString(InvokeMode) : 'InvokeMode must be a string',
    Properties+::: {
      InvokeMode: InvokeMode,
    },
  },
  withFunctionArn(FunctionArn): {
    assert std.isString(FunctionArn) : 'FunctionArn must be a string',
    Properties+::: {
      FunctionArn: FunctionArn,
    },
  },
  withFunctionUrl(FunctionUrl): {
    assert std.isString(FunctionUrl) : 'FunctionUrl must be a string',
    Properties+::: {
      FunctionUrl: FunctionUrl,
    },
  },
  withCors(Cors): {
    assert std.isObject(Cors) : 'Cors must be a object',
    Properties+::: {
      Cors: Cors,
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
