{
  new(
    InstanceGroups,
  ): {
    local base = self,
    Properties: {
      InstanceGroups:
        if !std.isArray(InstanceGroups) then (error 'InstanceGroups must be an array')
        else if std.length(InstanceGroups) < 1 then error ('InstanceGroups cannot have less than 1 items')
        else InstanceGroups,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::Cluster',
  },
  setClusterName(ClusterName): {
    Properties+::: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else if std.length(ClusterName) < 1 then error ('ClusterName should have at least 1 characters')
        else if std.length(ClusterName) > 63 then error ('ClusterName should have not more than 63 characters')
        else ClusterName,
    },
  },
  setClusterArn(ClusterArn): {
    Properties+::: {
      ClusterArn:
        if !std.isString(ClusterArn) then (error 'ClusterArn must be a string')
        else if std.isEmpty(ClusterArn) then (error 'ClusterArn must be not empty')
        else if std.length(ClusterArn) > 256 then error ('ClusterArn should have not more than 256 characters')
        else ClusterArn,
    },
  },
  setClusterStatus(ClusterStatus): {
    Properties+::: {
      ClusterStatus:
        if !std.isString(ClusterStatus) then (error 'ClusterStatus must be a string')
        else if std.isEmpty(ClusterStatus) then (error 'ClusterStatus must be not empty')
        else if ClusterStatus != 'Creating' && ClusterStatus != 'Deleting' && ClusterStatus != 'Failed' && ClusterStatus != 'InService' && ClusterStatus != 'RollingBack' && ClusterStatus != 'SystemUpdating' && ClusterStatus != 'Updating' then (error "ClusterStatus should be 'Creating' or 'Deleting' or 'Failed' or 'InService' or 'RollingBack' or 'SystemUpdating' or 'Updating'")
        else ClusterStatus,
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
  setFailureMessage(FailureMessage): {
    Properties+::: {
      FailureMessage:
        if !std.isString(FailureMessage) then (error 'FailureMessage must be a string')
        else if std.isEmpty(FailureMessage) then (error 'FailureMessage must be not empty')
        else FailureMessage,
    },
  },
  setVpcConfig(VpcConfig): {
    Properties+::: {
      VpcConfig:
        if !std.isObject(VpcConfig) then (error 'VpcConfig must be an object')
        else if !std.objectHas(VpcConfig, 'SecurityGroupIds') then (error ' have attribute SecurityGroupIds')
        else if !std.objectHas(VpcConfig, 'Subnets') then (error ' have attribute Subnets')
        else VpcConfig,
    },
  },
  setOrchestrator(Orchestrator): {
    Properties+::: {
      Orchestrator:
        if !std.isObject(Orchestrator) then (error 'Orchestrator must be an object')
        else if !std.objectHas(Orchestrator, 'Eks') then (error ' have attribute Eks')
        else Orchestrator,
    },
  },
  setNodeRecovery(NodeRecovery): {
    Properties+::: {
      NodeRecovery:
        if !std.isString(NodeRecovery) then (error 'NodeRecovery must be a string')
        else if std.isEmpty(NodeRecovery) then (error 'NodeRecovery must be not empty')
        else if NodeRecovery != 'Automatic' && NodeRecovery != 'None' then (error "NodeRecovery should be 'Automatic' or 'None'")
        else NodeRecovery,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
