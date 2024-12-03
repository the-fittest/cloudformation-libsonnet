local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AssessmentTarget: {
    '#': d.pkg(
      name='AssessmentTarget',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Inspector.libsonnet',
      help='Resource Type definition for AWS::Inspector::AssessmentTarget',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Inspector::AssessmentTarget Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Inspector::AssessmentTarget',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAssessmentTargetName': d.fn('`withAssessmentTargetName` AssessmentTargetName ', [d.arg('AssessmentTargetName', d.T.string)]),
    withAssessmentTargetName(AssessmentTargetName): {
      assert std.isString(AssessmentTargetName) : 'AssessmentTargetName must be a string',
      Properties+::: { AssessmentTargetName: AssessmentTargetName },
    },
    '#withResourceGroupArn': d.fn('`withResourceGroupArn` ResourceGroupArn ', [d.arg('ResourceGroupArn', d.T.string)]),
    withResourceGroupArn(ResourceGroupArn): {
      assert std.isString(ResourceGroupArn) : 'ResourceGroupArn must be a string',
      Properties+::: { ResourceGroupArn: ResourceGroupArn },
    },
  },
  AssessmentTemplate: {
    '#': d.pkg(
      name='AssessmentTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Inspector.libsonnet',
      help='Resource Type definition for AWS::Inspector::AssessmentTemplate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Inspector::AssessmentTemplate Resource
        * AssessmentTargetArn 
        * DurationInSeconds 
        * RulesPackageArns 
      |||,
      args=[
        d.arg('AssessmentTargetArn', 'd.T.string'),
        d.arg('DurationInSeconds', 'd.T.integer'),
        d.arg('RulesPackageArns', 'd.T.array'),
      ]
    ),
    new(
      AssessmentTargetArn,
      DurationInSeconds,
      RulesPackageArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssessmentTargetArn) : 'AssessmentTargetArn must be a string',
        AssessmentTargetArn: AssessmentTargetArn,
        assert std.isNumber(DurationInSeconds) : 'DurationInSeconds must be a integer',
        DurationInSeconds: DurationInSeconds,
        assert std.isArray(RulesPackageArns) : 'RulesPackageArns must be a array',
        RulesPackageArns: RulesPackageArns,
      },
      DependsOn:: [],
      Type: 'AWS::Inspector::AssessmentTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAssessmentTemplateName': d.fn('`withAssessmentTemplateName` AssessmentTemplateName ', [d.arg('AssessmentTemplateName', d.T.string)]),
    withAssessmentTemplateName(AssessmentTemplateName): {
      assert std.isString(AssessmentTemplateName) : 'AssessmentTemplateName must be a string',
      Properties+::: { AssessmentTemplateName: AssessmentTemplateName },
    },
    '#withUserAttributesForFindings': d.fn('`withUserAttributesForFindings` UserAttributesForFindings ', [d.arg('UserAttributesForFindings', d.T.array)]),
    withUserAttributesForFindings(UserAttributesForFindings): {
      assert std.isArray(UserAttributesForFindings) : 'UserAttributesForFindings must be a array',
      Properties+::: { UserAttributesForFindings: UserAttributesForFindings },
    },
  },
  ResourceGroup: {
    '#': d.pkg(
      name='ResourceGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Inspector.libsonnet',
      help='Resource Type definition for AWS::Inspector::ResourceGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Inspector::ResourceGroup Resource
        * ResourceGroupTags 
      |||,
      args=[
        d.arg('ResourceGroupTags', 'd.T.array'),
      ]
    ),
    new(
      ResourceGroupTags,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ResourceGroupTags) : 'ResourceGroupTags must be a array',
        ResourceGroupTags: ResourceGroupTags,
      },
      DependsOn:: [],
      Type: 'AWS::Inspector::ResourceGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
}
