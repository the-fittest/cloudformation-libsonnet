local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Dataset: {
    '#': d.pkg(
      name='Dataset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Personalize.libsonnet',
      help='Resource schema for AWS::Personalize::Dataset.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Personalize::Dataset Resource
        * Name The name for the dataset
        * DatasetType The type of dataset
        * DatasetGroupArn The Amazon Resource Name (ARN) of the dataset group to add the dataset to
        * SchemaArn The ARN of the schema to associate with the dataset. The schema defines the dataset fields.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('DatasetType', 'd.T.string'),
        d.arg('DatasetGroupArn', 'd.T.string'),
        d.arg('SchemaArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      DatasetType,
      DatasetGroupArn,
      SchemaArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(DatasetType) : 'DatasetType must be a string',
        assert DatasetType == 'Interactions' || DatasetType == 'Items' || DatasetType == 'Users' : "DatasetType must be either 'Interactions' or 'Items' or 'Users'",
        DatasetType: DatasetType,
        assert std.isString(DatasetGroupArn) : 'DatasetGroupArn must be a string',
        DatasetGroupArn: DatasetGroupArn,
        assert std.isString(SchemaArn) : 'SchemaArn must be a string',
        SchemaArn: SchemaArn,
      },
      DependsOn:: [],
      Type: 'AWS::Personalize::Dataset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDatasetArn': d.fn('`withDatasetArn` DatasetArn ', [d.arg('DatasetArn', d.T.string)]),
    withDatasetArn(DatasetArn): {
      assert std.isString(DatasetArn) : 'DatasetArn must be a string',
      Properties+::: { DatasetArn: DatasetArn },
    },
    '#withDatasetImportJob': d.fn('`withDatasetImportJob` DatasetImportJob ', [d.arg('DatasetImportJob', d.T.object)]),
    withDatasetImportJob(DatasetImportJob): {
      assert std.isObject(DatasetImportJob) : 'DatasetImportJob must be a object',
      Properties+::: { DatasetImportJob: DatasetImportJob },
    },
  },
  DatasetGroup: {
    '#': d.pkg(
      name='DatasetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Personalize.libsonnet',
      help='Resource Schema for AWS::Personalize::DatasetGroup.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Personalize::DatasetGroup Resource
        * Name The name for the new dataset group.
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
      Type: 'AWS::Personalize::DatasetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDatasetGroupArn': d.fn('`withDatasetGroupArn` DatasetGroupArn ', [d.arg('DatasetGroupArn', d.T.string)]),
    withDatasetGroupArn(DatasetGroupArn): {
      assert std.isString(DatasetGroupArn) : 'DatasetGroupArn must be a string',
      Properties+::: { DatasetGroupArn: DatasetGroupArn },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      assert Domain == 'ECOMMERCE' || Domain == 'VIDEO_ON_DEMAND' : "Domain must be either 'ECOMMERCE' or 'VIDEO_ON_DEMAND'",
      Properties+::: { Domain: Domain },
    },
  },
  Schema: {
    '#': d.pkg(
      name='Schema',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Personalize.libsonnet',
      help='Resource schema for AWS::Personalize::Schema.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Personalize::Schema Resource
        * Name Name for the schema.
        * Schema A schema in Avro JSON format.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Schema', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Schema,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Schema) : 'Schema must be a string',
        Schema: Schema,
      },
      DependsOn:: [],
      Type: 'AWS::Personalize::Schema',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSchemaArn': d.fn('`withSchemaArn` SchemaArn ', [d.arg('SchemaArn', d.T.string)]),
    withSchemaArn(SchemaArn): {
      assert std.isString(SchemaArn) : 'SchemaArn must be a string',
      Properties+::: { SchemaArn: SchemaArn },
    },
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      assert Domain == 'ECOMMERCE' || Domain == 'VIDEO_ON_DEMAND' : "Domain must be either 'ECOMMERCE' or 'VIDEO_ON_DEMAND'",
      Properties+::: { Domain: Domain },
    },
  },
  Solution: {
    '#': d.pkg(
      name='Solution',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Personalize.libsonnet',
      help='Resource schema for AWS::Personalize::Solution.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Personalize::Solution Resource
        * Name The name for the solution
        * DatasetGroupArn The ARN of the dataset group that provides the training data.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('DatasetGroupArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      DatasetGroupArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(DatasetGroupArn) : 'DatasetGroupArn must be a string',
        DatasetGroupArn: DatasetGroupArn,
      },
      DependsOn:: [],
      Type: 'AWS::Personalize::Solution',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSolutionArn': d.fn('`withSolutionArn` SolutionArn ', [d.arg('SolutionArn', d.T.string)]),
    withSolutionArn(SolutionArn): {
      assert std.isString(SolutionArn) : 'SolutionArn must be a string',
      Properties+::: { SolutionArn: SolutionArn },
    },
    '#withEventType': d.fn('`withEventType` EventType ', [d.arg('EventType', d.T.string)]),
    withEventType(EventType): {
      assert std.isString(EventType) : 'EventType must be a string',
      Properties+::: { EventType: EventType },
    },
    '#withPerformAutoML': d.fn('`withPerformAutoML` PerformAutoML ', [d.arg('PerformAutoML', d.T.boolean)]),
    withPerformAutoML(PerformAutoML): {
      assert std.isBoolean(PerformAutoML) : 'PerformAutoML must be a boolean',
      Properties+::: { PerformAutoML: PerformAutoML },
    },
    '#withPerformHPO': d.fn('`withPerformHPO` PerformHPO ', [d.arg('PerformHPO', d.T.boolean)]),
    withPerformHPO(PerformHPO): {
      assert std.isBoolean(PerformHPO) : 'PerformHPO must be a boolean',
      Properties+::: { PerformHPO: PerformHPO },
    },
    '#withRecipeArn': d.fn('`withRecipeArn` RecipeArn ', [d.arg('RecipeArn', d.T.string)]),
    withRecipeArn(RecipeArn): {
      assert std.isString(RecipeArn) : 'RecipeArn must be a string',
      Properties+::: { RecipeArn: RecipeArn },
    },
    '#withSolutionConfig': d.fn('`withSolutionConfig` SolutionConfig ', [d.arg('SolutionConfig', d.T.object)]),
    withSolutionConfig(SolutionConfig): {
      assert std.isObject(SolutionConfig) : 'SolutionConfig must be a object',
      Properties+::: { SolutionConfig: SolutionConfig },
    },
  },
}
