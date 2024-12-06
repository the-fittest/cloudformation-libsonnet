{
  new(
    Name,
    DomainIdentifier,
    ProjectIdentifier,
    EnvironmentIdentifier,
    Type,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 256 then error ('Name should have not more than 256 characters')
        else Name,
      DomainIdentifier:
        if !std.isString(DomainIdentifier) then (error 'DomainIdentifier must be a string')
        else if std.isEmpty(DomainIdentifier) then (error 'DomainIdentifier must be not empty')
        else DomainIdentifier,
      ProjectIdentifier:
        if !std.isString(ProjectIdentifier) then (error 'ProjectIdentifier must be a string')
        else if std.isEmpty(ProjectIdentifier) then (error 'ProjectIdentifier must be not empty')
        else ProjectIdentifier,
      EnvironmentIdentifier:
        if !std.isString(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be a string')
        else if std.isEmpty(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be not empty')
        else EnvironmentIdentifier,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if std.length(Type) < 1 then error ('Type should have at least 1 characters')
        else if std.length(Type) > 256 then error ('Type should have not more than 256 characters')
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::DataSource',
  },
  setAssetFormsInput(AssetFormsInput): {
    Properties+::: {
      AssetFormsInput:
        if !std.isArray(AssetFormsInput) then (error 'AssetFormsInput must be an array')
        else if std.length(AssetFormsInput) > 10 then error ('AssetFormsInput cannot have more than 10 items')
        else AssetFormsInput,
    },
  },
  pushAssetFormsInput(AssetFormsInput): {
    Properties+::: {
      AssetFormsInput+: AssetFormsInput,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setDomainId(DomainId): {
    Properties+::: {
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else DomainId,
    },
  },
  setEnableSetting(EnableSetting): {
    Properties+::: {
      EnableSetting:
        if !std.isString(EnableSetting) then (error 'EnableSetting must be a string')
        else if std.isEmpty(EnableSetting) then (error 'EnableSetting must be not empty')
        else if EnableSetting != 'ENABLED' && EnableSetting != 'DISABLED' then (error "EnableSetting should be 'ENABLED' or 'DISABLED'")
        else EnableSetting,
    },
  },
  setEnvironmentId(EnvironmentId): {
    Properties+::: {
      EnvironmentId:
        if !std.isString(EnvironmentId) then (error 'EnvironmentId must be a string')
        else if std.isEmpty(EnvironmentId) then (error 'EnvironmentId must be not empty')
        else EnvironmentId,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setConfiguration(Configuration): {
    Properties+::: {
      Configuration: Configuration,
    },
  },
  setLastRunAssetCount(LastRunAssetCount): {
    Properties+::: {
      LastRunAssetCount:
        if !std.isNumber(LastRunAssetCount) then (error 'LastRunAssetCount must be an number')
        else LastRunAssetCount,
    },
  },
  setLastRunAt(LastRunAt): {
    Properties+::: {
      LastRunAt:
        if !std.isString(LastRunAt) then (error 'LastRunAt must be a string')
        else if std.isEmpty(LastRunAt) then (error 'LastRunAt must be not empty')
        else LastRunAt,
    },
  },
  setLastRunStatus(LastRunStatus): {
    Properties+::: {
      LastRunStatus:
        if !std.isString(LastRunStatus) then (error 'LastRunStatus must be a string')
        else if std.isEmpty(LastRunStatus) then (error 'LastRunStatus must be not empty')
        else LastRunStatus,
    },
  },
  setProjectId(ProjectId): {
    Properties+::: {
      ProjectId:
        if !std.isString(ProjectId) then (error 'ProjectId must be a string')
        else if std.isEmpty(ProjectId) then (error 'ProjectId must be not empty')
        else ProjectId,
    },
  },
  setPublishOnImport(PublishOnImport): {
    Properties+::: {
      PublishOnImport:
        if !std.isBoolean(PublishOnImport) then (error 'PublishOnImport must be a boolean') else PublishOnImport,
    },
  },
  setRecommendation(Recommendation): {
    Properties+::: {
      Recommendation:
        if !std.isObject(Recommendation) then (error 'Recommendation must be an object')
        else Recommendation,
    },
  },
  setSchedule(Schedule): {
    Properties+::: {
      Schedule:
        if !std.isObject(Schedule) then (error 'Schedule must be an object')
        else Schedule,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'FAILED_CREATION' && Status != 'READY' && Status != 'UPDATING' && Status != 'FAILED_UPDATE' && Status != 'RUNNING' && Status != 'DELETING' && Status != 'FAILED_DELETION' then (error "Status should be 'CREATING' or 'FAILED_CREATION' or 'READY' or 'UPDATING' or 'FAILED_UPDATE' or 'RUNNING' or 'DELETING' or 'FAILED_DELETION'")
        else Status,
    },
  },
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
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
