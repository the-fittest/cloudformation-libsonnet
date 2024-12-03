local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMRServerless.libsonnet',
      help='Resource schema for AWS::EMRServerless::Application Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMRServerless::Application Resource
        * ReleaseLabel EMR release label.
        * Type The type of the application
      |||,
      args=[
        d.arg('ReleaseLabel', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      ReleaseLabel,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ReleaseLabel) : 'ReleaseLabel must be a string',
        ReleaseLabel: ReleaseLabel,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::EMRServerless::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArchitecture': d.fn('`withArchitecture` Architecture ', [d.arg('Architecture', d.T.string)]),
    withArchitecture(Architecture): {
      assert std.isString(Architecture) : 'Architecture must be a string',
      Properties+::: { Architecture: Architecture },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withInitialCapacity': d.fn('`withInitialCapacity` InitialCapacity ', [d.arg('InitialCapacity', d.T.array)]),
    withInitialCapacity(InitialCapacity): {
      assert std.isArray(InitialCapacity) : 'InitialCapacity must be a array',
      Properties+::: { InitialCapacity: InitialCapacity },
    },
    '#withMaximumCapacity': d.fn('`withMaximumCapacity` MaximumCapacity ', [d.arg('MaximumCapacity', d.T.object)]),
    withMaximumCapacity(MaximumCapacity): {
      assert std.isObject(MaximumCapacity) : 'MaximumCapacity must be a object',
      Properties+::: { MaximumCapacity: MaximumCapacity },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAutoStartConfiguration': d.fn('`withAutoStartConfiguration` AutoStartConfiguration ', [d.arg('AutoStartConfiguration', d.T.object)]),
    withAutoStartConfiguration(AutoStartConfiguration): {
      assert std.isObject(AutoStartConfiguration) : 'AutoStartConfiguration must be a object',
      Properties+::: { AutoStartConfiguration: AutoStartConfiguration },
    },
    '#withAutoStopConfiguration': d.fn('`withAutoStopConfiguration` AutoStopConfiguration ', [d.arg('AutoStopConfiguration', d.T.object)]),
    withAutoStopConfiguration(AutoStopConfiguration): {
      assert std.isObject(AutoStopConfiguration) : 'AutoStopConfiguration must be a object',
      Properties+::: { AutoStopConfiguration: AutoStopConfiguration },
    },
    '#withImageConfiguration': d.fn('`withImageConfiguration` ImageConfiguration ', [d.arg('ImageConfiguration', d.T.object)]),
    withImageConfiguration(ImageConfiguration): {
      assert std.isObject(ImageConfiguration) : 'ImageConfiguration must be a object',
      Properties+::: { ImageConfiguration: ImageConfiguration },
    },
    '#withMonitoringConfiguration': d.fn('`withMonitoringConfiguration` MonitoringConfiguration ', [d.arg('MonitoringConfiguration', d.T.object)]),
    withMonitoringConfiguration(MonitoringConfiguration): {
      assert std.isObject(MonitoringConfiguration) : 'MonitoringConfiguration must be a object',
      Properties+::: { MonitoringConfiguration: MonitoringConfiguration },
    },
    '#withRuntimeConfiguration': d.fn('`withRuntimeConfiguration` RuntimeConfiguration ', [d.arg('RuntimeConfiguration', d.T.array)]),
    withRuntimeConfiguration(RuntimeConfiguration): {
      assert std.isArray(RuntimeConfiguration) : 'RuntimeConfiguration must be a array',
      Properties+::: { RuntimeConfiguration: RuntimeConfiguration },
    },
    '#withInteractiveConfiguration': d.fn('`withInteractiveConfiguration` InteractiveConfiguration ', [d.arg('InteractiveConfiguration', d.T.object)]),
    withInteractiveConfiguration(InteractiveConfiguration): {
      assert std.isObject(InteractiveConfiguration) : 'InteractiveConfiguration must be a object',
      Properties+::: { InteractiveConfiguration: InteractiveConfiguration },
    },
    '#withNetworkConfiguration': d.fn('`withNetworkConfiguration` NetworkConfiguration ', [d.arg('NetworkConfiguration', d.T.object)]),
    withNetworkConfiguration(NetworkConfiguration): {
      assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
      Properties+::: { NetworkConfiguration: NetworkConfiguration },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withApplicationId': d.fn('`withApplicationId` ApplicationId ', [d.arg('ApplicationId', d.T.string)]),
    withApplicationId(ApplicationId): {
      assert std.isString(ApplicationId) : 'ApplicationId must be a string',
      Properties+::: { ApplicationId: ApplicationId },
    },
    '#withWorkerTypeSpecifications': d.fn('`withWorkerTypeSpecifications` WorkerTypeSpecifications ', [d.arg('WorkerTypeSpecifications', d.T.object)]),
    withWorkerTypeSpecifications(WorkerTypeSpecifications): {
      assert std.isObject(WorkerTypeSpecifications) : 'WorkerTypeSpecifications must be a object',
      Properties+::: { WorkerTypeSpecifications: WorkerTypeSpecifications },
    },
  },
}
