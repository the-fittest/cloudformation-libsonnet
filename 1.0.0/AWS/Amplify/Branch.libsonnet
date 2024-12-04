{
  new(
    AppId,
    BranchName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AppId) : 'AppId must be a string',
      AppId: AppId,
      assert std.isString(BranchName) : 'BranchName must be a string',
      BranchName: BranchName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Amplify::Branch',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withBasicAuthConfig(BasicAuthConfig): {
    assert std.isObject(BasicAuthConfig) : 'BasicAuthConfig must be a object',
    Properties+::: {
      BasicAuthConfig: BasicAuthConfig,
    },
  },
  withBackend(Backend): {
    assert std.isObject(Backend) : 'Backend must be a object',
    Properties+::: {
      Backend: Backend,
    },
  },
  withBuildSpec(BuildSpec): {
    assert std.isString(BuildSpec) : 'BuildSpec must be a string',
    Properties+::: {
      BuildSpec: BuildSpec,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withEnableAutoBuild(EnableAutoBuild): {
    assert std.isBoolean(EnableAutoBuild) : 'EnableAutoBuild must be a boolean',
    Properties+::: {
      EnableAutoBuild: EnableAutoBuild,
    },
  },
  withEnablePerformanceMode(EnablePerformanceMode): {
    assert std.isBoolean(EnablePerformanceMode) : 'EnablePerformanceMode must be a boolean',
    Properties+::: {
      EnablePerformanceMode: EnablePerformanceMode,
    },
  },
  withEnablePullRequestPreview(EnablePullRequestPreview): {
    assert std.isBoolean(EnablePullRequestPreview) : 'EnablePullRequestPreview must be a boolean',
    Properties+::: {
      EnablePullRequestPreview: EnablePullRequestPreview,
    },
  },
  withEnvironmentVariables(EnvironmentVariables): {
    Properties+::: {
      EnvironmentVariables: (if std.isArray(EnvironmentVariables) then EnvironmentVariables else [EnvironmentVariables]),
    },
  },
  withEnvironmentVariablesMixin(EnvironmentVariables): {
    Properties+::: {
      EnvironmentVariables+: (if std.isArray(EnvironmentVariables) then EnvironmentVariables else [EnvironmentVariables]),
    },
  },
  withFramework(Framework): {
    assert std.isString(Framework) : 'Framework must be a string',
    Properties+::: {
      Framework: Framework,
    },
  },
  withPullRequestEnvironmentName(PullRequestEnvironmentName): {
    assert std.isString(PullRequestEnvironmentName) : 'PullRequestEnvironmentName must be a string',
    Properties+::: {
      PullRequestEnvironmentName: PullRequestEnvironmentName,
    },
  },
  withStage(Stage): {
    assert std.isString(Stage) : 'Stage must be a string',
    Properties+::: {
      Stage: Stage,
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
