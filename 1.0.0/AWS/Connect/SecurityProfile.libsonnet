{
  new(
    InstanceArn,
    SecurityProfileName,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      SecurityProfileName:
        if !std.isString(SecurityProfileName) then (error 'SecurityProfileName must be a string')
        else if std.isEmpty(SecurityProfileName) then (error 'SecurityProfileName must be not empty')
        else if std.length(SecurityProfileName) < 1 then error ('SecurityProfileName should have at least 1 characters')
        else if std.length(SecurityProfileName) > 127 then error ('SecurityProfileName should have not more than 127 characters')
        else SecurityProfileName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::SecurityProfile',
  },
  setAllowedAccessControlTags(AllowedAccessControlTags): {
    Properties+::: {
      AllowedAccessControlTags:
        if !std.isArray(AllowedAccessControlTags) then (error 'AllowedAccessControlTags must be an array')
        else if std.length(AllowedAccessControlTags) > 2 then error ('AllowedAccessControlTags cannot have more than 2 items')
        else AllowedAccessControlTags,
    },
  },
  setAllowedAccessControlTagsMixin(AllowedAccessControlTags): {
    Properties+::: {
      AllowedAccessControlTags+: AllowedAccessControlTags,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 250 then error ('Description should have not more than 250 characters')
        else Description,
    },
  },
  setPermissions(Permissions): {
    Properties+::: {
      Permissions:
        if !std.isArray(Permissions) then (error 'Permissions must be an array')
        else if std.length(Permissions) > 500 then error ('Permissions cannot have more than 500 items')
        else Permissions,
    },
  },
  setPermissionsMixin(Permissions): {
    Properties+::: {
      Permissions+: Permissions,
    },
  },
  setSecurityProfileArn(SecurityProfileArn): {
    Properties+::: {
      SecurityProfileArn:
        if !std.isString(SecurityProfileArn) then (error 'SecurityProfileArn must be a string')
        else if std.isEmpty(SecurityProfileArn) then (error 'SecurityProfileArn must be not empty')
        else SecurityProfileArn,
    },
  },
  setTagRestrictedResources(TagRestrictedResources): {
    Properties+::: {
      TagRestrictedResources:
        if !std.isArray(TagRestrictedResources) then (error 'TagRestrictedResources must be an array')
        else if std.length(TagRestrictedResources) > 10 then error ('TagRestrictedResources cannot have more than 10 items')
        else TagRestrictedResources,
    },
  },
  setTagRestrictedResourcesMixin(TagRestrictedResources): {
    Properties+::: {
      TagRestrictedResources+: TagRestrictedResources,
    },
  },
  setHierarchyRestrictedResources(HierarchyRestrictedResources): {
    Properties+::: {
      HierarchyRestrictedResources:
        if !std.isArray(HierarchyRestrictedResources) then (error 'HierarchyRestrictedResources must be an array')
        else if std.length(HierarchyRestrictedResources) > 10 then error ('HierarchyRestrictedResources cannot have more than 10 items')
        else HierarchyRestrictedResources,
    },
  },
  setHierarchyRestrictedResourcesMixin(HierarchyRestrictedResources): {
    Properties+::: {
      HierarchyRestrictedResources+: HierarchyRestrictedResources,
    },
  },
  setAllowedAccessControlHierarchyGroupId(AllowedAccessControlHierarchyGroupId): {
    Properties+::: {
      AllowedAccessControlHierarchyGroupId:
        if !std.isString(AllowedAccessControlHierarchyGroupId) then (error 'AllowedAccessControlHierarchyGroupId must be a string')
        else if std.isEmpty(AllowedAccessControlHierarchyGroupId) then (error 'AllowedAccessControlHierarchyGroupId must be not empty')
        else if std.length(AllowedAccessControlHierarchyGroupId) > 127 then error ('AllowedAccessControlHierarchyGroupId should have not more than 127 characters')
        else AllowedAccessControlHierarchyGroupId,
    },
  },
  setApplications(Applications): {
    Properties+::: {
      Applications:
        if !std.isArray(Applications) then (error 'Applications must be an array')
        else if std.length(Applications) > 10 then error ('Applications cannot have more than 10 items')
        else Applications,
    },
  },
  setApplicationsMixin(Applications): {
    Properties+::: {
      Applications+: Applications,
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
  setLastModifiedRegion(LastModifiedRegion): {
    Properties+::: {
      LastModifiedRegion:
        if !std.isString(LastModifiedRegion) then (error 'LastModifiedRegion must be a string')
        else if std.isEmpty(LastModifiedRegion) then (error 'LastModifiedRegion must be not empty')
        else LastModifiedRegion,
    },
  },
  setLastModifiedTime(LastModifiedTime): {
    Properties+::: {
      LastModifiedTime:
        if !std.isNumber(LastModifiedTime) then (error 'LastModifiedTime must be an number')
        else LastModifiedTime,
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
