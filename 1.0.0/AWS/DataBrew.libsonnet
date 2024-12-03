local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Dataset: {
    '#': d.pkg(
      name='Dataset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataBrew.libsonnet',
      help='Resource schema for AWS::DataBrew::Dataset.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataBrew::Dataset Resource
        * Name Dataset name
        * Input Input
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Input', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Input,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Input) : 'Input must be a object',
        Input: Input,
      },
      DependsOn:: [],
      Type: 'AWS::DataBrew::Dataset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFormat': d.fn('`withFormat` Format ', [d.arg('Format', d.T.string)]),
    withFormat(Format): {
      assert std.isString(Format) : 'Format must be a string',
      assert Format == 'CSV' || Format == 'JSON' || Format == 'PARQUET' || Format == 'EXCEL' || Format == 'ORC' : "Format must be either 'CSV' or 'JSON' or 'PARQUET' or 'EXCEL' or 'ORC'",
      Properties+::: { Format: Format },
    },
    '#withFormatOptions': d.fn('`withFormatOptions` FormatOptions ', [d.arg('FormatOptions', d.T.object)]),
    withFormatOptions(FormatOptions): {
      assert std.isObject(FormatOptions) : 'FormatOptions must be a object',
      Properties+::: { FormatOptions: FormatOptions },
    },
    '#withPathOptions': d.fn('`withPathOptions` PathOptions ', [d.arg('PathOptions', d.T.object)]),
    withPathOptions(PathOptions): {
      assert std.isObject(PathOptions) : 'PathOptions must be a object',
      Properties+::: { PathOptions: PathOptions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Job: {
    '#': d.pkg(
      name='Job',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataBrew.libsonnet',
      help='Resource schema for AWS::DataBrew::Job.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataBrew::Job Resource
        * Name Job name
        * RoleArn Role arn
        * Type Job type
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Name,
      RoleArn,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'PROFILE' || Type == 'RECIPE' : "Type must be either 'PROFILE' or 'RECIPE'",
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::DataBrew::Job',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDatasetName': d.fn('`withDatasetName` DatasetName ', [d.arg('DatasetName', d.T.string)]),
    withDatasetName(DatasetName): {
      assert std.isString(DatasetName) : 'DatasetName must be a string',
      Properties+::: { DatasetName: DatasetName },
    },
    '#withEncryptionKeyArn': d.fn('`withEncryptionKeyArn` EncryptionKeyArn ', [d.arg('EncryptionKeyArn', d.T.string)]),
    withEncryptionKeyArn(EncryptionKeyArn): {
      assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
      Properties+::: { EncryptionKeyArn: EncryptionKeyArn },
    },
    '#withEncryptionMode': d.fn('`withEncryptionMode` EncryptionMode ', [d.arg('EncryptionMode', d.T.string)]),
    withEncryptionMode(EncryptionMode): {
      assert std.isString(EncryptionMode) : 'EncryptionMode must be a string',
      assert EncryptionMode == 'SSE-KMS' || EncryptionMode == 'SSE-S3' : "EncryptionMode must be either 'SSE-KMS' or 'SSE-S3'",
      Properties+::: { EncryptionMode: EncryptionMode },
    },
    '#withLogSubscription': d.fn('`withLogSubscription` LogSubscription ', [d.arg('LogSubscription', d.T.string)]),
    withLogSubscription(LogSubscription): {
      assert std.isString(LogSubscription) : 'LogSubscription must be a string',
      assert LogSubscription == 'ENABLE' || LogSubscription == 'DISABLE' : "LogSubscription must be either 'ENABLE' or 'DISABLE'",
      Properties+::: { LogSubscription: LogSubscription },
    },
    '#withMaxCapacity': d.fn('`withMaxCapacity` MaxCapacity ', [d.arg('MaxCapacity', d.T.integer)]),
    withMaxCapacity(MaxCapacity): {
      assert std.isNumber(MaxCapacity) : 'MaxCapacity must be a integer',
      Properties+::: { MaxCapacity: MaxCapacity },
    },
    '#withMaxRetries': d.fn('`withMaxRetries` MaxRetries ', [d.arg('MaxRetries', d.T.integer)]),
    withMaxRetries(MaxRetries): {
      assert std.isNumber(MaxRetries) : 'MaxRetries must be a integer',
      Properties+::: { MaxRetries: MaxRetries },
    },
    '#withOutputs': d.fn('`withOutputs` Outputs ', [d.arg('Outputs', d.T.array)]),
    withOutputs(Outputs): {
      assert std.isArray(Outputs) : 'Outputs must be a array',
      Properties+::: { Outputs: Outputs },
    },
    '#withDataCatalogOutputs': d.fn('`withDataCatalogOutputs` DataCatalogOutputs ', [d.arg('DataCatalogOutputs', d.T.array)]),
    withDataCatalogOutputs(DataCatalogOutputs): {
      assert std.isArray(DataCatalogOutputs) : 'DataCatalogOutputs must be a array',
      Properties+::: { DataCatalogOutputs: DataCatalogOutputs },
    },
    '#withDatabaseOutputs': d.fn('`withDatabaseOutputs` DatabaseOutputs ', [d.arg('DatabaseOutputs', d.T.array)]),
    withDatabaseOutputs(DatabaseOutputs): {
      assert std.isArray(DatabaseOutputs) : 'DatabaseOutputs must be a array',
      Properties+::: { DatabaseOutputs: DatabaseOutputs },
    },
    '#withOutputLocation': d.fn('`withOutputLocation` OutputLocation ', [d.arg('OutputLocation', d.T.object)]),
    withOutputLocation(OutputLocation): {
      assert std.isObject(OutputLocation) : 'OutputLocation must be a object',
      Properties+::: { OutputLocation: OutputLocation },
    },
    '#withProjectName': d.fn('`withProjectName` ProjectName ', [d.arg('ProjectName', d.T.string)]),
    withProjectName(ProjectName): {
      assert std.isString(ProjectName) : 'ProjectName must be a string',
      Properties+::: { ProjectName: ProjectName },
    },
    '#withRecipe': d.fn('`withRecipe` Recipe ', [d.arg('Recipe', d.T.object)]),
    withRecipe(Recipe): {
      assert std.isObject(Recipe) : 'Recipe must be a object',
      Properties+::: { Recipe: Recipe },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTimeout': d.fn('`withTimeout` Timeout ', [d.arg('Timeout', d.T.integer)]),
    withTimeout(Timeout): {
      assert std.isNumber(Timeout) : 'Timeout must be a integer',
      Properties+::: { Timeout: Timeout },
    },
    '#withJobSample': d.fn('`withJobSample` JobSample ', [d.arg('JobSample', d.T.object)]),
    withJobSample(JobSample): {
      assert std.isObject(JobSample) : 'JobSample must be a object',
      Properties+::: { JobSample: JobSample },
    },
    '#withProfileConfiguration': d.fn('`withProfileConfiguration` ProfileConfiguration ', [d.arg('ProfileConfiguration', d.T.object)]),
    withProfileConfiguration(ProfileConfiguration): {
      assert std.isObject(ProfileConfiguration) : 'ProfileConfiguration must be a object',
      Properties+::: { ProfileConfiguration: ProfileConfiguration },
    },
    '#withValidationConfigurations': d.fn('`withValidationConfigurations` ValidationConfigurations ', [d.arg('ValidationConfigurations', d.T.array)]),
    withValidationConfigurations(ValidationConfigurations): {
      assert std.isArray(ValidationConfigurations) : 'ValidationConfigurations must be a array',
      Properties+::: { ValidationConfigurations: ValidationConfigurations },
    },
  },
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataBrew.libsonnet',
      help='Resource schema for AWS::DataBrew::Project.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataBrew::Project Resource
        * DatasetName Dataset name
        * Name Project name
        * RecipeName Recipe name
        * RoleArn Role arn
      |||,
      args=[
        d.arg('DatasetName', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('RecipeName', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      DatasetName,
      Name,
      RecipeName,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DatasetName) : 'DatasetName must be a string',
        DatasetName: DatasetName,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RecipeName) : 'RecipeName must be a string',
        RecipeName: RecipeName,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::DataBrew::Project',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSample': d.fn('`withSample` Sample ', [d.arg('Sample', d.T.object)]),
    withSample(Sample): {
      assert std.isObject(Sample) : 'Sample must be a object',
      Properties+::: { Sample: Sample },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Recipe: {
    '#': d.pkg(
      name='Recipe',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataBrew.libsonnet',
      help='Resource schema for AWS::DataBrew::Recipe.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataBrew::Recipe Resource
        * Name Recipe name
        * Steps 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Steps', 'd.T.array'),
      ]
    ),
    new(
      Name,
      Steps,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(Steps) : 'Steps must be a array',
        Steps: Steps,
      },
      DependsOn:: [],
      Type: 'AWS::DataBrew::Recipe',
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
  },
  Ruleset: {
    '#': d.pkg(
      name='Ruleset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataBrew.libsonnet',
      help='Resource schema for AWS::DataBrew::Ruleset.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataBrew::Ruleset Resource
        * Name Name of the Ruleset
        * TargetArn Arn of the target resource (dataset) to apply the ruleset to
        * Rules List of the data quality rules in the ruleset
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('TargetArn', 'd.T.string'),
        d.arg('Rules', 'd.T.array'),
      ]
    ),
    new(
      Name,
      TargetArn,
      Rules,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(TargetArn) : 'TargetArn must be a string',
        TargetArn: TargetArn,
        assert std.isArray(Rules) : 'Rules must be a array',
        Rules: Rules,
      },
      DependsOn:: [],
      Type: 'AWS::DataBrew::Ruleset',
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
  },
  Schedule: {
    '#': d.pkg(
      name='Schedule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataBrew.libsonnet',
      help='Resource schema for AWS::DataBrew::Schedule.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataBrew::Schedule Resource
        * Name Schedule Name
        * CronExpression Schedule cron
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('CronExpression', 'd.T.string'),
      ]
    ),
    new(
      Name,
      CronExpression,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(CronExpression) : 'CronExpression must be a string',
        CronExpression: CronExpression,
      },
      DependsOn:: [],
      Type: 'AWS::DataBrew::Schedule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withJobNames': d.fn('`withJobNames` JobNames ', [d.arg('JobNames', d.T.array)]),
    withJobNames(JobNames): {
      assert std.isArray(JobNames) : 'JobNames must be a array',
      Properties+::: { JobNames: JobNames },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
