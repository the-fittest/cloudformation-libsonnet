{
  new(
    FrameworkControls,
  ): {
    local base = self,
    Properties: {
      FrameworkControls:
        if !std.isArray(FrameworkControls) then (error 'FrameworkControls must be an array')
        else FrameworkControls,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::Framework',
  },
  setFrameworkName(FrameworkName): {
    Properties+::: {
      FrameworkName:
        if !std.isString(FrameworkName) then (error 'FrameworkName must be a string')
        else if std.isEmpty(FrameworkName) then (error 'FrameworkName must be not empty')
        else if std.length(FrameworkName) < 1 then error ('FrameworkName should have at least 1 characters')
        else if std.length(FrameworkName) > 256 then error ('FrameworkName should have not more than 256 characters')
        else FrameworkName,
    },
  },
  setFrameworkDescription(FrameworkDescription): {
    Properties+::: {
      FrameworkDescription:
        if !std.isString(FrameworkDescription) then (error 'FrameworkDescription must be a string')
        else if std.isEmpty(FrameworkDescription) then (error 'FrameworkDescription must be not empty')
        else if std.length(FrameworkDescription) > 1024 then error ('FrameworkDescription should have not more than 1024 characters')
        else FrameworkDescription,
    },
  },
  setFrameworkArn(FrameworkArn): {
    Properties+::: {
      FrameworkArn:
        if !std.isString(FrameworkArn) then (error 'FrameworkArn must be a string')
        else if std.isEmpty(FrameworkArn) then (error 'FrameworkArn must be not empty')
        else FrameworkArn,
    },
  },
  setDeploymentStatus(DeploymentStatus): {
    Properties+::: {
      DeploymentStatus:
        if !std.isString(DeploymentStatus) then (error 'DeploymentStatus must be a string')
        else if std.isEmpty(DeploymentStatus) then (error 'DeploymentStatus must be not empty')
        else DeploymentStatus,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setFrameworkStatus(FrameworkStatus): {
    Properties+::: {
      FrameworkStatus:
        if !std.isString(FrameworkStatus) then (error 'FrameworkStatus must be a string')
        else if std.isEmpty(FrameworkStatus) then (error 'FrameworkStatus must be not empty')
        else FrameworkStatus,
    },
  },
  setFrameworkTags(FrameworkTags): {
    Properties+::: {
      FrameworkTags:
        if !std.isArray(FrameworkTags) then (error 'FrameworkTags must be an array')
        else FrameworkTags,
    },
  },
  pushFrameworkTags(FrameworkTags): {
    Properties+::: {
      FrameworkTags+: FrameworkTags,
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
