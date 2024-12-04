{
  new(
    ApplicationName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ApplicationName) : 'ApplicationName must be a string',
      ApplicationName: ApplicationName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticBeanstalk::ConfigurationTemplate',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withEnvironmentId(EnvironmentId): {
    assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
    Properties+::: {
      EnvironmentId: EnvironmentId,
    },
  },
  withOptionSettings(OptionSettings): {
    Properties+::: {
      OptionSettings: (if std.isArray(OptionSettings) then OptionSettings else [OptionSettings]),
    },
  },
  withOptionSettingsMixin(OptionSettings): {
    Properties+::: {
      OptionSettings+: (if std.isArray(OptionSettings) then OptionSettings else [OptionSettings]),
    },
  },
  withPlatformArn(PlatformArn): {
    assert std.isString(PlatformArn) : 'PlatformArn must be a string',
    Properties+::: {
      PlatformArn: PlatformArn,
    },
  },
  withSolutionStackName(SolutionStackName): {
    assert std.isString(SolutionStackName) : 'SolutionStackName must be a string',
    Properties+::: {
      SolutionStackName: SolutionStackName,
    },
  },
  withSourceConfiguration(SourceConfiguration): {
    assert std.isObject(SourceConfiguration) : 'SourceConfiguration must be a object',
    Properties+::: {
      SourceConfiguration: SourceConfiguration,
    },
  },
  withTemplateName(TemplateName): {
    assert std.isString(TemplateName) : 'TemplateName must be a string',
    Properties+::: {
      TemplateName: TemplateName,
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
