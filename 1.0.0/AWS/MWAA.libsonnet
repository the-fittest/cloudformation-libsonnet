local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Environment: {
    '#': d.pkg(
      name='Environment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MWAA.libsonnet',
      help='Resource schema for AWS::MWAA::Environment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MWAA::Environment Resource
        * Name 
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
      Type: 'AWS::MWAA::Environment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withWebserverUrl': d.fn('`withWebserverUrl` WebserverUrl ', [d.arg('WebserverUrl', d.T.string)]),
    withWebserverUrl(WebserverUrl): {
      assert std.isString(WebserverUrl) : 'WebserverUrl must be a string',
      Properties+::: { WebserverUrl: WebserverUrl },
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withKmsKey': d.fn('`withKmsKey` KmsKey ', [d.arg('KmsKey', d.T.string)]),
    withKmsKey(KmsKey): {
      assert std.isString(KmsKey) : 'KmsKey must be a string',
      Properties+::: { KmsKey: KmsKey },
    },
    '#withAirflowVersion': d.fn('`withAirflowVersion` AirflowVersion ', [d.arg('AirflowVersion', d.T.string)]),
    withAirflowVersion(AirflowVersion): {
      assert std.isString(AirflowVersion) : 'AirflowVersion must be a string',
      Properties+::: { AirflowVersion: AirflowVersion },
    },
    '#withSourceBucketArn': d.fn('`withSourceBucketArn` SourceBucketArn ', [d.arg('SourceBucketArn', d.T.string)]),
    withSourceBucketArn(SourceBucketArn): {
      assert std.isString(SourceBucketArn) : 'SourceBucketArn must be a string',
      Properties+::: { SourceBucketArn: SourceBucketArn },
    },
    '#withDagS3Path': d.fn('`withDagS3Path` DagS3Path ', [d.arg('DagS3Path', d.T.string)]),
    withDagS3Path(DagS3Path): {
      assert std.isString(DagS3Path) : 'DagS3Path must be a string',
      Properties+::: { DagS3Path: DagS3Path },
    },
    '#withPluginsS3Path': d.fn('`withPluginsS3Path` PluginsS3Path ', [d.arg('PluginsS3Path', d.T.string)]),
    withPluginsS3Path(PluginsS3Path): {
      assert std.isString(PluginsS3Path) : 'PluginsS3Path must be a string',
      Properties+::: { PluginsS3Path: PluginsS3Path },
    },
    '#withPluginsS3ObjectVersion': d.fn('`withPluginsS3ObjectVersion` PluginsS3ObjectVersion ', [d.arg('PluginsS3ObjectVersion', d.T.string)]),
    withPluginsS3ObjectVersion(PluginsS3ObjectVersion): {
      assert std.isString(PluginsS3ObjectVersion) : 'PluginsS3ObjectVersion must be a string',
      Properties+::: { PluginsS3ObjectVersion: PluginsS3ObjectVersion },
    },
    '#withRequirementsS3Path': d.fn('`withRequirementsS3Path` RequirementsS3Path ', [d.arg('RequirementsS3Path', d.T.string)]),
    withRequirementsS3Path(RequirementsS3Path): {
      assert std.isString(RequirementsS3Path) : 'RequirementsS3Path must be a string',
      Properties+::: { RequirementsS3Path: RequirementsS3Path },
    },
    '#withRequirementsS3ObjectVersion': d.fn('`withRequirementsS3ObjectVersion` RequirementsS3ObjectVersion ', [d.arg('RequirementsS3ObjectVersion', d.T.string)]),
    withRequirementsS3ObjectVersion(RequirementsS3ObjectVersion): {
      assert std.isString(RequirementsS3ObjectVersion) : 'RequirementsS3ObjectVersion must be a string',
      Properties+::: { RequirementsS3ObjectVersion: RequirementsS3ObjectVersion },
    },
    '#withStartupScriptS3Path': d.fn('`withStartupScriptS3Path` StartupScriptS3Path ', [d.arg('StartupScriptS3Path', d.T.string)]),
    withStartupScriptS3Path(StartupScriptS3Path): {
      assert std.isString(StartupScriptS3Path) : 'StartupScriptS3Path must be a string',
      Properties+::: { StartupScriptS3Path: StartupScriptS3Path },
    },
    '#withStartupScriptS3ObjectVersion': d.fn('`withStartupScriptS3ObjectVersion` StartupScriptS3ObjectVersion ', [d.arg('StartupScriptS3ObjectVersion', d.T.string)]),
    withStartupScriptS3ObjectVersion(StartupScriptS3ObjectVersion): {
      assert std.isString(StartupScriptS3ObjectVersion) : 'StartupScriptS3ObjectVersion must be a string',
      Properties+::: { StartupScriptS3ObjectVersion: StartupScriptS3ObjectVersion },
    },
    '#withAirflowConfigurationOptions': d.fn('`withAirflowConfigurationOptions` AirflowConfigurationOptions ', [d.arg('AirflowConfigurationOptions', d.T.object)]),
    withAirflowConfigurationOptions(AirflowConfigurationOptions): {
      assert std.isObject(AirflowConfigurationOptions) : 'AirflowConfigurationOptions must be a object',
      Properties+::: { AirflowConfigurationOptions: AirflowConfigurationOptions },
    },
    '#withEnvironmentClass': d.fn('`withEnvironmentClass` EnvironmentClass ', [d.arg('EnvironmentClass', d.T.string)]),
    withEnvironmentClass(EnvironmentClass): {
      assert std.isString(EnvironmentClass) : 'EnvironmentClass must be a string',
      Properties+::: { EnvironmentClass: EnvironmentClass },
    },
    '#withMaxWorkers': d.fn('`withMaxWorkers` MaxWorkers ', [d.arg('MaxWorkers', d.T.integer)]),
    withMaxWorkers(MaxWorkers): {
      assert std.isNumber(MaxWorkers) : 'MaxWorkers must be a integer',
      Properties+::: { MaxWorkers: MaxWorkers },
    },
    '#withMinWorkers': d.fn('`withMinWorkers` MinWorkers ', [d.arg('MinWorkers', d.T.integer)]),
    withMinWorkers(MinWorkers): {
      assert std.isNumber(MinWorkers) : 'MinWorkers must be a integer',
      Properties+::: { MinWorkers: MinWorkers },
    },
    '#withMaxWebservers': d.fn('`withMaxWebservers` MaxWebservers ', [d.arg('MaxWebservers', d.T.integer)]),
    withMaxWebservers(MaxWebservers): {
      assert std.isNumber(MaxWebservers) : 'MaxWebservers must be a integer',
      Properties+::: { MaxWebservers: MaxWebservers },
    },
    '#withMinWebservers': d.fn('`withMinWebservers` MinWebservers ', [d.arg('MinWebservers', d.T.integer)]),
    withMinWebservers(MinWebservers): {
      assert std.isNumber(MinWebservers) : 'MinWebservers must be a integer',
      Properties+::: { MinWebservers: MinWebservers },
    },
    '#withSchedulers': d.fn('`withSchedulers` Schedulers ', [d.arg('Schedulers', d.T.integer)]),
    withSchedulers(Schedulers): {
      assert std.isNumber(Schedulers) : 'Schedulers must be a integer',
      Properties+::: { Schedulers: Schedulers },
    },
    '#withNetworkConfiguration': d.fn('`withNetworkConfiguration` NetworkConfiguration ', [d.arg('NetworkConfiguration', d.T.object)]),
    withNetworkConfiguration(NetworkConfiguration): {
      assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
      Properties+::: { NetworkConfiguration: NetworkConfiguration },
    },
    '#withLoggingConfiguration': d.fn('`withLoggingConfiguration` LoggingConfiguration ', [d.arg('LoggingConfiguration', d.T.object)]),
    withLoggingConfiguration(LoggingConfiguration): {
      assert std.isObject(LoggingConfiguration) : 'LoggingConfiguration must be a object',
      Properties+::: { LoggingConfiguration: LoggingConfiguration },
    },
    '#withWeeklyMaintenanceWindowStart': d.fn('`withWeeklyMaintenanceWindowStart` WeeklyMaintenanceWindowStart ', [d.arg('WeeklyMaintenanceWindowStart', d.T.string)]),
    withWeeklyMaintenanceWindowStart(WeeklyMaintenanceWindowStart): {
      assert std.isString(WeeklyMaintenanceWindowStart) : 'WeeklyMaintenanceWindowStart must be a string',
      Properties+::: { WeeklyMaintenanceWindowStart: WeeklyMaintenanceWindowStart },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withWebserverAccessMode': d.fn('`withWebserverAccessMode` WebserverAccessMode ', [d.arg('WebserverAccessMode', d.T.string)]),
    withWebserverAccessMode(WebserverAccessMode): {
      assert std.isString(WebserverAccessMode) : 'WebserverAccessMode must be a string',
      Properties+::: { WebserverAccessMode: WebserverAccessMode },
    },
    '#withEndpointManagement': d.fn('`withEndpointManagement` EndpointManagement ', [d.arg('EndpointManagement', d.T.string)]),
    withEndpointManagement(EndpointManagement): {
      assert std.isString(EndpointManagement) : 'EndpointManagement must be a string',
      Properties+::: { EndpointManagement: EndpointManagement },
    },
    '#withCeleryExecutorQueue': d.fn('`withCeleryExecutorQueue` CeleryExecutorQueue ', [d.arg('CeleryExecutorQueue', d.T.string)]),
    withCeleryExecutorQueue(CeleryExecutorQueue): {
      assert std.isString(CeleryExecutorQueue) : 'CeleryExecutorQueue must be a string',
      Properties+::: { CeleryExecutorQueue: CeleryExecutorQueue },
    },
    '#withDatabaseVpcEndpointService': d.fn('`withDatabaseVpcEndpointService` DatabaseVpcEndpointService ', [d.arg('DatabaseVpcEndpointService', d.T.string)]),
    withDatabaseVpcEndpointService(DatabaseVpcEndpointService): {
      assert std.isString(DatabaseVpcEndpointService) : 'DatabaseVpcEndpointService must be a string',
      Properties+::: { DatabaseVpcEndpointService: DatabaseVpcEndpointService },
    },
    '#withWebserverVpcEndpointService': d.fn('`withWebserverVpcEndpointService` WebserverVpcEndpointService ', [d.arg('WebserverVpcEndpointService', d.T.string)]),
    withWebserverVpcEndpointService(WebserverVpcEndpointService): {
      assert std.isString(WebserverVpcEndpointService) : 'WebserverVpcEndpointService must be a string',
      Properties+::: { WebserverVpcEndpointService: WebserverVpcEndpointService },
    },
  },
}
