local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LookoutVision.libsonnet',
      help='The AWS::LookoutVision::Project type creates an Amazon Lookout for Vision project. A project is a grouping of the resources needed to create and manage a Lookout for Vision model.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LookoutVision::Project Resource
        * ProjectName 
      |||,
      args=[
        d.arg('ProjectName', 'd.T.string'),
      ]
    ),
    new(
      ProjectName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProjectName) : 'ProjectName must be a string',
        ProjectName: ProjectName,
      },
      DependsOn:: [],
      Type: 'AWS::LookoutVision::Project',
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
