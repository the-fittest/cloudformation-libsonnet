{
  new(
    StudioLifecycleConfigAppType,
    StudioLifecycleConfigContent,
    StudioLifecycleConfigName,
  ): {
    local base = self,
    Properties: {
      StudioLifecycleConfigAppType:
        if !std.isString(StudioLifecycleConfigAppType) then (error 'StudioLifecycleConfigAppType must be a string')
        else if std.isEmpty(StudioLifecycleConfigAppType) then (error 'StudioLifecycleConfigAppType must be not empty')
        else if StudioLifecycleConfigAppType != 'JupyterServer' && StudioLifecycleConfigAppType != 'KernelGateway' && StudioLifecycleConfigAppType != 'CodeEditor' && StudioLifecycleConfigAppType != 'JupyterLab' then (error "StudioLifecycleConfigAppType should be 'JupyterServer' or 'KernelGateway' or 'CodeEditor' or 'JupyterLab'")
        else StudioLifecycleConfigAppType,
      StudioLifecycleConfigContent:
        if !std.isString(StudioLifecycleConfigContent) then (error 'StudioLifecycleConfigContent must be a string')
        else if std.isEmpty(StudioLifecycleConfigContent) then (error 'StudioLifecycleConfigContent must be not empty')
        else if std.length(StudioLifecycleConfigContent) < 1 then error ('StudioLifecycleConfigContent should have at least 1 characters')
        else if std.length(StudioLifecycleConfigContent) > 16384 then error ('StudioLifecycleConfigContent should have not more than 16384 characters')
        else StudioLifecycleConfigContent,
      StudioLifecycleConfigName:
        if !std.isString(StudioLifecycleConfigName) then (error 'StudioLifecycleConfigName must be a string')
        else if std.isEmpty(StudioLifecycleConfigName) then (error 'StudioLifecycleConfigName must be not empty')
        else if std.length(StudioLifecycleConfigName) < 1 then error ('StudioLifecycleConfigName should have at least 1 characters')
        else if std.length(StudioLifecycleConfigName) > 63 then error ('StudioLifecycleConfigName should have not more than 63 characters')
        else StudioLifecycleConfigName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::StudioLifecycleConfig',
  },
  setStudioLifecycleConfigArn(StudioLifecycleConfigArn): {
    Properties+::: {
      StudioLifecycleConfigArn:
        if !std.isString(StudioLifecycleConfigArn) then (error 'StudioLifecycleConfigArn must be a string')
        else if std.isEmpty(StudioLifecycleConfigArn) then (error 'StudioLifecycleConfigArn must be not empty')
        else if std.length(StudioLifecycleConfigArn) < 1 then error ('StudioLifecycleConfigArn should have at least 1 characters')
        else if std.length(StudioLifecycleConfigArn) > 256 then error ('StudioLifecycleConfigArn should have not more than 256 characters')
        else StudioLifecycleConfigArn,
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
