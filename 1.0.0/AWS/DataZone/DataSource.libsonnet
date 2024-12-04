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
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
      DomainIdentifier: DomainIdentifier,
      assert std.isString(ProjectIdentifier) : 'ProjectIdentifier must be a string',
      ProjectIdentifier: ProjectIdentifier,
      assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
      EnvironmentIdentifier: EnvironmentIdentifier,
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::DataSource',
  },
  withAssetFormsInput(AssetFormsInput): {
    Properties+::: {
      AssetFormsInput: (if std.isArray(AssetFormsInput) then AssetFormsInput else [AssetFormsInput]),
    },
  },
  withAssetFormsInputMixin(AssetFormsInput): {
    Properties+::: {
      AssetFormsInput+: (if std.isArray(AssetFormsInput) then AssetFormsInput else [AssetFormsInput]),
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withDomainId(DomainId): {
    assert std.isString(DomainId) : 'DomainId must be a string',
    Properties+::: {
      DomainId: DomainId,
    },
  },
  withEnableSetting(EnableSetting): {
    assert std.isString(EnableSetting) : 'EnableSetting must be a string',
    assert EnableSetting == 'ENABLED' || EnableSetting == 'DISABLED' : "EnableSetting should be 'ENABLED' or 'DISABLED'",
    Properties+::: {
      EnableSetting: EnableSetting,
    },
  },
  withEnvironmentId(EnvironmentId): {
    assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
    Properties+::: {
      EnvironmentId: EnvironmentId,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withConfiguration(Configuration): {
    Properties+::: {
      Configuration: Configuration,
    },
  },
  withLastRunAssetCount(LastRunAssetCount): {
    assert std.isNumber(LastRunAssetCount) : 'LastRunAssetCount must be a number',
    Properties+::: {
      LastRunAssetCount: LastRunAssetCount,
    },
  },
  withLastRunAt(LastRunAt): {
    assert std.isString(LastRunAt) : 'LastRunAt must be a string',
    Properties+::: {
      LastRunAt: LastRunAt,
    },
  },
  withLastRunStatus(LastRunStatus): {
    assert std.isString(LastRunStatus) : 'LastRunStatus must be a string',
    Properties+::: {
      LastRunStatus: LastRunStatus,
    },
  },
  withProjectId(ProjectId): {
    assert std.isString(ProjectId) : 'ProjectId must be a string',
    Properties+::: {
      ProjectId: ProjectId,
    },
  },
  withPublishOnImport(PublishOnImport): {
    assert std.isBoolean(PublishOnImport) : 'PublishOnImport must be a boolean',
    Properties+::: {
      PublishOnImport: PublishOnImport,
    },
  },
  withRecommendation(Recommendation): {
    assert std.isObject(Recommendation) : 'Recommendation must be a object',
    Properties+::: {
      Recommendation: Recommendation,
    },
  },
  withSchedule(Schedule): {
    assert std.isObject(Schedule) : 'Schedule must be a object',
    Properties+::: {
      Schedule: Schedule,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'CREATING' || Status == 'FAILED_CREATION' || Status == 'READY' || Status == 'UPDATING' || Status == 'FAILED_UPDATE' || Status == 'RUNNING' || Status == 'DELETING' || Status == 'FAILED_DELETION' : "Status should be 'CREATING' or 'FAILED_CREATION' or 'READY' or 'UPDATING' or 'FAILED_UPDATE' or 'RUNNING' or 'DELETING' or 'FAILED_DELETION'",
    Properties+::: {
      Status: Status,
    },
  },
  withUpdatedAt(UpdatedAt): {
    assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
    Properties+::: {
      UpdatedAt: UpdatedAt,
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
