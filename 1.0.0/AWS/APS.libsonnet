local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  RuleGroupsNamespace: {
    '#': d.pkg(
      name='RuleGroupsNamespace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/APS.libsonnet',
      help='RuleGroupsNamespace schema for cloudformation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::APS::RuleGroupsNamespace Resource
        * Workspace Required to identify a specific APS Workspace associated with this RuleGroupsNamespace.
        * Data The RuleGroupsNamespace data.
        * Name The RuleGroupsNamespace name.
      |||,
      args=[
        d.arg('Workspace', 'd.T.string'),
        d.arg('Data', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Workspace,
      Data,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Workspace) : 'Workspace must be a string',
        Workspace: Workspace,
        assert std.isString(Data) : 'Data must be a string',
        Data: Data,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::APS::RuleGroupsNamespace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
  Scraper: {
    '#': d.pkg(
      name='Scraper',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/APS.libsonnet',
      help='Resource Type definition for AWS::APS::Scraper',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::APS::Scraper Resource
        * ScrapeConfiguration 
        * Source 
        * Destination 
      |||,
      args=[
        d.arg('ScrapeConfiguration', 'd.T.object'),
        d.arg('Source', 'd.T.object'),
        d.arg('Destination', 'd.T.object'),
      ]
    ),
    new(
      ScrapeConfiguration,
      Source,
      Destination,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ScrapeConfiguration) : 'ScrapeConfiguration must be a object',
        ScrapeConfiguration: ScrapeConfiguration,
        assert std.isObject(Source) : 'Source must be a object',
        Source: Source,
        assert std.isObject(Destination) : 'Destination must be a object',
        Destination: Destination,
      },
      DependsOn:: [],
      Type: 'AWS::APS::Scraper',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withScraperId': d.fn('`withScraperId` ScraperId ', [d.arg('ScraperId', d.T.string)]),
    withScraperId(ScraperId): {
      assert std.isString(ScraperId) : 'ScraperId must be a string',
      Properties+::: { ScraperId: ScraperId },
    },
    '#withAlias': d.fn('`withAlias` Alias ', [d.arg('Alias', d.T.string)]),
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: { Alias: Alias },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Workspace: {
    '#': d.pkg(
      name='Workspace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/APS.libsonnet',
      help='Resource Type definition for AWS::APS::Workspace',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::APS::Workspace Resource
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
      Type: 'AWS::APS::Workspace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withWorkspaceId': d.fn('`withWorkspaceId` WorkspaceId ', [d.arg('WorkspaceId', d.T.string)]),
    withWorkspaceId(WorkspaceId): {
      assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
      Properties+::: { WorkspaceId: WorkspaceId },
    },
    '#withAlias': d.fn('`withAlias` Alias ', [d.arg('Alias', d.T.string)]),
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: { Alias: Alias },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAlertManagerDefinition': d.fn('`withAlertManagerDefinition` AlertManagerDefinition ', [d.arg('AlertManagerDefinition', d.T.string)]),
    withAlertManagerDefinition(AlertManagerDefinition): {
      assert std.isString(AlertManagerDefinition) : 'AlertManagerDefinition must be a string',
      Properties+::: { AlertManagerDefinition: AlertManagerDefinition },
    },
    '#withPrometheusEndpoint': d.fn('`withPrometheusEndpoint` PrometheusEndpoint ', [d.arg('PrometheusEndpoint', d.T.string)]),
    withPrometheusEndpoint(PrometheusEndpoint): {
      assert std.isString(PrometheusEndpoint) : 'PrometheusEndpoint must be a string',
      Properties+::: { PrometheusEndpoint: PrometheusEndpoint },
    },
    '#withLoggingConfiguration': d.fn('`withLoggingConfiguration` LoggingConfiguration ', [d.arg('LoggingConfiguration', d.T.object)]),
    withLoggingConfiguration(LoggingConfiguration): {
      assert std.isObject(LoggingConfiguration) : 'LoggingConfiguration must be a object',
      Properties+::: { LoggingConfiguration: LoggingConfiguration },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
