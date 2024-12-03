local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Classifier: {
    '#': d.pkg(
      name='Classifier',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Classifier',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Classifier Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Glue::Classifier',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withXMLClassifier': d.fn('`withXMLClassifier` XMLClassifier ', [d.arg('XMLClassifier', d.T.object)]),
    withXMLClassifier(XMLClassifier): {
      assert std.isObject(XMLClassifier) : 'XMLClassifier must be a object',
      Properties+::: { XMLClassifier: XMLClassifier },
    },
    '#withCsvClassifier': d.fn('`withCsvClassifier` CsvClassifier ', [d.arg('CsvClassifier', d.T.object)]),
    withCsvClassifier(CsvClassifier): {
      assert std.isObject(CsvClassifier) : 'CsvClassifier must be a object',
      Properties+::: { CsvClassifier: CsvClassifier },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withGrokClassifier': d.fn('`withGrokClassifier` GrokClassifier ', [d.arg('GrokClassifier', d.T.object)]),
    withGrokClassifier(GrokClassifier): {
      assert std.isObject(GrokClassifier) : 'GrokClassifier must be a object',
      Properties+::: { GrokClassifier: GrokClassifier },
    },
    '#withJsonClassifier': d.fn('`withJsonClassifier` JsonClassifier ', [d.arg('JsonClassifier', d.T.object)]),
    withJsonClassifier(JsonClassifier): {
      assert std.isObject(JsonClassifier) : 'JsonClassifier must be a object',
      Properties+::: { JsonClassifier: JsonClassifier },
    },
  },
  Connection: {
    '#': d.pkg(
      name='Connection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Connection',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Connection Resource
        * ConnectionInput 
        * CatalogId 
      |||,
      args=[
        d.arg('ConnectionInput', 'd.T.object'),
        d.arg('CatalogId', 'd.T.string'),
      ]
    ),
    new(
      ConnectionInput,
      CatalogId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ConnectionInput) : 'ConnectionInput must be a object',
        ConnectionInput: ConnectionInput,
        assert std.isString(CatalogId) : 'CatalogId must be a string',
        CatalogId: CatalogId,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Connection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Crawler: {
    '#': d.pkg(
      name='Crawler',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Crawler',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Crawler Resource
        * Role The Amazon Resource Name (ARN) of an IAM role thats used to access customer resources, such as Amazon Simple Storage Service (Amazon S3) data.
        * Targets 
      |||,
      args=[
        d.arg('Role', 'd.T.string'),
        d.arg('Targets', 'd.T.object'),
      ]
    ),
    new(
      Role,
      Targets,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
        assert std.isObject(Targets) : 'Targets must be a object',
        Targets: Targets,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Crawler',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClassifiers': d.fn('`withClassifiers` Classifiers ', [d.arg('Classifiers', d.T.array)]),
    withClassifiers(Classifiers): {
      assert std.isArray(Classifiers) : 'Classifiers must be a array',
      Properties+::: { Classifiers: Classifiers },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSchemaChangePolicy': d.fn('`withSchemaChangePolicy` SchemaChangePolicy ', [d.arg('SchemaChangePolicy', d.T.object)]),
    withSchemaChangePolicy(SchemaChangePolicy): {
      assert std.isObject(SchemaChangePolicy) : 'SchemaChangePolicy must be a object',
      Properties+::: { SchemaChangePolicy: SchemaChangePolicy },
    },
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration', d.T.string)]),
    withConfiguration(Configuration): {
      assert std.isString(Configuration) : 'Configuration must be a string',
      Properties+::: { Configuration: Configuration },
    },
    '#withRecrawlPolicy': d.fn('`withRecrawlPolicy` RecrawlPolicy ', [d.arg('RecrawlPolicy', d.T.object)]),
    withRecrawlPolicy(RecrawlPolicy): {
      assert std.isObject(RecrawlPolicy) : 'RecrawlPolicy must be a object',
      Properties+::: { RecrawlPolicy: RecrawlPolicy },
    },
    '#withDatabaseName': d.fn('`withDatabaseName` DatabaseName ', [d.arg('DatabaseName', d.T.string)]),
    withDatabaseName(DatabaseName): {
      assert std.isString(DatabaseName) : 'DatabaseName must be a string',
      Properties+::: { DatabaseName: DatabaseName },
    },
    '#withCrawlerSecurityConfiguration': d.fn('`withCrawlerSecurityConfiguration` CrawlerSecurityConfiguration ', [d.arg('CrawlerSecurityConfiguration', d.T.string)]),
    withCrawlerSecurityConfiguration(CrawlerSecurityConfiguration): {
      assert std.isString(CrawlerSecurityConfiguration) : 'CrawlerSecurityConfiguration must be a string',
      Properties+::: { CrawlerSecurityConfiguration: CrawlerSecurityConfiguration },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withLakeFormationConfiguration': d.fn('`withLakeFormationConfiguration` LakeFormationConfiguration ', [d.arg('LakeFormationConfiguration', d.T.object)]),
    withLakeFormationConfiguration(LakeFormationConfiguration): {
      assert std.isObject(LakeFormationConfiguration) : 'LakeFormationConfiguration must be a object',
      Properties+::: { LakeFormationConfiguration: LakeFormationConfiguration },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.object)]),
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: { Schedule: Schedule },
    },
    '#withTablePrefix': d.fn('`withTablePrefix` TablePrefix ', [d.arg('TablePrefix', d.T.string)]),
    withTablePrefix(TablePrefix): {
      assert std.isString(TablePrefix) : 'TablePrefix must be a string',
      Properties+::: { TablePrefix: TablePrefix },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  CustomEntityType: {
    '#': d.pkg(
      name='CustomEntityType',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::CustomEntityType',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::CustomEntityType Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Glue::CustomEntityType',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRegexString': d.fn('`withRegexString` RegexString ', [d.arg('RegexString', d.T.string)]),
    withRegexString(RegexString): {
      assert std.isString(RegexString) : 'RegexString must be a string',
      Properties+::: { RegexString: RegexString },
    },
    '#withContextWords': d.fn('`withContextWords` ContextWords ', [d.arg('ContextWords', d.T.array)]),
    withContextWords(ContextWords): {
      assert std.isArray(ContextWords) : 'ContextWords must be a array',
      Properties+::: { ContextWords: ContextWords },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  Database: {
    '#': d.pkg(
      name='Database',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Database',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Database Resource
        * DatabaseInput The metadata for the database.
        * CatalogId The AWS account ID for the account in which to create the catalog object.
      |||,
      args=[
        d.arg('DatabaseInput', 'd.T.object'),
        d.arg('CatalogId', 'd.T.string'),
      ]
    ),
    new(
      DatabaseInput,
      CatalogId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DatabaseInput) : 'DatabaseInput must be a object',
        DatabaseInput: DatabaseInput,
        assert std.isString(CatalogId) : 'CatalogId must be a string',
        CatalogId: CatalogId,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Database',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDatabaseName': d.fn('`withDatabaseName` DatabaseName ', [d.arg('DatabaseName', d.T.string)]),
    withDatabaseName(DatabaseName): {
      assert std.isString(DatabaseName) : 'DatabaseName must be a string',
      Properties+::: { DatabaseName: DatabaseName },
    },
  },
  DataCatalogEncryptionSettings: {
    '#': d.pkg(
      name='DataCatalogEncryptionSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::DataCatalogEncryptionSettings',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::DataCatalogEncryptionSettings Resource
        * DataCatalogEncryptionSettings 
        * CatalogId 
      |||,
      args=[
        d.arg('DataCatalogEncryptionSettings', 'd.T.object'),
        d.arg('CatalogId', 'd.T.string'),
      ]
    ),
    new(
      DataCatalogEncryptionSettings,
      CatalogId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DataCatalogEncryptionSettings) : 'DataCatalogEncryptionSettings must be a object',
        DataCatalogEncryptionSettings: DataCatalogEncryptionSettings,
        assert std.isString(CatalogId) : 'CatalogId must be a string',
        CatalogId: CatalogId,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::DataCatalogEncryptionSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  DataQualityRuleset: {
    '#': d.pkg(
      name='DataQualityRuleset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::DataQualityRuleset',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::DataQualityRuleset Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Glue::DataQualityRuleset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRuleset': d.fn('`withRuleset` Ruleset ', [d.arg('Ruleset', d.T.string)]),
    withRuleset(Ruleset): {
      assert std.isString(Ruleset) : 'Ruleset must be a string',
      Properties+::: { Ruleset: Ruleset },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTargetTable': d.fn('`withTargetTable` TargetTable ', [d.arg('TargetTable', d.T.object)]),
    withTargetTable(TargetTable): {
      assert std.isObject(TargetTable) : 'TargetTable must be a object',
      Properties+::: { TargetTable: TargetTable },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withClientToken': d.fn('`withClientToken` ClientToken ', [d.arg('ClientToken', d.T.string)]),
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: { ClientToken: ClientToken },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  DevEndpoint: {
    '#': d.pkg(
      name='DevEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::DevEndpoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::DevEndpoint Resource
        * RoleArn 
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::DevEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withExtraJarsS3Path': d.fn('`withExtraJarsS3Path` ExtraJarsS3Path ', [d.arg('ExtraJarsS3Path', d.T.string)]),
    withExtraJarsS3Path(ExtraJarsS3Path): {
      assert std.isString(ExtraJarsS3Path) : 'ExtraJarsS3Path must be a string',
      Properties+::: { ExtraJarsS3Path: ExtraJarsS3Path },
    },
    '#withPublicKey': d.fn('`withPublicKey` PublicKey ', [d.arg('PublicKey', d.T.string)]),
    withPublicKey(PublicKey): {
      assert std.isString(PublicKey) : 'PublicKey must be a string',
      Properties+::: { PublicKey: PublicKey },
    },
    '#withNumberOfNodes': d.fn('`withNumberOfNodes` NumberOfNodes ', [d.arg('NumberOfNodes', d.T.integer)]),
    withNumberOfNodes(NumberOfNodes): {
      assert std.isNumber(NumberOfNodes) : 'NumberOfNodes must be a integer',
      Properties+::: { NumberOfNodes: NumberOfNodes },
    },
    '#withArguments': d.fn('`withArguments` Arguments ', [d.arg('Arguments', d.T.object)]),
    withArguments(Arguments): {
      assert std.isObject(Arguments) : 'Arguments must be a object',
      Properties+::: { Arguments: Arguments },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withPublicKeys': d.fn('`withPublicKeys` PublicKeys ', [d.arg('PublicKeys', d.T.array)]),
    withPublicKeys(PublicKeys): {
      assert std.isArray(PublicKeys) : 'PublicKeys must be a array',
      Properties+::: { PublicKeys: PublicKeys },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withWorkerType': d.fn('`withWorkerType` WorkerType ', [d.arg('WorkerType', d.T.string)]),
    withWorkerType(WorkerType): {
      assert std.isString(WorkerType) : 'WorkerType must be a string',
      Properties+::: { WorkerType: WorkerType },
    },
    '#withEndpointName': d.fn('`withEndpointName` EndpointName ', [d.arg('EndpointName', d.T.string)]),
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: { EndpointName: EndpointName },
    },
    '#withGlueVersion': d.fn('`withGlueVersion` GlueVersion ', [d.arg('GlueVersion', d.T.string)]),
    withGlueVersion(GlueVersion): {
      assert std.isString(GlueVersion) : 'GlueVersion must be a string',
      Properties+::: { GlueVersion: GlueVersion },
    },
    '#withExtraPythonLibsS3Path': d.fn('`withExtraPythonLibsS3Path` ExtraPythonLibsS3Path ', [d.arg('ExtraPythonLibsS3Path', d.T.string)]),
    withExtraPythonLibsS3Path(ExtraPythonLibsS3Path): {
      assert std.isString(ExtraPythonLibsS3Path) : 'ExtraPythonLibsS3Path must be a string',
      Properties+::: { ExtraPythonLibsS3Path: ExtraPythonLibsS3Path },
    },
    '#withSecurityConfiguration': d.fn('`withSecurityConfiguration` SecurityConfiguration ', [d.arg('SecurityConfiguration', d.T.string)]),
    withSecurityConfiguration(SecurityConfiguration): {
      assert std.isString(SecurityConfiguration) : 'SecurityConfiguration must be a string',
      Properties+::: { SecurityConfiguration: SecurityConfiguration },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNumberOfWorkers': d.fn('`withNumberOfWorkers` NumberOfWorkers ', [d.arg('NumberOfWorkers', d.T.integer)]),
    withNumberOfWorkers(NumberOfWorkers): {
      assert std.isNumber(NumberOfWorkers) : 'NumberOfWorkers must be a integer',
      Properties+::: { NumberOfWorkers: NumberOfWorkers },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Job: {
    '#': d.pkg(
      name='Job',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Job',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Job Resource
        * Role The name or Amazon Resource Name (ARN) of the IAM role associated with this job.
        * Command The code that executes a job.
      |||,
      args=[
        d.arg('Role', 'd.T.string'),
        d.arg('Command', 'd.T.object'),
      ]
    ),
    new(
      Role,
      Command,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
        assert std.isObject(Command) : 'Command must be a object',
        Command: Command,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Job',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnections': d.fn('`withConnections` Connections ', [d.arg('Connections', d.T.object)]),
    withConnections(Connections): {
      assert std.isObject(Connections) : 'Connections must be a object',
      Properties+::: { Connections: Connections },
    },
    '#withMaxRetries': d.fn('`withMaxRetries` MaxRetries ', [d.arg('MaxRetries', d.T.integer)]),
    withMaxRetries(MaxRetries): {
      // Type: number
      Properties+::: { MaxRetries: MaxRetries },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTimeout': d.fn('`withTimeout` Timeout ', [d.arg('Timeout', d.T.integer)]),
    withTimeout(Timeout): {
      assert std.isNumber(Timeout) : 'Timeout must be a integer',
      Properties+::: { Timeout: Timeout },
    },
    '#withAllocatedCapacity': d.fn('`withAllocatedCapacity` AllocatedCapacity ', [d.arg('AllocatedCapacity', d.T.integer)]),
    withAllocatedCapacity(AllocatedCapacity): {
      // Type: number
      Properties+::: { AllocatedCapacity: AllocatedCapacity },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDefaultArguments': d.fn('`withDefaultArguments` DefaultArguments ', [d.arg('DefaultArguments', d.T.object)]),
    withDefaultArguments(DefaultArguments): {
      assert std.isObject(DefaultArguments) : 'DefaultArguments must be a object',
      Properties+::: { DefaultArguments: DefaultArguments },
    },
    '#withNotificationProperty': d.fn('`withNotificationProperty` NotificationProperty ', [d.arg('NotificationProperty', d.T.object)]),
    withNotificationProperty(NotificationProperty): {
      assert std.isObject(NotificationProperty) : 'NotificationProperty must be a object',
      Properties+::: { NotificationProperty: NotificationProperty },
    },
    '#withWorkerType': d.fn('`withWorkerType` WorkerType ', [d.arg('WorkerType', d.T.string)]),
    withWorkerType(WorkerType): {
      assert std.isString(WorkerType) : 'WorkerType must be a string',
      assert WorkerType == 'Standard' || WorkerType == 'G.1X' || WorkerType == 'G.2X' || WorkerType == 'G.025X' || WorkerType == 'G.4X' || WorkerType == 'G.8X' || WorkerType == 'Z.2X' : "WorkerType must be either 'Standard' or 'G.1X' or 'G.2X' or 'G.025X' or 'G.4X' or 'G.8X' or 'Z.2X'",
      Properties+::: { WorkerType: WorkerType },
    },
    '#withExecutionClass': d.fn('`withExecutionClass` ExecutionClass ', [d.arg('ExecutionClass', d.T.string)]),
    withExecutionClass(ExecutionClass): {
      assert std.isString(ExecutionClass) : 'ExecutionClass must be a string',
      Properties+::: { ExecutionClass: ExecutionClass },
    },
    '#withLogUri': d.fn('`withLogUri` LogUri ', [d.arg('LogUri', d.T.string)]),
    withLogUri(LogUri): {
      assert std.isString(LogUri) : 'LogUri must be a string',
      Properties+::: { LogUri: LogUri },
    },
    '#withGlueVersion': d.fn('`withGlueVersion` GlueVersion ', [d.arg('GlueVersion', d.T.string)]),
    withGlueVersion(GlueVersion): {
      assert std.isString(GlueVersion) : 'GlueVersion must be a string',
      Properties+::: { GlueVersion: GlueVersion },
    },
    '#withExecutionProperty': d.fn('`withExecutionProperty` ExecutionProperty ', [d.arg('ExecutionProperty', d.T.object)]),
    withExecutionProperty(ExecutionProperty): {
      assert std.isObject(ExecutionProperty) : 'ExecutionProperty must be a object',
      Properties+::: { ExecutionProperty: ExecutionProperty },
    },
    '#withSecurityConfiguration': d.fn('`withSecurityConfiguration` SecurityConfiguration ', [d.arg('SecurityConfiguration', d.T.string)]),
    withSecurityConfiguration(SecurityConfiguration): {
      assert std.isString(SecurityConfiguration) : 'SecurityConfiguration must be a string',
      Properties+::: { SecurityConfiguration: SecurityConfiguration },
    },
    '#withNumberOfWorkers': d.fn('`withNumberOfWorkers` NumberOfWorkers ', [d.arg('NumberOfWorkers', d.T.integer)]),
    withNumberOfWorkers(NumberOfWorkers): {
      assert std.isNumber(NumberOfWorkers) : 'NumberOfWorkers must be a integer',
      Properties+::: { NumberOfWorkers: NumberOfWorkers },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withMaxCapacity': d.fn('`withMaxCapacity` MaxCapacity ', [d.arg('MaxCapacity', d.T.integer)]),
    withMaxCapacity(MaxCapacity): {
      // Type: number
      Properties+::: { MaxCapacity: MaxCapacity },
    },
    '#withNonOverridableArguments': d.fn('`withNonOverridableArguments` NonOverridableArguments ', [d.arg('NonOverridableArguments', d.T.object)]),
    withNonOverridableArguments(NonOverridableArguments): {
      assert std.isObject(NonOverridableArguments) : 'NonOverridableArguments must be a object',
      Properties+::: { NonOverridableArguments: NonOverridableArguments },
    },
    '#withMaintenanceWindow': d.fn('`withMaintenanceWindow` MaintenanceWindow ', [d.arg('MaintenanceWindow', d.T.string)]),
    withMaintenanceWindow(MaintenanceWindow): {
      assert std.isString(MaintenanceWindow) : 'MaintenanceWindow must be a string',
      Properties+::: { MaintenanceWindow: MaintenanceWindow },
    },
    '#withJobMode': d.fn('`withJobMode` JobMode ', [d.arg('JobMode', d.T.string)]),
    withJobMode(JobMode): {
      assert std.isString(JobMode) : 'JobMode must be a string',
      Properties+::: { JobMode: JobMode },
    },
    '#withJobRunQueuingEnabled': d.fn('`withJobRunQueuingEnabled` JobRunQueuingEnabled ', [d.arg('JobRunQueuingEnabled', d.T.boolean)]),
    withJobRunQueuingEnabled(JobRunQueuingEnabled): {
      assert std.isBoolean(JobRunQueuingEnabled) : 'JobRunQueuingEnabled must be a boolean',
      Properties+::: { JobRunQueuingEnabled: JobRunQueuingEnabled },
    },
  },
  MLTransform: {
    '#': d.pkg(
      name='MLTransform',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::MLTransform',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::MLTransform Resource
        * Role 
        * TransformParameters 
        * InputRecordTables 
      |||,
      args=[
        d.arg('Role', 'd.T.string'),
        d.arg('TransformParameters', 'd.T.object'),
        d.arg('InputRecordTables', 'd.T.object'),
      ]
    ),
    new(
      Role,
      TransformParameters,
      InputRecordTables,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
        assert std.isObject(TransformParameters) : 'TransformParameters must be a object',
        TransformParameters: TransformParameters,
        assert std.isObject(InputRecordTables) : 'InputRecordTables must be a object',
        InputRecordTables: InputRecordTables,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::MLTransform',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMaxRetries': d.fn('`withMaxRetries` MaxRetries ', [d.arg('MaxRetries', d.T.integer)]),
    withMaxRetries(MaxRetries): {
      assert std.isNumber(MaxRetries) : 'MaxRetries must be a integer',
      Properties+::: { MaxRetries: MaxRetries },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTransformEncryption': d.fn('`withTransformEncryption` TransformEncryption ', [d.arg('TransformEncryption', d.T.object)]),
    withTransformEncryption(TransformEncryption): {
      assert std.isObject(TransformEncryption) : 'TransformEncryption must be a object',
      Properties+::: { TransformEncryption: TransformEncryption },
    },
    '#withTimeout': d.fn('`withTimeout` Timeout ', [d.arg('Timeout', d.T.integer)]),
    withTimeout(Timeout): {
      assert std.isNumber(Timeout) : 'Timeout must be a integer',
      Properties+::: { Timeout: Timeout },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withWorkerType': d.fn('`withWorkerType` WorkerType ', [d.arg('WorkerType', d.T.string)]),
    withWorkerType(WorkerType): {
      assert std.isString(WorkerType) : 'WorkerType must be a string',
      Properties+::: { WorkerType: WorkerType },
    },
    '#withGlueVersion': d.fn('`withGlueVersion` GlueVersion ', [d.arg('GlueVersion', d.T.string)]),
    withGlueVersion(GlueVersion): {
      assert std.isString(GlueVersion) : 'GlueVersion must be a string',
      Properties+::: { GlueVersion: GlueVersion },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNumberOfWorkers': d.fn('`withNumberOfWorkers` NumberOfWorkers ', [d.arg('NumberOfWorkers', d.T.integer)]),
    withNumberOfWorkers(NumberOfWorkers): {
      assert std.isNumber(NumberOfWorkers) : 'NumberOfWorkers must be a integer',
      Properties+::: { NumberOfWorkers: NumberOfWorkers },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withMaxCapacity': d.fn('`withMaxCapacity` MaxCapacity ', [d.arg('MaxCapacity', d.T.integer)]),
    withMaxCapacity(MaxCapacity): {
      // Type: number
      Properties+::: { MaxCapacity: MaxCapacity },
    },
  },
  Partition: {
    '#': d.pkg(
      name='Partition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Partition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Partition Resource
        * TableName 
        * DatabaseName 
        * CatalogId 
        * PartitionInput 
      |||,
      args=[
        d.arg('TableName', 'd.T.string'),
        d.arg('DatabaseName', 'd.T.string'),
        d.arg('CatalogId', 'd.T.string'),
        d.arg('PartitionInput', 'd.T.object'),
      ]
    ),
    new(
      TableName,
      DatabaseName,
      CatalogId,
      PartitionInput,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TableName) : 'TableName must be a string',
        TableName: TableName,
        assert std.isString(DatabaseName) : 'DatabaseName must be a string',
        DatabaseName: DatabaseName,
        assert std.isString(CatalogId) : 'CatalogId must be a string',
        CatalogId: CatalogId,
        assert std.isObject(PartitionInput) : 'PartitionInput must be a object',
        PartitionInput: PartitionInput,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Partition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Registry: {
    '#': d.pkg(
      name='Registry',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='This resource creates a Registry for authoring schemas as part of Glue Schema Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Registry Resource
        * Name Name of the registry to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark.No whitespace.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Registry',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Schema: {
    '#': d.pkg(
      name='Schema',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='This resource represents a schema of Glue Schema Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Schema Resource
        * Name Name of the schema.
        * DataFormat Data format name to use for the schema. Accepted values: AVRO, JSON, PROTOBUF
        * Compatibility Compatibility setting for the schema.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('DataFormat', 'd.T.string'),
        d.arg('Compatibility', 'd.T.string'),
      ]
    ),
    new(
      Name,
      DataFormat,
      Compatibility,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(DataFormat) : 'DataFormat must be a string',
        assert DataFormat == 'AVRO' || DataFormat == 'JSON' || DataFormat == 'PROTOBUF' : "DataFormat must be either 'AVRO' or 'JSON' or 'PROTOBUF'",
        DataFormat: DataFormat,
        assert std.isString(Compatibility) : 'Compatibility must be a string',
        assert Compatibility == 'NONE' || Compatibility == 'DISABLED' || Compatibility == 'BACKWARD' || Compatibility == 'BACKWARD_ALL' || Compatibility == 'FORWARD' || Compatibility == 'FORWARD_ALL' || Compatibility == 'FULL' || Compatibility == 'FULL_ALL' : "Compatibility must be either 'NONE' or 'DISABLED' or 'BACKWARD' or 'BACKWARD_ALL' or 'FORWARD' or 'FORWARD_ALL' or 'FULL' or 'FULL_ALL'",
        Compatibility: Compatibility,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Schema',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRegistry': d.fn('`withRegistry` Registry ', [d.arg('Registry', d.T.object)]),
    withRegistry(Registry): {
      assert std.isObject(Registry) : 'Registry must be a object',
      Properties+::: { Registry: Registry },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSchemaDefinition': d.fn('`withSchemaDefinition` SchemaDefinition ', [d.arg('SchemaDefinition', d.T.string)]),
    withSchemaDefinition(SchemaDefinition): {
      assert std.isString(SchemaDefinition) : 'SchemaDefinition must be a string',
      Properties+::: { SchemaDefinition: SchemaDefinition },
    },
    '#withCheckpointVersion': d.fn('`withCheckpointVersion` CheckpointVersion ', [d.arg('CheckpointVersion', d.T.object)]),
    withCheckpointVersion(CheckpointVersion): {
      assert std.isObject(CheckpointVersion) : 'CheckpointVersion must be a object',
      Properties+::: { CheckpointVersion: CheckpointVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withInitialSchemaVersionId': d.fn('`withInitialSchemaVersionId` InitialSchemaVersionId ', [d.arg('InitialSchemaVersionId', d.T.string)]),
    withInitialSchemaVersionId(InitialSchemaVersionId): {
      assert std.isString(InitialSchemaVersionId) : 'InitialSchemaVersionId must be a string',
      Properties+::: { InitialSchemaVersionId: InitialSchemaVersionId },
    },
  },
  SchemaVersion: {
    '#': d.pkg(
      name='SchemaVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='This resource represents an individual schema version of a schema defined in Glue Schema Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::SchemaVersion Resource
        * Schema 
        * SchemaDefinition Complete definition of the schema in plain-text.
      |||,
      args=[
        d.arg('Schema', 'd.T.object'),
        d.arg('SchemaDefinition', 'd.T.string'),
      ]
    ),
    new(
      Schema,
      SchemaDefinition,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Schema) : 'Schema must be a object',
        Schema: Schema,
        assert std.isString(SchemaDefinition) : 'SchemaDefinition must be a string',
        SchemaDefinition: SchemaDefinition,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::SchemaVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
  },
  SchemaVersionMetadata: {
    '#': d.pkg(
      name='SchemaVersionMetadata',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='This resource adds Key-Value metadata to a Schema version of Glue Schema Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::SchemaVersionMetadata Resource
        * SchemaVersionId Represents the version ID associated with the schema version.
        * Key Metadata key
        * Value Metadata value
      |||,
      args=[
        d.arg('SchemaVersionId', 'd.T.string'),
        d.arg('Key', 'd.T.string'),
        d.arg('Value', 'd.T.string'),
      ]
    ),
    new(
      SchemaVersionId,
      Key,
      Value,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SchemaVersionId) : 'SchemaVersionId must be a string',
        SchemaVersionId: SchemaVersionId,
        assert std.isString(Key) : 'Key must be a string',
        Key: Key,
        assert std.isString(Value) : 'Value must be a string',
        Value: Value,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::SchemaVersionMetadata',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  SecurityConfiguration: {
    '#': d.pkg(
      name='SecurityConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::SecurityConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::SecurityConfiguration Resource
        * EncryptionConfiguration 
        * Name 
      |||,
      args=[
        d.arg('EncryptionConfiguration', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      EncryptionConfiguration,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
        EncryptionConfiguration: EncryptionConfiguration,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::SecurityConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Table: {
    '#': d.pkg(
      name='Table',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Table',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Table Resource
        * TableInput 
        * DatabaseName 
        * CatalogId 
      |||,
      args=[
        d.arg('TableInput', 'd.T.object'),
        d.arg('DatabaseName', 'd.T.string'),
        d.arg('CatalogId', 'd.T.string'),
      ]
    ),
    new(
      TableInput,
      DatabaseName,
      CatalogId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(TableInput) : 'TableInput must be a object',
        TableInput: TableInput,
        assert std.isString(DatabaseName) : 'DatabaseName must be a string',
        DatabaseName: DatabaseName,
        assert std.isString(CatalogId) : 'CatalogId must be a string',
        CatalogId: CatalogId,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Table',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOpenTableFormatInput': d.fn('`withOpenTableFormatInput` OpenTableFormatInput ', [d.arg('OpenTableFormatInput', d.T.object)]),
    withOpenTableFormatInput(OpenTableFormatInput): {
      assert std.isObject(OpenTableFormatInput) : 'OpenTableFormatInput must be a object',
      Properties+::: { OpenTableFormatInput: OpenTableFormatInput },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  TableOptimizer: {
    '#': d.pkg(
      name='TableOptimizer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::TableOptimizer',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::TableOptimizer Resource
        * TableName 
        * Type 
        * DatabaseName 
        * TableOptimizerConfiguration 
        * CatalogId 
      |||,
      args=[
        d.arg('TableName', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
        d.arg('DatabaseName', 'd.T.string'),
        d.arg('TableOptimizerConfiguration', 'd.T.object'),
        d.arg('CatalogId', 'd.T.string'),
      ]
    ),
    new(
      TableName,
      Type,
      DatabaseName,
      TableOptimizerConfiguration,
      CatalogId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TableName) : 'TableName must be a string',
        TableName: TableName,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(DatabaseName) : 'DatabaseName must be a string',
        DatabaseName: DatabaseName,
        assert std.isObject(TableOptimizerConfiguration) : 'TableOptimizerConfiguration must be a object',
        TableOptimizerConfiguration: TableOptimizerConfiguration,
        assert std.isString(CatalogId) : 'CatalogId must be a string',
        CatalogId: CatalogId,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::TableOptimizer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Trigger: {
    '#': d.pkg(
      name='Trigger',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Trigger',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Trigger Resource
        * Type The type of trigger that this is.
        * Actions The actions initiated by this trigger.
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('Actions', 'd.T.array'),
      ]
    ),
    new(
      Type,
      Actions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isArray(Actions) : 'Actions must be a array',
        Actions: Actions,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::Trigger',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStartOnCreation': d.fn('`withStartOnCreation` StartOnCreation ', [d.arg('StartOnCreation', d.T.boolean)]),
    withStartOnCreation(StartOnCreation): {
      assert std.isBoolean(StartOnCreation) : 'StartOnCreation must be a boolean',
      Properties+::: { StartOnCreation: StartOnCreation },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEventBatchingCondition': d.fn('`withEventBatchingCondition` EventBatchingCondition ', [d.arg('EventBatchingCondition', d.T.object)]),
    withEventBatchingCondition(EventBatchingCondition): {
      assert std.isObject(EventBatchingCondition) : 'EventBatchingCondition must be a object',
      Properties+::: { EventBatchingCondition: EventBatchingCondition },
    },
    '#withWorkflowName': d.fn('`withWorkflowName` WorkflowName ', [d.arg('WorkflowName', d.T.string)]),
    withWorkflowName(WorkflowName): {
      assert std.isString(WorkflowName) : 'WorkflowName must be a string',
      Properties+::: { WorkflowName: WorkflowName },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.string)]),
    withSchedule(Schedule): {
      assert std.isString(Schedule) : 'Schedule must be a string',
      Properties+::: { Schedule: Schedule },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withPredicate': d.fn('`withPredicate` Predicate ', [d.arg('Predicate', d.T.object)]),
    withPredicate(Predicate): {
      assert std.isObject(Predicate) : 'Predicate must be a object',
      Properties+::: { Predicate: Predicate },
    },
  },
  UsageProfile: {
    '#': d.pkg(
      name='UsageProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='This creates a Resource of UsageProfile type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::UsageProfile Resource
        * Name The name of the UsageProfile.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Glue::UsageProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration')]),
    withConfiguration(Configuration): {
      // Type: undefined
      Properties+::: { Configuration: Configuration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreatedOn': d.fn('`withCreatedOn` CreatedOn ', [d.arg('CreatedOn', d.T.string)]),
    withCreatedOn(CreatedOn): {
      assert std.isString(CreatedOn) : 'CreatedOn must be a string',
      Properties+::: { CreatedOn: CreatedOn },
    },
  },
  Workflow: {
    '#': d.pkg(
      name='Workflow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Glue.libsonnet',
      help='Resource Type definition for AWS::Glue::Workflow',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Glue::Workflow Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Glue::Workflow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withDefaultRunProperties': d.fn('`withDefaultRunProperties` DefaultRunProperties ', [d.arg('DefaultRunProperties', d.T.object)]),
    withDefaultRunProperties(DefaultRunProperties): {
      assert std.isObject(DefaultRunProperties) : 'DefaultRunProperties must be a object',
      Properties+::: { DefaultRunProperties: DefaultRunProperties },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withMaxConcurrentRuns': d.fn('`withMaxConcurrentRuns` MaxConcurrentRuns ', [d.arg('MaxConcurrentRuns', d.T.integer)]),
    withMaxConcurrentRuns(MaxConcurrentRuns): {
      assert std.isNumber(MaxConcurrentRuns) : 'MaxConcurrentRuns must be a integer',
      Properties+::: { MaxConcurrentRuns: MaxConcurrentRuns },
    },
  },
}
