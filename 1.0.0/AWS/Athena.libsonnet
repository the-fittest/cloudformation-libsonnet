local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DataCatalog: {
    '#': d.pkg(
      name='DataCatalog',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Athena.libsonnet',
      help='Resource schema for AWS::Athena::DataCatalog',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Athena::DataCatalog Resource
        * Name The name of the data catalog to create. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters. 
        * Type The type of data catalog to create: LAMBDA for a federated catalog, GLUE for AWS Glue Catalog, or HIVE for an external hive metastore. 
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
        assert Type == 'LAMBDA' || Type == 'GLUE' || Type == 'HIVE' : "Type must be either 'LAMBDA' or 'GLUE' or 'HIVE'",
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::Athena::DataCatalog',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  NamedQuery: {
    '#': d.pkg(
      name='NamedQuery',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Athena.libsonnet',
      help='Resource schema for AWS::Athena::NamedQuery',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Athena::NamedQuery Resource
        * Database The database to which the query belongs.
        * QueryString The contents of the query with all query statements.
      |||,
      args=[
        d.arg('Database', 'd.T.string'),
        d.arg('QueryString', 'd.T.string'),
      ]
    ),
    new(
      Database,
      QueryString,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Database) : 'Database must be a string',
        Database: Database,
        assert std.isString(QueryString) : 'QueryString must be a string',
        QueryString: QueryString,
      },
      DependsOn:: [],
      Type: 'AWS::Athena::NamedQuery',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withWorkGroup': d.fn('`withWorkGroup` WorkGroup ', [d.arg('WorkGroup', d.T.string)]),
    withWorkGroup(WorkGroup): {
      assert std.isString(WorkGroup) : 'WorkGroup must be a string',
      Properties+::: { WorkGroup: WorkGroup },
    },
    '#withNamedQueryId': d.fn('`withNamedQueryId` NamedQueryId ', [d.arg('NamedQueryId', d.T.string)]),
    withNamedQueryId(NamedQueryId): {
      assert std.isString(NamedQueryId) : 'NamedQueryId must be a string',
      Properties+::: { NamedQueryId: NamedQueryId },
    },
  },
  PreparedStatement: {
    '#': d.pkg(
      name='PreparedStatement',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Athena.libsonnet',
      help='Resource schema for AWS::Athena::PreparedStatement',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Athena::PreparedStatement Resource
        * StatementName The name of the prepared statement.
        * WorkGroup The name of the workgroup to which the prepared statement belongs.
        * QueryStatement The query string for the prepared statement.
      |||,
      args=[
        d.arg('StatementName', 'd.T.string'),
        d.arg('WorkGroup', 'd.T.string'),
        d.arg('QueryStatement', 'd.T.string'),
      ]
    ),
    new(
      StatementName,
      WorkGroup,
      QueryStatement,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StatementName) : 'StatementName must be a string',
        StatementName: StatementName,
        assert std.isString(WorkGroup) : 'WorkGroup must be a string',
        WorkGroup: WorkGroup,
        assert std.isString(QueryStatement) : 'QueryStatement must be a string',
        QueryStatement: QueryStatement,
      },
      DependsOn:: [],
      Type: 'AWS::Athena::PreparedStatement',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  WorkGroup: {
    '#': d.pkg(
      name='WorkGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Athena.libsonnet',
      help='Resource schema for AWS::Athena::WorkGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Athena::WorkGroup Resource
        * Name The workGroup name.
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
      Type: 'AWS::Athena::WorkGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withWorkGroupConfiguration': d.fn('`withWorkGroupConfiguration` WorkGroupConfiguration ', [d.arg('WorkGroupConfiguration', d.T.object)]),
    withWorkGroupConfiguration(WorkGroupConfiguration): {
      assert std.isObject(WorkGroupConfiguration) : 'WorkGroupConfiguration must be a object',
      Properties+::: { WorkGroupConfiguration: WorkGroupConfiguration },
    },
    '#withWorkGroupConfigurationUpdates': d.fn('`withWorkGroupConfigurationUpdates` WorkGroupConfigurationUpdates ', [d.arg('WorkGroupConfigurationUpdates', d.T.object)]),
    withWorkGroupConfigurationUpdates(WorkGroupConfigurationUpdates): {
      assert std.isObject(WorkGroupConfigurationUpdates) : 'WorkGroupConfigurationUpdates must be a object',
      Properties+::: { WorkGroupConfigurationUpdates: WorkGroupConfigurationUpdates },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'ENABLED' || State == 'DISABLED' : "State must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { State: State },
    },
    '#withRecursiveDeleteOption': d.fn('`withRecursiveDeleteOption` RecursiveDeleteOption ', [d.arg('RecursiveDeleteOption', d.T.boolean)]),
    withRecursiveDeleteOption(RecursiveDeleteOption): {
      assert std.isBoolean(RecursiveDeleteOption) : 'RecursiveDeleteOption must be a boolean',
      Properties+::: { RecursiveDeleteOption: RecursiveDeleteOption },
    },
  },
}
