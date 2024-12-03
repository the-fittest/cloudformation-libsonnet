local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisAnalyticsV2.libsonnet',
      help='Creates an Amazon Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see [Creating an Application](https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisAnalyticsV2::Application Resource
        * RuntimeEnvironment The runtime environment for the application.
        * ServiceExecutionRole Specifies the IAM role that the application uses to access external resources.
      |||,
      args=[
        d.arg('RuntimeEnvironment', 'd.T.string'),
        d.arg('ServiceExecutionRole', 'd.T.string'),
      ]
    ),
    new(
      RuntimeEnvironment,
      ServiceExecutionRole,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RuntimeEnvironment) : 'RuntimeEnvironment must be a string',
        RuntimeEnvironment: RuntimeEnvironment,
        assert std.isString(ServiceExecutionRole) : 'ServiceExecutionRole must be a string',
        ServiceExecutionRole: ServiceExecutionRole,
      },
      DependsOn:: [],
      Type: 'AWS::KinesisAnalyticsV2::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationConfiguration': d.fn('`withApplicationConfiguration` ApplicationConfiguration ', [d.arg('ApplicationConfiguration', d.T.object)]),
    withApplicationConfiguration(ApplicationConfiguration): {
      assert std.isObject(ApplicationConfiguration) : 'ApplicationConfiguration must be a object',
      Properties+::: { ApplicationConfiguration: ApplicationConfiguration },
    },
    '#withApplicationDescription': d.fn('`withApplicationDescription` ApplicationDescription ', [d.arg('ApplicationDescription', d.T.string)]),
    withApplicationDescription(ApplicationDescription): {
      assert std.isString(ApplicationDescription) : 'ApplicationDescription must be a string',
      Properties+::: { ApplicationDescription: ApplicationDescription },
    },
    '#withApplicationMode': d.fn('`withApplicationMode` ApplicationMode ', [d.arg('ApplicationMode', d.T.string)]),
    withApplicationMode(ApplicationMode): {
      assert std.isString(ApplicationMode) : 'ApplicationMode must be a string',
      assert ApplicationMode == 'INTERACTIVE' || ApplicationMode == 'STREAMING' : "ApplicationMode must be either 'INTERACTIVE' or 'STREAMING'",
      Properties+::: { ApplicationMode: ApplicationMode },
    },
    '#withApplicationName': d.fn('`withApplicationName` ApplicationName ', [d.arg('ApplicationName', d.T.string)]),
    withApplicationName(ApplicationName): {
      assert std.isString(ApplicationName) : 'ApplicationName must be a string',
      Properties+::: { ApplicationName: ApplicationName },
    },
    '#withRunConfiguration': d.fn('`withRunConfiguration` RunConfiguration ', [d.arg('RunConfiguration', d.T.object)]),
    withRunConfiguration(RunConfiguration): {
      assert std.isObject(RunConfiguration) : 'RunConfiguration must be a object',
      Properties+::: { RunConfiguration: RunConfiguration },
    },
    '#withApplicationMaintenanceConfiguration': d.fn('`withApplicationMaintenanceConfiguration` ApplicationMaintenanceConfiguration ', [d.arg('ApplicationMaintenanceConfiguration', d.T.object)]),
    withApplicationMaintenanceConfiguration(ApplicationMaintenanceConfiguration): {
      assert std.isObject(ApplicationMaintenanceConfiguration) : 'ApplicationMaintenanceConfiguration must be a object',
      Properties+::: { ApplicationMaintenanceConfiguration: ApplicationMaintenanceConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ApplicationCloudWatchLoggingOption: {
    '#': d.pkg(
      name='ApplicationCloudWatchLoggingOption',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisAnalyticsV2.libsonnet',
      help='Resource Type definition for AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption Resource
        * CloudWatchLoggingOption 
        * ApplicationName 
      |||,
      args=[
        d.arg('CloudWatchLoggingOption', 'd.T.object'),
        d.arg('ApplicationName', 'd.T.string'),
      ]
    ),
    new(
      CloudWatchLoggingOption,
      ApplicationName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(CloudWatchLoggingOption) : 'CloudWatchLoggingOption must be a object',
        CloudWatchLoggingOption: CloudWatchLoggingOption,
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
      },
      DependsOn:: [],
      Type: 'AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption',
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
  ApplicationOutput: {
    '#': d.pkg(
      name='ApplicationOutput',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisAnalyticsV2.libsonnet',
      help='Resource Type definition for AWS::KinesisAnalyticsV2::ApplicationOutput',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisAnalyticsV2::ApplicationOutput Resource
        * ApplicationName 
        * Output 
      |||,
      args=[
        d.arg('ApplicationName', 'd.T.string'),
        d.arg('Output', 'd.T.object'),
      ]
    ),
    new(
      ApplicationName,
      Output,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
        assert std.isObject(Output) : 'Output must be a object',
        Output: Output,
      },
      DependsOn:: [],
      Type: 'AWS::KinesisAnalyticsV2::ApplicationOutput',
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
  ApplicationReferenceDataSource: {
    '#': d.pkg(
      name='ApplicationReferenceDataSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisAnalyticsV2.libsonnet',
      help='Resource Type definition for AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource Resource
        * ReferenceDataSource 
        * ApplicationName 
      |||,
      args=[
        d.arg('ReferenceDataSource', 'd.T.object'),
        d.arg('ApplicationName', 'd.T.string'),
      ]
    ),
    new(
      ReferenceDataSource,
      ApplicationName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ReferenceDataSource) : 'ReferenceDataSource must be a object',
        ReferenceDataSource: ReferenceDataSource,
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
      },
      DependsOn:: [],
      Type: 'AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource',
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
}
