{
  new(
    Designation,
    DomainIdentifier,
    ProjectIdentifier,
    Member,
  ): {
    local base = self,
    Properties: {
      Designation:
        if !std.isString(Designation) then (error 'Designation must be a string')
        else if std.isEmpty(Designation) then (error 'Designation must be not empty')
        else if Designation != 'PROJECT_OWNER' && Designation != 'PROJECT_CONTRIBUTOR' then (error "Designation should be 'PROJECT_OWNER' or 'PROJECT_CONTRIBUTOR'")
        else Designation,
      DomainIdentifier:
        if !std.isString(DomainIdentifier) then (error 'DomainIdentifier must be a string')
        else if std.isEmpty(DomainIdentifier) then (error 'DomainIdentifier must be not empty')
        else DomainIdentifier,
      ProjectIdentifier:
        if !std.isString(ProjectIdentifier) then (error 'ProjectIdentifier must be a string')
        else if std.isEmpty(ProjectIdentifier) then (error 'ProjectIdentifier must be not empty')
        else ProjectIdentifier,
      Member: Member,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::ProjectMembership',
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
