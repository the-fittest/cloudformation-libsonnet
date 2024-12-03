local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  VirtualCluster: {
    '#': d.pkg(
      name='VirtualCluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMRContainers.libsonnet',
      help='Resource Schema of AWS::EMRContainers::VirtualCluster Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMRContainers::VirtualCluster Resource
        * Name Name of the virtual cluster.
        * ContainerProvider Container provider of the virtual cluster.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ContainerProvider', 'd.T.object'),
      ]
    ),
    new(
      Name,
      ContainerProvider,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(ContainerProvider) : 'ContainerProvider must be a object',
        ContainerProvider: ContainerProvider,
      },
      DependsOn:: [],
      Type: 'AWS::EMRContainers::VirtualCluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
