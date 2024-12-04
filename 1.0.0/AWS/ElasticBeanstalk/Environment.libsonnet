{
  // AWS ElasticBeanstalk Environment
  Environment: {
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
      Type: 'AWS::ElasticBeanstalk::Environment',
    },
    withPlatformArn(PlatformArn): {
      assert std.isString(PlatformArn) : 'PlatformArn must be a string',
      Properties+::: {
        PlatformArn: PlatformArn,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withEnvironmentName(EnvironmentName): {
      assert std.isString(EnvironmentName) : 'EnvironmentName must be a string',
      Properties+::: {
        EnvironmentName: EnvironmentName,
      },
    },
    withOperationsRole(OperationsRole): {
      assert std.isString(OperationsRole) : 'OperationsRole must be a string',
      Properties+::: {
        OperationsRole: OperationsRole,
      },
    },
    withTier(Tier): {
      assert std.isObject(Tier) : 'Tier must be a object',
      Properties+::: {
        Tier: Tier,
      },
    },
    withVersionLabel(VersionLabel): {
      assert std.isString(VersionLabel) : 'VersionLabel must be a string',
      Properties+::: {
        VersionLabel: VersionLabel,
      },
    },
    withEndpointURL(EndpointURL): {
      assert std.isString(EndpointURL) : 'EndpointURL must be a string',
      Properties+::: {
        EndpointURL: EndpointURL,
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
    withTemplateName(TemplateName): {
      assert std.isString(TemplateName) : 'TemplateName must be a string',
      Properties+::: {
        TemplateName: TemplateName,
      },
    },
    withSolutionStackName(SolutionStackName): {
      assert std.isString(SolutionStackName) : 'SolutionStackName must be a string',
      Properties+::: {
        SolutionStackName: SolutionStackName,
      },
    },
    withCNAMEPrefix(CNAMEPrefix): {
      assert std.isString(CNAMEPrefix) : 'CNAMEPrefix must be a string',
      Properties+::: {
        CNAMEPrefix: CNAMEPrefix,
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
  },
}
