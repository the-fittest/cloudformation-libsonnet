{
  // AWS KinesisAnalyticsV2 Application
  Application: {
    new(
      RuntimeEnvironment,
      ServiceExecutionRole,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RuntimeEnvironment) : 'RuntimeEnvironment must be a string',
        RuntimeEnvironment: RuntimeEnvironment,
        assert std.isString(ServiceExecutionRole) : 'ServiceExecutionRole must be a string',
        ServiceExecutionRole: ServiceExecutionRole,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::KinesisAnalyticsV2::Application',
    },
    withApplicationConfiguration(ApplicationConfiguration): {
      assert std.isObject(ApplicationConfiguration) : 'ApplicationConfiguration must be a object',
      Properties+::: {
        ApplicationConfiguration: ApplicationConfiguration,
      },
    },
    withApplicationDescription(ApplicationDescription): {
      assert std.isString(ApplicationDescription) : 'ApplicationDescription must be a string',
      Properties+::: {
        ApplicationDescription: ApplicationDescription,
      },
    },
    withApplicationMode(ApplicationMode): {
      assert std.isString(ApplicationMode) : 'ApplicationMode must be a string',
      Properties+::: {
        ApplicationMode: ApplicationMode,
      },
    },
    withApplicationName(ApplicationName): {
      assert std.isString(ApplicationName) : 'ApplicationName must be a string',
      Properties+::: {
        ApplicationName: ApplicationName,
      },
    },
    withRunConfiguration(RunConfiguration): {
      assert std.isObject(RunConfiguration) : 'RunConfiguration must be a object',
      Properties+::: {
        RunConfiguration: RunConfiguration,
      },
    },
    withApplicationMaintenanceConfiguration(ApplicationMaintenanceConfiguration): {
      assert std.isObject(ApplicationMaintenanceConfiguration) : 'ApplicationMaintenanceConfiguration must be a object',
      Properties+::: {
        ApplicationMaintenanceConfiguration: ApplicationMaintenanceConfiguration,
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
