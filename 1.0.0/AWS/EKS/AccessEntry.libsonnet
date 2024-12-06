{
  new(
    PrincipalArn,
    ClusterName,
  ): {
    local base = self,
    Properties: {
      PrincipalArn:
        if !std.isString(PrincipalArn) then (error 'PrincipalArn must be a string')
        else if std.isEmpty(PrincipalArn) then (error 'PrincipalArn must be not empty')
        else if std.length(PrincipalArn) < 1 then error ('PrincipalArn should have at least 1 characters')
        else PrincipalArn,
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else if std.length(ClusterName) < 1 then error ('ClusterName should have at least 1 characters')
        else ClusterName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::AccessEntry',
  },
  setUsername(Username): {
    Properties+::: {
      Username:
        if !std.isString(Username) then (error 'Username must be a string')
        else if std.isEmpty(Username) then (error 'Username must be not empty')
        else Username,
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
  setAccessEntryArn(AccessEntryArn): {
    Properties+::: {
      AccessEntryArn:
        if !std.isString(AccessEntryArn) then (error 'AccessEntryArn must be a string')
        else if std.isEmpty(AccessEntryArn) then (error 'AccessEntryArn must be not empty')
        else AccessEntryArn,
    },
  },
  setKubernetesGroups(KubernetesGroups): {
    Properties+::: {
      KubernetesGroups:
        if !std.isArray(KubernetesGroups) then (error 'KubernetesGroups must be an array')
        else KubernetesGroups,
    },
  },
  pushKubernetesGroups(KubernetesGroups): {
    Properties+::: {
      KubernetesGroups+: KubernetesGroups,
    },
  },
  setAccessPolicies(AccessPolicies): {
    Properties+::: {
      AccessPolicies:
        if !std.isArray(AccessPolicies) then (error 'AccessPolicies must be an array')
        else if std.length(AccessPolicies) > 20 then error ('AccessPolicies cannot have more than 20 items')
        else AccessPolicies,
    },
  },
  pushAccessPolicies(AccessPolicies): {
    Properties+::: {
      AccessPolicies+: AccessPolicies,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
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
