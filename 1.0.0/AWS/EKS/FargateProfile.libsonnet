{
  new(
    ClusterName,
    PodExecutionRoleArn,
    Selectors,
  ): {
    local base = self,
    Properties: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else if std.length(ClusterName) < 1 then error ('ClusterName should have at least 1 characters')
        else ClusterName,
      PodExecutionRoleArn:
        if !std.isString(PodExecutionRoleArn) then (error 'PodExecutionRoleArn must be a string')
        else if std.isEmpty(PodExecutionRoleArn) then (error 'PodExecutionRoleArn must be not empty')
        else if std.length(PodExecutionRoleArn) < 1 then error ('PodExecutionRoleArn should have at least 1 characters')
        else PodExecutionRoleArn,
      Selectors:
        if !std.isArray(Selectors) then (error 'Selectors must be an array')
        else if std.length(Selectors) < 1 then error ('Selectors cannot have less than 1 items')
        else Selectors,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::FargateProfile',
  },
  setFargateProfileName(FargateProfileName): {
    Properties+::: {
      FargateProfileName:
        if !std.isString(FargateProfileName) then (error 'FargateProfileName must be a string')
        else if std.isEmpty(FargateProfileName) then (error 'FargateProfileName must be not empty')
        else if std.length(FargateProfileName) < 1 then error ('FargateProfileName should have at least 1 characters')
        else FargateProfileName,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setSubnets(Subnets): {
    Properties+::: {
      Subnets:
        if !std.isArray(Subnets) then (error 'Subnets must be an array')
        else Subnets,
    },
  },
  pushSubnets(Subnets): {
    Properties+::: {
      Subnets+: Subnets,
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
