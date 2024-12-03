local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ProfilingGroup: {
    '#': d.pkg(
      name='ProfilingGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeGuruProfiler.libsonnet',
      help='This resource schema represents the Profiling Group resource in the Amazon CodeGuru Profiler service.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeGuruProfiler::ProfilingGroup Resource
        * ProfilingGroupName The name of the profiling group.
      |||,
      args=[
        d.arg('ProfilingGroupName', 'd.T.string'),
      ]
    ),
    new(
      ProfilingGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProfilingGroupName) : 'ProfilingGroupName must be a string',
        ProfilingGroupName: ProfilingGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::CodeGuruProfiler::ProfilingGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withComputePlatform': d.fn('`withComputePlatform` ComputePlatform ', [d.arg('ComputePlatform', d.T.string)]),
    withComputePlatform(ComputePlatform): {
      assert std.isString(ComputePlatform) : 'ComputePlatform must be a string',
      assert ComputePlatform == 'Default' || ComputePlatform == 'AWSLambda' : "ComputePlatform must be either 'Default' or 'AWSLambda'",
      Properties+::: { ComputePlatform: ComputePlatform },
    },
    '#withAgentPermissions': d.fn('`withAgentPermissions` AgentPermissions ', [d.arg('AgentPermissions', d.T.object)]),
    withAgentPermissions(AgentPermissions): {
      assert std.isObject(AgentPermissions) : 'AgentPermissions must be a object',
      Properties+::: { AgentPermissions: AgentPermissions },
    },
    '#withAnomalyDetectionNotificationConfiguration': d.fn('`withAnomalyDetectionNotificationConfiguration` AnomalyDetectionNotificationConfiguration ', [d.arg('AnomalyDetectionNotificationConfiguration', d.T.array)]),
    withAnomalyDetectionNotificationConfiguration(AnomalyDetectionNotificationConfiguration): {
      assert std.isArray(AnomalyDetectionNotificationConfiguration) : 'AnomalyDetectionNotificationConfiguration must be a array',
      Properties+::: { AnomalyDetectionNotificationConfiguration: AnomalyDetectionNotificationConfiguration },
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
}
