local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ScalingPlan: {
    '#': d.pkg(
      name='ScalingPlan',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AutoScalingPlans.libsonnet',
      help='Resource Type definition for AWS::AutoScalingPlans::ScalingPlan',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AutoScalingPlans::ScalingPlan Resource
        * ScalingInstructions 
        * ApplicationSource 
      |||,
      args=[
        d.arg('ScalingInstructions', 'd.T.array'),
        d.arg('ApplicationSource', 'd.T.object'),
      ]
    ),
    new(
      ScalingInstructions,
      ApplicationSource,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ScalingInstructions) : 'ScalingInstructions must be a array',
        ScalingInstructions: ScalingInstructions,
        assert std.isObject(ApplicationSource) : 'ApplicationSource must be a object',
        ApplicationSource: ApplicationSource,
      },
      DependsOn:: [],
      Type: 'AWS::AutoScalingPlans::ScalingPlan',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withScalingPlanName': d.fn('`withScalingPlanName` ScalingPlanName ', [d.arg('ScalingPlanName', d.T.string)]),
    withScalingPlanName(ScalingPlanName): {
      assert std.isString(ScalingPlanName) : 'ScalingPlanName must be a string',
      Properties+::: { ScalingPlanName: ScalingPlanName },
    },
    '#withScalingPlanVersion': d.fn('`withScalingPlanVersion` ScalingPlanVersion ', [d.arg('ScalingPlanVersion', d.T.string)]),
    withScalingPlanVersion(ScalingPlanVersion): {
      assert std.isString(ScalingPlanVersion) : 'ScalingPlanVersion must be a string',
      Properties+::: { ScalingPlanVersion: ScalingPlanVersion },
    },
  },
}
