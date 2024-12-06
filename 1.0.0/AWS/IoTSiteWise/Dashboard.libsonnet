{
  new(
    DashboardDefinition,
    DashboardDescription,
    DashboardName,
  ): {
    local base = self,
    Properties: {
      DashboardDefinition:
        if !std.isString(DashboardDefinition) then (error 'DashboardDefinition must be a string')
        else if std.isEmpty(DashboardDefinition) then (error 'DashboardDefinition must be not empty')
        else DashboardDefinition,
      DashboardDescription:
        if !std.isString(DashboardDescription) then (error 'DashboardDescription must be a string')
        else if std.isEmpty(DashboardDescription) then (error 'DashboardDescription must be not empty')
        else DashboardDescription,
      DashboardName:
        if !std.isString(DashboardName) then (error 'DashboardName must be a string')
        else if std.isEmpty(DashboardName) then (error 'DashboardName must be not empty')
        else DashboardName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTSiteWise::Dashboard',
  },
  setProjectId(ProjectId): {
    Properties+::: {
      ProjectId:
        if !std.isString(ProjectId) then (error 'ProjectId must be a string')
        else if std.isEmpty(ProjectId) then (error 'ProjectId must be not empty')
        else ProjectId,
    },
  },
  setDashboardId(DashboardId): {
    Properties+::: {
      DashboardId:
        if !std.isString(DashboardId) then (error 'DashboardId must be a string')
        else if std.isEmpty(DashboardId) then (error 'DashboardId must be not empty')
        else DashboardId,
    },
  },
  setDashboardArn(DashboardArn): {
    Properties+::: {
      DashboardArn:
        if !std.isString(DashboardArn) then (error 'DashboardArn must be a string')
        else if std.isEmpty(DashboardArn) then (error 'DashboardArn must be not empty')
        else DashboardArn,
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
