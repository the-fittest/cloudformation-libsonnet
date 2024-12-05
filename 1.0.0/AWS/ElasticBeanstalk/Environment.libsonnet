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
    Type: 'AWS::ElasticBeanstalk::Environment',
  },
  setPlatformArn(PlatformArn): {
    Properties+::: {
      PlatformArn:
        if !std.isString(PlatformArn) then (error 'PlatformArn must be a string')
        else if std.isEmpty(PlatformArn) then (error 'PlatformArn must be not empty')
        else PlatformArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setEnvironmentName(EnvironmentName): {
    Properties+::: {
      EnvironmentName:
        if !std.isString(EnvironmentName) then (error 'EnvironmentName must be a string')
        else if std.isEmpty(EnvironmentName) then (error 'EnvironmentName must be not empty')
        else EnvironmentName,
    },
  },
  setOperationsRole(OperationsRole): {
    Properties+::: {
      OperationsRole:
        if !std.isString(OperationsRole) then (error 'OperationsRole must be a string')
        else if std.isEmpty(OperationsRole) then (error 'OperationsRole must be not empty')
        else OperationsRole,
    },
  },
  setTier(Tier): {
    Properties+::: {
      Tier:
        if !std.isObject(Tier) then (error 'Tier must be an object')
        else Tier,
    },
  },
  setVersionLabel(VersionLabel): {
    Properties+::: {
      VersionLabel:
        if !std.isString(VersionLabel) then (error 'VersionLabel must be a string')
        else if std.isEmpty(VersionLabel) then (error 'VersionLabel must be not empty')
        else VersionLabel,
    },
  },
  setEndpointURL(EndpointURL): {
    Properties+::: {
      EndpointURL:
        if !std.isString(EndpointURL) then (error 'EndpointURL must be a string')
        else if std.isEmpty(EndpointURL) then (error 'EndpointURL must be not empty')
        else EndpointURL,
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
  setTemplateName(TemplateName): {
    Properties+::: {
      TemplateName:
        if !std.isString(TemplateName) then (error 'TemplateName must be a string')
        else if std.isEmpty(TemplateName) then (error 'TemplateName must be not empty')
        else TemplateName,
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
  setCNAMEPrefix(CNAMEPrefix): {
    Properties+::: {
      CNAMEPrefix:
        if !std.isString(CNAMEPrefix) then (error 'CNAMEPrefix must be a string')
        else if std.isEmpty(CNAMEPrefix) then (error 'CNAMEPrefix must be not empty')
        else CNAMEPrefix,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
