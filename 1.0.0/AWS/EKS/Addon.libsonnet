{
  new(
    ClusterName,
    AddonName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      ClusterName: ClusterName,
      assert std.isString(AddonName) : 'AddonName must be a string',
      AddonName: AddonName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::Addon',
  },
  withAddonVersion(AddonVersion): {
    assert std.isString(AddonVersion) : 'AddonVersion must be a string',
    Properties+::: {
      AddonVersion: AddonVersion,
    },
  },
  withPreserveOnDelete(PreserveOnDelete): {
    assert std.isBoolean(PreserveOnDelete) : 'PreserveOnDelete must be a boolean',
    Properties+::: {
      PreserveOnDelete: PreserveOnDelete,
    },
  },
  withResolveConflicts(ResolveConflicts): {
    assert std.isString(ResolveConflicts) : 'ResolveConflicts must be a string',
    assert ResolveConflicts == 'NONE' || ResolveConflicts == 'OVERWRITE' || ResolveConflicts == 'PRESERVE' : "ResolveConflicts should be 'NONE' or 'OVERWRITE' or 'PRESERVE'",
    Properties+::: {
      ResolveConflicts: ResolveConflicts,
    },
  },
  withServiceAccountRoleArn(ServiceAccountRoleArn): {
    assert std.isString(ServiceAccountRoleArn) : 'ServiceAccountRoleArn must be a string',
    Properties+::: {
      ServiceAccountRoleArn: ServiceAccountRoleArn,
    },
  },
  withPodIdentityAssociations(PodIdentityAssociations): {
    Properties+::: {
      PodIdentityAssociations: (if std.isArray(PodIdentityAssociations) then PodIdentityAssociations else [PodIdentityAssociations]),
    },
  },
  withPodIdentityAssociationsMixin(PodIdentityAssociations): {
    Properties+::: {
      PodIdentityAssociations+: (if std.isArray(PodIdentityAssociations) then PodIdentityAssociations else [PodIdentityAssociations]),
    },
  },
  withConfigurationValues(ConfigurationValues): {
    assert std.isString(ConfigurationValues) : 'ConfigurationValues must be a string',
    Properties+::: {
      ConfigurationValues: ConfigurationValues,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
