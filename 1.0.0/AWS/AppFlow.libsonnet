local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Connector: {
    '#': d.pkg(
      name='Connector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppFlow.libsonnet',
      help='Resource schema for AWS::AppFlow::Connector',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppFlow::Connector Resource
        * ConnectorProvisioningType The provisioning type of the connector. Currently the only supported value is LAMBDA. 
        * ConnectorProvisioningConfig Contains information about the configuration of the connector being registered.
      |||,
      args=[
        d.arg('ConnectorProvisioningType', 'd.T.string'),
        d.arg('ConnectorProvisioningConfig', 'd.T.object'),
      ]
    ),
    new(
      ConnectorProvisioningType,
      ConnectorProvisioningConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectorProvisioningType) : 'ConnectorProvisioningType must be a string',
        ConnectorProvisioningType: ConnectorProvisioningType,
        assert std.isObject(ConnectorProvisioningConfig) : 'ConnectorProvisioningConfig must be a object',
        ConnectorProvisioningConfig: ConnectorProvisioningConfig,
      },
      DependsOn:: [],
      Type: 'AWS::AppFlow::Connector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectorLabel': d.fn('`withConnectorLabel` ConnectorLabel ', [d.arg('ConnectorLabel', d.T.string)]),
    withConnectorLabel(ConnectorLabel): {
      assert std.isString(ConnectorLabel) : 'ConnectorLabel must be a string',
      Properties+::: { ConnectorLabel: ConnectorLabel },
    },
    '#withConnectorArn': d.fn('`withConnectorArn` ConnectorArn ', [d.arg('ConnectorArn', d.T.string)]),
    withConnectorArn(ConnectorArn): {
      assert std.isString(ConnectorArn) : 'ConnectorArn must be a string',
      Properties+::: { ConnectorArn: ConnectorArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  ConnectorProfile: {
    '#': d.pkg(
      name='ConnectorProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppFlow.libsonnet',
      help='Resource Type definition for AWS::AppFlow::ConnectorProfile',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppFlow::ConnectorProfile Resource
        * ConnectorProfileName The maximum number of items to retrieve in a single batch.
        * ConnectionMode Mode in which data transfer should be enabled. Private connection mode is currently enabled for Salesforce, Snowflake, Trendmicro and Singular
        * ConnectorType List of Saas providers that need connector profile to be created
      |||,
      args=[
        d.arg('ConnectorProfileName', 'd.T.string'),
        d.arg('ConnectionMode', 'd.T.string'),
        d.arg('ConnectorType', 'd.T.string'),
      ]
    ),
    new(
      ConnectorProfileName,
      ConnectionMode,
      ConnectorType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectorProfileName) : 'ConnectorProfileName must be a string',
        ConnectorProfileName: ConnectorProfileName,
        assert std.isString(ConnectionMode) : 'ConnectionMode must be a string',
        assert ConnectionMode == 'Public' || ConnectionMode == 'Private' : "ConnectionMode must be either 'Public' or 'Private'",
        ConnectionMode: ConnectionMode,
        assert std.isString(ConnectorType) : 'ConnectorType must be a string',
        ConnectorType: ConnectorType,
      },
      DependsOn:: [],
      Type: 'AWS::AppFlow::ConnectorProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectorProfileArn': d.fn('`withConnectorProfileArn` ConnectorProfileArn ', [d.arg('ConnectorProfileArn', d.T.string)]),
    withConnectorProfileArn(ConnectorProfileArn): {
      assert std.isString(ConnectorProfileArn) : 'ConnectorProfileArn must be a string',
      Properties+::: { ConnectorProfileArn: ConnectorProfileArn },
    },
    '#withConnectorLabel': d.fn('`withConnectorLabel` ConnectorLabel ', [d.arg('ConnectorLabel', d.T.string)]),
    withConnectorLabel(ConnectorLabel): {
      assert std.isString(ConnectorLabel) : 'ConnectorLabel must be a string',
      Properties+::: { ConnectorLabel: ConnectorLabel },
    },
    '#withKMSArn': d.fn('`withKMSArn` KMSArn ', [d.arg('KMSArn', d.T.string)]),
    withKMSArn(KMSArn): {
      assert std.isString(KMSArn) : 'KMSArn must be a string',
      Properties+::: { KMSArn: KMSArn },
    },
    '#withConnectorProfileConfig': d.fn('`withConnectorProfileConfig` ConnectorProfileConfig ', [d.arg('ConnectorProfileConfig', d.T.object)]),
    withConnectorProfileConfig(ConnectorProfileConfig): {
      assert std.isObject(ConnectorProfileConfig) : 'ConnectorProfileConfig must be a object',
      Properties+::: { ConnectorProfileConfig: ConnectorProfileConfig },
    },
    '#withCredentialsArn': d.fn('`withCredentialsArn` CredentialsArn ', [d.arg('CredentialsArn', d.T.string)]),
    withCredentialsArn(CredentialsArn): {
      assert std.isString(CredentialsArn) : 'CredentialsArn must be a string',
      Properties+::: { CredentialsArn: CredentialsArn },
    },
  },
  Flow: {
    '#': d.pkg(
      name='Flow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppFlow.libsonnet',
      help='Resource schema for AWS::AppFlow::Flow.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppFlow::Flow Resource
        * FlowName Name of the flow.
        * Tasks List of tasks for the flow.
        * SourceFlowConfig Configurations of Source connector of the flow.
        * DestinationFlowConfigList List of Destination connectors of the flow.
        * TriggerConfig Trigger settings of the flow.
      |||,
      args=[
        d.arg('FlowName', 'd.T.string'),
        d.arg('Tasks', 'd.T.array'),
        d.arg('SourceFlowConfig', 'd.T.object'),
        d.arg('DestinationFlowConfigList', 'd.T.array'),
        d.arg('TriggerConfig', 'd.T.object'),
      ]
    ),
    new(
      FlowName,
      Tasks,
      SourceFlowConfig,
      DestinationFlowConfigList,
      TriggerConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FlowName) : 'FlowName must be a string',
        FlowName: FlowName,
        assert std.isArray(Tasks) : 'Tasks must be a array',
        Tasks: Tasks,
        assert std.isObject(SourceFlowConfig) : 'SourceFlowConfig must be a object',
        SourceFlowConfig: SourceFlowConfig,
        assert std.isArray(DestinationFlowConfigList) : 'DestinationFlowConfigList must be a array',
        DestinationFlowConfigList: DestinationFlowConfigList,
        assert std.isObject(TriggerConfig) : 'TriggerConfig must be a object',
        TriggerConfig: TriggerConfig,
      },
      DependsOn:: [],
      Type: 'AWS::AppFlow::Flow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFlowArn': d.fn('`withFlowArn` FlowArn ', [d.arg('FlowArn', d.T.string)]),
    withFlowArn(FlowArn): {
      assert std.isString(FlowArn) : 'FlowArn must be a string',
      Properties+::: { FlowArn: FlowArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKMSArn': d.fn('`withKMSArn` KMSArn ', [d.arg('KMSArn', d.T.string)]),
    withKMSArn(KMSArn): {
      assert std.isString(KMSArn) : 'KMSArn must be a string',
      Properties+::: { KMSArn: KMSArn },
    },
    '#withFlowStatus': d.fn('`withFlowStatus` FlowStatus ', [d.arg('FlowStatus', d.T.string)]),
    withFlowStatus(FlowStatus): {
      assert std.isString(FlowStatus) : 'FlowStatus must be a string',
      assert FlowStatus == 'Active' || FlowStatus == 'Suspended' || FlowStatus == 'Draft' : "FlowStatus must be either 'Active' or 'Suspended' or 'Draft'",
      Properties+::: { FlowStatus: FlowStatus },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withMetadataCatalogConfig': d.fn('`withMetadataCatalogConfig` MetadataCatalogConfig ', [d.arg('MetadataCatalogConfig', d.T.object)]),
    withMetadataCatalogConfig(MetadataCatalogConfig): {
      assert std.isObject(MetadataCatalogConfig) : 'MetadataCatalogConfig must be a object',
      Properties+::: { MetadataCatalogConfig: MetadataCatalogConfig },
    },
  },
}
