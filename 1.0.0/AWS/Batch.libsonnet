local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ComputeEnvironment: {
    '#': d.pkg(
      name='ComputeEnvironment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Batch.libsonnet',
      help='Resource Type definition for AWS::Batch::ComputeEnvironment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Batch::ComputeEnvironment Resource
        * Type 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::Batch::ComputeEnvironment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withComputeEnvironmentArn': d.fn('`withComputeEnvironmentArn` ComputeEnvironmentArn ', [d.arg('ComputeEnvironmentArn', d.T.string)]),
    withComputeEnvironmentArn(ComputeEnvironmentArn): {
      assert std.isString(ComputeEnvironmentArn) : 'ComputeEnvironmentArn must be a string',
      Properties+::: { ComputeEnvironmentArn: ComputeEnvironmentArn },
    },
    '#withComputeEnvironmentName': d.fn('`withComputeEnvironmentName` ComputeEnvironmentName ', [d.arg('ComputeEnvironmentName', d.T.string)]),
    withComputeEnvironmentName(ComputeEnvironmentName): {
      assert std.isString(ComputeEnvironmentName) : 'ComputeEnvironmentName must be a string',
      Properties+::: { ComputeEnvironmentName: ComputeEnvironmentName },
    },
    '#withComputeResources': d.fn('`withComputeResources` ComputeResources ', [d.arg('ComputeResources', d.T.object)]),
    withComputeResources(ComputeResources): {
      assert std.isObject(ComputeResources) : 'ComputeResources must be a object',
      Properties+::: { ComputeResources: ComputeResources },
    },
    '#withReplaceComputeEnvironment': d.fn('`withReplaceComputeEnvironment` ReplaceComputeEnvironment ', [d.arg('ReplaceComputeEnvironment', d.T.boolean)]),
    withReplaceComputeEnvironment(ReplaceComputeEnvironment): {
      assert std.isBoolean(ReplaceComputeEnvironment) : 'ReplaceComputeEnvironment must be a boolean',
      Properties+::: { ReplaceComputeEnvironment: ReplaceComputeEnvironment },
    },
    '#withServiceRole': d.fn('`withServiceRole` ServiceRole ', [d.arg('ServiceRole', d.T.string)]),
    withServiceRole(ServiceRole): {
      assert std.isString(ServiceRole) : 'ServiceRole must be a string',
      Properties+::: { ServiceRole: ServiceRole },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withUpdatePolicy': d.fn('`withUpdatePolicy` UpdatePolicy ', [d.arg('UpdatePolicy', d.T.object)]),
    withUpdatePolicy(UpdatePolicy): {
      assert std.isObject(UpdatePolicy) : 'UpdatePolicy must be a object',
      Properties+::: { UpdatePolicy: UpdatePolicy },
    },
    '#withUnmanagedvCpus': d.fn('`withUnmanagedvCpus` UnmanagedvCpus ', [d.arg('UnmanagedvCpus', d.T.integer)]),
    withUnmanagedvCpus(UnmanagedvCpus): {
      assert std.isNumber(UnmanagedvCpus) : 'UnmanagedvCpus must be a integer',
      Properties+::: { UnmanagedvCpus: UnmanagedvCpus },
    },
    '#withEksConfiguration': d.fn('`withEksConfiguration` EksConfiguration ', [d.arg('EksConfiguration', d.T.object)]),
    withEksConfiguration(EksConfiguration): {
      assert std.isObject(EksConfiguration) : 'EksConfiguration must be a object',
      Properties+::: { EksConfiguration: EksConfiguration },
    },
    '#withContext': d.fn('`withContext` Context ', [d.arg('Context', d.T.string)]),
    withContext(Context): {
      assert std.isString(Context) : 'Context must be a string',
      Properties+::: { Context: Context },
    },
  },
  JobDefinition: {
    '#': d.pkg(
      name='JobDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Batch.libsonnet',
      help='Resource Type definition for AWS::Batch::JobDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Batch::JobDefinition Resource
        * Type 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::Batch::JobDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withTimeout': d.fn('`withTimeout` Timeout ', [d.arg('Timeout', d.T.object)]),
    withTimeout(Timeout): {
      assert std.isObject(Timeout) : 'Timeout must be a object',
      Properties+::: { Timeout: Timeout },
    },
    '#withJobDefinitionName': d.fn('`withJobDefinitionName` JobDefinitionName ', [d.arg('JobDefinitionName', d.T.string)]),
    withJobDefinitionName(JobDefinitionName): {
      assert std.isString(JobDefinitionName) : 'JobDefinitionName must be a string',
      Properties+::: { JobDefinitionName: JobDefinitionName },
    },
    '#withPropagateTags': d.fn('`withPropagateTags` PropagateTags ', [d.arg('PropagateTags', d.T.boolean)]),
    withPropagateTags(PropagateTags): {
      assert std.isBoolean(PropagateTags) : 'PropagateTags must be a boolean',
      Properties+::: { PropagateTags: PropagateTags },
    },
    '#withPlatformCapabilities': d.fn('`withPlatformCapabilities` PlatformCapabilities ', [d.arg('PlatformCapabilities', d.T.array)]),
    withPlatformCapabilities(PlatformCapabilities): {
      assert std.isArray(PlatformCapabilities) : 'PlatformCapabilities must be a array',
      Properties+::: { PlatformCapabilities: PlatformCapabilities },
    },
    '#withEksProperties': d.fn('`withEksProperties` EksProperties ', [d.arg('EksProperties', d.T.object)]),
    withEksProperties(EksProperties): {
      assert std.isObject(EksProperties) : 'EksProperties must be a object',
      Properties+::: { EksProperties: EksProperties },
    },
    '#withNodeProperties': d.fn('`withNodeProperties` NodeProperties ', [d.arg('NodeProperties', d.T.object)]),
    withNodeProperties(NodeProperties): {
      assert std.isObject(NodeProperties) : 'NodeProperties must be a object',
      Properties+::: { NodeProperties: NodeProperties },
    },
    '#withSchedulingPriority': d.fn('`withSchedulingPriority` SchedulingPriority ', [d.arg('SchedulingPriority', d.T.integer)]),
    withSchedulingPriority(SchedulingPriority): {
      assert std.isNumber(SchedulingPriority) : 'SchedulingPriority must be a integer',
      Properties+::: { SchedulingPriority: SchedulingPriority },
    },
    '#withContainerProperties': d.fn('`withContainerProperties` ContainerProperties ', [d.arg('ContainerProperties', d.T.object)]),
    withContainerProperties(ContainerProperties): {
      assert std.isObject(ContainerProperties) : 'ContainerProperties must be a object',
      Properties+::: { ContainerProperties: ContainerProperties },
    },
    '#withEcsProperties': d.fn('`withEcsProperties` EcsProperties ', [d.arg('EcsProperties', d.T.object)]),
    withEcsProperties(EcsProperties): {
      assert std.isObject(EcsProperties) : 'EcsProperties must be a object',
      Properties+::: { EcsProperties: EcsProperties },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRetryStrategy': d.fn('`withRetryStrategy` RetryStrategy ', [d.arg('RetryStrategy', d.T.object)]),
    withRetryStrategy(RetryStrategy): {
      assert std.isObject(RetryStrategy) : 'RetryStrategy must be a object',
      Properties+::: { RetryStrategy: RetryStrategy },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  JobQueue: {
    '#': d.pkg(
      name='JobQueue',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Batch.libsonnet',
      help='Resource Type definition for AWS::Batch::JobQueue',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Batch::JobQueue Resource
        * ComputeEnvironmentOrder 
        * Priority 
      |||,
      args=[
        d.arg('ComputeEnvironmentOrder', 'd.T.array'),
        d.arg('Priority', 'd.T.integer'),
      ]
    ),
    new(
      ComputeEnvironmentOrder,
      Priority,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ComputeEnvironmentOrder) : 'ComputeEnvironmentOrder must be a array',
        ComputeEnvironmentOrder: ComputeEnvironmentOrder,
        assert std.isNumber(Priority) : 'Priority must be a integer',
        Priority: Priority,
      },
      DependsOn:: [],
      Type: 'AWS::Batch::JobQueue',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withJobQueueName': d.fn('`withJobQueueName` JobQueueName ', [d.arg('JobQueueName', d.T.string)]),
    withJobQueueName(JobQueueName): {
      assert std.isString(JobQueueName) : 'JobQueueName must be a string',
      Properties+::: { JobQueueName: JobQueueName },
    },
    '#withJobQueueArn': d.fn('`withJobQueueArn` JobQueueArn ', [d.arg('JobQueueArn', d.T.string)]),
    withJobQueueArn(JobQueueArn): {
      assert std.isString(JobQueueArn) : 'JobQueueArn must be a string',
      Properties+::: { JobQueueArn: JobQueueArn },
    },
    '#withJobStateTimeLimitActions': d.fn('`withJobStateTimeLimitActions` JobStateTimeLimitActions ', [d.arg('JobStateTimeLimitActions', d.T.array)]),
    withJobStateTimeLimitActions(JobStateTimeLimitActions): {
      assert std.isArray(JobStateTimeLimitActions) : 'JobStateTimeLimitActions must be a array',
      Properties+::: { JobStateTimeLimitActions: JobStateTimeLimitActions },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'DISABLED' || State == 'ENABLED' : "State must be either 'DISABLED' or 'ENABLED'",
      Properties+::: { State: State },
    },
    '#withSchedulingPolicyArn': d.fn('`withSchedulingPolicyArn` SchedulingPolicyArn ', [d.arg('SchedulingPolicyArn', d.T.string)]),
    withSchedulingPolicyArn(SchedulingPolicyArn): {
      assert std.isString(SchedulingPolicyArn) : 'SchedulingPolicyArn must be a string',
      Properties+::: { SchedulingPolicyArn: SchedulingPolicyArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  SchedulingPolicy: {
    '#': d.pkg(
      name='SchedulingPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Batch.libsonnet',
      help='Resource Type schema for AWS::Batch::SchedulingPolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Batch::SchedulingPolicy Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Batch::SchedulingPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withFairsharePolicy': d.fn('`withFairsharePolicy` FairsharePolicy ', [d.arg('FairsharePolicy', d.T.object)]),
    withFairsharePolicy(FairsharePolicy): {
      assert std.isObject(FairsharePolicy) : 'FairsharePolicy must be a object',
      Properties+::: { FairsharePolicy: FairsharePolicy },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
