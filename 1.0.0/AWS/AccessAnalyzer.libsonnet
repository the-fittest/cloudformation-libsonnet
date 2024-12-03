local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Analyzer: {
    '#': d.pkg(
      name='Analyzer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AccessAnalyzer.libsonnet',
      help='The AWS::AccessAnalyzer::Analyzer type specifies an analyzer of the users account',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AccessAnalyzer::Analyzer Resource
        * Type The type of the analyzer, must be one of ACCOUNT, ORGANIZATION, ACCOUNT_UNUSED_ACCESS or ORGANIZATION_UNUSED_ACCESS
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::AccessAnalyzer::Analyzer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAnalyzerName': d.fn('`withAnalyzerName` AnalyzerName ', [d.arg('AnalyzerName', d.T.string)]),
    withAnalyzerName(AnalyzerName): {
      assert std.isString(AnalyzerName) : 'AnalyzerName must be a string',
      Properties+::: { AnalyzerName: AnalyzerName },
    },
    '#withArchiveRules': d.fn('`withArchiveRules` ArchiveRules ', [d.arg('ArchiveRules', d.T.array)]),
    withArchiveRules(ArchiveRules): {
      assert std.isArray(ArchiveRules) : 'ArchiveRules must be a array',
      Properties+::: { ArchiveRules: ArchiveRules },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAnalyzerConfiguration': d.fn('`withAnalyzerConfiguration` AnalyzerConfiguration ', [d.arg('AnalyzerConfiguration', d.T.object)]),
    withAnalyzerConfiguration(AnalyzerConfiguration): {
      assert std.isObject(AnalyzerConfiguration) : 'AnalyzerConfiguration must be a object',
      Properties+::: { AnalyzerConfiguration: AnalyzerConfiguration },
    },
  },
}
