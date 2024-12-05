{
  new(
    EnvironmentId,
    ApplicationId,
    ApplicationVersion,
  ): {
    local base = self,
    Properties: {
      EnvironmentId:
        if !std.isString(EnvironmentId) then (error 'EnvironmentId must be a string')
        else if std.isEmpty(EnvironmentId) then (error 'EnvironmentId must be not empty')
        else EnvironmentId,
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else ApplicationId,
      ApplicationVersion:
        if !std.isNumber(ApplicationVersion) then (error 'ApplicationVersion must be an number')
        else ApplicationVersion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::M2::Deployment',
  },
  setDeploymentId(DeploymentId): {
    Properties+::: {
      DeploymentId:
        if !std.isString(DeploymentId) then (error 'DeploymentId must be a string')
        else if std.isEmpty(DeploymentId) then (error 'DeploymentId must be not empty')
        else DeploymentId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
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
