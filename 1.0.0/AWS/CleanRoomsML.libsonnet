local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  TrainingDataset: {
    '#': d.pkg(
      name='TrainingDataset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRoomsML.libsonnet',
      help='Definition of AWS::CleanRoomsML::TrainingDataset Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRoomsML::TrainingDataset Resource
        * Name 
        * RoleArn 
        * TrainingData 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('TrainingData', 'd.T.array'),
      ]
    ),
    new(
      Name,
      RoleArn,
      TrainingData,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isArray(TrainingData) : 'TrainingData must be a array',
        TrainingData: TrainingData,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRoomsML::TrainingDataset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrainingDatasetArn': d.fn('`withTrainingDatasetArn` TrainingDatasetArn ', [d.arg('TrainingDatasetArn', d.T.string)]),
    withTrainingDatasetArn(TrainingDatasetArn): {
      assert std.isString(TrainingDatasetArn) : 'TrainingDatasetArn must be a string',
      Properties+::: { TrainingDatasetArn: TrainingDatasetArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
  },
}
