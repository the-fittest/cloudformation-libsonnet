{
  new(
    AppId,
    BranchName,
  ): {
    local base = self,
    Properties: {
      AppId:
        if !std.isString(AppId) then (error 'AppId must be a string')
        else if std.isEmpty(AppId) then (error 'AppId must be not empty')
        else if std.length(AppId) < 1 then error ('AppId should have at least 1 characters')
        else if std.length(AppId) > 20 then error ('AppId should have not more than 20 characters')
        else AppId,
      BranchName:
        if !std.isString(BranchName) then (error 'BranchName must be a string')
        else if std.isEmpty(BranchName) then (error 'BranchName must be not empty')
        else if std.length(BranchName) < 1 then error ('BranchName should have at least 1 characters')
        else if std.length(BranchName) > 255 then error ('BranchName should have not more than 255 characters')
        else BranchName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Amplify::Branch',
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
  setBasicAuthConfig(BasicAuthConfig): {
    Properties+::: {
      BasicAuthConfig:
        if !std.isObject(BasicAuthConfig) then (error 'BasicAuthConfig must be an object')
        else if !std.objectHas(BasicAuthConfig, 'Username') then (error ' have attribute Username')
        else if !std.objectHas(BasicAuthConfig, 'Password') then (error ' have attribute Password')
        else BasicAuthConfig,
    },
  },
  setBackend(Backend): {
    Properties+::: {
      Backend:
        if !std.isObject(Backend) then (error 'Backend must be an object')
        else Backend,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setEnableAutoBuild(EnableAutoBuild): {
    Properties+::: {
      EnableAutoBuild:
        if !std.isBoolean(EnableAutoBuild) then (error 'EnableAutoBuild must be a boolean') else EnableAutoBuild,
    },
  },
  setEnablePerformanceMode(EnablePerformanceMode): {
    Properties+::: {
      EnablePerformanceMode:
        if !std.isBoolean(EnablePerformanceMode) then (error 'EnablePerformanceMode must be a boolean') else EnablePerformanceMode,
    },
  },
  setEnablePullRequestPreview(EnablePullRequestPreview): {
    Properties+::: {
      EnablePullRequestPreview:
        if !std.isBoolean(EnablePullRequestPreview) then (error 'EnablePullRequestPreview must be a boolean') else EnablePullRequestPreview,
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
  setFramework(Framework): {
    Properties+::: {
      Framework:
        if !std.isString(Framework) then (error 'Framework must be a string')
        else if std.isEmpty(Framework) then (error 'Framework must be not empty')
        else if std.length(Framework) > 255 then error ('Framework should have not more than 255 characters')
        else Framework,
    },
  },
  setPullRequestEnvironmentName(PullRequestEnvironmentName): {
    Properties+::: {
      PullRequestEnvironmentName:
        if !std.isString(PullRequestEnvironmentName) then (error 'PullRequestEnvironmentName must be a string')
        else if std.isEmpty(PullRequestEnvironmentName) then (error 'PullRequestEnvironmentName must be not empty')
        else if std.length(PullRequestEnvironmentName) > 20 then error ('PullRequestEnvironmentName should have not more than 20 characters')
        else PullRequestEnvironmentName,
    },
  },
  setStage(Stage): {
    Properties+::: {
      Stage:
        if !std.isString(Stage) then (error 'Stage must be a string')
        else if std.isEmpty(Stage) then (error 'Stage must be not empty')
        else if Stage != 'EXPERIMENTAL' && Stage != 'BETA' && Stage != 'PULL_REQUEST' && Stage != 'PRODUCTION' && Stage != 'DEVELOPMENT' then (error "Stage should be 'EXPERIMENTAL' or 'BETA' or 'PULL_REQUEST' or 'PRODUCTION' or 'DEVELOPMENT'")
        else Stage,
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
