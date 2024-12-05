{
  new(
    PortalId,
    ProjectName,
  ): {
    local base = self,
    Properties: {
      PortalId:
        if !std.isString(PortalId) then (error 'PortalId must be a string')
        else if std.isEmpty(PortalId) then (error 'PortalId must be not empty')
        else PortalId,
      ProjectName:
        if !std.isString(ProjectName) then (error 'ProjectName must be a string')
        else if std.isEmpty(ProjectName) then (error 'ProjectName must be not empty')
        else ProjectName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTSiteWise::Project',
  },
  setProjectId(ProjectId): {
    Properties+::: {
      ProjectId:
        if !std.isString(ProjectId) then (error 'ProjectId must be a string')
        else if std.isEmpty(ProjectId) then (error 'ProjectId must be not empty')
        else ProjectId,
    },
  },
  setProjectDescription(ProjectDescription): {
    Properties+::: {
      ProjectDescription:
        if !std.isString(ProjectDescription) then (error 'ProjectDescription must be a string')
        else if std.isEmpty(ProjectDescription) then (error 'ProjectDescription must be not empty')
        else ProjectDescription,
    },
  },
  setProjectArn(ProjectArn): {
    Properties+::: {
      ProjectArn:
        if !std.isString(ProjectArn) then (error 'ProjectArn must be a string')
        else if std.isEmpty(ProjectArn) then (error 'ProjectArn must be not empty')
        else ProjectArn,
    },
  },
  setAssetIds(AssetIds): {
    Properties+::: {
      AssetIds:
        if !std.isArray(AssetIds) then (error 'AssetIds must be an array')
        else AssetIds,
    },
  },
  setAssetIdsMixin(AssetIds): {
    Properties+::: {
      AssetIds+: AssetIds,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
