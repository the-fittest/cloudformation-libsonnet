local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Analysis: {
    '#': d.pkg(
      name='Analysis',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::Analysis Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::Analysis Resource
        * AwsAccountId 
        * AnalysisId 
        * Name &lt;p&gt;The descriptive name of the analysis.&lt;/p&gt;
      |||,
      args=[
        d.arg('AwsAccountId', 'd.T.string'),
        d.arg('AnalysisId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      AwsAccountId,
      AnalysisId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
        AwsAccountId: AwsAccountId,
        assert std.isString(AnalysisId) : 'AnalysisId must be a string',
        AnalysisId: AnalysisId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::QuickSight::Analysis',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withDataSetArns': d.fn('`withDataSetArns` DataSetArns ', [d.arg('DataSetArns', d.T.array)]),
    withDataSetArns(DataSetArns): {
      assert std.isArray(DataSetArns) : 'DataSetArns must be a array',
      Properties+::: { DataSetArns: DataSetArns },
    },
    '#withSourceEntity': d.fn('`withSourceEntity` SourceEntity ', [d.arg('SourceEntity', d.T.object)]),
    withSourceEntity(SourceEntity): {
      assert std.isObject(SourceEntity) : 'SourceEntity must be a object',
      Properties+::: { SourceEntity: SourceEntity },
    },
    '#withThemeArn': d.fn('`withThemeArn` ThemeArn ', [d.arg('ThemeArn', d.T.string)]),
    withThemeArn(ThemeArn): {
      assert std.isString(ThemeArn) : 'ThemeArn must be a string',
      Properties+::: { ThemeArn: ThemeArn },
    },
    '#withDefinition': d.fn('`withDefinition` Definition ', [d.arg('Definition', d.T.object)]),
    withDefinition(Definition): {
      assert std.isObject(Definition) : 'Definition must be a object',
      Properties+::: { Definition: Definition },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withValidationStrategy': d.fn('`withValidationStrategy` ValidationStrategy ', [d.arg('ValidationStrategy', d.T.object)]),
    withValidationStrategy(ValidationStrategy): {
      assert std.isObject(ValidationStrategy) : 'ValidationStrategy must be a object',
      Properties+::: { ValidationStrategy: ValidationStrategy },
    },
    '#withFolderArns': d.fn('`withFolderArns` FolderArns ', [d.arg('FolderArns', d.T.array)]),
    withFolderArns(FolderArns): {
      assert std.isArray(FolderArns) : 'FolderArns must be a array',
      Properties+::: { FolderArns: FolderArns },
    },
    '#withErrors': d.fn('`withErrors` Errors ', [d.arg('Errors', d.T.array)]),
    withErrors(Errors): {
      assert std.isArray(Errors) : 'Errors must be a array',
      Properties+::: { Errors: Errors },
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSheets': d.fn('`withSheets` Sheets ', [d.arg('Sheets', d.T.array)]),
    withSheets(Sheets): {
      assert std.isArray(Sheets) : 'Sheets must be a array',
      Properties+::: { Sheets: Sheets },
    },
  },
  Dashboard: {
    '#': d.pkg(
      name='Dashboard',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::Dashboard Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::Dashboard Resource
        * AwsAccountId 
        * DashboardId 
        * Name 
      |||,
      args=[
        d.arg('AwsAccountId', 'd.T.string'),
        d.arg('DashboardId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      AwsAccountId,
      DashboardId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
        AwsAccountId: AwsAccountId,
        assert std.isString(DashboardId) : 'DashboardId must be a string',
        DashboardId: DashboardId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::QuickSight::Dashboard',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withVersionDescription': d.fn('`withVersionDescription` VersionDescription ', [d.arg('VersionDescription', d.T.string)]),
    withVersionDescription(VersionDescription): {
      assert std.isString(VersionDescription) : 'VersionDescription must be a string',
      Properties+::: { VersionDescription: VersionDescription },
    },
    '#withSourceEntity': d.fn('`withSourceEntity` SourceEntity ', [d.arg('SourceEntity', d.T.object)]),
    withSourceEntity(SourceEntity): {
      assert std.isObject(SourceEntity) : 'SourceEntity must be a object',
      Properties+::: { SourceEntity: SourceEntity },
    },
    '#withThemeArn': d.fn('`withThemeArn` ThemeArn ', [d.arg('ThemeArn', d.T.string)]),
    withThemeArn(ThemeArn): {
      assert std.isString(ThemeArn) : 'ThemeArn must be a string',
      Properties+::: { ThemeArn: ThemeArn },
    },
    '#withDefinition': d.fn('`withDefinition` Definition ', [d.arg('Definition', d.T.object)]),
    withDefinition(Definition): {
      assert std.isObject(Definition) : 'Definition must be a object',
      Properties+::: { Definition: Definition },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withValidationStrategy': d.fn('`withValidationStrategy` ValidationStrategy ', [d.arg('ValidationStrategy', d.T.object)]),
    withValidationStrategy(ValidationStrategy): {
      assert std.isObject(ValidationStrategy) : 'ValidationStrategy must be a object',
      Properties+::: { ValidationStrategy: ValidationStrategy },
    },
    '#withFolderArns': d.fn('`withFolderArns` FolderArns ', [d.arg('FolderArns', d.T.array)]),
    withFolderArns(FolderArns): {
      assert std.isArray(FolderArns) : 'FolderArns must be a array',
      Properties+::: { FolderArns: FolderArns },
    },
    '#withLinkSharingConfiguration': d.fn('`withLinkSharingConfiguration` LinkSharingConfiguration ', [d.arg('LinkSharingConfiguration', d.T.object)]),
    withLinkSharingConfiguration(LinkSharingConfiguration): {
      assert std.isObject(LinkSharingConfiguration) : 'LinkSharingConfiguration must be a object',
      Properties+::: { LinkSharingConfiguration: LinkSharingConfiguration },
    },
    '#withDashboardPublishOptions': d.fn('`withDashboardPublishOptions` DashboardPublishOptions ', [d.arg('DashboardPublishOptions', d.T.object)]),
    withDashboardPublishOptions(DashboardPublishOptions): {
      assert std.isObject(DashboardPublishOptions) : 'DashboardPublishOptions must be a object',
      Properties+::: { DashboardPublishOptions: DashboardPublishOptions },
    },
    '#withLastPublishedTime': d.fn('`withLastPublishedTime` LastPublishedTime ', [d.arg('LastPublishedTime', d.T.string)]),
    withLastPublishedTime(LastPublishedTime): {
      assert std.isString(LastPublishedTime) : 'LastPublishedTime must be a string',
      Properties+::: { LastPublishedTime: LastPublishedTime },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.object)]),
    withVersion(Version): {
      assert std.isObject(Version) : 'Version must be a object',
      Properties+::: { Version: Version },
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withLinkEntities': d.fn('`withLinkEntities` LinkEntities ', [d.arg('LinkEntities', d.T.array)]),
    withLinkEntities(LinkEntities): {
      assert std.isArray(LinkEntities) : 'LinkEntities must be a array',
      Properties+::: { LinkEntities: LinkEntities },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DataSet: {
    '#': d.pkg(
      name='DataSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::DataSet Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::DataSet Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::QuickSight::DataSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPhysicalTableMap': d.fn('`withPhysicalTableMap` PhysicalTableMap ', [d.arg('PhysicalTableMap', d.T.object)]),
    withPhysicalTableMap(PhysicalTableMap): {
      assert std.isObject(PhysicalTableMap) : 'PhysicalTableMap must be a object',
      Properties+::: { PhysicalTableMap: PhysicalTableMap },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withFieldFolders': d.fn('`withFieldFolders` FieldFolders ', [d.arg('FieldFolders', d.T.object)]),
    withFieldFolders(FieldFolders): {
      assert std.isObject(FieldFolders) : 'FieldFolders must be a object',
      Properties+::: { FieldFolders: FieldFolders },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withDataSetId': d.fn('`withDataSetId` DataSetId ', [d.arg('DataSetId', d.T.string)]),
    withDataSetId(DataSetId): {
      assert std.isString(DataSetId) : 'DataSetId must be a string',
      Properties+::: { DataSetId: DataSetId },
    },
    '#withFolderArns': d.fn('`withFolderArns` FolderArns ', [d.arg('FolderArns', d.T.array)]),
    withFolderArns(FolderArns): {
      assert std.isArray(FolderArns) : 'FolderArns must be a array',
      Properties+::: { FolderArns: FolderArns },
    },
    '#withConsumedSpiceCapacityInBytes': d.fn('`withConsumedSpiceCapacityInBytes` ConsumedSpiceCapacityInBytes ', [d.arg('ConsumedSpiceCapacityInBytes', d.T.integer)]),
    withConsumedSpiceCapacityInBytes(ConsumedSpiceCapacityInBytes): {
      // Type: number
      Properties+::: { ConsumedSpiceCapacityInBytes: ConsumedSpiceCapacityInBytes },
    },
    '#withRowLevelPermissionDataSet': d.fn('`withRowLevelPermissionDataSet` RowLevelPermissionDataSet ', [d.arg('RowLevelPermissionDataSet', d.T.object)]),
    withRowLevelPermissionDataSet(RowLevelPermissionDataSet): {
      assert std.isObject(RowLevelPermissionDataSet) : 'RowLevelPermissionDataSet must be a object',
      Properties+::: { RowLevelPermissionDataSet: RowLevelPermissionDataSet },
    },
    '#withDataSetRefreshProperties': d.fn('`withDataSetRefreshProperties` DataSetRefreshProperties ', [d.arg('DataSetRefreshProperties', d.T.object)]),
    withDataSetRefreshProperties(DataSetRefreshProperties): {
      assert std.isObject(DataSetRefreshProperties) : 'DataSetRefreshProperties must be a object',
      Properties+::: { DataSetRefreshProperties: DataSetRefreshProperties },
    },
    '#withRowLevelPermissionTagConfiguration': d.fn('`withRowLevelPermissionTagConfiguration` RowLevelPermissionTagConfiguration ', [d.arg('RowLevelPermissionTagConfiguration', d.T.object)]),
    withRowLevelPermissionTagConfiguration(RowLevelPermissionTagConfiguration): {
      assert std.isObject(RowLevelPermissionTagConfiguration) : 'RowLevelPermissionTagConfiguration must be a object',
      Properties+::: { RowLevelPermissionTagConfiguration: RowLevelPermissionTagConfiguration },
    },
    '#withIngestionWaitPolicy': d.fn('`withIngestionWaitPolicy` IngestionWaitPolicy ', [d.arg('IngestionWaitPolicy', d.T.object)]),
    withIngestionWaitPolicy(IngestionWaitPolicy): {
      assert std.isObject(IngestionWaitPolicy) : 'IngestionWaitPolicy must be a object',
      Properties+::: { IngestionWaitPolicy: IngestionWaitPolicy },
    },
    '#withColumnLevelPermissionRules': d.fn('`withColumnLevelPermissionRules` ColumnLevelPermissionRules ', [d.arg('ColumnLevelPermissionRules', d.T.array)]),
    withColumnLevelPermissionRules(ColumnLevelPermissionRules): {
      assert std.isArray(ColumnLevelPermissionRules) : 'ColumnLevelPermissionRules must be a array',
      Properties+::: { ColumnLevelPermissionRules: ColumnLevelPermissionRules },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withColumnGroups': d.fn('`withColumnGroups` ColumnGroups ', [d.arg('ColumnGroups', d.T.array)]),
    withColumnGroups(ColumnGroups): {
      assert std.isArray(ColumnGroups) : 'ColumnGroups must be a array',
      Properties+::: { ColumnGroups: ColumnGroups },
    },
    '#withImportMode': d.fn('`withImportMode` ImportMode ', [d.arg('ImportMode', d.T.string)]),
    withImportMode(ImportMode): {
      assert std.isString(ImportMode) : 'ImportMode must be a string',
      Properties+::: { ImportMode: ImportMode },
    },
    '#withDatasetParameters': d.fn('`withDatasetParameters` DatasetParameters ', [d.arg('DatasetParameters', d.T.array)]),
    withDatasetParameters(DatasetParameters): {
      assert std.isArray(DatasetParameters) : 'DatasetParameters must be a array',
      Properties+::: { DatasetParameters: DatasetParameters },
    },
    '#withLogicalTableMap': d.fn('`withLogicalTableMap` LogicalTableMap ', [d.arg('LogicalTableMap', d.T.object)]),
    withLogicalTableMap(LogicalTableMap): {
      assert std.isObject(LogicalTableMap) : 'LogicalTableMap must be a object',
      Properties+::: { LogicalTableMap: LogicalTableMap },
    },
    '#withAwsAccountId': d.fn('`withAwsAccountId` AwsAccountId ', [d.arg('AwsAccountId', d.T.string)]),
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: { AwsAccountId: AwsAccountId },
    },
    '#withDataSetUsageConfiguration': d.fn('`withDataSetUsageConfiguration` DataSetUsageConfiguration ', [d.arg('DataSetUsageConfiguration', d.T.object)]),
    withDataSetUsageConfiguration(DataSetUsageConfiguration): {
      assert std.isObject(DataSetUsageConfiguration) : 'DataSetUsageConfiguration must be a object',
      Properties+::: { DataSetUsageConfiguration: DataSetUsageConfiguration },
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withOutputColumns': d.fn('`withOutputColumns` OutputColumns ', [d.arg('OutputColumns', d.T.array)]),
    withOutputColumns(OutputColumns): {
      assert std.isArray(OutputColumns) : 'OutputColumns must be a array',
      Properties+::: { OutputColumns: OutputColumns },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DataSource: {
    '#': d.pkg(
      name='DataSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::DataSource Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::DataSource Resource
        * Name 
        * Type 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::QuickSight::DataSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAlternateDataSourceParameters': d.fn('`withAlternateDataSourceParameters` AlternateDataSourceParameters ', [d.arg('AlternateDataSourceParameters', d.T.array)]),
    withAlternateDataSourceParameters(AlternateDataSourceParameters): {
      assert std.isArray(AlternateDataSourceParameters) : 'AlternateDataSourceParameters must be a array',
      Properties+::: { AlternateDataSourceParameters: AlternateDataSourceParameters },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAwsAccountId': d.fn('`withAwsAccountId` AwsAccountId ', [d.arg('AwsAccountId', d.T.string)]),
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: { AwsAccountId: AwsAccountId },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withCredentials': d.fn('`withCredentials` Credentials ', [d.arg('Credentials', d.T.object)]),
    withCredentials(Credentials): {
      assert std.isObject(Credentials) : 'Credentials must be a object',
      Properties+::: { Credentials: Credentials },
    },
    '#withDataSourceId': d.fn('`withDataSourceId` DataSourceId ', [d.arg('DataSourceId', d.T.string)]),
    withDataSourceId(DataSourceId): {
      assert std.isString(DataSourceId) : 'DataSourceId must be a string',
      Properties+::: { DataSourceId: DataSourceId },
    },
    '#withDataSourceParameters': d.fn('`withDataSourceParameters` DataSourceParameters ', [d.arg('DataSourceParameters', d.T.object)]),
    withDataSourceParameters(DataSourceParameters): {
      assert std.isObject(DataSourceParameters) : 'DataSourceParameters must be a object',
      Properties+::: { DataSourceParameters: DataSourceParameters },
    },
    '#withErrorInfo': d.fn('`withErrorInfo` ErrorInfo ', [d.arg('ErrorInfo', d.T.object)]),
    withErrorInfo(ErrorInfo): {
      assert std.isObject(ErrorInfo) : 'ErrorInfo must be a object',
      Properties+::: { ErrorInfo: ErrorInfo },
    },
    '#withFolderArns': d.fn('`withFolderArns` FolderArns ', [d.arg('FolderArns', d.T.array)]),
    withFolderArns(FolderArns): {
      assert std.isArray(FolderArns) : 'FolderArns must be a array',
      Properties+::: { FolderArns: FolderArns },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withSslProperties': d.fn('`withSslProperties` SslProperties ', [d.arg('SslProperties', d.T.object)]),
    withSslProperties(SslProperties): {
      assert std.isObject(SslProperties) : 'SslProperties must be a object',
      Properties+::: { SslProperties: SslProperties },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVpcConnectionProperties': d.fn('`withVpcConnectionProperties` VpcConnectionProperties ', [d.arg('VpcConnectionProperties', d.T.object)]),
    withVpcConnectionProperties(VpcConnectionProperties): {
      assert std.isObject(VpcConnectionProperties) : 'VpcConnectionProperties must be a object',
      Properties+::: { VpcConnectionProperties: VpcConnectionProperties },
    },
  },
  Folder: {
    '#': d.pkg(
      name='Folder',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::Folder Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::Folder Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::QuickSight::Folder',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAwsAccountId': d.fn('`withAwsAccountId` AwsAccountId ', [d.arg('AwsAccountId', d.T.string)]),
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: { AwsAccountId: AwsAccountId },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withFolderId': d.fn('`withFolderId` FolderId ', [d.arg('FolderId', d.T.string)]),
    withFolderId(FolderId): {
      assert std.isString(FolderId) : 'FolderId must be a string',
      Properties+::: { FolderId: FolderId },
    },
    '#withFolderType': d.fn('`withFolderType` FolderType ', [d.arg('FolderType', d.T.string)]),
    withFolderType(FolderType): {
      assert std.isString(FolderType) : 'FolderType must be a string',
      Properties+::: { FolderType: FolderType },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withParentFolderArn': d.fn('`withParentFolderArn` ParentFolderArn ', [d.arg('ParentFolderArn', d.T.string)]),
    withParentFolderArn(ParentFolderArn): {
      assert std.isString(ParentFolderArn) : 'ParentFolderArn must be a string',
      Properties+::: { ParentFolderArn: ParentFolderArn },
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withSharingModel': d.fn('`withSharingModel` SharingModel ', [d.arg('SharingModel', d.T.string)]),
    withSharingModel(SharingModel): {
      assert std.isString(SharingModel) : 'SharingModel must be a string',
      Properties+::: { SharingModel: SharingModel },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  RefreshSchedule: {
    '#': d.pkg(
      name='RefreshSchedule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::RefreshSchedule Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::RefreshSchedule Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::QuickSight::RefreshSchedule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAwsAccountId': d.fn('`withAwsAccountId` AwsAccountId ', [d.arg('AwsAccountId', d.T.string)]),
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: { AwsAccountId: AwsAccountId },
    },
    '#withDataSetId': d.fn('`withDataSetId` DataSetId ', [d.arg('DataSetId', d.T.string)]),
    withDataSetId(DataSetId): {
      assert std.isString(DataSetId) : 'DataSetId must be a string',
      Properties+::: { DataSetId: DataSetId },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.object)]),
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: { Schedule: Schedule },
    },
  },
  Template: {
    '#': d.pkg(
      name='Template',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::Template Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::Template Resource
        * AwsAccountId 
        * TemplateId 
      |||,
      args=[
        d.arg('AwsAccountId', 'd.T.string'),
        d.arg('TemplateId', 'd.T.string'),
      ]
    ),
    new(
      AwsAccountId,
      TemplateId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
        AwsAccountId: AwsAccountId,
        assert std.isString(TemplateId) : 'TemplateId must be a string',
        TemplateId: TemplateId,
      },
      DependsOn:: [],
      Type: 'AWS::QuickSight::Template',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withVersionDescription': d.fn('`withVersionDescription` VersionDescription ', [d.arg('VersionDescription', d.T.string)]),
    withVersionDescription(VersionDescription): {
      assert std.isString(VersionDescription) : 'VersionDescription must be a string',
      Properties+::: { VersionDescription: VersionDescription },
    },
    '#withSourceEntity': d.fn('`withSourceEntity` SourceEntity ', [d.arg('SourceEntity', d.T.object)]),
    withSourceEntity(SourceEntity): {
      assert std.isObject(SourceEntity) : 'SourceEntity must be a object',
      Properties+::: { SourceEntity: SourceEntity },
    },
    '#withDefinition': d.fn('`withDefinition` Definition ', [d.arg('Definition', d.T.object)]),
    withDefinition(Definition): {
      assert std.isObject(Definition) : 'Definition must be a object',
      Properties+::: { Definition: Definition },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withValidationStrategy': d.fn('`withValidationStrategy` ValidationStrategy ', [d.arg('ValidationStrategy', d.T.object)]),
    withValidationStrategy(ValidationStrategy): {
      assert std.isObject(ValidationStrategy) : 'ValidationStrategy must be a object',
      Properties+::: { ValidationStrategy: ValidationStrategy },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.object)]),
    withVersion(Version): {
      assert std.isObject(Version) : 'Version must be a object',
      Properties+::: { Version: Version },
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Theme: {
    '#': d.pkg(
      name='Theme',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::Theme Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::Theme Resource
        * AwsAccountId 
        * ThemeId 
        * BaseThemeId 
        * Configuration 
        * Name 
      |||,
      args=[
        d.arg('AwsAccountId', 'd.T.string'),
        d.arg('ThemeId', 'd.T.string'),
        d.arg('BaseThemeId', 'd.T.string'),
        d.arg('Configuration', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      AwsAccountId,
      ThemeId,
      BaseThemeId,
      Configuration,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
        AwsAccountId: AwsAccountId,
        assert std.isString(ThemeId) : 'ThemeId must be a string',
        ThemeId: ThemeId,
        assert std.isString(BaseThemeId) : 'BaseThemeId must be a string',
        BaseThemeId: BaseThemeId,
        assert std.isObject(Configuration) : 'Configuration must be a object',
        Configuration: Configuration,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::QuickSight::Theme',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.object)]),
    withVersion(Version): {
      assert std.isObject(Version) : 'Version must be a object',
      Properties+::: { Version: Version },
    },
    '#withVersionDescription': d.fn('`withVersionDescription` VersionDescription ', [d.arg('VersionDescription', d.T.string)]),
    withVersionDescription(VersionDescription): {
      assert std.isString(VersionDescription) : 'VersionDescription must be a string',
      Properties+::: { VersionDescription: VersionDescription },
    },
  },
  Topic: {
    '#': d.pkg(
      name='Topic',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::Topic Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::Topic Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::QuickSight::Topic',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAwsAccountId': d.fn('`withAwsAccountId` AwsAccountId ', [d.arg('AwsAccountId', d.T.string)]),
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: { AwsAccountId: AwsAccountId },
    },
    '#withDataSets': d.fn('`withDataSets` DataSets ', [d.arg('DataSets', d.T.array)]),
    withDataSets(DataSets): {
      assert std.isArray(DataSets) : 'DataSets must be a array',
      Properties+::: { DataSets: DataSets },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTopicId': d.fn('`withTopicId` TopicId ', [d.arg('TopicId', d.T.string)]),
    withTopicId(TopicId): {
      assert std.isString(TopicId) : 'TopicId must be a string',
      Properties+::: { TopicId: TopicId },
    },
    '#withUserExperienceVersion': d.fn('`withUserExperienceVersion` UserExperienceVersion ', [d.arg('UserExperienceVersion', d.T.string)]),
    withUserExperienceVersion(UserExperienceVersion): {
      assert std.isString(UserExperienceVersion) : 'UserExperienceVersion must be a string',
      Properties+::: { UserExperienceVersion: UserExperienceVersion },
    },
  },
  VPCConnection: {
    '#': d.pkg(
      name='VPCConnection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QuickSight.libsonnet',
      help='Definition of the AWS::QuickSight::VPCConnection Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QuickSight::VPCConnection Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::QuickSight::VPCConnection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAvailabilityStatus': d.fn('`withAvailabilityStatus` AvailabilityStatus ', [d.arg('AvailabilityStatus', d.T.string)]),
    withAvailabilityStatus(AvailabilityStatus): {
      assert std.isString(AvailabilityStatus) : 'AvailabilityStatus must be a string',
      Properties+::: { AvailabilityStatus: AvailabilityStatus },
    },
    '#withAwsAccountId': d.fn('`withAwsAccountId` AwsAccountId ', [d.arg('AwsAccountId', d.T.string)]),
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: { AwsAccountId: AwsAccountId },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withDnsResolvers': d.fn('`withDnsResolvers` DnsResolvers ', [d.arg('DnsResolvers', d.T.array)]),
    withDnsResolvers(DnsResolvers): {
      assert std.isArray(DnsResolvers) : 'DnsResolvers must be a array',
      Properties+::: { DnsResolvers: DnsResolvers },
    },
    '#withLastUpdatedTime': d.fn('`withLastUpdatedTime` LastUpdatedTime ', [d.arg('LastUpdatedTime', d.T.string)]),
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: { LastUpdatedTime: LastUpdatedTime },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withNetworkInterfaces': d.fn('`withNetworkInterfaces` NetworkInterfaces ', [d.arg('NetworkInterfaces', d.T.array)]),
    withNetworkInterfaces(NetworkInterfaces): {
      assert std.isArray(NetworkInterfaces) : 'NetworkInterfaces must be a array',
      Properties+::: { NetworkInterfaces: NetworkInterfaces },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withSubnetIds': d.fn('`withSubnetIds` SubnetIds ', [d.arg('SubnetIds', d.T.array)]),
    withSubnetIds(SubnetIds): {
      assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
      Properties+::: { SubnetIds: SubnetIds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVPCConnectionId': d.fn('`withVPCConnectionId` VPCConnectionId ', [d.arg('VPCConnectionId', d.T.string)]),
    withVPCConnectionId(VPCConnectionId): {
      assert std.isString(VPCConnectionId) : 'VPCConnectionId must be a string',
      Properties+::: { VPCConnectionId: VPCConnectionId },
    },
    '#withVPCId': d.fn('`withVPCId` VPCId ', [d.arg('VPCId', d.T.string)]),
    withVPCId(VPCId): {
      assert std.isString(VPCId) : 'VPCId must be a string',
      Properties+::: { VPCId: VPCId },
    },
  },
}
