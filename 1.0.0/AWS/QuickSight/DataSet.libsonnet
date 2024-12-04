{
  // AWS QuickSight DataSet
  DataSet: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::QuickSight::DataSet',
    },
    withPhysicalTableMap(PhysicalTableMap): {
      assert std.isObject(PhysicalTableMap) : 'PhysicalTableMap must be a object',
      Properties+::: {
        PhysicalTableMap: PhysicalTableMap,
      },
    },
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: {
        CreatedTime: CreatedTime,
      },
    },
    withFieldFolders(FieldFolders): {
      assert std.isObject(FieldFolders) : 'FieldFolders must be a object',
      Properties+::: {
        FieldFolders: FieldFolders,
      },
    },
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: {
        LastUpdatedTime: LastUpdatedTime,
      },
    },
    withDataSetId(DataSetId): {
      assert std.isString(DataSetId) : 'DataSetId must be a string',
      Properties+::: {
        DataSetId: DataSetId,
      },
    },
    withFolderArns(FolderArns): {
      Properties+::: {
        FolderArns: (if std.isArray(FolderArns) then FolderArns else [FolderArns]),
      },
    },
    withFolderArnsMixin(FolderArns): {
      Properties+::: {
        FolderArns+: (if std.isArray(FolderArns) then FolderArns else [FolderArns]),
      },
    },
    withConsumedSpiceCapacityInBytes(ConsumedSpiceCapacityInBytes): {
      assert std.isNumber(ConsumedSpiceCapacityInBytes) : 'ConsumedSpiceCapacityInBytes must be a number',
      Properties+::: {
        ConsumedSpiceCapacityInBytes: ConsumedSpiceCapacityInBytes,
      },
    },
    withRowLevelPermissionDataSet(RowLevelPermissionDataSet): {
      assert std.isObject(RowLevelPermissionDataSet) : 'RowLevelPermissionDataSet must be a object',
      Properties+::: {
        RowLevelPermissionDataSet: RowLevelPermissionDataSet,
      },
    },
    withDataSetRefreshProperties(DataSetRefreshProperties): {
      assert std.isObject(DataSetRefreshProperties) : 'DataSetRefreshProperties must be a object',
      Properties+::: {
        DataSetRefreshProperties: DataSetRefreshProperties,
      },
    },
    withRowLevelPermissionTagConfiguration(RowLevelPermissionTagConfiguration): {
      assert std.isObject(RowLevelPermissionTagConfiguration) : 'RowLevelPermissionTagConfiguration must be a object',
      Properties+::: {
        RowLevelPermissionTagConfiguration: RowLevelPermissionTagConfiguration,
      },
    },
    withIngestionWaitPolicy(IngestionWaitPolicy): {
      assert std.isObject(IngestionWaitPolicy) : 'IngestionWaitPolicy must be a object',
      Properties+::: {
        IngestionWaitPolicy: IngestionWaitPolicy,
      },
    },
    withColumnLevelPermissionRules(ColumnLevelPermissionRules): {
      Properties+::: {
        ColumnLevelPermissionRules: (if std.isArray(ColumnLevelPermissionRules) then ColumnLevelPermissionRules else [ColumnLevelPermissionRules]),
      },
    },
    withColumnLevelPermissionRulesMixin(ColumnLevelPermissionRules): {
      Properties+::: {
        ColumnLevelPermissionRules+: (if std.isArray(ColumnLevelPermissionRules) then ColumnLevelPermissionRules else [ColumnLevelPermissionRules]),
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withColumnGroups(ColumnGroups): {
      Properties+::: {
        ColumnGroups: (if std.isArray(ColumnGroups) then ColumnGroups else [ColumnGroups]),
      },
    },
    withColumnGroupsMixin(ColumnGroups): {
      Properties+::: {
        ColumnGroups+: (if std.isArray(ColumnGroups) then ColumnGroups else [ColumnGroups]),
      },
    },
    withImportMode(ImportMode): {
      assert std.isString(ImportMode) : 'ImportMode must be a string',
      Properties+::: {
        ImportMode: ImportMode,
      },
    },
    withDatasetParameters(DatasetParameters): {
      Properties+::: {
        DatasetParameters: (if std.isArray(DatasetParameters) then DatasetParameters else [DatasetParameters]),
      },
    },
    withDatasetParametersMixin(DatasetParameters): {
      Properties+::: {
        DatasetParameters+: (if std.isArray(DatasetParameters) then DatasetParameters else [DatasetParameters]),
      },
    },
    withLogicalTableMap(LogicalTableMap): {
      assert std.isObject(LogicalTableMap) : 'LogicalTableMap must be a object',
      Properties+::: {
        LogicalTableMap: LogicalTableMap,
      },
    },
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: {
        AwsAccountId: AwsAccountId,
      },
    },
    withDataSetUsageConfiguration(DataSetUsageConfiguration): {
      assert std.isObject(DataSetUsageConfiguration) : 'DataSetUsageConfiguration must be a object',
      Properties+::: {
        DataSetUsageConfiguration: DataSetUsageConfiguration,
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
    withOutputColumns(OutputColumns): {
      Properties+::: {
        OutputColumns: (if std.isArray(OutputColumns) then OutputColumns else [OutputColumns]),
      },
    },
    withOutputColumnsMixin(OutputColumns): {
      Properties+::: {
        OutputColumns+: (if std.isArray(OutputColumns) then OutputColumns else [OutputColumns]),
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
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
  },
}
