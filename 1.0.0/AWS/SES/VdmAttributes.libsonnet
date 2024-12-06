{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::VdmAttributes',
  },
  setVdmAttributesResourceId(VdmAttributesResourceId): {
    Properties+::: {
      VdmAttributesResourceId:
        if !std.isString(VdmAttributesResourceId) then (error 'VdmAttributesResourceId must be a string')
        else if std.isEmpty(VdmAttributesResourceId) then (error 'VdmAttributesResourceId must be not empty')
        else VdmAttributesResourceId,
    },
  },
  setDashboardAttributes(DashboardAttributes): {
    Properties+::: {
      DashboardAttributes:
        if !std.isObject(DashboardAttributes) then (error 'DashboardAttributes must be an object')
        else DashboardAttributes,
    },
  },
  setGuardianAttributes(GuardianAttributes): {
    Properties+::: {
      GuardianAttributes:
        if !std.isObject(GuardianAttributes) then (error 'GuardianAttributes must be an object')
        else GuardianAttributes,
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
