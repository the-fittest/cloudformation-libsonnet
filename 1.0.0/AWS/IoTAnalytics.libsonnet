local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Channel: {
    '#': d.pkg(
      name='Channel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTAnalytics.libsonnet',
      help='Resource Type definition for AWS::IoTAnalytics::Channel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTAnalytics::Channel Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoTAnalytics::Channel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withChannelStorage': d.fn('`withChannelStorage` ChannelStorage ', [d.arg('ChannelStorage', d.T.object)]),
    withChannelStorage(ChannelStorage): {
      assert std.isObject(ChannelStorage) : 'ChannelStorage must be a object',
      Properties+::: { ChannelStorage: ChannelStorage },
    },
    '#withChannelName': d.fn('`withChannelName` ChannelName ', [d.arg('ChannelName', d.T.string)]),
    withChannelName(ChannelName): {
      assert std.isString(ChannelName) : 'ChannelName must be a string',
      Properties+::: { ChannelName: ChannelName },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRetentionPeriod': d.fn('`withRetentionPeriod` RetentionPeriod ', [d.arg('RetentionPeriod', d.T.object)]),
    withRetentionPeriod(RetentionPeriod): {
      assert std.isObject(RetentionPeriod) : 'RetentionPeriod must be a object',
      Properties+::: { RetentionPeriod: RetentionPeriod },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Dataset: {
    '#': d.pkg(
      name='Dataset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTAnalytics.libsonnet',
      help='Resource Type definition for AWS::IoTAnalytics::Dataset',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTAnalytics::Dataset Resource
        * Actions 
      |||,
      args=[
        d.arg('Actions', 'd.T.array'),
      ]
    ),
    new(
      Actions,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Actions) : 'Actions must be a array',
        Actions: Actions,
      },
      DependsOn:: [],
      Type: 'AWS::IoTAnalytics::Dataset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLateDataRules': d.fn('`withLateDataRules` LateDataRules ', [d.arg('LateDataRules', d.T.array)]),
    withLateDataRules(LateDataRules): {
      assert std.isArray(LateDataRules) : 'LateDataRules must be a array',
      Properties+::: { LateDataRules: LateDataRules },
    },
    '#withDatasetName': d.fn('`withDatasetName` DatasetName ', [d.arg('DatasetName', d.T.string)]),
    withDatasetName(DatasetName): {
      assert std.isString(DatasetName) : 'DatasetName must be a string',
      Properties+::: { DatasetName: DatasetName },
    },
    '#withContentDeliveryRules': d.fn('`withContentDeliveryRules` ContentDeliveryRules ', [d.arg('ContentDeliveryRules', d.T.array)]),
    withContentDeliveryRules(ContentDeliveryRules): {
      assert std.isArray(ContentDeliveryRules) : 'ContentDeliveryRules must be a array',
      Properties+::: { ContentDeliveryRules: ContentDeliveryRules },
    },
    '#withTriggers': d.fn('`withTriggers` Triggers ', [d.arg('Triggers', d.T.array)]),
    withTriggers(Triggers): {
      assert std.isArray(Triggers) : 'Triggers must be a array',
      Properties+::: { Triggers: Triggers },
    },
    '#withVersioningConfiguration': d.fn('`withVersioningConfiguration` VersioningConfiguration ', [d.arg('VersioningConfiguration', d.T.object)]),
    withVersioningConfiguration(VersioningConfiguration): {
      assert std.isObject(VersioningConfiguration) : 'VersioningConfiguration must be a object',
      Properties+::: { VersioningConfiguration: VersioningConfiguration },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRetentionPeriod': d.fn('`withRetentionPeriod` RetentionPeriod ', [d.arg('RetentionPeriod', d.T.object)]),
    withRetentionPeriod(RetentionPeriod): {
      assert std.isObject(RetentionPeriod) : 'RetentionPeriod must be a object',
      Properties+::: { RetentionPeriod: RetentionPeriod },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Datastore: {
    '#': d.pkg(
      name='Datastore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTAnalytics.libsonnet',
      help='Resource Type definition for AWS::IoTAnalytics::Datastore',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTAnalytics::Datastore Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoTAnalytics::Datastore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDatastoreStorage': d.fn('`withDatastoreStorage` DatastoreStorage ', [d.arg('DatastoreStorage', d.T.object)]),
    withDatastoreStorage(DatastoreStorage): {
      assert std.isObject(DatastoreStorage) : 'DatastoreStorage must be a object',
      Properties+::: { DatastoreStorage: DatastoreStorage },
    },
    '#withDatastoreName': d.fn('`withDatastoreName` DatastoreName ', [d.arg('DatastoreName', d.T.string)]),
    withDatastoreName(DatastoreName): {
      assert std.isString(DatastoreName) : 'DatastoreName must be a string',
      Properties+::: { DatastoreName: DatastoreName },
    },
    '#withDatastorePartitions': d.fn('`withDatastorePartitions` DatastorePartitions ', [d.arg('DatastorePartitions', d.T.object)]),
    withDatastorePartitions(DatastorePartitions): {
      assert std.isObject(DatastorePartitions) : 'DatastorePartitions must be a object',
      Properties+::: { DatastorePartitions: DatastorePartitions },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withFileFormatConfiguration': d.fn('`withFileFormatConfiguration` FileFormatConfiguration ', [d.arg('FileFormatConfiguration', d.T.object)]),
    withFileFormatConfiguration(FileFormatConfiguration): {
      assert std.isObject(FileFormatConfiguration) : 'FileFormatConfiguration must be a object',
      Properties+::: { FileFormatConfiguration: FileFormatConfiguration },
    },
    '#withRetentionPeriod': d.fn('`withRetentionPeriod` RetentionPeriod ', [d.arg('RetentionPeriod', d.T.object)]),
    withRetentionPeriod(RetentionPeriod): {
      assert std.isObject(RetentionPeriod) : 'RetentionPeriod must be a object',
      Properties+::: { RetentionPeriod: RetentionPeriod },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Pipeline: {
    '#': d.pkg(
      name='Pipeline',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTAnalytics.libsonnet',
      help='Resource Type definition for AWS::IoTAnalytics::Pipeline',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTAnalytics::Pipeline Resource
        * PipelineActivities 
      |||,
      args=[
        d.arg('PipelineActivities', 'd.T.array'),
      ]
    ),
    new(
      PipelineActivities,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(PipelineActivities) : 'PipelineActivities must be a array',
        PipelineActivities: PipelineActivities,
      },
      DependsOn:: [],
      Type: 'AWS::IoTAnalytics::Pipeline',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPipelineName': d.fn('`withPipelineName` PipelineName ', [d.arg('PipelineName', d.T.string)]),
    withPipelineName(PipelineName): {
      assert std.isString(PipelineName) : 'PipelineName must be a string',
      Properties+::: { PipelineName: PipelineName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
