local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  LifecyclePolicy: {
    '#': d.pkg(
      name='LifecyclePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DLM.libsonnet',
      help='Resource Type definition for AWS::DLM::LifecyclePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DLM::LifecyclePolicy Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::DLM::LifecyclePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreateInterval': d.fn('`withCreateInterval` CreateInterval ', [d.arg('CreateInterval', d.T.integer)]),
    withCreateInterval(CreateInterval): {
      assert std.isNumber(CreateInterval) : 'CreateInterval must be a integer',
      Properties+::: { CreateInterval: CreateInterval },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withExtendDeletion': d.fn('`withExtendDeletion` ExtendDeletion ', [d.arg('ExtendDeletion', d.T.boolean)]),
    withExtendDeletion(ExtendDeletion): {
      assert std.isBoolean(ExtendDeletion) : 'ExtendDeletion must be a boolean',
      Properties+::: { ExtendDeletion: ExtendDeletion },
    },
    '#withExclusions': d.fn('`withExclusions` Exclusions ', [d.arg('Exclusions', d.T.object)]),
    withExclusions(Exclusions): {
      assert std.isObject(Exclusions) : 'Exclusions must be a object',
      Properties+::: { Exclusions: Exclusions },
    },
    '#withRetainInterval': d.fn('`withRetainInterval` RetainInterval ', [d.arg('RetainInterval', d.T.integer)]),
    withRetainInterval(RetainInterval): {
      assert std.isNumber(RetainInterval) : 'RetainInterval must be a integer',
      Properties+::: { RetainInterval: RetainInterval },
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withDefaultPolicy': d.fn('`withDefaultPolicy` DefaultPolicy ', [d.arg('DefaultPolicy', d.T.string)]),
    withDefaultPolicy(DefaultPolicy): {
      assert std.isString(DefaultPolicy) : 'DefaultPolicy must be a string',
      Properties+::: { DefaultPolicy: DefaultPolicy },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withCrossRegionCopyTargets': d.fn('`withCrossRegionCopyTargets` CrossRegionCopyTargets ', [d.arg('CrossRegionCopyTargets', d.T.object)]),
    withCrossRegionCopyTargets(CrossRegionCopyTargets): {
      assert std.isObject(CrossRegionCopyTargets) : 'CrossRegionCopyTargets must be a object',
      Properties+::: { CrossRegionCopyTargets: CrossRegionCopyTargets },
    },
    '#withPolicyDetails': d.fn('`withPolicyDetails` PolicyDetails ', [d.arg('PolicyDetails', d.T.object)]),
    withPolicyDetails(PolicyDetails): {
      assert std.isObject(PolicyDetails) : 'PolicyDetails must be a object',
      Properties+::: { PolicyDetails: PolicyDetails },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
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
    '#withCopyTags': d.fn('`withCopyTags` CopyTags ', [d.arg('CopyTags', d.T.boolean)]),
    withCopyTags(CopyTags): {
      assert std.isBoolean(CopyTags) : 'CopyTags must be a boolean',
      Properties+::: { CopyTags: CopyTags },
    },
  },
}
