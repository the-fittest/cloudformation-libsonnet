local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Connector: {
    '#': d.pkg(
      name='Connector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KafkaConnect.libsonnet',
      help='Resource Type definition for AWS::KafkaConnect::Connector',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KafkaConnect::Connector Resource
        * Capacity 
        * ConnectorConfiguration The configuration for the connector.
        * ConnectorName The name of the connector.
        * KafkaConnectVersion The version of Kafka Connect. It has to be compatible with both the Kafka clusters version and the plugins.
        * KafkaCluster 
        * KafkaClusterClientAuthentication 
        * KafkaClusterEncryptionInTransit 
        * Plugins List of plugins to use with the connector.
        * ServiceExecutionRoleArn The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon S3 objects and other external resources.
      |||,
      args=[
        d.arg('Capacity', 'd.T.object'),
        d.arg('ConnectorConfiguration', 'd.T.object'),
        d.arg('ConnectorName', 'd.T.string'),
        d.arg('KafkaConnectVersion', 'd.T.string'),
        d.arg('KafkaCluster', 'd.T.object'),
        d.arg('KafkaClusterClientAuthentication', 'd.T.object'),
        d.arg('KafkaClusterEncryptionInTransit', 'd.T.object'),
        d.arg('Plugins', 'd.T.array'),
        d.arg('ServiceExecutionRoleArn', 'd.T.string'),
      ]
    ),
    new(
      Capacity,
      ConnectorConfiguration,
      ConnectorName,
      KafkaConnectVersion,
      KafkaCluster,
      KafkaClusterClientAuthentication,
      KafkaClusterEncryptionInTransit,
      Plugins,
      ServiceExecutionRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Capacity) : 'Capacity must be a object',
        Capacity: Capacity,
        assert std.isObject(ConnectorConfiguration) : 'ConnectorConfiguration must be a object',
        ConnectorConfiguration: ConnectorConfiguration,
        assert std.isString(ConnectorName) : 'ConnectorName must be a string',
        ConnectorName: ConnectorName,
        assert std.isString(KafkaConnectVersion) : 'KafkaConnectVersion must be a string',
        KafkaConnectVersion: KafkaConnectVersion,
        assert std.isObject(KafkaCluster) : 'KafkaCluster must be a object',
        KafkaCluster: KafkaCluster,
        assert std.isObject(KafkaClusterClientAuthentication) : 'KafkaClusterClientAuthentication must be a object',
        KafkaClusterClientAuthentication: KafkaClusterClientAuthentication,
        assert std.isObject(KafkaClusterEncryptionInTransit) : 'KafkaClusterEncryptionInTransit must be a object',
        KafkaClusterEncryptionInTransit: KafkaClusterEncryptionInTransit,
        assert std.isArray(Plugins) : 'Plugins must be a array',
        Plugins: Plugins,
        assert std.isString(ServiceExecutionRoleArn) : 'ServiceExecutionRoleArn must be a string',
        ServiceExecutionRoleArn: ServiceExecutionRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::KafkaConnect::Connector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectorArn': d.fn('`withConnectorArn` ConnectorArn ', [d.arg('ConnectorArn', d.T.string)]),
    withConnectorArn(ConnectorArn): {
      assert std.isString(ConnectorArn) : 'ConnectorArn must be a string',
      Properties+::: { ConnectorArn: ConnectorArn },
    },
    '#withConnectorDescription': d.fn('`withConnectorDescription` ConnectorDescription ', [d.arg('ConnectorDescription', d.T.string)]),
    withConnectorDescription(ConnectorDescription): {
      assert std.isString(ConnectorDescription) : 'ConnectorDescription must be a string',
      Properties+::: { ConnectorDescription: ConnectorDescription },
    },
    '#withLogDelivery': d.fn('`withLogDelivery` LogDelivery ', [d.arg('LogDelivery', d.T.object)]),
    withLogDelivery(LogDelivery): {
      assert std.isObject(LogDelivery) : 'LogDelivery must be a object',
      Properties+::: { LogDelivery: LogDelivery },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withWorkerConfiguration': d.fn('`withWorkerConfiguration` WorkerConfiguration ', [d.arg('WorkerConfiguration', d.T.object)]),
    withWorkerConfiguration(WorkerConfiguration): {
      assert std.isObject(WorkerConfiguration) : 'WorkerConfiguration must be a object',
      Properties+::: { WorkerConfiguration: WorkerConfiguration },
    },
  },
  CustomPlugin: {
    '#': d.pkg(
      name='CustomPlugin',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KafkaConnect.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KafkaConnect::CustomPlugin Resource
        * Name The name of the custom plugin.
        * ContentType The type of the plugin file.
        * Location 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ContentType', 'd.T.string'),
        d.arg('Location', 'd.T.object'),
      ]
    ),
    new(
      Name,
      ContentType,
      Location,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ContentType) : 'ContentType must be a string',
        assert ContentType == 'JAR' || ContentType == 'ZIP' : "ContentType must be either 'JAR' or 'ZIP'",
        ContentType: ContentType,
        assert std.isObject(Location) : 'Location must be a object',
        Location: Location,
      },
      DependsOn:: [],
      Type: 'AWS::KafkaConnect::CustomPlugin',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCustomPluginArn': d.fn('`withCustomPluginArn` CustomPluginArn ', [d.arg('CustomPluginArn', d.T.string)]),
    withCustomPluginArn(CustomPluginArn): {
      assert std.isString(CustomPluginArn) : 'CustomPluginArn must be a string',
      Properties+::: { CustomPluginArn: CustomPluginArn },
    },
    '#withFileDescription': d.fn('`withFileDescription` FileDescription ', [d.arg('FileDescription', d.T.object)]),
    withFileDescription(FileDescription): {
      assert std.isObject(FileDescription) : 'FileDescription must be a object',
      Properties+::: { FileDescription: FileDescription },
    },
    '#withRevision': d.fn('`withRevision` Revision ', [d.arg('Revision', d.T.integer)]),
    withRevision(Revision): {
      assert std.isNumber(Revision) : 'Revision must be a integer',
      Properties+::: { Revision: Revision },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  WorkerConfiguration: {
    '#': d.pkg(
      name='WorkerConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KafkaConnect.libsonnet',
      help='The configuration of the workers, which are the processes that run the connector logic.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KafkaConnect::WorkerConfiguration Resource
        * Name The name of the worker configuration.
        * PropertiesFileContent Base64 encoded contents of connect-distributed.properties file.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('PropertiesFileContent', 'd.T.string'),
      ]
    ),
    new(
      Name,
      PropertiesFileContent,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(PropertiesFileContent) : 'PropertiesFileContent must be a string',
        PropertiesFileContent: PropertiesFileContent,
      },
      DependsOn:: [],
      Type: 'AWS::KafkaConnect::WorkerConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withWorkerConfigurationArn': d.fn('`withWorkerConfigurationArn` WorkerConfigurationArn ', [d.arg('WorkerConfigurationArn', d.T.string)]),
    withWorkerConfigurationArn(WorkerConfigurationArn): {
      assert std.isString(WorkerConfigurationArn) : 'WorkerConfigurationArn must be a string',
      Properties+::: { WorkerConfigurationArn: WorkerConfigurationArn },
    },
    '#withRevision': d.fn('`withRevision` Revision ', [d.arg('Revision', d.T.integer)]),
    withRevision(Revision): {
      assert std.isNumber(Revision) : 'Revision must be a integer',
      Properties+::: { Revision: Revision },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
