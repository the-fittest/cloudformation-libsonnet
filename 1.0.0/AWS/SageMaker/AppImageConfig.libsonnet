{
  new(
    AppImageConfigName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AppImageConfigName) : 'AppImageConfigName must be a string',
      AppImageConfigName: AppImageConfigName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::AppImageConfig',
  },
  withAppImageConfigArn(AppImageConfigArn): {
    assert std.isString(AppImageConfigArn) : 'AppImageConfigArn must be a string',
    Properties+::: {
      AppImageConfigArn: AppImageConfigArn,
    },
  },
  withKernelGatewayImageConfig(KernelGatewayImageConfig): {
    assert std.isObject(KernelGatewayImageConfig) : 'KernelGatewayImageConfig must be a object',
    Properties+::: {
      KernelGatewayImageConfig: KernelGatewayImageConfig,
    },
  },
  withJupyterLabAppImageConfig(JupyterLabAppImageConfig): {
    assert std.isObject(JupyterLabAppImageConfig) : 'JupyterLabAppImageConfig must be a object',
    Properties+::: {
      JupyterLabAppImageConfig: JupyterLabAppImageConfig,
    },
  },
  withCodeEditorAppImageConfig(CodeEditorAppImageConfig): {
    assert std.isObject(CodeEditorAppImageConfig) : 'CodeEditorAppImageConfig must be a object',
    Properties+::: {
      CodeEditorAppImageConfig: CodeEditorAppImageConfig,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
