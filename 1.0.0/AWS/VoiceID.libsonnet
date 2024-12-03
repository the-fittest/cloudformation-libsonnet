local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Domain: {
    '#': d.pkg(
      name='Domain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VoiceID.libsonnet',
      help='The AWS::VoiceID::Domain resource specifies an Amazon VoiceID Domain.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VoiceID::Domain Resource
        * Name 
        * ServerSideEncryptionConfiguration 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ServerSideEncryptionConfiguration', 'd.T.object'),
      ]
    ),
    new(
      Name,
      ServerSideEncryptionConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(ServerSideEncryptionConfiguration) : 'ServerSideEncryptionConfiguration must be a object',
        ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::VoiceID::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
