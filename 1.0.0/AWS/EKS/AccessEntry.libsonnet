{
  // AWS EKS AccessEntry
  AccessEntry: {
    new(
      PrincipalArn,
      ClusterName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PrincipalArn) : 'PrincipalArn must be a string',
        PrincipalArn: PrincipalArn,
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EKS::AccessEntry',
    },
    withUsername(Username): {
      assert std.isString(Username) : 'Username must be a string',
      Properties+::: {
        Username: Username,
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
    withAccessEntryArn(AccessEntryArn): {
      assert std.isString(AccessEntryArn) : 'AccessEntryArn must be a string',
      Properties+::: {
        AccessEntryArn: AccessEntryArn,
      },
    },
    withKubernetesGroups(KubernetesGroups): {
      Properties+::: {
        KubernetesGroups: (if std.isArray(KubernetesGroups) then KubernetesGroups else [KubernetesGroups]),
      },
    },
    withKubernetesGroupsMixin(KubernetesGroups): {
      Properties+::: {
        KubernetesGroups+: (if std.isArray(KubernetesGroups) then KubernetesGroups else [KubernetesGroups]),
      },
    },
    withAccessPolicies(AccessPolicies): {
      Properties+::: {
        AccessPolicies: (if std.isArray(AccessPolicies) then AccessPolicies else [AccessPolicies]),
      },
    },
    withAccessPoliciesMixin(AccessPolicies): {
      Properties+::: {
        AccessPolicies+: (if std.isArray(AccessPolicies) then AccessPolicies else [AccessPolicies]),
      },
    },
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: {
        Type: Type,
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
  },
}
