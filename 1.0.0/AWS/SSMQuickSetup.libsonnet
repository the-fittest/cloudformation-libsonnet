local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ConfigurationManager: {
    '#': d.pkg(
      name='ConfigurationManager',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSMQuickSetup.libsonnet',
      help='Definition of AWS::SSMQuickSetup::ConfigurationManager Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSMQuickSetup::ConfigurationManager Resource
        * ConfigurationDefinitions 
      |||,
      args=[
        d.arg('ConfigurationDefinitions', 'd.T.array'),
      ]
    ),
    new(
      ConfigurationDefinitions,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ConfigurationDefinitions) : 'ConfigurationDefinitions must be a array',
        ConfigurationDefinitions: ConfigurationDefinitions,
      },
      DependsOn:: [],
      Type: 'AWS::SSMQuickSetup::ConfigurationManager',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLastModifiedAt': d.fn('`withLastModifiedAt` LastModifiedAt ', [d.arg('LastModifiedAt', d.T.string)]),
    withLastModifiedAt(LastModifiedAt): {
      assert std.isString(LastModifiedAt) : 'LastModifiedAt must be a string',
      Properties+::: { LastModifiedAt: LastModifiedAt },
    },
    '#withManagerArn': d.fn('`withManagerArn` ManagerArn ', [d.arg('ManagerArn', d.T.string)]),
    withManagerArn(ManagerArn): {
      assert std.isString(ManagerArn) : 'ManagerArn must be a string',
      Properties+::: { ManagerArn: ManagerArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withStatusSummaries': d.fn('`withStatusSummaries` StatusSummaries ', [d.arg('StatusSummaries', d.T.array)]),
    withStatusSummaries(StatusSummaries): {
      assert std.isArray(StatusSummaries) : 'StatusSummaries must be a array',
      Properties+::: { StatusSummaries: StatusSummaries },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
