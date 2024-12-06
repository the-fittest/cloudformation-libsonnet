{
  new(
    ClusterName,
    AddonName,
  ): {
    local base = self,
    Properties: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else if std.length(ClusterName) < 1 then error ('ClusterName should have at least 1 characters')
        else ClusterName,
      AddonName:
        if !std.isString(AddonName) then (error 'AddonName must be a string')
        else if std.isEmpty(AddonName) then (error 'AddonName must be not empty')
        else if std.length(AddonName) < 1 then error ('AddonName should have at least 1 characters')
        else AddonName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::Addon',
  },
  setAddonVersion(AddonVersion): {
    Properties+::: {
      AddonVersion:
        if !std.isString(AddonVersion) then (error 'AddonVersion must be a string')
        else if std.isEmpty(AddonVersion) then (error 'AddonVersion must be not empty')
        else if std.length(AddonVersion) < 1 then error ('AddonVersion should have at least 1 characters')
        else AddonVersion,
    },
  },
  setPreserveOnDelete(PreserveOnDelete): {
    Properties+::: {
      PreserveOnDelete:
        if !std.isBoolean(PreserveOnDelete) then (error 'PreserveOnDelete must be a boolean') else PreserveOnDelete,
    },
  },
  setResolveConflicts(ResolveConflicts): {
    Properties+::: {
      ResolveConflicts:
        if !std.isString(ResolveConflicts) then (error 'ResolveConflicts must be a string')
        else if std.isEmpty(ResolveConflicts) then (error 'ResolveConflicts must be not empty')
        else if ResolveConflicts != 'NONE' && ResolveConflicts != 'OVERWRITE' && ResolveConflicts != 'PRESERVE' then (error "ResolveConflicts should be 'NONE' or 'OVERWRITE' or 'PRESERVE'")
        else if std.length(ResolveConflicts) < 1 then error ('ResolveConflicts should have at least 1 characters')
        else ResolveConflicts,
    },
  },
  setServiceAccountRoleArn(ServiceAccountRoleArn): {
    Properties+::: {
      ServiceAccountRoleArn:
        if !std.isString(ServiceAccountRoleArn) then (error 'ServiceAccountRoleArn must be a string')
        else if std.isEmpty(ServiceAccountRoleArn) then (error 'ServiceAccountRoleArn must be not empty')
        else if std.length(ServiceAccountRoleArn) < 1 then error ('ServiceAccountRoleArn should have at least 1 characters')
        else ServiceAccountRoleArn,
    },
  },
  setPodIdentityAssociations(PodIdentityAssociations): {
    Properties+::: {
      PodIdentityAssociations:
        if !std.isArray(PodIdentityAssociations) then (error 'PodIdentityAssociations must be an array')
        else PodIdentityAssociations,
    },
  },
  pushPodIdentityAssociations(PodIdentityAssociations): {
    Properties+::: {
      PodIdentityAssociations+: PodIdentityAssociations,
    },
  },
  setConfigurationValues(ConfigurationValues): {
    Properties+::: {
      ConfigurationValues:
        if !std.isString(ConfigurationValues) then (error 'ConfigurationValues must be a string')
        else if std.isEmpty(ConfigurationValues) then (error 'ConfigurationValues must be not empty')
        else if std.length(ConfigurationValues) < 1 then error ('ConfigurationValues should have at least 1 characters')
        else ConfigurationValues,
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
