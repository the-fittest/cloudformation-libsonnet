{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Amplify::App',
  },
  withAccessToken(AccessToken): {
    assert std.isString(AccessToken) : 'AccessToken must be a string',
    Properties+::: {
      AccessToken: AccessToken,
    },
  },
  withAppId(AppId): {
    assert std.isString(AppId) : 'AppId must be a string',
    Properties+::: {
      AppId: AppId,
    },
  },
  withAppName(AppName): {
    assert std.isString(AppName) : 'AppName must be a string',
    Properties+::: {
      AppName: AppName,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAutoBranchCreationConfig(AutoBranchCreationConfig): {
    assert std.isObject(AutoBranchCreationConfig) : 'AutoBranchCreationConfig must be a object',
    Properties+::: {
      AutoBranchCreationConfig: AutoBranchCreationConfig,
    },
  },
  withBasicAuthConfig(BasicAuthConfig): {
    assert std.isObject(BasicAuthConfig) : 'BasicAuthConfig must be a object',
    Properties+::: {
      BasicAuthConfig: BasicAuthConfig,
    },
  },
  withBuildSpec(BuildSpec): {
    assert std.isString(BuildSpec) : 'BuildSpec must be a string',
    Properties+::: {
      BuildSpec: BuildSpec,
    },
  },
  withCacheConfig(CacheConfig): {
    assert std.isObject(CacheConfig) : 'CacheConfig must be a object',
    Properties+::: {
      CacheConfig: CacheConfig,
    },
  },
  withCustomHeaders(CustomHeaders): {
    assert std.isString(CustomHeaders) : 'CustomHeaders must be a string',
    Properties+::: {
      CustomHeaders: CustomHeaders,
    },
  },
  withCustomRules(CustomRules): {
    Properties+::: {
      CustomRules: (if std.isArray(CustomRules) then CustomRules else [CustomRules]),
    },
  },
  withCustomRulesMixin(CustomRules): {
    Properties+::: {
      CustomRules+: (if std.isArray(CustomRules) then CustomRules else [CustomRules]),
    },
  },
  withDefaultDomain(DefaultDomain): {
    assert std.isString(DefaultDomain) : 'DefaultDomain must be a string',
    Properties+::: {
      DefaultDomain: DefaultDomain,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withEnableBranchAutoDeletion(EnableBranchAutoDeletion): {
    assert std.isBoolean(EnableBranchAutoDeletion) : 'EnableBranchAutoDeletion must be a boolean',
    Properties+::: {
      EnableBranchAutoDeletion: EnableBranchAutoDeletion,
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
  withIAMServiceRole(IAMServiceRole): {
    assert std.isString(IAMServiceRole) : 'IAMServiceRole must be a string',
    Properties+::: {
      IAMServiceRole: IAMServiceRole,
    },
  },
  withOauthToken(OauthToken): {
    assert std.isString(OauthToken) : 'OauthToken must be a string',
    Properties+::: {
      OauthToken: OauthToken,
    },
  },
  withPlatform(Platform): {
    assert std.isString(Platform) : 'Platform must be a string',
    assert Platform == 'WEB' || Platform == 'WEB_DYNAMIC' || Platform == 'WEB_COMPUTE' : "Platform should be 'WEB' or 'WEB_DYNAMIC' or 'WEB_COMPUTE'",
    Properties+::: {
      Platform: Platform,
    },
  },
  withRepository(Repository): {
    assert std.isString(Repository) : 'Repository must be a string',
    Properties+::: {
      Repository: Repository,
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
