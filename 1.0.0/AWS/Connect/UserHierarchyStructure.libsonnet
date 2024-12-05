{
  new(
    InstanceArn,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::UserHierarchyStructure',
  },
  setUserHierarchyStructureArn(UserHierarchyStructureArn): {
    Properties+::: {
      UserHierarchyStructureArn:
        if !std.isString(UserHierarchyStructureArn) then (error 'UserHierarchyStructureArn must be a string')
        else if std.isEmpty(UserHierarchyStructureArn) then (error 'UserHierarchyStructureArn must be not empty')
        else UserHierarchyStructureArn,
    },
  },
  setUserHierarchyStructure(UserHierarchyStructure): {
    Properties+::: {
      UserHierarchyStructure:
        if !std.isObject(UserHierarchyStructure) then (error 'UserHierarchyStructure must be an object')
        else UserHierarchyStructure,
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
