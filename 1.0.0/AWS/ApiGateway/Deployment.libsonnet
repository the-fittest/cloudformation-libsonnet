{
  new(
    RestApiId,
  ): {
    local base = self,
    Properties: {
      RestApiId:
        if !std.isString(RestApiId) then (error 'RestApiId must be a string')
        else if std.isEmpty(RestApiId) then (error 'RestApiId must be not empty')
        else RestApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::Deployment',
  },
  setDeploymentId(DeploymentId): {
    Properties+::: {
      DeploymentId:
        if !std.isString(DeploymentId) then (error 'DeploymentId must be a string')
        else if std.isEmpty(DeploymentId) then (error 'DeploymentId must be not empty')
        else DeploymentId,
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
  setStageDescription(StageDescription): {
    Properties+::: {
      StageDescription:
        if !std.isObject(StageDescription) then (error 'StageDescription must be an object')
        else StageDescription,
    },
  },
  setStageName(StageName): {
    Properties+::: {
      StageName:
        if !std.isString(StageName) then (error 'StageName must be a string')
        else if std.isEmpty(StageName) then (error 'StageName must be not empty')
        else StageName,
    },
  },
  setDeploymentCanarySettings(DeploymentCanarySettings): {
    Properties+::: {
      DeploymentCanarySettings:
        if !std.isObject(DeploymentCanarySettings) then (error 'DeploymentCanarySettings must be an object')
        else DeploymentCanarySettings,
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
