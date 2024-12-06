{
  new(
    TargetArn,
  ): {
    local base = self,
    Properties: {
      TargetArn:
        if !std.isString(TargetArn) then (error 'TargetArn must be a string')
        else if std.isEmpty(TargetArn) then (error 'TargetArn must be not empty')
        else TargetArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GreengrassV2::Deployment',
  },
  setParentTargetArn(ParentTargetArn): {
    Properties+::: {
      ParentTargetArn:
        if !std.isString(ParentTargetArn) then (error 'ParentTargetArn must be a string')
        else if std.isEmpty(ParentTargetArn) then (error 'ParentTargetArn must be not empty')
        else ParentTargetArn,
    },
  },
  setDeploymentId(DeploymentId): {
    Properties+::: {
      DeploymentId:
        if !std.isString(DeploymentId) then (error 'DeploymentId must be a string')
        else if std.isEmpty(DeploymentId) then (error 'DeploymentId must be not empty')
        else DeploymentId,
    },
  },
  setDeploymentName(DeploymentName): {
    Properties+::: {
      DeploymentName:
        if !std.isString(DeploymentName) then (error 'DeploymentName must be a string')
        else if std.isEmpty(DeploymentName) then (error 'DeploymentName must be not empty')
        else if std.length(DeploymentName) < 1 then error ('DeploymentName should have at least 1 characters')
        else if std.length(DeploymentName) > 256 then error ('DeploymentName should have not more than 256 characters')
        else DeploymentName,
    },
  },
  setComponents(Components): {
    Properties+::: {
      Components:
        if !std.isObject(Components) then (error 'Components must be an object')
        else Components,
    },
  },
  setIotJobConfiguration(IotJobConfiguration): {
    Properties+::: {
      IotJobConfiguration:
        if !std.isObject(IotJobConfiguration) then (error 'IotJobConfiguration must be an object')
        else IotJobConfiguration,
    },
  },
  setDeploymentPolicies(DeploymentPolicies): {
    Properties+::: {
      DeploymentPolicies:
        if !std.isObject(DeploymentPolicies) then (error 'DeploymentPolicies must be an object')
        else DeploymentPolicies,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
