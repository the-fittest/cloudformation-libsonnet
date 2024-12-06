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
    Type: 'AWS::QuickSight::DataSet',
  },
  setPhysicalTableMap(PhysicalTableMap): {
    Properties+::: {
      PhysicalTableMap:
        if !std.isObject(PhysicalTableMap) then (error 'PhysicalTableMap must be an object')
        else PhysicalTableMap,
    },
  },
  setCreatedTime(CreatedTime): {
    Properties+::: {
      CreatedTime:
        if !std.isString(CreatedTime) then (error 'CreatedTime must be a string')
        else if std.isEmpty(CreatedTime) then (error 'CreatedTime must be not empty')
        else CreatedTime,
    },
  },
  setFieldFolders(FieldFolders): {
    Properties+::: {
      FieldFolders:
        if !std.isObject(FieldFolders) then (error 'FieldFolders must be an object')
        else FieldFolders,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isString(LastUpdatedTime) then (error 'LastUpdatedTime must be a string')
        else if std.isEmpty(LastUpdatedTime) then (error 'LastUpdatedTime must be not empty')
        else LastUpdatedTime,
    },
  },
  setDataSetId(DataSetId): {
    Properties+::: {
      DataSetId:
        if !std.isString(DataSetId) then (error 'DataSetId must be a string')
        else if std.isEmpty(DataSetId) then (error 'DataSetId must be not empty')
        else DataSetId,
    },
  },
  setFolderArns(FolderArns): {
    Properties+::: {
      FolderArns:
        if !std.isArray(FolderArns) then (error 'FolderArns must be an array')
        else if std.length(FolderArns) > 10 then error ('FolderArns cannot have more than 10 items')
        else FolderArns,
    },
  },
  pushFolderArns(FolderArns): {
    Properties+::: {
      FolderArns+: FolderArns,
    },
  },
  setConsumedSpiceCapacityInBytes(ConsumedSpiceCapacityInBytes): {
    Properties+::: {
      ConsumedSpiceCapacityInBytes:
        if !std.isNumber(ConsumedSpiceCapacityInBytes) then (error 'ConsumedSpiceCapacityInBytes must be an number')
        else ConsumedSpiceCapacityInBytes,
    },
  },
  setRowLevelPermissionDataSet(RowLevelPermissionDataSet): {
    Properties+::: {
      RowLevelPermissionDataSet:
        if !std.isObject(RowLevelPermissionDataSet) then (error 'RowLevelPermissionDataSet must be an object')
        else if !std.objectHas(RowLevelPermissionDataSet, 'Arn') then (error ' have attribute Arn')
        else if !std.objectHas(RowLevelPermissionDataSet, 'PermissionPolicy') then (error ' have attribute PermissionPolicy')
        else RowLevelPermissionDataSet,
    },
  },
  setDataSetRefreshProperties(DataSetRefreshProperties): {
    Properties+::: {
      DataSetRefreshProperties:
        if !std.isObject(DataSetRefreshProperties) then (error 'DataSetRefreshProperties must be an object')
        else DataSetRefreshProperties,
    },
  },
  setRowLevelPermissionTagConfiguration(RowLevelPermissionTagConfiguration): {
    Properties+::: {
      RowLevelPermissionTagConfiguration:
        if !std.isObject(RowLevelPermissionTagConfiguration) then (error 'RowLevelPermissionTagConfiguration must be an object')
        else if !std.objectHas(RowLevelPermissionTagConfiguration, 'TagRules') then (error ' have attribute TagRules')
        else RowLevelPermissionTagConfiguration,
    },
  },
  setIngestionWaitPolicy(IngestionWaitPolicy): {
    Properties+::: {
      IngestionWaitPolicy:
        if !std.isObject(IngestionWaitPolicy) then (error 'IngestionWaitPolicy must be an object')
        else IngestionWaitPolicy,
    },
  },
  setColumnLevelPermissionRules(ColumnLevelPermissionRules): {
    Properties+::: {
      ColumnLevelPermissionRules:
        if !std.isArray(ColumnLevelPermissionRules) then (error 'ColumnLevelPermissionRules must be an array')
        else if std.length(ColumnLevelPermissionRules) < 1 then error ('ColumnLevelPermissionRules cannot have less than 1 items')
        else ColumnLevelPermissionRules,
    },
  },
  pushColumnLevelPermissionRules(ColumnLevelPermissionRules): {
    Properties+::: {
      ColumnLevelPermissionRules+: ColumnLevelPermissionRules,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setColumnGroups(ColumnGroups): {
    Properties+::: {
      ColumnGroups:
        if !std.isArray(ColumnGroups) then (error 'ColumnGroups must be an array')
        else if std.length(ColumnGroups) < 1 then error ('ColumnGroups cannot have less than 1 items')
        else if std.length(ColumnGroups) > 8 then error ('ColumnGroups cannot have more than 8 items')
        else ColumnGroups,
    },
  },
  pushColumnGroups(ColumnGroups): {
    Properties+::: {
      ColumnGroups+: ColumnGroups,
    },
  },
  setImportMode(ImportMode): {
    Properties+::: {
      ImportMode:
        if !std.isString(ImportMode) then (error 'ImportMode must be a string')
        else if std.isEmpty(ImportMode) then (error 'ImportMode must be not empty')
        else if ImportMode != 'SPICE' && ImportMode != 'DIRECT_QUERY' then (error "ImportMode should be 'SPICE' or 'DIRECT_QUERY'")
        else ImportMode,
    },
  },
  setDatasetParameters(DatasetParameters): {
    Properties+::: {
      DatasetParameters:
        if !std.isArray(DatasetParameters) then (error 'DatasetParameters must be an array')
        else if std.length(DatasetParameters) > 32 then error ('DatasetParameters cannot have more than 32 items')
        else DatasetParameters,
    },
  },
  pushDatasetParameters(DatasetParameters): {
    Properties+::: {
      DatasetParameters+: DatasetParameters,
    },
  },
  setLogicalTableMap(LogicalTableMap): {
    Properties+::: {
      LogicalTableMap:
        if !std.isObject(LogicalTableMap) then (error 'LogicalTableMap must be an object')
        else LogicalTableMap,
    },
  },
  setAwsAccountId(AwsAccountId): {
    Properties+::: {
      AwsAccountId:
        if !std.isString(AwsAccountId) then (error 'AwsAccountId must be a string')
        else if std.isEmpty(AwsAccountId) then (error 'AwsAccountId must be not empty')
        else if std.length(AwsAccountId) < 12 then error ('AwsAccountId should have at least 12 characters')
        else if std.length(AwsAccountId) > 12 then error ('AwsAccountId should have not more than 12 characters')
        else AwsAccountId,
    },
  },
  setDataSetUsageConfiguration(DataSetUsageConfiguration): {
    Properties+::: {
      DataSetUsageConfiguration:
        if !std.isObject(DataSetUsageConfiguration) then (error 'DataSetUsageConfiguration must be an object')
        else DataSetUsageConfiguration,
    },
  },
  setPermissions(Permissions): {
    Properties+::: {
      Permissions:
        if !std.isArray(Permissions) then (error 'Permissions must be an array')
        else if std.length(Permissions) < 1 then error ('Permissions cannot have less than 1 items')
        else if std.length(Permissions) > 64 then error ('Permissions cannot have more than 64 items')
        else Permissions,
    },
  },
  pushPermissions(Permissions): {
    Properties+::: {
      Permissions+: Permissions,
    },
  },
  setOutputColumns(OutputColumns): {
    Properties+::: {
      OutputColumns:
        if !std.isArray(OutputColumns) then (error 'OutputColumns must be an array')
        else OutputColumns,
    },
  },
  pushOutputColumns(OutputColumns): {
    Properties+::: {
      OutputColumns+: OutputColumns,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
