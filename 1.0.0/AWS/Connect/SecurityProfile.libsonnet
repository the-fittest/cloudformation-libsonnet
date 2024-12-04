{
  new(
    InstanceArn,
    SecurityProfileName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(InstanceArn) : 'InstanceArn must be a string',
      InstanceArn: InstanceArn,
      assert std.isString(SecurityProfileName) : 'SecurityProfileName must be a string',
      SecurityProfileName: SecurityProfileName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::SecurityProfile',
  },
  withAllowedAccessControlTags(AllowedAccessControlTags): {
    Properties+::: {
      AllowedAccessControlTags: (if std.isArray(AllowedAccessControlTags) then AllowedAccessControlTags else [AllowedAccessControlTags]),
    },
  },
  withAllowedAccessControlTagsMixin(AllowedAccessControlTags): {
    Properties+::: {
      AllowedAccessControlTags+: (if std.isArray(AllowedAccessControlTags) then AllowedAccessControlTags else [AllowedAccessControlTags]),
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withPermissions(Permissions): {
    Properties+::: {
      Permissions: (if std.isArray(Permissions) then Permissions else [Permissions]),
    },
  },
  withPermissionsMixin(Permissions): {
    Properties+::: {
      Permissions+: (if std.isArray(Permissions) then Permissions else [Permissions]),
    },
  },
  withSecurityProfileArn(SecurityProfileArn): {
    assert std.isString(SecurityProfileArn) : 'SecurityProfileArn must be a string',
    Properties+::: {
      SecurityProfileArn: SecurityProfileArn,
    },
  },
  withTagRestrictedResources(TagRestrictedResources): {
    Properties+::: {
      TagRestrictedResources: (if std.isArray(TagRestrictedResources) then TagRestrictedResources else [TagRestrictedResources]),
    },
  },
  withTagRestrictedResourcesMixin(TagRestrictedResources): {
    Properties+::: {
      TagRestrictedResources+: (if std.isArray(TagRestrictedResources) then TagRestrictedResources else [TagRestrictedResources]),
    },
  },
  withHierarchyRestrictedResources(HierarchyRestrictedResources): {
    Properties+::: {
      HierarchyRestrictedResources: (if std.isArray(HierarchyRestrictedResources) then HierarchyRestrictedResources else [HierarchyRestrictedResources]),
    },
  },
  withHierarchyRestrictedResourcesMixin(HierarchyRestrictedResources): {
    Properties+::: {
      HierarchyRestrictedResources+: (if std.isArray(HierarchyRestrictedResources) then HierarchyRestrictedResources else [HierarchyRestrictedResources]),
    },
  },
  withAllowedAccessControlHierarchyGroupId(AllowedAccessControlHierarchyGroupId): {
    assert std.isString(AllowedAccessControlHierarchyGroupId) : 'AllowedAccessControlHierarchyGroupId must be a string',
    Properties+::: {
      AllowedAccessControlHierarchyGroupId: AllowedAccessControlHierarchyGroupId,
    },
  },
  withApplications(Applications): {
    Properties+::: {
      Applications: (if std.isArray(Applications) then Applications else [Applications]),
    },
  },
  withApplicationsMixin(Applications): {
    Properties+::: {
      Applications+: (if std.isArray(Applications) then Applications else [Applications]),
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
  withLastModifiedRegion(LastModifiedRegion): {
    assert std.isString(LastModifiedRegion) : 'LastModifiedRegion must be a string',
    Properties+::: {
      LastModifiedRegion: LastModifiedRegion,
    },
  },
  withLastModifiedTime(LastModifiedTime): {
    assert std.isNumber(LastModifiedTime) : 'LastModifiedTime must be a number',
    Properties+::: {
      LastModifiedTime: LastModifiedTime,
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
