{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Amplify::App',
  },
  setAccessToken(AccessToken): {
    Properties+::: {
      AccessToken:
        if !std.isString(AccessToken) then (error 'AccessToken must be a string')
        else if std.isEmpty(AccessToken) then (error 'AccessToken must be not empty')
        else if std.length(AccessToken) < 1 then error ('AccessToken should have at least 1 characters')
        else if std.length(AccessToken) > 255 then error ('AccessToken should have not more than 255 characters')
        else AccessToken,
    },
  },
  setAppId(AppId): {
    Properties+::: {
      AppId:
        if !std.isString(AppId) then (error 'AppId must be a string')
        else if std.isEmpty(AppId) then (error 'AppId must be not empty')
        else if std.length(AppId) < 1 then error ('AppId should have at least 1 characters')
        else if std.length(AppId) > 20 then error ('AppId should have not more than 20 characters')
        else AppId,
    },
  },
  setAppName(AppName): {
    Properties+::: {
      AppName:
        if !std.isString(AppName) then (error 'AppName must be a string')
        else if std.isEmpty(AppName) then (error 'AppName must be not empty')
        else if std.length(AppName) < 1 then error ('AppName should have at least 1 characters')
        else if std.length(AppName) > 255 then error ('AppName should have not more than 255 characters')
        else AppName,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 1000 then error ('Arn should have not more than 1000 characters')
        else Arn,
    },
  },
  setAutoBranchCreationConfig(AutoBranchCreationConfig): {
    Properties+::: {
      AutoBranchCreationConfig:
        if !std.isObject(AutoBranchCreationConfig) then (error 'AutoBranchCreationConfig must be an object')
        else AutoBranchCreationConfig,
    },
  },
  setBasicAuthConfig(BasicAuthConfig): {
    Properties+::: {
      BasicAuthConfig:
        if !std.isObject(BasicAuthConfig) then (error 'BasicAuthConfig must be an object')
        else BasicAuthConfig,
    },
  },
  setBuildSpec(BuildSpec): {
    Properties+::: {
      BuildSpec:
        if !std.isString(BuildSpec) then (error 'BuildSpec must be a string')
        else if std.isEmpty(BuildSpec) then (error 'BuildSpec must be not empty')
        else if std.length(BuildSpec) < 1 then error ('BuildSpec should have at least 1 characters')
        else if std.length(BuildSpec) > 25000 then error ('BuildSpec should have not more than 25000 characters')
        else BuildSpec,
    },
  },
  setCacheConfig(CacheConfig): {
    Properties+::: {
      CacheConfig:
        if !std.isObject(CacheConfig) then (error 'CacheConfig must be an object')
        else CacheConfig,
    },
  },
  setCustomHeaders(CustomHeaders): {
    Properties+::: {
      CustomHeaders:
        if !std.isString(CustomHeaders) then (error 'CustomHeaders must be a string')
        else if std.isEmpty(CustomHeaders) then (error 'CustomHeaders must be not empty')
        else if std.length(CustomHeaders) > 25000 then error ('CustomHeaders should have not more than 25000 characters')
        else CustomHeaders,
    },
  },
  setCustomRules(CustomRules): {
    Properties+::: {
      CustomRules:
        if !std.isArray(CustomRules) then (error 'CustomRules must be an array')
        else CustomRules,
    },
  },
  pushCustomRules(CustomRules): {
    Properties+::: {
      CustomRules+: CustomRules,
    },
  },
  setDefaultDomain(DefaultDomain): {
    Properties+::: {
      DefaultDomain:
        if !std.isString(DefaultDomain) then (error 'DefaultDomain must be a string')
        else if std.isEmpty(DefaultDomain) then (error 'DefaultDomain must be not empty')
        else if std.length(DefaultDomain) > 1000 then error ('DefaultDomain should have not more than 1000 characters')
        else DefaultDomain,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setEnableBranchAutoDeletion(EnableBranchAutoDeletion): {
    Properties+::: {
      EnableBranchAutoDeletion:
        if !std.isBoolean(EnableBranchAutoDeletion) then (error 'EnableBranchAutoDeletion must be a boolean') else EnableBranchAutoDeletion,
    },
  },
  setEnvironmentVariables(EnvironmentVariables): {
    Properties+::: {
      EnvironmentVariables:
        if !std.isArray(EnvironmentVariables) then (error 'EnvironmentVariables must be an array')
        else EnvironmentVariables,
    },
  },
  pushEnvironmentVariables(EnvironmentVariables): {
    Properties+::: {
      EnvironmentVariables+: EnvironmentVariables,
    },
  },
  setIAMServiceRole(IAMServiceRole): {
    Properties+::: {
      IAMServiceRole:
        if !std.isString(IAMServiceRole) then (error 'IAMServiceRole must be a string')
        else if std.isEmpty(IAMServiceRole) then (error 'IAMServiceRole must be not empty')
        else if std.length(IAMServiceRole) < 1 then error ('IAMServiceRole should have at least 1 characters')
        else if std.length(IAMServiceRole) > 1000 then error ('IAMServiceRole should have not more than 1000 characters')
        else IAMServiceRole,
    },
  },
  setOauthToken(OauthToken): {
    Properties+::: {
      OauthToken:
        if !std.isString(OauthToken) then (error 'OauthToken must be a string')
        else if std.isEmpty(OauthToken) then (error 'OauthToken must be not empty')
        else if std.length(OauthToken) > 1000 then error ('OauthToken should have not more than 1000 characters')
        else OauthToken,
    },
  },
  setPlatform(Platform): {
    Properties+::: {
      Platform:
        if !std.isString(Platform) then (error 'Platform must be a string')
        else if std.isEmpty(Platform) then (error 'Platform must be not empty')
        else if Platform != 'WEB' && Platform != 'WEB_DYNAMIC' && Platform != 'WEB_COMPUTE' then (error "Platform should be 'WEB' or 'WEB_DYNAMIC' or 'WEB_COMPUTE'")
        else Platform,
    },
  },
  setRepository(Repository): {
    Properties+::: {
      Repository:
        if !std.isString(Repository) then (error 'Repository must be a string')
        else if std.isEmpty(Repository) then (error 'Repository must be not empty')
        else Repository,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
