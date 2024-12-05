{
  new(
    AppImageConfigName,
  ): {
    local base = self,
    Properties: {
      AppImageConfigName:
        if !std.isString(AppImageConfigName) then (error 'AppImageConfigName must be a string')
        else if std.isEmpty(AppImageConfigName) then (error 'AppImageConfigName must be not empty')
        else if std.length(AppImageConfigName) < 1 then error ('AppImageConfigName should have at least 1 characters')
        else if std.length(AppImageConfigName) > 63 then error ('AppImageConfigName should have not more than 63 characters')
        else AppImageConfigName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::AppImageConfig',
  },
  setAppImageConfigArn(AppImageConfigArn): {
    Properties+::: {
      AppImageConfigArn:
        if !std.isString(AppImageConfigArn) then (error 'AppImageConfigArn must be a string')
        else if std.isEmpty(AppImageConfigArn) then (error 'AppImageConfigArn must be not empty')
        else if std.length(AppImageConfigArn) < 1 then error ('AppImageConfigArn should have at least 1 characters')
        else if std.length(AppImageConfigArn) > 256 then error ('AppImageConfigArn should have not more than 256 characters')
        else AppImageConfigArn,
    },
  },
  setKernelGatewayImageConfig(KernelGatewayImageConfig): {
    Properties+::: {
      KernelGatewayImageConfig:
        if !std.isObject(KernelGatewayImageConfig) then (error 'KernelGatewayImageConfig must be an object')
        else if !std.objectHas(KernelGatewayImageConfig, 'KernelSpecs') then (error ' have attribute KernelSpecs')
        else KernelGatewayImageConfig,
    },
  },
  setJupyterLabAppImageConfig(JupyterLabAppImageConfig): {
    Properties+::: {
      JupyterLabAppImageConfig:
        if !std.isObject(JupyterLabAppImageConfig) then (error 'JupyterLabAppImageConfig must be an object')
        else JupyterLabAppImageConfig,
    },
  },
  setCodeEditorAppImageConfig(CodeEditorAppImageConfig): {
    Properties+::: {
      CodeEditorAppImageConfig:
        if !std.isObject(CodeEditorAppImageConfig) then (error 'CodeEditorAppImageConfig must be an object')
        else CodeEditorAppImageConfig,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
