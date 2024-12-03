local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Simulation: {
    '#': d.pkg(
      name='Simulation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SimSpaceWeaver.libsonnet',
      help='AWS::SimSpaceWeaver::Simulation resource creates an AWS Simulation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SimSpaceWeaver::Simulation Resource
        * Name The name of the simulation.
        * RoleArn Role ARN.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SimSpaceWeaver::Simulation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSchemaS3Location': d.fn('`withSchemaS3Location` SchemaS3Location ', [d.arg('SchemaS3Location', d.T.object)]),
    withSchemaS3Location(SchemaS3Location): {
      assert std.isObject(SchemaS3Location) : 'SchemaS3Location must be a object',
      Properties+::: { SchemaS3Location: SchemaS3Location },
    },
    '#withDescribePayload': d.fn('`withDescribePayload` DescribePayload ', [d.arg('DescribePayload', d.T.string)]),
    withDescribePayload(DescribePayload): {
      assert std.isString(DescribePayload) : 'DescribePayload must be a string',
      Properties+::: { DescribePayload: DescribePayload },
    },
    '#withMaximumDuration': d.fn('`withMaximumDuration` MaximumDuration ', [d.arg('MaximumDuration', d.T.string)]),
    withMaximumDuration(MaximumDuration): {
      assert std.isString(MaximumDuration) : 'MaximumDuration must be a string',
      Properties+::: { MaximumDuration: MaximumDuration },
    },
    '#withSnapshotS3Location': d.fn('`withSnapshotS3Location` SnapshotS3Location ', [d.arg('SnapshotS3Location', d.T.object)]),
    withSnapshotS3Location(SnapshotS3Location): {
      assert std.isObject(SnapshotS3Location) : 'SnapshotS3Location must be a object',
      Properties+::: { SnapshotS3Location: SnapshotS3Location },
    },
  },
}
