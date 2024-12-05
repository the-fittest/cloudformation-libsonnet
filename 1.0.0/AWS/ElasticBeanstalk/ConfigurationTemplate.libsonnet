{
  new(
    ApplicationName,
  ): {
    local base = self,
    Properties: {
      ApplicationName:
        if !std.isString(ApplicationName) then (error 'ApplicationName must be a string')
        else if std.isEmpty(ApplicationName) then (error 'ApplicationName must be not empty')
        else ApplicationName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticBeanstalk::ConfigurationTemplate',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setEnvironmentId(EnvironmentId): {
    Properties+::: {
      EnvironmentId:
        if !std.isString(EnvironmentId) then (error 'EnvironmentId must be a string')
        else if std.isEmpty(EnvironmentId) then (error 'EnvironmentId must be not empty')
        else EnvironmentId,
    },
  },
  setOptionSettings(OptionSettings): {
    Properties+::: {
      OptionSettings:
        if !std.isArray(OptionSettings) then (error 'OptionSettings must be an array')
        else OptionSettings,
    },
  },
  setOptionSettingsMixin(OptionSettings): {
    Properties+::: {
      OptionSettings+: OptionSettings,
    },
  },
  setPlatformArn(PlatformArn): {
    Properties+::: {
      PlatformArn:
        if !std.isString(PlatformArn) then (error 'PlatformArn must be a string')
        else if std.isEmpty(PlatformArn) then (error 'PlatformArn must be not empty')
        else PlatformArn,
    },
  },
  setSolutionStackName(SolutionStackName): {
    Properties+::: {
      SolutionStackName:
        if !std.isString(SolutionStackName) then (error 'SolutionStackName must be a string')
        else if std.isEmpty(SolutionStackName) then (error 'SolutionStackName must be not empty')
        else SolutionStackName,
    },
  },
  setSourceConfiguration(SourceConfiguration): {
    Properties+::: {
      SourceConfiguration:
        if !std.isObject(SourceConfiguration) then (error 'SourceConfiguration must be an object')
        else if !std.objectHas(SourceConfiguration, 'TemplateName') then (error ' have attribute TemplateName')
        else if !std.objectHas(SourceConfiguration, 'ApplicationName') then (error ' have attribute ApplicationName')
        else SourceConfiguration,
    },
  },
  setTemplateName(TemplateName): {
    Properties+::: {
      TemplateName:
        if !std.isString(TemplateName) then (error 'TemplateName must be a string')
        else if std.isEmpty(TemplateName) then (error 'TemplateName must be not empty')
        else TemplateName,
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
