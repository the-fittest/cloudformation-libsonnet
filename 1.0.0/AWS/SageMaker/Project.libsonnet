{
  new(
    ProjectName,
    ServiceCatalogProvisioningDetails,
  ): {
    local base = self,
    Properties: {
      ProjectName:
        if !std.isString(ProjectName) then (error 'ProjectName must be a string')
        else if std.isEmpty(ProjectName) then (error 'ProjectName must be not empty')
        else if std.length(ProjectName) < 1 then error ('ProjectName should have at least 1 characters')
        else if std.length(ProjectName) > 32 then error ('ProjectName should have not more than 32 characters')
        else ProjectName,
      ServiceCatalogProvisioningDetails:
        if !std.isObject(ServiceCatalogProvisioningDetails) then (error 'ServiceCatalogProvisioningDetails must be an object')
        else if !std.objectHas(ServiceCatalogProvisioningDetails, 'ProductId') then (error ' have attribute ProductId')
        else ServiceCatalogProvisioningDetails,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::Project',
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 40 then error ('Tags cannot have more than 40 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setProjectArn(ProjectArn): {
    Properties+::: {
      ProjectArn:
        if !std.isString(ProjectArn) then (error 'ProjectArn must be a string')
        else if std.isEmpty(ProjectArn) then (error 'ProjectArn must be not empty')
        else if std.length(ProjectArn) < 1 then error ('ProjectArn should have at least 1 characters')
        else if std.length(ProjectArn) > 2048 then error ('ProjectArn should have not more than 2048 characters')
        else ProjectArn,
    },
  },
  setProjectId(ProjectId): {
    Properties+::: {
      ProjectId:
        if !std.isString(ProjectId) then (error 'ProjectId must be a string')
        else if std.isEmpty(ProjectId) then (error 'ProjectId must be not empty')
        else if std.length(ProjectId) > 20 then error ('ProjectId should have not more than 20 characters')
        else ProjectId,
    },
  },
  setProjectDescription(ProjectDescription): {
    Properties+::: {
      ProjectDescription:
        if !std.isString(ProjectDescription) then (error 'ProjectDescription must be a string')
        else if std.isEmpty(ProjectDescription) then (error 'ProjectDescription must be not empty')
        else if std.length(ProjectDescription) > 1024 then error ('ProjectDescription should have not more than 1024 characters')
        else ProjectDescription,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setServiceCatalogProvisionedProductDetails(ServiceCatalogProvisionedProductDetails): {
    Properties+::: {
      ServiceCatalogProvisionedProductDetails:
        if !std.isObject(ServiceCatalogProvisionedProductDetails) then (error 'ServiceCatalogProvisionedProductDetails must be an object')
        else ServiceCatalogProvisionedProductDetails,
    },
  },
  setProjectStatus(ProjectStatus): {
    Properties+::: {
      ProjectStatus:
        if !std.isString(ProjectStatus) then (error 'ProjectStatus must be a string')
        else if std.isEmpty(ProjectStatus) then (error 'ProjectStatus must be not empty')
        else if ProjectStatus != 'Pending' && ProjectStatus != 'CreateInProgress' && ProjectStatus != 'CreateCompleted' && ProjectStatus != 'CreateFailed' && ProjectStatus != 'DeleteInProgress' && ProjectStatus != 'DeleteFailed' && ProjectStatus != 'DeleteCompleted' then (error "ProjectStatus should be 'Pending' or 'CreateInProgress' or 'CreateCompleted' or 'CreateFailed' or 'DeleteInProgress' or 'DeleteFailed' or 'DeleteCompleted'")
        else ProjectStatus,
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
