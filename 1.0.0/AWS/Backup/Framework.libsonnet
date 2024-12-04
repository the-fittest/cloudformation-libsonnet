{
  new(
    FrameworkControls,
  ): {
    local base = self,
    Properties: {
      FrameworkControls: (if std.isArray(FrameworkControls) then FrameworkControls else [FrameworkControls]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::Framework',
  },
  withFrameworkName(FrameworkName): {
    assert std.isString(FrameworkName) : 'FrameworkName must be a string',
    Properties+::: {
      FrameworkName: FrameworkName,
    },
  },
  withFrameworkDescription(FrameworkDescription): {
    assert std.isString(FrameworkDescription) : 'FrameworkDescription must be a string',
    Properties+::: {
      FrameworkDescription: FrameworkDescription,
    },
  },
  withFrameworkArn(FrameworkArn): {
    assert std.isString(FrameworkArn) : 'FrameworkArn must be a string',
    Properties+::: {
      FrameworkArn: FrameworkArn,
    },
  },
  withDeploymentStatus(DeploymentStatus): {
    assert std.isString(DeploymentStatus) : 'DeploymentStatus must be a string',
    Properties+::: {
      DeploymentStatus: DeploymentStatus,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withFrameworkStatus(FrameworkStatus): {
    assert std.isString(FrameworkStatus) : 'FrameworkStatus must be a string',
    Properties+::: {
      FrameworkStatus: FrameworkStatus,
    },
  },
  withFrameworkTags(FrameworkTags): {
    Properties+::: {
      FrameworkTags: (if std.isArray(FrameworkTags) then FrameworkTags else [FrameworkTags]),
    },
  },
  withFrameworkTagsMixin(FrameworkTags): {
    Properties+::: {
      FrameworkTags+: (if std.isArray(FrameworkTags) then FrameworkTags else [FrameworkTags]),
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
