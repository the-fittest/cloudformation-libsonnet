{
  // AWS FIS ExperimentTemplate
  ExperimentTemplate: {
    new(
      Description,
      StopConditions,
      Targets,
      RoleArn,
      Tags,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        StopConditions: (if std.isArray(StopConditions) then StopConditions else [StopConditions]),
        assert std.isObject(Targets) : 'Targets must be an object',
        Targets: Targets,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(Tags) : 'Tags must be an object',
        Tags: Tags,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::FIS::ExperimentTemplate',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withActions(Actions): {
      assert std.isObject(Actions) : 'Actions must be a object',
      Properties+::: {
        Actions: Actions,
      },
    },
    withLogConfiguration(LogConfiguration): {
      assert std.isObject(LogConfiguration) : 'LogConfiguration must be a object',
      Properties+::: {
        LogConfiguration: LogConfiguration,
      },
    },
    withExperimentOptions(ExperimentOptions): {
      assert std.isObject(ExperimentOptions) : 'ExperimentOptions must be a object',
      Properties+::: {
        ExperimentOptions: ExperimentOptions,
      },
    },
    withExperimentReportConfiguration(ExperimentReportConfiguration): {
      assert std.isObject(ExperimentReportConfiguration) : 'ExperimentReportConfiguration must be a object',
      Properties+::: {
        ExperimentReportConfiguration: ExperimentReportConfiguration,
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
