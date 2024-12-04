{
  new(
    InstanceGroups,
  ): {
    local base = self,
    Properties: {
      InstanceGroups: (if std.isArray(InstanceGroups) then InstanceGroups else [InstanceGroups]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::Cluster',
  },
  withClusterName(ClusterName): {
    assert std.isString(ClusterName) : 'ClusterName must be a string',
    Properties+::: {
      ClusterName: ClusterName,
    },
  },
  withClusterArn(ClusterArn): {
    assert std.isString(ClusterArn) : 'ClusterArn must be a string',
    Properties+::: {
      ClusterArn: ClusterArn,
    },
  },
  withClusterStatus(ClusterStatus): {
    assert std.isString(ClusterStatus) : 'ClusterStatus must be a string',
    Properties+::: {
      ClusterStatus: ClusterStatus,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withFailureMessage(FailureMessage): {
    assert std.isString(FailureMessage) : 'FailureMessage must be a string',
    Properties+::: {
      FailureMessage: FailureMessage,
    },
  },
  withVpcConfig(VpcConfig): {
    assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
    Properties+::: {
      VpcConfig: VpcConfig,
    },
  },
  withOrchestrator(Orchestrator): {
    assert std.isObject(Orchestrator) : 'Orchestrator must be a object',
    Properties+::: {
      Orchestrator: Orchestrator,
    },
  },
  withNodeRecovery(NodeRecovery): {
    assert std.isString(NodeRecovery) : 'NodeRecovery must be a string',
    Properties+::: {
      NodeRecovery: NodeRecovery,
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
