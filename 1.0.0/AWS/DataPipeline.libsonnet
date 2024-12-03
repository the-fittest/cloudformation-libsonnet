local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Pipeline: {
    '#': d.pkg(
      name='Pipeline',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataPipeline.libsonnet',
      help='Resource Type definition for AWS::DataPipeline::Pipeline',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataPipeline::Pipeline Resource
        * ParameterObjects 
        * Name 
      |||,
      args=[
        d.arg('ParameterObjects', 'd.T.array'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ParameterObjects,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ParameterObjects) : 'ParameterObjects must be a array',
        ParameterObjects: ParameterObjects,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::DataPipeline::Pipeline',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPipelineTags': d.fn('`withPipelineTags` PipelineTags ', [d.arg('PipelineTags', d.T.array)]),
    withPipelineTags(PipelineTags): {
      assert std.isArray(PipelineTags) : 'PipelineTags must be a array',
      Properties+::: { PipelineTags: PipelineTags },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withActivate': d.fn('`withActivate` Activate ', [d.arg('Activate', d.T.boolean)]),
    withActivate(Activate): {
      assert std.isBoolean(Activate) : 'Activate must be a boolean',
      Properties+::: { Activate: Activate },
    },
    '#withPipelineObjects': d.fn('`withPipelineObjects` PipelineObjects ', [d.arg('PipelineObjects', d.T.array)]),
    withPipelineObjects(PipelineObjects): {
      assert std.isArray(PipelineObjects) : 'PipelineObjects must be a array',
      Properties+::: { PipelineObjects: PipelineObjects },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withParameterValues': d.fn('`withParameterValues` ParameterValues ', [d.arg('ParameterValues', d.T.array)]),
    withParameterValues(ParameterValues): {
      assert std.isArray(ParameterValues) : 'ParameterValues must be a array',
      Properties+::: { ParameterValues: ParameterValues },
    },
  },
}
