{
  new(
    TargetArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TargetArn) : 'TargetArn must be a string',
      TargetArn: TargetArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GreengrassV2::Deployment',
  },
  withParentTargetArn(ParentTargetArn): {
    assert std.isString(ParentTargetArn) : 'ParentTargetArn must be a string',
    Properties+::: {
      ParentTargetArn: ParentTargetArn,
    },
  },
  withDeploymentId(DeploymentId): {
    assert std.isString(DeploymentId) : 'DeploymentId must be a string',
    Properties+::: {
      DeploymentId: DeploymentId,
    },
  },
  withDeploymentName(DeploymentName): {
    assert std.isString(DeploymentName) : 'DeploymentName must be a string',
    Properties+::: {
      DeploymentName: DeploymentName,
    },
  },
  withComponents(Components): {
    assert std.isObject(Components) : 'Components must be a object',
    Properties+::: {
      Components: Components,
    },
  },
  withIotJobConfiguration(IotJobConfiguration): {
    assert std.isObject(IotJobConfiguration) : 'IotJobConfiguration must be a object',
    Properties+::: {
      IotJobConfiguration: IotJobConfiguration,
    },
  },
  withDeploymentPolicies(DeploymentPolicies): {
    assert std.isObject(DeploymentPolicies) : 'DeploymentPolicies must be a object',
    Properties+::: {
      DeploymentPolicies: DeploymentPolicies,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
