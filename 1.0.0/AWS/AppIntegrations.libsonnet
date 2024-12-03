local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppIntegrations.libsonnet',
      help='Resource Type definition for AWS:AppIntegrations::Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppIntegrations::Application Resource
        * Name The name of the application.
        * Namespace The namespace of the application.
        * Description The application description.
        * ApplicationSourceConfig Application source config
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Namespace', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
        d.arg('ApplicationSourceConfig', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Namespace,
      Description,
      ApplicationSourceConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Namespace) : 'Namespace must be a string',
        Namespace: Namespace,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isObject(ApplicationSourceConfig) : 'ApplicationSourceConfig must be a object',
        ApplicationSourceConfig: ApplicationSourceConfig,
      },
      DependsOn:: [],
      Type: 'AWS::AppIntegrations::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withApplicationArn': d.fn('`withApplicationArn` ApplicationArn ', [d.arg('ApplicationArn', d.T.string)]),
    withApplicationArn(ApplicationArn): {
      assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
      Properties+::: { ApplicationArn: ApplicationArn },
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
  },
  DataIntegration: {
    '#': d.pkg(
      name='DataIntegration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppIntegrations.libsonnet',
      help='Resource Type definition for AWS::AppIntegrations::DataIntegration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppIntegrations::DataIntegration Resource
        * Name The name of the data integration.
        * KmsKey The KMS key of the data integration.
        * SourceURI The URI of the data source.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('KmsKey', 'd.T.string'),
        d.arg('SourceURI', 'd.T.string'),
      ]
    ),
    new(
      Name,
      KmsKey,
      SourceURI,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(KmsKey) : 'KmsKey must be a string',
        KmsKey: KmsKey,
        assert std.isString(SourceURI) : 'SourceURI must be a string',
        SourceURI: SourceURI,
      },
      DependsOn:: [],
      Type: 'AWS::AppIntegrations::DataIntegration',
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
    '#withDataIntegrationArn': d.fn('`withDataIntegrationArn` DataIntegrationArn ', [d.arg('DataIntegrationArn', d.T.string)]),
    withDataIntegrationArn(DataIntegrationArn): {
      assert std.isString(DataIntegrationArn) : 'DataIntegrationArn must be a string',
      Properties+::: { DataIntegrationArn: DataIntegrationArn },
    },
    '#withScheduleConfig': d.fn('`withScheduleConfig` ScheduleConfig ', [d.arg('ScheduleConfig', d.T.object)]),
    withScheduleConfig(ScheduleConfig): {
      assert std.isObject(ScheduleConfig) : 'ScheduleConfig must be a object',
      Properties+::: { ScheduleConfig: ScheduleConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withFileConfiguration': d.fn('`withFileConfiguration` FileConfiguration ', [d.arg('FileConfiguration', d.T.object)]),
    withFileConfiguration(FileConfiguration): {
      assert std.isObject(FileConfiguration) : 'FileConfiguration must be a object',
      Properties+::: { FileConfiguration: FileConfiguration },
    },
    '#withObjectConfiguration': d.fn('`withObjectConfiguration` ObjectConfiguration ', [d.arg('ObjectConfiguration', d.T.object)]),
    withObjectConfiguration(ObjectConfiguration): {
      assert std.isObject(ObjectConfiguration) : 'ObjectConfiguration must be a object',
      Properties+::: { ObjectConfiguration: ObjectConfiguration },
    },
  },
  EventIntegration: {
    '#': d.pkg(
      name='EventIntegration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppIntegrations.libsonnet',
      help='Resource Type definition for AWS::AppIntegrations::EventIntegration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppIntegrations::EventIntegration Resource
        * Name The name of the event integration.
        * EventBridgeBus The Amazon Eventbridge bus for the event integration.
        * EventFilter The EventFilter (source) associated with the event integration.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('EventBridgeBus', 'd.T.string'),
        d.arg('EventFilter', 'd.T.object'),
      ]
    ),
    new(
      Name,
      EventBridgeBus,
      EventFilter,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(EventBridgeBus) : 'EventBridgeBus must be a string',
        EventBridgeBus: EventBridgeBus,
        assert std.isObject(EventFilter) : 'EventFilter must be a object',
        EventFilter: EventFilter,
      },
      DependsOn:: [],
      Type: 'AWS::AppIntegrations::EventIntegration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEventIntegrationArn': d.fn('`withEventIntegrationArn` EventIntegrationArn ', [d.arg('EventIntegrationArn', d.T.string)]),
    withEventIntegrationArn(EventIntegrationArn): {
      assert std.isString(EventIntegrationArn) : 'EventIntegrationArn must be a string',
      Properties+::: { EventIntegrationArn: EventIntegrationArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
