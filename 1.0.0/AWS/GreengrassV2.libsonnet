local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ComponentVersion: {
    '#': d.pkg(
      name='ComponentVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GreengrassV2.libsonnet',
      help='Resource for Greengrass component version.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GreengrassV2::ComponentVersion Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::GreengrassV2::ComponentVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withComponentName': d.fn('`withComponentName` ComponentName ', [d.arg('ComponentName', d.T.string)]),
    withComponentName(ComponentName): {
      assert std.isString(ComponentName) : 'ComponentName must be a string',
      Properties+::: { ComponentName: ComponentName },
    },
    '#withComponentVersion': d.fn('`withComponentVersion` ComponentVersion ', [d.arg('ComponentVersion', d.T.string)]),
    withComponentVersion(ComponentVersion): {
      assert std.isString(ComponentVersion) : 'ComponentVersion must be a string',
      Properties+::: { ComponentVersion: ComponentVersion },
    },
    '#withInlineRecipe': d.fn('`withInlineRecipe` InlineRecipe ', [d.arg('InlineRecipe', d.T.string)]),
    withInlineRecipe(InlineRecipe): {
      assert std.isString(InlineRecipe) : 'InlineRecipe must be a string',
      Properties+::: { InlineRecipe: InlineRecipe },
    },
    '#withLambdaFunction': d.fn('`withLambdaFunction` LambdaFunction ', [d.arg('LambdaFunction', d.T.object)]),
    withLambdaFunction(LambdaFunction): {
      assert std.isObject(LambdaFunction) : 'LambdaFunction must be a object',
      Properties+::: { LambdaFunction: LambdaFunction },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Deployment: {
    '#': d.pkg(
      name='Deployment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GreengrassV2.libsonnet',
      help='Resource for Greengrass V2 deployment.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GreengrassV2::Deployment Resource
        * TargetArn 
      |||,
      args=[
        d.arg('TargetArn', 'd.T.string'),
      ]
    ),
    new(
      TargetArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TargetArn) : 'TargetArn must be a string',
        TargetArn: TargetArn,
      },
      DependsOn:: [],
      Type: 'AWS::GreengrassV2::Deployment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withParentTargetArn': d.fn('`withParentTargetArn` ParentTargetArn ', [d.arg('ParentTargetArn', d.T.string)]),
    withParentTargetArn(ParentTargetArn): {
      assert std.isString(ParentTargetArn) : 'ParentTargetArn must be a string',
      Properties+::: { ParentTargetArn: ParentTargetArn },
    },
    '#withDeploymentId': d.fn('`withDeploymentId` DeploymentId ', [d.arg('DeploymentId', d.T.string)]),
    withDeploymentId(DeploymentId): {
      assert std.isString(DeploymentId) : 'DeploymentId must be a string',
      Properties+::: { DeploymentId: DeploymentId },
    },
    '#withDeploymentName': d.fn('`withDeploymentName` DeploymentName ', [d.arg('DeploymentName', d.T.string)]),
    withDeploymentName(DeploymentName): {
      assert std.isString(DeploymentName) : 'DeploymentName must be a string',
      Properties+::: { DeploymentName: DeploymentName },
    },
    '#withComponents': d.fn('`withComponents` Components ', [d.arg('Components', d.T.object)]),
    withComponents(Components): {
      assert std.isObject(Components) : 'Components must be a object',
      Properties+::: { Components: Components },
    },
    '#withIotJobConfiguration': d.fn('`withIotJobConfiguration` IotJobConfiguration ', [d.arg('IotJobConfiguration', d.T.object)]),
    withIotJobConfiguration(IotJobConfiguration): {
      assert std.isObject(IotJobConfiguration) : 'IotJobConfiguration must be a object',
      Properties+::: { IotJobConfiguration: IotJobConfiguration },
    },
    '#withDeploymentPolicies': d.fn('`withDeploymentPolicies` DeploymentPolicies ', [d.arg('DeploymentPolicies', d.T.object)]),
    withDeploymentPolicies(DeploymentPolicies): {
      assert std.isObject(DeploymentPolicies) : 'DeploymentPolicies must be a object',
      Properties+::: { DeploymentPolicies: DeploymentPolicies },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
