local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Group: {
    '#': d.pkg(
      name='Group',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/XRay.libsonnet',
      help='This schema provides construct and validation rules for AWS-XRay Group resource parameters.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::XRay::Group Resource
        * GroupName The case-sensitive name of the new group. Names must be unique.
      |||,
      args=[
        d.arg('GroupName', 'd.T.string'),
      ]
    ),
    new(
      GroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GroupName) : 'GroupName must be a string',
        GroupName: GroupName,
      },
      DependsOn:: [],
      Type: 'AWS::XRay::Group',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFilterExpression': d.fn('`withFilterExpression` FilterExpression ', [d.arg('FilterExpression', d.T.string)]),
    withFilterExpression(FilterExpression): {
      assert std.isString(FilterExpression) : 'FilterExpression must be a string',
      Properties+::: { FilterExpression: FilterExpression },
    },
    '#withGroupARN': d.fn('`withGroupARN` GroupARN ', [d.arg('GroupARN', d.T.string)]),
    withGroupARN(GroupARN): {
      assert std.isString(GroupARN) : 'GroupARN must be a string',
      Properties+::: { GroupARN: GroupARN },
    },
    '#withInsightsConfiguration': d.fn('`withInsightsConfiguration` InsightsConfiguration ', [d.arg('InsightsConfiguration', d.T.object)]),
    withInsightsConfiguration(InsightsConfiguration): {
      assert std.isObject(InsightsConfiguration) : 'InsightsConfiguration must be a object',
      Properties+::: { InsightsConfiguration: InsightsConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/XRay.libsonnet',
      help='This schema provides construct and validation rules for AWS-XRay Resource Policy resource parameters.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::XRay::ResourcePolicy Resource
        * PolicyName The name of the resource policy. Must be unique within a specific AWS account.
        * PolicyDocument The resource policy document, which can be up to 5kb in size.
      |||,
      args=[
        d.arg('PolicyName', 'd.T.string'),
        d.arg('PolicyDocument', 'd.T.string'),
      ]
    ),
    new(
      PolicyName,
      PolicyDocument,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
        assert std.isString(PolicyDocument) : 'PolicyDocument must be a string',
        PolicyDocument: PolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::XRay::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBypassPolicyLockoutCheck': d.fn('`withBypassPolicyLockoutCheck` BypassPolicyLockoutCheck ', [d.arg('BypassPolicyLockoutCheck', d.T.boolean)]),
    withBypassPolicyLockoutCheck(BypassPolicyLockoutCheck): {
      assert std.isBoolean(BypassPolicyLockoutCheck) : 'BypassPolicyLockoutCheck must be a boolean',
      Properties+::: { BypassPolicyLockoutCheck: BypassPolicyLockoutCheck },
    },
  },
  SamplingRule: {
    '#': d.pkg(
      name='SamplingRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/XRay.libsonnet',
      help='This schema provides construct and validation rules for AWS-XRay SamplingRule resource parameters.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::XRay::SamplingRule Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::XRay::SamplingRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSamplingRule': d.fn('`withSamplingRule` SamplingRule ', [d.arg('SamplingRule', d.T.object)]),
    withSamplingRule(SamplingRule): {
      assert std.isObject(SamplingRule) : 'SamplingRule must be a object',
      Properties+::: { SamplingRule: SamplingRule },
    },
    '#withSamplingRuleRecord': d.fn('`withSamplingRuleRecord` SamplingRuleRecord ', [d.arg('SamplingRuleRecord', d.T.object)]),
    withSamplingRuleRecord(SamplingRuleRecord): {
      assert std.isObject(SamplingRuleRecord) : 'SamplingRuleRecord must be a object',
      Properties+::: { SamplingRuleRecord: SamplingRuleRecord },
    },
    '#withSamplingRuleUpdate': d.fn('`withSamplingRuleUpdate` SamplingRuleUpdate ', [d.arg('SamplingRuleUpdate', d.T.object)]),
    withSamplingRuleUpdate(SamplingRuleUpdate): {
      assert std.isObject(SamplingRuleUpdate) : 'SamplingRuleUpdate must be a object',
      Properties+::: { SamplingRuleUpdate: SamplingRuleUpdate },
    },
    '#withRuleARN': d.fn('`withRuleARN` RuleARN ', [d.arg('RuleARN', d.T.string)]),
    withRuleARN(RuleARN): {
      assert std.isString(RuleARN) : 'RuleARN must be a string',
      Properties+::: { RuleARN: RuleARN },
    },
    '#withRuleName': d.fn('`withRuleName` RuleName ', [d.arg('RuleName', d.T.string)]),
    withRuleName(RuleName): {
      assert std.isString(RuleName) : 'RuleName must be a string',
      Properties+::: { RuleName: RuleName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
