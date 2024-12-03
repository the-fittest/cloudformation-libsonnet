local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Link: {
    '#': d.pkg(
      name='Link',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Oam.libsonnet',
      help='Definition of AWS::Oam::Link Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Oam::Link Resource
        * ResourceTypes 
        * SinkIdentifier 
      |||,
      args=[
        d.arg('ResourceTypes', 'd.T.array'),
        d.arg('SinkIdentifier', 'd.T.string'),
      ]
    ),
    new(
      ResourceTypes,
      SinkIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ResourceTypes) : 'ResourceTypes must be a array',
        ResourceTypes: ResourceTypes,
        assert std.isString(SinkIdentifier) : 'SinkIdentifier must be a string',
        SinkIdentifier: SinkIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::Oam::Link',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withLabel': d.fn('`withLabel` Label ', [d.arg('Label', d.T.string)]),
    withLabel(Label): {
      assert std.isString(Label) : 'Label must be a string',
      Properties+::: { Label: Label },
    },
    '#withLabelTemplate': d.fn('`withLabelTemplate` LabelTemplate ', [d.arg('LabelTemplate', d.T.string)]),
    withLabelTemplate(LabelTemplate): {
      assert std.isString(LabelTemplate) : 'LabelTemplate must be a string',
      Properties+::: { LabelTemplate: LabelTemplate },
    },
    '#withLinkConfiguration': d.fn('`withLinkConfiguration` LinkConfiguration ', [d.arg('LinkConfiguration', d.T.object)]),
    withLinkConfiguration(LinkConfiguration): {
      assert std.isObject(LinkConfiguration) : 'LinkConfiguration must be a object',
      Properties+::: { LinkConfiguration: LinkConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Sink: {
    '#': d.pkg(
      name='Sink',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Oam.libsonnet',
      help='Resource Type definition for AWS::Oam::Sink',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Oam::Sink Resource
        * Name The name of the ObservabilityAccessManager Sink.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Oam::Sink',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withPolicy': d.fn('`withPolicy` Policy ', [d.arg('Policy', d.T.object)]),
    withPolicy(Policy): {
      assert std.isObject(Policy) : 'Policy must be a object',
      Properties+::: { Policy: Policy },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
